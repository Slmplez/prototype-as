"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20243b40; bytecode file offset 0xb40414"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
greaterEqualExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleAbsExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelExpr: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025ada0; bytecode file offset 0xb57674"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
lessExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleAbsExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalFalse.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelExpr: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265dfc; bytecode file offset 0xb626c8"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
mulConstOrDivConstExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantAbsValueOne.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028ea70; bytecode file offset 0xb8b33c"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
constRemExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueOne.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202cc20c; bytecode file offset 0xbc8b00"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2035a528; bytecode file offset 0xc56e34"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
orExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLogicalComplementable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileLogicalComplement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLogicalComplementable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileLogicalComplement.
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
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalTrue.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := super orExpr: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a558; bytecode file offset 0xc56e34"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
andExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLogicalComplementable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileLogicalComplement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalFalse.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLogicalComplementable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileLogicalComplement.
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
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) literalFalse.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := super andExpr: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203984c8; bytecode file offset 0xc94dac"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleNegNoOverflowExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubNoOverflowExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048d4b4; bytecode file offset 0xd89da0"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleReciprocalExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) reciprocal.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
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
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 94].
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
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) div: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleRepeatedlyTheSameValueWithoutContextAs: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a2774; bytecode file offset 0xd9f060"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
subExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) ileCosts.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack3 := recoveredArg1.
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Stack3 := (recoveredBlock78Stack3) ileCosts.
            recoveredBlock78PC := 93.
        ].
        recoveredBlock78Step = 93 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) <= (recoveredBlock78Stack3).
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 98] ifFalse: [recoveredBlock78PC := 101].
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78PC := 99.
        ].
        recoveredBlock78Step = 99 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 100.
        ].
        recoveredBlock78Step = 100 ifTrue: [
            ^recoveredBlock78Stack1
        ].
        recoveredBlock78Step = 101 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifIleRepresentable: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d60b8; bytecode file offset 0xdd29a0"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 121.
        ].
        recoveredBlock8Step = 121 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 124.
        ].
        recoveredBlock8Step = 124 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 126.
        ].
        recoveredBlock8Step = 126 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleNotExpr.
            recoveredBlock8PC := 128.
        ].
        recoveredBlock8Step = 128 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 132] ifFalse: [recoveredBlock8PC := 151].
        ].
        recoveredBlock8Step = 132 ifTrue: [
            recoveredBlock8PC := 133.
        ].
        recoveredBlock8Step = 133 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 136.
        ].
        recoveredBlock8Step = 136 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 139.
        ].
        recoveredBlock8Step = 139 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 141.
        ].
        recoveredBlock8Step = 141 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 144.
        ].
        recoveredBlock8Step = 144 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) rightExpr.
            recoveredBlock8PC := 146.
        ].
        recoveredBlock8Step = 146 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) leftExpr.
            recoveredBlock8PC := 148.
        ].
        recoveredBlock8Step = 148 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createNotOpLeftExpr: (recoveredBlock8Stack2) rightExpr: (recoveredBlock8Stack3).
            recoveredBlock8PC := 150.
        ].
        recoveredBlock8Step = 150 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 151 ifTrue: [
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

"ASDBase.ic method 0x204d9a44; bytecode file offset 0xdd6338"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) rebuildWithUnionGoalIntervals: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 |
    recoveredBlock36Value0 := (self) ileBuilder.
    recoveredBlock36Value1 := Array.
    recoveredBlock36Value2 := recoveredArg1.
    recoveredBlock36Value3 := (recoveredBlock36Value2) condExpr.
    recoveredBlock36Value4 := recoveredLocal1.
    recoveredBlock36Value5 := (recoveredBlock36Value1) with: (recoveredBlock36Value3) with: (recoveredBlock36Value4).
    recoveredBlock36Value6 := (recoveredBlock36Value0) commaExpr: (recoveredBlock36Value5).
    recoveredBlock36Value6
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) condExpr.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) condExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) muxExpr: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205787b0; bytecode file offset 0xe750a0"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
optimizeSignedUnsignedNegConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableSigned.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatConstant.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal4.
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableSigned.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatConstant.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValuePowerOfTwo.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 250].
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
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20592f24; bytecode file offset 0xe8f81c"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
minExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 204].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 :recoveredBlock32Arg2 :recoveredBlock32Arg3 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleMinExpr.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleAnyChildIdenticalTo: (recoveredBlock32Stack2).
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 58] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isIleMaxExpr.
            recoveredBlock32PC := 68.
        ].
        recoveredBlock32Step = 68 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 72] ifFalse: [recoveredBlock32PC := 151].
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block76Arg1 :recoveredBlock32Block76Arg2 :recoveredBlock32Block76Arg3 | 
    | recoveredBlock32Block76Stack0 recoveredBlock32Block76Stack1 recoveredBlock32Block76Stack2 recoveredBlock32Block76Stack3 recoveredBlock32Block76PC recoveredBlock32Block76Step recoveredBlock32Block76Done recoveredBlock32Block76Result |
    recoveredBlock32Block76Stack0 := self.
    recoveredBlock32Block76PC := 82.
    recoveredBlock32Block76Done := false.
    [recoveredBlock32Block76Done not] whileTrue: [
        recoveredBlock32Block76Step := recoveredBlock32Block76PC.
        recoveredBlock32Block76Step = 82 ifTrue: [
            recoveredBlock32Block76Stack1 := recoveredBlock32Block76Arg1.
            recoveredBlock32Block76PC := 85.
        ].
        recoveredBlock32Block76Step = 85 ifTrue: [
            recoveredBlock32Block76Stack2 := recoveredBlock32Arg2.
            recoveredBlock32Block76PC := 88.
        ].
        recoveredBlock32Block76Step = 88 ifTrue: [
            recoveredBlock32Block76Stack1 := (recoveredBlock32Block76Stack1) isIleIdentical: (recoveredBlock32Block76Stack2).
            recoveredBlock32Block76PC := 89.
        ].
        recoveredBlock32Block76Step = 89 ifTrue: [
            (recoveredBlock32Block76Stack1) ifTrue: [recoveredBlock32Block76PC := 92] ifFalse: [recoveredBlock32Block76PC := 96].
        ].
        recoveredBlock32Block76Step = 92 ifTrue: [
            recoveredBlock32Block76Stack1 := recoveredBlock32Arg2.
            recoveredBlock32Block76PC := 95.
        ].
        recoveredBlock32Block76Step = 95 ifTrue: [
            ^recoveredBlock32Block76Stack1
        ].
        recoveredBlock32Block76Step = 96 ifTrue: [
            recoveredBlock32Block76Stack1 := nil.
            recoveredBlock32Block76PC := 97.
        ].
        recoveredBlock32Block76Step = 97 ifTrue: [
            recoveredBlock32Block76Stack2 := recoveredBlock32Block76Arg1.
            recoveredBlock32Block76PC := 100.
        ].
        recoveredBlock32Block76Step = 100 ifTrue: [
            recoveredBlock32Block76Stack2 := (recoveredBlock32Block76Stack2) isIleMinExpr.
            recoveredBlock32Block76PC := 102.
        ].
        recoveredBlock32Block76Step = 102 ifTrue: [
            (recoveredBlock32Block76Stack2) ifTrue: [recoveredBlock32Block76PC := 106] ifFalse: [recoveredBlock32Block76PC := 148].
        ].
        recoveredBlock32Block76Step = 106 ifTrue: [
            recoveredBlock32Block76PC := 107.
        ].
        recoveredBlock32Block76Step = 107 ifTrue: [
            recoveredBlock32Block76Stack1 := recoveredBlock32Block76Arg1.
            recoveredBlock32Block76PC := 110.
        ].
        recoveredBlock32Block76Step = 110 ifTrue: [
            recoveredBlock32Block76Stack2 := [:recoveredBlock32Block76Block110Arg1 :recoveredBlock32Block76Block110Arg2 :recoveredBlock32Block76Block110Arg3 | 
    | recoveredBlock32Block76Block110Stack0 recoveredBlock32Block76Block110Stack1 recoveredBlock32Block76Block110Stack2 recoveredBlock32Block76Block110Stack3 recoveredBlock32Block76Block110Stack4 recoveredBlock32Block76Block110Stack5 recoveredBlock32Block76Block110PC recoveredBlock32Block76Block110Step recoveredBlock32Block76Block110Done recoveredBlock32Block76Block110Result |
    recoveredBlock32Block76Block110Stack0 := self.
    recoveredBlock32Block76Block110PC := 116.
    recoveredBlock32Block76Block110Done := false.
    [recoveredBlock32Block76Block110Done not] whileTrue: [
        recoveredBlock32Block76Block110Step := recoveredBlock32Block76Block110PC.
        recoveredBlock32Block76Block110Step = 116 ifTrue: [
            recoveredBlock32Block76Block110Stack1 := nil.
            recoveredBlock32Block76Block110PC := 117.
        ].
        recoveredBlock32Block76Block110Step = 117 ifTrue: [
            recoveredBlock32Block76Block110Stack2 := recoveredBlock32Block76Block110Arg1.
            recoveredBlock32Block76Block110PC := 118.
        ].
        recoveredBlock32Block76Block110Step = 118 ifTrue: [
            recoveredBlock32Block76Block110Stack3 := recoveredBlock32Arg2.
            recoveredBlock32Block76Block110PC := 121.
        ].
        recoveredBlock32Block76Block110Step = 121 ifTrue: [
            recoveredBlock32Block76Block110Stack2 := (recoveredBlock32Block76Block110Stack2) isIleIdentical: (recoveredBlock32Block76Block110Stack3).
            recoveredBlock32Block76Block110PC := 122.
        ].
        recoveredBlock32Block76Block110Step = 122 ifTrue: [
            (recoveredBlock32Block76Block110Stack2) ifTrue: [recoveredBlock32Block76Block110PC := 126] ifFalse: [recoveredBlock32Block76Block110PC := 145].
        ].
        recoveredBlock32Block76Block110Step = 126 ifTrue: [
            recoveredBlock32Block76Block110PC := 127.
        ].
        recoveredBlock32Block76Block110Step = 127 ifTrue: [
            recoveredBlock32Block76Block110Stack1 := recoveredBlock32Arg3.
            recoveredBlock32Block76Block110PC := 130.
        ].
        recoveredBlock32Block76Block110Step = 130 ifTrue: [
            recoveredBlock32Block76Block110Stack2 := recoveredBlock32Block76Arg3.
            recoveredBlock32Block76Block110PC := 133.
        ].
        recoveredBlock32Block76Block110Step = 133 ifTrue: [
            recoveredBlock32Block76Block110Stack3 := recoveredBlock32Block76Block110Arg2.
            recoveredBlock32Block76Block110PC := 134.
        ].
        recoveredBlock32Block76Block110Step = 134 ifTrue: [
            recoveredBlock32Block76Block110Stack4 := recoveredBlock32Block76Arg2.
            recoveredBlock32Block76Block110PC := 137.
        ].
        recoveredBlock32Block76Block110Step = 137 ifTrue: [
            recoveredBlock32Block76Block110Stack2 := (recoveredBlock32Block76Block110Stack2) value: (recoveredBlock32Block76Block110Stack3) value: (recoveredBlock32Block76Block110Stack4).
            recoveredBlock32Block76Block110PC := 139.
        ].
        recoveredBlock32Block76Block110Step = 139 ifTrue: [
            recoveredBlock32Block76Block110Stack3 := recoveredBlock32Arg2.
            recoveredBlock32Block76Block110PC := 142.
        ].
        recoveredBlock32Block76Block110Step = 142 ifTrue: [
            recoveredBlock32Block76Block110Stack1 := (recoveredBlock32Block76Block110Stack1) value: (recoveredBlock32Block76Block110Stack2) value: (recoveredBlock32Block76Block110Stack3).
            recoveredBlock32Block76Block110PC := 144.
        ].
        recoveredBlock32Block76Block110Step = 144 ifTrue: [
            ^recoveredBlock32Block76Block110Stack1
        ].
        recoveredBlock32Block76Block110Step = 145 ifTrue: [
            recoveredBlock32Block76Block110Result := recoveredBlock32Block76Block110Stack1.
            recoveredBlock32Block76Block110Done := true.
        ].
    ].
    recoveredBlock32Block76Block110Result
].
            recoveredBlock32Block76PC := 146.
        ].
        recoveredBlock32Block76Step = 146 ifTrue: [
            recoveredBlock32Block76Stack1 := (recoveredBlock32Block76Stack1) withChildNodesDo: (recoveredBlock32Block76Stack2).
            recoveredBlock32Block76PC := 148.
        ].
        recoveredBlock32Block76Step = 148 ifTrue: [
            recoveredBlock32Block76Result := recoveredBlock32Block76Stack1.
            recoveredBlock32Block76Done := true.
        ].
    ].
    recoveredBlock32Block76Result
].
            recoveredBlock32PC := 149.
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) withChildNodesDo: (recoveredBlock32Stack2).
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsIleDivisionExpr.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20598a28; bytecode file offset 0xe95340"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulConstOrDivConstExpr: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftAllowed: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValuePowerOfTwo.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftLeftExpr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoOverflowExpr.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegatedExpr.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleConstantNegated.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesArithOpServices.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock250Value0 recoveredBlock250Value1 recoveredBlock250Value2 recoveredBlock250Value3 recoveredBlock250Value4 recoveredBlock250Value5 recoveredBlock250Value6 recoveredBlock250Value7 |
    recoveredBlock250Value0 := (self) ileBuilder.
    recoveredBlock250Value1 := recoveredArg1.
    recoveredBlock250Value2 := (recoveredBlock250Value1) leftExpr.
    recoveredBlock250Value3 := recoveredArg1.
    recoveredBlock250Value4 := (recoveredBlock250Value3) rightExpr.
    recoveredBlock250Value5 := recoveredArg1.
    recoveredBlock250Value6 := (recoveredBlock250Value5) ileBasicType.
    recoveredBlock250Value7 := (recoveredBlock250Value0) shiftLeftExpr: (recoveredBlock250Value2) rightConstant: (recoveredBlock250Value4) type: (recoveredBlock250Value6).
    recoveredBlock250Value7
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulExpr: (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059d9d8; bytecode file offset 0xe9a2cc"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
abstractLimitedExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleUpperLimitExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) upperBound.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpExpr: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [:recoveredBlock86Arg1 :recoveredBlock86Arg2 :recoveredBlock86Arg3 | 
    | recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := nil.
            recoveredBlock86PC := 93.
        ].
        recoveredBlock86Step = 93 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Arg1.
            recoveredBlock86PC := 96.
        ].
        recoveredBlock86Step = 96 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) isIleMinExpr.
            recoveredBlock86PC := 97.
        ].
        recoveredBlock86Step = 97 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 100] ifFalse: [recoveredBlock86PC := 141].
        ].
        recoveredBlock86Step = 100 ifTrue: [
            recoveredBlock86PC := 101.
        ].
        recoveredBlock86Step = 101 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Arg1.
            recoveredBlock86PC := 104.
        ].
        recoveredBlock86Step = 104 ifTrue: [
            recoveredBlock86Stack2 := [:recoveredBlock86Block104Arg1 :recoveredBlock86Block104Arg2 :recoveredBlock86Block104Arg3 | 
    | recoveredBlock86Block104Stack0 recoveredBlock86Block104Stack1 recoveredBlock86Block104Stack2 recoveredBlock86Block104Stack3 recoveredBlock86Block104Stack4 recoveredBlock86Block104Stack5 recoveredBlock86Block104PC recoveredBlock86Block104Step recoveredBlock86Block104Done recoveredBlock86Block104Result |
    recoveredBlock86Block104Stack0 := self.
    recoveredBlock86Block104PC := 110.
    recoveredBlock86Block104Done := false.
    [recoveredBlock86Block104Done not] whileTrue: [
        recoveredBlock86Block104Step := recoveredBlock86Block104PC.
        recoveredBlock86Block104Step = 110 ifTrue: [
            recoveredBlock86Block104Stack1 := nil.
            recoveredBlock86Block104PC := 111.
        ].
        recoveredBlock86Block104Step = 111 ifTrue: [
            recoveredBlock86Block104Stack2 := recoveredBlock86Block104Arg1.
            recoveredBlock86Block104PC := 112.
        ].
        recoveredBlock86Block104Step = 112 ifTrue: [
            recoveredBlock86Block104Stack3 := recoveredArg1.
            recoveredBlock86Block104PC := 115.
        ].
        recoveredBlock86Block104Step = 115 ifTrue: [
            recoveredBlock86Block104Stack3 := (recoveredBlock86Block104Stack3) upperBound.
            recoveredBlock86Block104PC := 117.
        ].
        recoveredBlock86Block104Step = 117 ifTrue: [
            recoveredBlock86Block104Stack2 := (recoveredBlock86Block104Stack2) isIleIdentical: (recoveredBlock86Block104Stack3).
            recoveredBlock86Block104PC := 119.
        ].
        recoveredBlock86Block104Step = 119 ifTrue: [
            (recoveredBlock86Block104Stack2) ifTrue: [recoveredBlock86Block104PC := 122] ifFalse: [recoveredBlock86Block104PC := 138].
        ].
        recoveredBlock86Block104Step = 122 ifTrue: [
            recoveredBlock86Block104PC := 123.
        ].
        recoveredBlock86Block104Step = 123 ifTrue: [
            recoveredBlock86Block104Stack1 := recoveredArg1.
            recoveredBlock86Block104PC := 126.
        ].
        recoveredBlock86Block104Step = 126 ifTrue: [
            recoveredBlock86Block104Stack2 := recoveredBlock86Arg3.
            recoveredBlock86Block104PC := 129.
        ].
        recoveredBlock86Block104Step = 129 ifTrue: [
            recoveredBlock86Block104Stack3 := recoveredBlock86Block104Arg2.
            recoveredBlock86Block104PC := 130.
        ].
        recoveredBlock86Block104Step = 130 ifTrue: [
            recoveredBlock86Block104Stack4 := recoveredBlock86Arg2.
            recoveredBlock86Block104PC := 133.
        ].
        recoveredBlock86Block104Step = 133 ifTrue: [
            recoveredBlock86Block104Stack2 := (recoveredBlock86Block104Stack2) value: (recoveredBlock86Block104Stack3) value: (recoveredBlock86Block104Stack4).
            recoveredBlock86Block104PC := 135.
        ].
        recoveredBlock86Block104Step = 135 ifTrue: [
            recoveredBlock86Block104Stack1 := (recoveredBlock86Block104Stack1) createOpExpr: (recoveredBlock86Block104Stack2).
            recoveredBlock86Block104PC := 137.
        ].
        recoveredBlock86Block104Step = 137 ifTrue: [
            ^recoveredBlock86Block104Stack1
        ].
        recoveredBlock86Block104Step = 138 ifTrue: [
            recoveredBlock86Block104Result := recoveredBlock86Block104Stack1.
            recoveredBlock86Block104Done := true.
        ].
    ].
    recoveredBlock86Block104Result
].
            recoveredBlock86PC := 139.
        ].
        recoveredBlock86Step = 139 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) withChildNodesDo: (recoveredBlock86Stack2).
            recoveredBlock86PC := 141.
        ].
        recoveredBlock86Step = 141 ifTrue: [
            recoveredBlock86Result := recoveredBlock86Stack1.
            recoveredBlock86Done := true.
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLowerLimitExpr.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowerBound.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpExpr: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := [:recoveredBlock226Arg1 :recoveredBlock226Arg2 :recoveredBlock226Arg3 | 
    | recoveredBlock226Stack0 recoveredBlock226Stack1 recoveredBlock226Stack2 recoveredBlock226Stack3 recoveredBlock226PC recoveredBlock226Step recoveredBlock226Done recoveredBlock226Result |
    recoveredBlock226Stack0 := self.
    recoveredBlock226PC := 232.
    recoveredBlock226Done := false.
    [recoveredBlock226Done not] whileTrue: [
        recoveredBlock226Step := recoveredBlock226PC.
        recoveredBlock226Step = 232 ifTrue: [
            recoveredBlock226Stack1 := nil.
            recoveredBlock226PC := 233.
        ].
        recoveredBlock226Step = 233 ifTrue: [
            recoveredBlock226Stack2 := recoveredBlock226Arg1.
            recoveredBlock226PC := 236.
        ].
        recoveredBlock226Step = 236 ifTrue: [
            recoveredBlock226Stack2 := (recoveredBlock226Stack2) isIleMaxExpr.
            recoveredBlock226PC := 238.
        ].
        recoveredBlock226Step = 238 ifTrue: [
            (recoveredBlock226Stack2) ifTrue: [recoveredBlock226PC := 242] ifFalse: [recoveredBlock226PC := 283].
        ].
        recoveredBlock226Step = 242 ifTrue: [
            recoveredBlock226PC := 243.
        ].
        recoveredBlock226Step = 243 ifTrue: [
            recoveredBlock226Stack1 := recoveredBlock226Arg1.
            recoveredBlock226PC := 246.
        ].
        recoveredBlock226Step = 246 ifTrue: [
            recoveredBlock226Stack2 := [:recoveredBlock226Block246Arg1 :recoveredBlock226Block246Arg2 :recoveredBlock226Block246Arg3 | 
    | recoveredBlock226Block246Stack0 recoveredBlock226Block246Stack1 recoveredBlock226Block246Stack2 recoveredBlock226Block246Stack3 recoveredBlock226Block246Stack4 recoveredBlock226Block246Stack5 recoveredBlock226Block246PC recoveredBlock226Block246Step recoveredBlock226Block246Done recoveredBlock226Block246Result |
    recoveredBlock226Block246Stack0 := self.
    recoveredBlock226Block246PC := 252.
    recoveredBlock226Block246Done := false.
    [recoveredBlock226Block246Done not] whileTrue: [
        recoveredBlock226Block246Step := recoveredBlock226Block246PC.
        recoveredBlock226Block246Step = 252 ifTrue: [
            recoveredBlock226Block246Stack1 := nil.
            recoveredBlock226Block246PC := 253.
        ].
        recoveredBlock226Block246Step = 253 ifTrue: [
            recoveredBlock226Block246Stack2 := recoveredBlock226Block246Arg1.
            recoveredBlock226Block246PC := 254.
        ].
        recoveredBlock226Block246Step = 254 ifTrue: [
            recoveredBlock226Block246Stack3 := recoveredArg1.
            recoveredBlock226Block246PC := 257.
        ].
        recoveredBlock226Block246Step = 257 ifTrue: [
            recoveredBlock226Block246Stack3 := (recoveredBlock226Block246Stack3) lowerBound.
            recoveredBlock226Block246PC := 259.
        ].
        recoveredBlock226Block246Step = 259 ifTrue: [
            recoveredBlock226Block246Stack2 := (recoveredBlock226Block246Stack2) isIleIdentical: (recoveredBlock226Block246Stack3).
            recoveredBlock226Block246PC := 261.
        ].
        recoveredBlock226Block246Step = 261 ifTrue: [
            (recoveredBlock226Block246Stack2) ifTrue: [recoveredBlock226Block246PC := 264] ifFalse: [recoveredBlock226Block246PC := 280].
        ].
        recoveredBlock226Block246Step = 264 ifTrue: [
            recoveredBlock226Block246PC := 265.
        ].
        recoveredBlock226Block246Step = 265 ifTrue: [
            recoveredBlock226Block246Stack1 := recoveredArg1.
            recoveredBlock226Block246PC := 268.
        ].
        recoveredBlock226Block246Step = 268 ifTrue: [
            recoveredBlock226Block246Stack2 := recoveredBlock226Arg3.
            recoveredBlock226Block246PC := 271.
        ].
        recoveredBlock226Block246Step = 271 ifTrue: [
            recoveredBlock226Block246Stack3 := recoveredBlock226Block246Arg2.
            recoveredBlock226Block246PC := 272.
        ].
        recoveredBlock226Block246Step = 272 ifTrue: [
            recoveredBlock226Block246Stack4 := recoveredBlock226Arg2.
            recoveredBlock226Block246PC := 275.
        ].
        recoveredBlock226Block246Step = 275 ifTrue: [
            recoveredBlock226Block246Stack2 := (recoveredBlock226Block246Stack2) value: (recoveredBlock226Block246Stack3) value: (recoveredBlock226Block246Stack4).
            recoveredBlock226Block246PC := 277.
        ].
        recoveredBlock226Block246Step = 277 ifTrue: [
            recoveredBlock226Block246Stack1 := (recoveredBlock226Block246Stack1) createOpExpr: (recoveredBlock226Block246Stack2).
            recoveredBlock226Block246PC := 279.
        ].
        recoveredBlock226Block246Step = 279 ifTrue: [
            ^recoveredBlock226Block246Stack1
        ].
        recoveredBlock226Block246Step = 280 ifTrue: [
            recoveredBlock226Block246Result := recoveredBlock226Block246Stack1.
            recoveredBlock226Block246Done := true.
        ].
    ].
    recoveredBlock226Block246Result
].
            recoveredBlock226PC := 281.
        ].
        recoveredBlock226Step = 281 ifTrue: [
            recoveredBlock226Stack1 := (recoveredBlock226Stack1) withChildNodesDo: (recoveredBlock226Stack2).
            recoveredBlock226PC := 283.
        ].
        recoveredBlock226Step = 283 ifTrue: [
            recoveredBlock226Result := recoveredBlock226Stack1.
            recoveredBlock226Done := true.
        ].
    ].
    recoveredBlock226Result
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ac914; bytecode file offset 0xea920c"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
mulExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleReciprocalExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) reciprocal.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReciprocalExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) reciprocal.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReciprocalExpr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) reciprocal.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 225] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegatedExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := (recoveredStack3) mul: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkEffectiveOptimizationFor: (recoveredStack2) resultExpr: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205c24ac; bytecode file offset 0xebedb0"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
maxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 254].
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIdentical: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 :recoveredBlock32Arg2 :recoveredBlock32Arg3 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleAbsExpr.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) leftExpr.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleIdentical: (recoveredBlock32Stack2).
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 58] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 65.
        ].
        recoveredBlock32Step = 65 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleNegExpr.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 70] ifFalse: [recoveredBlock32PC := 88].
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) leftExpr.
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleIdentical: (recoveredBlock32Stack2).
            recoveredBlock32PC := 78.
        ].
        recoveredBlock32Step = 78 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 82] ifFalse: [recoveredBlock32PC := 88].
        ].
        recoveredBlock32Step = 82 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg2.
            recoveredBlock32PC := 85.
        ].
        recoveredBlock32Step = 85 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) abs.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 91.
        ].
        recoveredBlock32Step = 91 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleMaxExpr.
            recoveredBlock32PC := 93.
        ].
        recoveredBlock32Step = 93 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 96] ifFalse: [recoveredBlock32PC := 112].
        ].
        recoveredBlock32Step = 96 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 99.
        ].
        recoveredBlock32Step = 99 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg2.
            recoveredBlock32PC := 102.
        ].
        recoveredBlock32Step = 102 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isIleAnyChildIdenticalTo: (recoveredBlock32Stack2).
            recoveredBlock32PC := 104.
        ].
        recoveredBlock32Step = 104 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 108] ifFalse: [recoveredBlock32PC := 112].
        ].
        recoveredBlock32Step = 108 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 111.
        ].
        recoveredBlock32Step = 111 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 112 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 113.
        ].
        recoveredBlock32Step = 113 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 116.
        ].
        recoveredBlock32Step = 116 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isIleMinExpr.
            recoveredBlock32PC := 118.
        ].
        recoveredBlock32Step = 118 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 122] ifFalse: [recoveredBlock32PC := 201].
        ].
        recoveredBlock32Step = 122 ifTrue: [
            recoveredBlock32PC := 123.
        ].
        recoveredBlock32Step = 123 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 126.
        ].
        recoveredBlock32Step = 126 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block126Arg1 :recoveredBlock32Block126Arg2 :recoveredBlock32Block126Arg3 | 
    | recoveredBlock32Block126Stack0 recoveredBlock32Block126Stack1 recoveredBlock32Block126Stack2 recoveredBlock32Block126Stack3 recoveredBlock32Block126PC recoveredBlock32Block126Step recoveredBlock32Block126Done recoveredBlock32Block126Result |
    recoveredBlock32Block126Stack0 := self.
    recoveredBlock32Block126PC := 132.
    recoveredBlock32Block126Done := false.
    [recoveredBlock32Block126Done not] whileTrue: [
        recoveredBlock32Block126Step := recoveredBlock32Block126PC.
        recoveredBlock32Block126Step = 132 ifTrue: [
            recoveredBlock32Block126Stack1 := recoveredBlock32Block126Arg1.
            recoveredBlock32Block126PC := 135.
        ].
        recoveredBlock32Block126Step = 135 ifTrue: [
            recoveredBlock32Block126Stack2 := recoveredBlock32Arg2.
            recoveredBlock32Block126PC := 138.
        ].
        recoveredBlock32Block126Step = 138 ifTrue: [
            recoveredBlock32Block126Stack1 := (recoveredBlock32Block126Stack1) isIleIdentical: (recoveredBlock32Block126Stack2).
            recoveredBlock32Block126PC := 139.
        ].
        recoveredBlock32Block126Step = 139 ifTrue: [
            (recoveredBlock32Block126Stack1) ifTrue: [recoveredBlock32Block126PC := 142] ifFalse: [recoveredBlock32Block126PC := 146].
        ].
        recoveredBlock32Block126Step = 142 ifTrue: [
            recoveredBlock32Block126Stack1 := recoveredBlock32Arg2.
            recoveredBlock32Block126PC := 145.
        ].
        recoveredBlock32Block126Step = 145 ifTrue: [
            ^recoveredBlock32Block126Stack1
        ].
        recoveredBlock32Block126Step = 146 ifTrue: [
            recoveredBlock32Block126Stack1 := nil.
            recoveredBlock32Block126PC := 147.
        ].
        recoveredBlock32Block126Step = 147 ifTrue: [
            recoveredBlock32Block126Stack2 := recoveredBlock32Block126Arg1.
            recoveredBlock32Block126PC := 150.
        ].
        recoveredBlock32Block126Step = 150 ifTrue: [
            recoveredBlock32Block126Stack2 := (recoveredBlock32Block126Stack2) isIleMaxExpr.
            recoveredBlock32Block126PC := 152.
        ].
        recoveredBlock32Block126Step = 152 ifTrue: [
            (recoveredBlock32Block126Stack2) ifTrue: [recoveredBlock32Block126PC := 156] ifFalse: [recoveredBlock32Block126PC := 198].
        ].
        recoveredBlock32Block126Step = 156 ifTrue: [
            recoveredBlock32Block126PC := 157.
        ].
        recoveredBlock32Block126Step = 157 ifTrue: [
            recoveredBlock32Block126Stack1 := recoveredBlock32Block126Arg1.
            recoveredBlock32Block126PC := 160.
        ].
        recoveredBlock32Block126Step = 160 ifTrue: [
            recoveredBlock32Block126Stack2 := [:recoveredBlock32Block126Block160Arg1 :recoveredBlock32Block126Block160Arg2 :recoveredBlock32Block126Block160Arg3 | 
    | recoveredBlock32Block126Block160Stack0 recoveredBlock32Block126Block160Stack1 recoveredBlock32Block126Block160Stack2 recoveredBlock32Block126Block160Stack3 recoveredBlock32Block126Block160Stack4 recoveredBlock32Block126Block160Stack5 recoveredBlock32Block126Block160PC recoveredBlock32Block126Block160Step recoveredBlock32Block126Block160Done recoveredBlock32Block126Block160Result |
    recoveredBlock32Block126Block160Stack0 := self.
    recoveredBlock32Block126Block160PC := 166.
    recoveredBlock32Block126Block160Done := false.
    [recoveredBlock32Block126Block160Done not] whileTrue: [
        recoveredBlock32Block126Block160Step := recoveredBlock32Block126Block160PC.
        recoveredBlock32Block126Block160Step = 166 ifTrue: [
            recoveredBlock32Block126Block160Stack1 := nil.
            recoveredBlock32Block126Block160PC := 167.
        ].
        recoveredBlock32Block126Block160Step = 167 ifTrue: [
            recoveredBlock32Block126Block160Stack2 := recoveredBlock32Block126Block160Arg1.
            recoveredBlock32Block126Block160PC := 168.
        ].
        recoveredBlock32Block126Block160Step = 168 ifTrue: [
            recoveredBlock32Block126Block160Stack3 := recoveredBlock32Arg2.
            recoveredBlock32Block126Block160PC := 171.
        ].
        recoveredBlock32Block126Block160Step = 171 ifTrue: [
            recoveredBlock32Block126Block160Stack2 := (recoveredBlock32Block126Block160Stack2) isIleIdentical: (recoveredBlock32Block126Block160Stack3).
            recoveredBlock32Block126Block160PC := 172.
        ].
        recoveredBlock32Block126Block160Step = 172 ifTrue: [
            (recoveredBlock32Block126Block160Stack2) ifTrue: [recoveredBlock32Block126Block160PC := 176] ifFalse: [recoveredBlock32Block126Block160PC := 195].
        ].
        recoveredBlock32Block126Block160Step = 176 ifTrue: [
            recoveredBlock32Block126Block160PC := 177.
        ].
        recoveredBlock32Block126Block160Step = 177 ifTrue: [
            recoveredBlock32Block126Block160Stack1 := recoveredBlock32Arg3.
            recoveredBlock32Block126Block160PC := 180.
        ].
        recoveredBlock32Block126Block160Step = 180 ifTrue: [
            recoveredBlock32Block126Block160Stack2 := recoveredBlock32Block126Arg3.
            recoveredBlock32Block126Block160PC := 183.
        ].
        recoveredBlock32Block126Block160Step = 183 ifTrue: [
            recoveredBlock32Block126Block160Stack3 := recoveredBlock32Block126Block160Arg2.
            recoveredBlock32Block126Block160PC := 184.
        ].
        recoveredBlock32Block126Block160Step = 184 ifTrue: [
            recoveredBlock32Block126Block160Stack4 := recoveredBlock32Block126Arg2.
            recoveredBlock32Block126Block160PC := 187.
        ].
        recoveredBlock32Block126Block160Step = 187 ifTrue: [
            recoveredBlock32Block126Block160Stack2 := (recoveredBlock32Block126Block160Stack2) value: (recoveredBlock32Block126Block160Stack3) value: (recoveredBlock32Block126Block160Stack4).
            recoveredBlock32Block126Block160PC := 189.
        ].
        recoveredBlock32Block126Block160Step = 189 ifTrue: [
            recoveredBlock32Block126Block160Stack3 := recoveredBlock32Arg2.
            recoveredBlock32Block126Block160PC := 192.
        ].
        recoveredBlock32Block126Block160Step = 192 ifTrue: [
            recoveredBlock32Block126Block160Stack1 := (recoveredBlock32Block126Block160Stack1) value: (recoveredBlock32Block126Block160Stack2) value: (recoveredBlock32Block126Block160Stack3).
            recoveredBlock32Block126Block160PC := 194.
        ].
        recoveredBlock32Block126Block160Step = 194 ifTrue: [
            ^recoveredBlock32Block126Block160Stack1
        ].
        recoveredBlock32Block126Block160Step = 195 ifTrue: [
            recoveredBlock32Block126Block160Result := recoveredBlock32Block126Block160Stack1.
            recoveredBlock32Block126Block160Done := true.
        ].
    ].
    recoveredBlock32Block126Block160Result
].
            recoveredBlock32Block126PC := 196.
        ].
        recoveredBlock32Block126Step = 196 ifTrue: [
            recoveredBlock32Block126Stack1 := (recoveredBlock32Block126Stack1) withChildNodesDo: (recoveredBlock32Block126Stack2).
            recoveredBlock32Block126PC := 198.
        ].
        recoveredBlock32Block126Step = 198 ifTrue: [
            recoveredBlock32Block126Result := recoveredBlock32Block126Stack1.
            recoveredBlock32Block126Done := true.
        ].
    ].
    recoveredBlock32Block126Result
].
            recoveredBlock32PC := 199.
        ].
        recoveredBlock32Step = 199 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) withChildNodesDo: (recoveredBlock32Stack2).
            recoveredBlock32PC := 201.
        ].
        recoveredBlock32Step = 201 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) withChildNodesDo: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsIleDivisionExpr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 323.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f3d94; bytecode file offset 0xef06e0"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
divConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulConstOrDivConstExpr: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'Call_65567'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegatedExpr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftRightExpr.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEffectiveOptimizationFor: (recoveredStack1) resultExpr: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEffectiveOptimizationFor: (recoveredStack1) resultExpr: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCosts.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) div: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEffectiveOptimizationFor: (recoveredStack1) resultExpr: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSignedUnsignedNegConstExpr: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSignedUnsignedNegConstExpr: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftRightAllowed: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftRightExpr.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValuePowerOfTwo.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoOverflowExpr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegatedExpr.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleConstantNegated.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftRightExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftRightExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatContext.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) reciprocal.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 321].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredPC := 410.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatConstant.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleFraction.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) numerator.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) numerator.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) divExpr: (recoveredStack1).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062c3e8; bytecode file offset 0xf28d08"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
constDivExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
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
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Kp'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Call_64097'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) xor: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueOne.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 379.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 402] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 436] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 456] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 514] ifFalse: [recoveredPC := 594].
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 524] ifFalse: [recoveredPC := 594].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 586].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 566] ifFalse: [recoveredPC := 586].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 584] ifFalse: [recoveredPC := 586].
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeSignedUnsignedNegConstExpr: (recoveredStack1).
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20637b68; bytecode file offset 0xf344ec"
!SGIlOptimizeOperatorSimplification methodsFor: 'recovered'!
negExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) decorateGoalInterval: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegNoOverflowExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeRepresentable.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeRepresentable.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubNoOverflowExpr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 179].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeRepresentable.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulConstExpr.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleConstantNegated.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) mulLeftExpr: (recoveredStack2) rightConstant: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleConstantNegated.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'Call_63667'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableSigned.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatConstant.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxRepresentableSigned.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) minRepresentableSigned.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) divLeftExpr: (recoveredStack2) rightConstant: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileInheritGoalInterval: (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleShiftLeftExpr.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 454].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 436] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 448] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstDivExpr.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 462] ifFalse: [recoveredPC := 532].
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleConstantNegated.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := (recoveredStack1) union: (recoveredStack2).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) representable.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 512] ifFalse: [recoveredPC := 526].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 524] ifFalse: [recoveredPC := 526].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 540] ifFalse: [recoveredPC := 552].
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 560] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack4 := (recoveredStack4) neg.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpCond: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 588] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 600] ifFalse: [recoveredPC := 652].
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 620] ifFalse: [recoveredPC := 612].
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 648] ifFalse: [recoveredPC := 620].
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 638].
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 648] ifFalse: [recoveredPC := 646].
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

