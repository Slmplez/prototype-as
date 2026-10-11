"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201dbb4c; bytecode file offset 0xad8418"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
isValidApproximation: recoveredArg1 of: recoveredArg2
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
            recoveredStack2 := (recoveredStack2) isIleRepresentable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitOverflow.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c9a8c; bytecode file offset 0xbc6370"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
divConstExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleAddSubNoOverflowExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := super divConstExpr: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043d464; bytecode file offset 0xd39d4c"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
divConstExprWithFraction: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightExpr.
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
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileDenomExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileNumExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileDenomExpr.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) mulLeftExpr: (recoveredStack2) rightConstant: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049a36c; bytecode file offset 0xd96c50"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
mulExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleMulConstExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := (recoveredStack1) isIleSafeDivExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 70].
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
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileNumExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileDenomExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
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
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSafeDivExpr.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := super mulExpr: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056bd30; bytecode file offset 0xe68658"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
doubleBitSizeNumerator: recoveredArg1 denominator: recoveredArg2 original: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowDoubleBitSizeInExpr: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Call_63754'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := [
    | recoveredBlock34Block40Value0 recoveredBlock34Block40Value1 recoveredBlock34Block40Value2 |
    recoveredBlock34Block40Value0 := (self) ileBuilder.
    recoveredBlock34Block40Value1 := [
    | recoveredBlock34Block40Block47Value0 recoveredBlock34Block40Block47Value1 recoveredBlock34Block40Block47Value2 recoveredBlock34Block40Block47Value3 recoveredBlock34Block40Block47Value4 |
    recoveredBlock34Block40Block47Value0 := recoveredLocal3.
    recoveredBlock34Block40Block47Value1 := recoveredArg2.
    recoveredBlock34Block40Block47Value2 := recoveredArg3.
    recoveredBlock34Block40Block47Value3 := (recoveredBlock34Block40Block47Value2) ileBasicType.
    recoveredBlock34Block40Block47Value4 := (recoveredBlock34Block40Block47Value0) div: (recoveredBlock34Block40Block47Value1) type: (recoveredBlock34Block40Block47Value3).
    recoveredBlock34Block40Block47Value4
].
    recoveredBlock34Block40Value2 := (recoveredBlock34Block40Value0) disableFractionsDo: (recoveredBlock34Block40Value1).
    recoveredBlock34Block40Value2
].
    recoveredBlock34Value1 := (self) disableTransformationDo: (recoveredBlock34Value0).
    recoveredBlock34Value1
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowAnySizeDo: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursiveDoubleBitSize.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowDoubleBitSizeDivisionResult.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 235] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 235] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestUnsignedInterval.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestSignedInterval.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpLimitOverflowDivResult: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesArithOpServices.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileLimitToGoalInterval: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExprLowerBound: (recoveredStack2) upperBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExpansionPreparationPhase.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 231].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) transformationFactory.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceComplexWithMuxVisitor.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyExpr: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205b10f4; bytecode file offset 0xeada3c"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
constDivExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := #[252 169 241 210 77 98 80 63].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) createScalarConstant: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) length.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 305] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) intDiv: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 160] ifFalse: [recoveredLocal1 := nil. recoveredPC := 204]] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal1.
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) artificialMuxLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
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
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) divExpr: (recoveredStack1).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dd36c; bytecode file offset 0xed9ca4"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileDenomExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileNumExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
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
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumericalPrecisionCosts.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumericalPrecisionCosts.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 205].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 205].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) mul: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) doubleBitSizeNumerator: (recoveredStack2) denominator: (recoveredStack3) original: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitOverflowExpr.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowerBound.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) upperBound.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) reciprocal.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitOverflowExpr.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaLength.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivideConstantExpr.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack4 := (recoveredStack4) makeRepresentable.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleLimitOverflowExprGoalInterval: (recoveredStack4).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20651b38; bytecode file offset 0xf4e4a4"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPowerOfTwo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 254].
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueOne.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueOne.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal15.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftAllowed: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivExpr.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPowerOfTwo.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFraction.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 556] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFloatTypedExpr.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 556] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredLocal10.
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
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) largestSignedInterval.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) largestUnsignedInterval.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 373.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := (recoveredStack2) power: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 396] ifFalse: [recoveredPC := 407].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) representableBits.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 366] ifFalse: [recoveredPC := 407].
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleFraction.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 556] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := (recoveredStack1) log: (recoveredStack2).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack3 := (recoveredStack3) power: (recoveredStack4).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConstantValue: (recoveredStack3).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftLeftExpr: (recoveredStack1) rightConstant: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 484] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := (recoveredStack0) divLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 512] ifFalse: [recoveredPC := 556].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock513Value0 recoveredBlock513Value1 recoveredBlock513Value2 recoveredBlock513Value3 recoveredBlock513Value4 recoveredBlock513Value5 recoveredBlock513Value6 recoveredBlock513Value7 recoveredBlock513Value8 recoveredBlock513Value9 recoveredBlock513Value10 recoveredBlock513Value11 recoveredBlock513Value12 |
    recoveredBlock513Value0 := (self) ileBuilder.
    recoveredBlock513Value1 := recoveredLocal7.
    recoveredBlock513Value2 := (self) ileBuilder.
    recoveredBlock513Value3 := recoveredArg1.
    recoveredBlock513Value4 := (recoveredBlock513Value3) rightExpr.
    recoveredBlock513Value5 := (recoveredBlock513Value4) value.
    recoveredBlock513Value6 := recoveredLocal9.
    recoveredBlock513Value7 := (recoveredBlock513Value6) power: (2).
    recoveredBlock513Value8 := (recoveredBlock513Value5) / (recoveredBlock513Value7).
    recoveredBlock513Value9 := (recoveredBlock513Value2) createConstantValue: (recoveredBlock513Value8).
    recoveredBlock513Value10 := recoveredArg1.
    recoveredBlock513Value11 := (recoveredBlock513Value10) ileBasicType.
    recoveredBlock513Value12 := (recoveredBlock513Value0) mulLeftExpr: (recoveredBlock513Value1) rightConstant: (recoveredBlock513Value9) type: (recoveredBlock513Value11).
    recoveredBlock513Value12
].
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := (recoveredStack0) disableTransformationDo: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 566] ifFalse: [recoveredPC := 808].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 808] ifFalse: [recoveredPC := 576].
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack0 := (recoveredStack0) sign.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredPC := 677.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock622Value0 recoveredBlock622Value1 recoveredBlock622Value2 recoveredBlock622Value3 recoveredBlock622Value4 recoveredBlock622Value5 recoveredBlock622Value6 recoveredBlock622Value7 recoveredBlock622Value8 |
    recoveredBlock622Value0 := recoveredArg1.
    recoveredBlock622Value1 := (recoveredBlock622Value0) leftExpr.
    recoveredBlock622Value2 := (self) ileBuilder.
    recoveredBlock622Value3 := recoveredLocal15.
    recoveredBlock622Value4 := (recoveredBlock622Value2) createScalarConstant: (recoveredBlock622Value3).
    recoveredBlock622Value5 := recoveredArg1.
    recoveredBlock622Value6 := (recoveredBlock622Value5) ileBasicType.
    recoveredBlock622Value7 := (recoveredBlock622Value1) mul: (recoveredBlock622Value4) type: (recoveredBlock622Value6).
    recoveredBlock622Value8 := recoveredBlock622Value7.
    recoveredLocal2 := recoveredBlock622Value8.
    recoveredBlock622Value7
].
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack0) disableTransformationDo: (recoveredStack1).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 662] ifFalse: [recoveredPC := 677].
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := (recoveredStack0) even.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 686] ifFalse: [recoveredPC := 713].
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 698] ifFalse: [recoveredPC := 713].
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 706] ifFalse: [recoveredPC := 713].
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 612] ifFalse: [recoveredPC := 713].
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 724] ifFalse: [recoveredPC := 792].
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeConstantFoldingScalar.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock729Value0 recoveredBlock729Value1 recoveredBlock729Value2 recoveredBlock729Value3 recoveredBlock729Value4 recoveredBlock729Value5 recoveredBlock729Value6 recoveredBlock729Value7 |
    recoveredBlock729Value0 := recoveredLocal3.
    recoveredBlock729Value1 := (self) ileBuilder.
    recoveredBlock729Value2 := recoveredLocal4.
    recoveredBlock729Value3 := (recoveredBlock729Value1) createScalarConstant: (recoveredBlock729Value2).
    recoveredBlock729Value4 := recoveredArg1.
    recoveredBlock729Value5 := (recoveredBlock729Value4) ileBasicType.
    recoveredBlock729Value6 := (recoveredBlock729Value0) mul: (recoveredBlock729Value3) type: (recoveredBlock729Value5).
    recoveredBlock729Value7 := recoveredBlock729Value6.
    recoveredLocal1 := recoveredBlock729Value7.
    recoveredBlock729Value6
].
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            (recoveredStack0) disableOptimizationsDo: (recoveredStack1).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileRuntimeCosts.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 776] ifFalse: [recoveredPC := 788].
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 784] ifFalse: [recoveredPC := 788].
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack0 := (recoveredStack0) mulExpr: (recoveredStack1).
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a6b68; bytecode file offset 0xfa3510"
!SGIlTransformBasicArithmeticImplAwareExpansionPhase methodsFor: 'recovered'!
mulConstExprWithFraction: recoveredArg1 allowApproximation: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 2034].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 2034] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack2 := recoveredArg1.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) leftExpr.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack3 := recoveredLocal5.
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            recoveredBlock45Stack4 := recoveredArg1.
            recoveredBlock45PC := 64.
        ].
        recoveredBlock45Step = 64 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) ileBasicType.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) mul: (recoveredBlock45Stack3) type: (recoveredBlock45Stack4).
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Stack2.
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredLocal10 := recoveredBlock45Stack3.
            recoveredBlock45PC := 72.
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) isIleRepresentable.
            recoveredBlock45PC := 74.
        ].
        recoveredBlock45Step = 74 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 78] ifFalse: [recoveredBlock45PC := 156].
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg2.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 86] ifFalse: [recoveredBlock45PC := 112].
        ].
        recoveredBlock45Step = 86 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal10.
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) isIleConstant.
            recoveredBlock45PC := 91.
        ].
        recoveredBlock45Step = 91 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 94] ifFalse: [recoveredBlock45PC := 112].
        ].
        recoveredBlock45Step = 94 ifTrue: [
            recoveredBlock45Stack1 := self.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) ileBuilder.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal10.
            recoveredBlock45PC := 100.
        ].
        recoveredBlock45Step = 100 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) value.
            recoveredBlock45PC := 102.
        ].
        recoveredBlock45Step = 102 ifTrue: [
            recoveredBlock45Stack3 := recoveredLocal4.
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) value.
            recoveredBlock45PC := 107.
        ].
        recoveredBlock45Step = 107 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) intDiv: (recoveredBlock45Stack3).
            recoveredBlock45PC := 109.
        ].
        recoveredBlock45Step = 109 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) createConstantValue: (recoveredBlock45Stack2).
            recoveredBlock45PC := 111.
        ].
        recoveredBlock45Step = 111 ifTrue: [
            ^recoveredBlock45Stack1
        ].
        recoveredBlock45Step = 112 ifTrue: [
            recoveredBlock45Stack1 := self.
            recoveredBlock45PC := 113.
        ].
        recoveredBlock45Step = 113 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal10.
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Stack3 := recoveredLocal4.
            recoveredBlock45PC := 119.
        ].
        recoveredBlock45Step = 119 ifTrue: [
            recoveredBlock45Stack4 := recoveredArg1.
            recoveredBlock45PC := 122.
        ].
        recoveredBlock45Step = 122 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) doubleBitSizeNumerator: (recoveredBlock45Stack2) denominator: (recoveredBlock45Stack3) original: (recoveredBlock45Stack4).
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredLocal9 := recoveredBlock45Stack1.
            recoveredBlock45PC := 128.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 129.
        ].
        recoveredBlock45Step = 129 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal9.
            recoveredBlock45PC := 132.
        ].
        recoveredBlock45Step = 132 ifTrue: [
            recoveredBlock45Stack3 := recoveredArg1.
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) = (recoveredBlock45Stack3).
            recoveredBlock45PC := 136.
        ].
        recoveredBlock45Step = 136 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 156] ifFalse: [recoveredBlock45PC := 140].
        ].
        recoveredBlock45Step = 140 ifTrue: [
            recoveredBlock45PC := 141.
        ].
        recoveredBlock45Step = 141 ifTrue: [
            recoveredBlock45Stack1 := self.
            recoveredBlock45PC := 142.
        ].
        recoveredBlock45Step = 142 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) ileBuilder.
            recoveredBlock45PC := 144.
        ].
        recoveredBlock45Step = 144 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal9.
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            recoveredBlock45Stack3 := recoveredArg1.
            recoveredBlock45PC := 150.
        ].
        recoveredBlock45Step = 150 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) ileCopyLimitAttributesArithOpExpr: (recoveredBlock45Stack2) originalExpr: (recoveredBlock45Stack3).
            recoveredBlock45PC := 152.
        ].
        recoveredBlock45Step = 152 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 153.
        ].
        recoveredBlock45Step = 153 ifTrue: [
            recoveredLocal7 := recoveredBlock45Stack2.
            recoveredBlock45PC := 156.
        ].
        recoveredBlock45Step = 156 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 330.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock211Value0 recoveredBlock211Value1 |
    recoveredBlock211Value0 := [
    | recoveredBlock211Block218Stack0 recoveredBlock211Block218Stack1 recoveredBlock211Block218Stack2 recoveredBlock211Block218Stack3 recoveredBlock211Block218Stack4 recoveredBlock211Block218Stack5 recoveredBlock211Block218PC recoveredBlock211Block218Step recoveredBlock211Block218Done recoveredBlock211Block218Result |
    recoveredBlock211Block218Stack0 := self.
    recoveredBlock211Block218PC := 224.
    recoveredBlock211Block218Done := false.
    [recoveredBlock211Block218Done not] whileTrue: [
        recoveredBlock211Block218Step := recoveredBlock211Block218PC.
        recoveredBlock211Block218Step = 224 ifTrue: [
            recoveredBlock211Block218Stack1 := nil.
            recoveredBlock211Block218PC := 225.
        ].
        recoveredBlock211Block218Step = 225 ifTrue: [
            recoveredBlock211Block218Stack2 := recoveredArg1.
            recoveredBlock211Block218PC := 228.
        ].
        recoveredBlock211Block218Step = 228 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) leftExpr.
            recoveredBlock211Block218PC := 230.
        ].
        recoveredBlock211Block218Step = 230 ifTrue: [
            recoveredBlock211Block218Stack3 := self.
            recoveredBlock211Block218PC := 231.
        ].
        recoveredBlock211Block218Step = 231 ifTrue: [
            recoveredBlock211Block218Stack3 := (recoveredBlock211Block218Stack3) ileBuilder.
            recoveredBlock211Block218PC := 233.
        ].
        recoveredBlock211Block218Step = 233 ifTrue: [
            recoveredBlock211Block218Stack4 := recoveredLocal3.
            recoveredBlock211Block218PC := 236.
        ].
        recoveredBlock211Block218Step = 236 ifTrue: [
            recoveredBlock211Block218Stack3 := (recoveredBlock211Block218Stack3) scalarConstant: (recoveredBlock211Block218Stack4).
            recoveredBlock211Block218PC := 238.
        ].
        recoveredBlock211Block218Step = 238 ifTrue: [
            recoveredBlock211Block218Stack4 := nil.
            recoveredBlock211Block218PC := 239.
        ].
        recoveredBlock211Block218Step = 239 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) mul: (recoveredBlock211Block218Stack3) type: (recoveredBlock211Block218Stack4).
            recoveredBlock211Block218PC := 241.
        ].
        recoveredBlock211Block218Step = 241 ifTrue: [
            recoveredBlock211Block218Stack3 := recoveredBlock211Block218Stack2.
            recoveredBlock211Block218PC := 242.
        ].
        recoveredBlock211Block218Step = 242 ifTrue: [
            recoveredLocal10 := recoveredBlock211Block218Stack3.
            recoveredBlock211Block218PC := 245.
        ].
        recoveredBlock211Block218Step = 245 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) isIleRepresentable.
            recoveredBlock211Block218PC := 247.
        ].
        recoveredBlock211Block218Step = 247 ifTrue: [
            (recoveredBlock211Block218Stack2) ifTrue: [recoveredBlock211Block218PC := 250] ifFalse: [recoveredBlock211Block218PC := 311].
        ].
        recoveredBlock211Block218Step = 250 ifTrue: [
            recoveredBlock211Block218PC := 251.
        ].
        recoveredBlock211Block218Step = 251 ifTrue: [
            recoveredBlock211Block218Stack1 := nil.
            recoveredBlock211Block218PC := 252.
        ].
        recoveredBlock211Block218Step = 252 ifTrue: [
            recoveredBlock211Block218Stack2 := recoveredLocal10.
            recoveredBlock211Block218PC := 255.
        ].
        recoveredBlock211Block218Step = 255 ifTrue: [
            recoveredBlock211Block218Stack3 := recoveredLocal4.
            recoveredBlock211Block218PC := 258.
        ].
        recoveredBlock211Block218Step = 258 ifTrue: [
            recoveredBlock211Block218Stack4 := recoveredArg1.
            recoveredBlock211Block218PC := 261.
        ].
        recoveredBlock211Block218Step = 261 ifTrue: [
            recoveredBlock211Block218Stack4 := (recoveredBlock211Block218Stack4) ileBasicType.
            recoveredBlock211Block218PC := 263.
        ].
        recoveredBlock211Block218Step = 263 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) div: (recoveredBlock211Block218Stack3) type: (recoveredBlock211Block218Stack4).
            recoveredBlock211Block218PC := 265.
        ].
        recoveredBlock211Block218Step = 265 ifTrue: [
            recoveredBlock211Block218Stack3 := recoveredBlock211Block218Stack2.
            recoveredBlock211Block218PC := 266.
        ].
        recoveredBlock211Block218Step = 266 ifTrue: [
            recoveredLocal9 := recoveredBlock211Block218Stack3.
            recoveredBlock211Block218PC := 269.
        ].
        recoveredBlock211Block218Step = 269 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) isIleRepresentable.
            recoveredBlock211Block218PC := 271.
        ].
        recoveredBlock211Block218Step = 271 ifTrue: [
            (recoveredBlock211Block218Stack2) ifTrue: [recoveredBlock211Block218PC := 274] ifFalse: [recoveredBlock211Block218PC := 311].
        ].
        recoveredBlock211Block218Step = 274 ifTrue: [
            recoveredBlock211Block218PC := 275.
        ].
        recoveredBlock211Block218Step = 275 ifTrue: [
            recoveredBlock211Block218Stack1 := recoveredLocal9.
            recoveredBlock211Block218PC := 278.
        ].
        recoveredBlock211Block218Step = 278 ifTrue: [
            recoveredBlock211Block218Stack2 := self.
            recoveredBlock211Block218PC := 279.
        ].
        recoveredBlock211Block218Step = 279 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) ileBuilder.
            recoveredBlock211Block218PC := 281.
        ].
        recoveredBlock211Block218Step = 281 ifTrue: [
            recoveredBlock211Block218Stack3 := recoveredLocal1.
            recoveredBlock211Block218PC := 284.
        ].
        recoveredBlock211Block218Step = 284 ifTrue: [
            recoveredBlock211Block218Stack4 := 2.
            recoveredBlock211Block218PC := 286.
        ].
        recoveredBlock211Block218Step = 286 ifTrue: [
            recoveredBlock211Block218Stack3 := (recoveredBlock211Block218Stack3) power: (recoveredBlock211Block218Stack4).
            recoveredBlock211Block218PC := 288.
        ].
        recoveredBlock211Block218Step = 288 ifTrue: [
            recoveredBlock211Block218Stack2 := (recoveredBlock211Block218Stack2) scalarConstant: (recoveredBlock211Block218Stack3).
            recoveredBlock211Block218PC := 290.
        ].
        recoveredBlock211Block218Step = 290 ifTrue: [
            recoveredBlock211Block218Stack3 := nil.
            recoveredBlock211Block218PC := 291.
        ].
        recoveredBlock211Block218Step = 291 ifTrue: [
            recoveredBlock211Block218Stack1 := (recoveredBlock211Block218Stack1) mul: (recoveredBlock211Block218Stack2) type: (recoveredBlock211Block218Stack3).
            recoveredBlock211Block218PC := 293.
        ].
        recoveredBlock211Block218Step = 293 ifTrue: [
            recoveredLocal2 := recoveredBlock211Block218Stack1.
            recoveredBlock211Block218PC := 296.
        ].
        recoveredBlock211Block218Step = 296 ifTrue: [
            recoveredBlock211Block218Stack1 := self.
            recoveredBlock211Block218PC := 297.
        ].
        recoveredBlock211Block218Step = 297 ifTrue: [
            recoveredBlock211Block218Stack1 := (recoveredBlock211Block218Stack1) ileBuilder.
            recoveredBlock211Block218PC := 299.
        ].
        recoveredBlock211Block218Step = 299 ifTrue: [
            recoveredBlock211Block218Stack2 := recoveredLocal2.
            recoveredBlock211Block218PC := 302.
        ].
        recoveredBlock211Block218Step = 302 ifTrue: [
            recoveredBlock211Block218Stack3 := recoveredArg1.
            recoveredBlock211Block218PC := 305.
        ].
        recoveredBlock211Block218Step = 305 ifTrue: [
            recoveredBlock211Block218Stack1 := (recoveredBlock211Block218Stack1) ileCopyLimitAttributesArithOpExpr: (recoveredBlock211Block218Stack2) originalExpr: (recoveredBlock211Block218Stack3).
            recoveredBlock211Block218PC := 307.
        ].
        recoveredBlock211Block218Step = 307 ifTrue: [
            recoveredBlock211Block218Stack2 := recoveredBlock211Block218Stack1.
            recoveredBlock211Block218PC := 308.
        ].
        recoveredBlock211Block218Step = 308 ifTrue: [
            recoveredLocal2 := recoveredBlock211Block218Stack2.
            recoveredBlock211Block218PC := 311.
        ].
        recoveredBlock211Block218Step = 311 ifTrue: [
            recoveredBlock211Block218Result := recoveredBlock211Block218Stack1.
            recoveredBlock211Block218Done := true.
        ].
    ].
    recoveredBlock211Block218Result
].
    recoveredBlock211Value1 := (self) disableTransformationDo: (recoveredBlock211Value0).
    recoveredBlock211Value1
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) even.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) power: (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 578].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 578].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock412Value0 recoveredBlock412Value1 recoveredBlock412Value2 recoveredBlock412Value3 recoveredBlock412Value4 recoveredBlock412Value5 recoveredBlock412Value6 recoveredBlock412Value7 recoveredBlock412Value8 recoveredBlock412Value9 recoveredBlock412Value10 |
    recoveredBlock412Value0 := recoveredLocal8.
    recoveredBlock412Value1 := (self) generator.
    recoveredBlock412Value2 := (recoveredBlock412Value1) maxRepresentableUnsigned.
    recoveredBlock412Value3 := recoveredArg1.
    recoveredBlock412Value4 := (recoveredBlock412Value3) leftExpr.
    recoveredBlock412Value5 := (recoveredBlock412Value4) interval.
    recoveredBlock412Value6 := (recoveredBlock412Value5) abs.
    recoveredBlock412Value7 := (recoveredBlock412Value6) right.
    recoveredBlock412Value8 := (recoveredBlock412Value2) / (recoveredBlock412Value7).
    recoveredBlock412Value9 := [:recoveredBlock412Block439Arg1 | 
    | recoveredBlock412Block439Local1 recoveredBlock412Block439Stack0 recoveredBlock412Block439Stack1 recoveredBlock412Block439Stack2 recoveredBlock412Block439Stack3 recoveredBlock412Block439Stack4 recoveredBlock412Block439Stack5 recoveredBlock412Block439PC recoveredBlock412Block439Step recoveredBlock412Block439Done recoveredBlock412Block439Result |
    recoveredBlock412Block439Stack0 := self.
    recoveredBlock412Block439PC := 446.
    recoveredBlock412Block439Done := false.
    [recoveredBlock412Block439Done not] whileTrue: [
        recoveredBlock412Block439Step := recoveredBlock412Block439PC.
        recoveredBlock412Block439Step = 446 ifTrue: [
            recoveredBlock412Block439Stack1 := false.
            recoveredBlock412Block439PC := 447.
        ].
        recoveredBlock412Block439Step = 447 ifTrue: [
            recoveredBlock412Block439Local1 := recoveredBlock412Block439Stack1.
            recoveredBlock412Block439PC := 448.
        ].
        recoveredBlock412Block439Step = 448 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 449.
        ].
        recoveredBlock412Block439Step = 449 ifTrue: [
            recoveredBlock412Block439Stack2 := 0.
            recoveredBlock412Block439PC := 451.
        ].
        recoveredBlock412Block439Step = 451 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) = (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 452.
        ].
        recoveredBlock412Block439Step = 452 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 560] ifFalse: [recoveredBlock412Block439PC := 456].
        ].
        recoveredBlock412Block439Step = 456 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredLocal8.
            recoveredBlock412Block439PC := 459.
        ].
        recoveredBlock412Block439Step = 459 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 460.
        ].
        recoveredBlock412Block439Step = 460 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) / (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 462.
        ].
        recoveredBlock412Block439Step = 462 ifTrue: [
            recoveredBlock412Block439Stack2 := #[43 135 22 217 206 247 239 63].
            recoveredBlock412Block439PC := 464.
        ].
        recoveredBlock412Block439Step = 464 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) > (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 465.
        ].
        recoveredBlock412Block439Step = 465 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 468] ifFalse: [recoveredBlock412Block439PC := 560].
        ].
        recoveredBlock412Block439Step = 468 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredLocal8.
            recoveredBlock412Block439PC := 471.
        ].
        recoveredBlock412Block439Step = 471 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 472.
        ].
        recoveredBlock412Block439Step = 472 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) / (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 474.
        ].
        recoveredBlock412Block439Step = 474 ifTrue: [
            recoveredBlock412Block439Stack2 := #[106 188 116 147 24 4 240 63].
            recoveredBlock412Block439PC := 476.
        ].
        recoveredBlock412Block439Step = 476 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) < (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 477.
        ].
        recoveredBlock412Block439Step = 477 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 480] ifFalse: [recoveredBlock412Block439PC := 560].
        ].
        recoveredBlock412Block439Step = 480 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredLocal8.
            recoveredBlock412Block439PC := 483.
        ].
        recoveredBlock412Block439Step = 483 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) value.
            recoveredBlock412Block439PC := 485.
        ].
        recoveredBlock412Block439Step = 485 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 486.
        ].
        recoveredBlock412Block439Step = 486 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) equals: (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 488.
        ].
        recoveredBlock412Block439Step = 488 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 560] ifFalse: [recoveredBlock412Block439PC := 492].
        ].
        recoveredBlock412Block439Step = 492 ifTrue: [
            recoveredBlock412Block439Stack1 := self.
            recoveredBlock412Block439PC := 493.
        ].
        recoveredBlock412Block439Step = 493 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredArg1.
            recoveredBlock412Block439PC := 496.
        ].
        recoveredBlock412Block439Step = 496 ifTrue: [
            recoveredBlock412Block439Stack2 := (recoveredBlock412Block439Stack2) leftExpr.
            recoveredBlock412Block439PC := 498.
        ].
        recoveredBlock412Block439Step = 498 ifTrue: [
            recoveredBlock412Block439Stack3 := self.
            recoveredBlock412Block439PC := 499.
        ].
        recoveredBlock412Block439Step = 499 ifTrue: [
            recoveredBlock412Block439Stack3 := (recoveredBlock412Block439Stack3) ileBuilder.
            recoveredBlock412Block439PC := 501.
        ].
        recoveredBlock412Block439Step = 501 ifTrue: [
            recoveredBlock412Block439Stack4 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 502.
        ].
        recoveredBlock412Block439Step = 502 ifTrue: [
            recoveredBlock412Block439Stack4 := (recoveredBlock412Block439Stack4) numerator.
            recoveredBlock412Block439PC := 504.
        ].
        recoveredBlock412Block439Step = 504 ifTrue: [
            recoveredBlock412Block439Stack3 := (recoveredBlock412Block439Stack3) scalarConstant: (recoveredBlock412Block439Stack4).
            recoveredBlock412Block439PC := 506.
        ].
        recoveredBlock412Block439Step = 506 ifTrue: [
            recoveredBlock412Block439Stack4 := recoveredArg1.
            recoveredBlock412Block439PC := 509.
        ].
        recoveredBlock412Block439Step = 509 ifTrue: [
            recoveredBlock412Block439Stack4 := (recoveredBlock412Block439Stack4) ileBasicType.
            recoveredBlock412Block439PC := 511.
        ].
        recoveredBlock412Block439Step = 511 ifTrue: [
            recoveredBlock412Block439Stack2 := (recoveredBlock412Block439Stack2) mul: (recoveredBlock412Block439Stack3) type: (recoveredBlock412Block439Stack4).
            recoveredBlock412Block439PC := 513.
        ].
        recoveredBlock412Block439Step = 513 ifTrue: [
            recoveredBlock412Block439Stack3 := self.
            recoveredBlock412Block439PC := 514.
        ].
        recoveredBlock412Block439Step = 514 ifTrue: [
            recoveredBlock412Block439Stack3 := (recoveredBlock412Block439Stack3) ileBuilder.
            recoveredBlock412Block439PC := 516.
        ].
        recoveredBlock412Block439Step = 516 ifTrue: [
            recoveredBlock412Block439Stack4 := recoveredBlock412Block439Arg1.
            recoveredBlock412Block439PC := 517.
        ].
        recoveredBlock412Block439Step = 517 ifTrue: [
            recoveredBlock412Block439Stack4 := (recoveredBlock412Block439Stack4) denominator.
            recoveredBlock412Block439PC := 519.
        ].
        recoveredBlock412Block439Step = 519 ifTrue: [
            recoveredBlock412Block439Stack3 := (recoveredBlock412Block439Stack3) scalarConstant: (recoveredBlock412Block439Stack4).
            recoveredBlock412Block439PC := 521.
        ].
        recoveredBlock412Block439Step = 521 ifTrue: [
            recoveredBlock412Block439Stack4 := recoveredArg1.
            recoveredBlock412Block439PC := 524.
        ].
        recoveredBlock412Block439Step = 524 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) doubleBitSizeNumerator: (recoveredBlock412Block439Stack2) denominator: (recoveredBlock412Block439Stack3) original: (recoveredBlock412Block439Stack4).
            recoveredBlock412Block439PC := 527.
        ].
        recoveredBlock412Block439Step = 527 ifTrue: [
            recoveredLocal10 := recoveredBlock412Block439Stack1.
            recoveredBlock412Block439PC := 530.
        ].
        recoveredBlock412Block439Step = 530 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredLocal10.
            recoveredBlock412Block439PC := 533.
        ].
        recoveredBlock412Block439Step = 533 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredArg1.
            recoveredBlock412Block439PC := 536.
        ].
        recoveredBlock412Block439Step = 536 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) = (recoveredBlock412Block439Stack2).
            recoveredBlock412Block439PC := 537.
        ].
        recoveredBlock412Block439Step = 537 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 560] ifFalse: [recoveredBlock412Block439PC := 540].
        ].
        recoveredBlock412Block439Step = 540 ifTrue: [
            recoveredBlock412Block439Stack1 := self.
            recoveredBlock412Block439PC := 541.
        ].
        recoveredBlock412Block439Step = 541 ifTrue: [
            recoveredBlock412Block439Stack2 := recoveredLocal10.
            recoveredBlock412Block439PC := 544.
        ].
        recoveredBlock412Block439Step = 544 ifTrue: [
            recoveredBlock412Block439Stack3 := recoveredArg1.
            recoveredBlock412Block439PC := 547.
        ].
        recoveredBlock412Block439Step = 547 ifTrue: [
            recoveredBlock412Block439Stack1 := (recoveredBlock412Block439Stack1) isValidApproximation: (recoveredBlock412Block439Stack2) of: (recoveredBlock412Block439Stack3).
            recoveredBlock412Block439PC := 549.
        ].
        recoveredBlock412Block439Step = 549 ifTrue: [
            (recoveredBlock412Block439Stack1) ifTrue: [recoveredBlock412Block439PC := 552] ifFalse: [recoveredBlock412Block439PC := 560].
        ].
        recoveredBlock412Block439Step = 552 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredLocal10.
            recoveredBlock412Block439PC := 555.
        ].
        recoveredBlock412Block439Step = 555 ifTrue: [
            recoveredLocal7 := recoveredBlock412Block439Stack1.
            recoveredBlock412Block439PC := 558.
        ].
        recoveredBlock412Block439Step = 558 ifTrue: [
            recoveredBlock412Block439Stack1 := true.
            recoveredBlock412Block439PC := 559.
        ].
        recoveredBlock412Block439Step = 559 ifTrue: [
            recoveredBlock412Block439Local1 := recoveredBlock412Block439Stack1.
            recoveredBlock412Block439PC := 560.
        ].
        recoveredBlock412Block439Step = 560 ifTrue: [
            recoveredBlock412Block439Stack1 := recoveredBlock412Block439Local1.
            recoveredBlock412Block439PC := 561.
        ].
        recoveredBlock412Block439Step = 561 ifTrue: [
            recoveredBlock412Block439Result := recoveredBlock412Block439Stack1.
            recoveredBlock412Block439Done := true.
        ].
    ].
    recoveredBlock412Block439Result
].
    recoveredBlock412Value10 := (recoveredBlock412Value0) rationalApproximationRasteredMaxNumerator: (recoveredBlock412Value8) test: (recoveredBlock412Value9).
    recoveredBlock412Value10
].
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 578] ifFalse: [recoveredPC := 574].
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 584] ifFalse: [recoveredPC := 780].
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 602] ifFalse: [recoveredPC := 780].
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowDouble.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 610] ifFalse: [recoveredPC := 780].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock618Value0 recoveredBlock618Value1 recoveredBlock618Value2 recoveredBlock618Value3 recoveredBlock618Value4 recoveredBlock618Value5 recoveredBlock618Value6 recoveredBlock618Value7 recoveredBlock618Value8 recoveredBlock618Value9 recoveredBlock618Value10 recoveredBlock618Value11 recoveredBlock618Value12 recoveredBlock618Value13 |
    recoveredBlock618Value0 := recoveredArg1.
    recoveredBlock618Value1 := (recoveredBlock618Value0) rightExpr.
    recoveredBlock618Value2 := (recoveredBlock618Value1) value.
    recoveredLocal8 := recoveredBlock618Value2.
    recoveredBlock618Value3 := recoveredLocal8.
    recoveredBlock618Value4 := (self) generator.
    recoveredBlock618Value5 := (recoveredBlock618Value4) maxRepresentableUnsignedInDoubleBitSize.
    recoveredBlock618Value6 := recoveredArg1.
    recoveredBlock618Value7 := (recoveredBlock618Value6) leftExpr.
    recoveredBlock618Value8 := (recoveredBlock618Value7) interval.
    recoveredBlock618Value9 := (recoveredBlock618Value8) abs.
    recoveredBlock618Value10 := (recoveredBlock618Value9) right.
    recoveredBlock618Value11 := (recoveredBlock618Value5) / (recoveredBlock618Value10).
    recoveredBlock618Value12 := [:recoveredBlock618Block654Arg1 | 
    | recoveredBlock618Block654Local1 recoveredBlock618Block654Stack0 recoveredBlock618Block654Stack1 recoveredBlock618Block654Stack2 recoveredBlock618Block654Stack3 recoveredBlock618Block654Stack4 recoveredBlock618Block654Stack5 recoveredBlock618Block654PC recoveredBlock618Block654Step recoveredBlock618Block654Done recoveredBlock618Block654Result |
    recoveredBlock618Block654Stack0 := self.
    recoveredBlock618Block654PC := 660.
    recoveredBlock618Block654Done := false.
    [recoveredBlock618Block654Done not] whileTrue: [
        recoveredBlock618Block654Step := recoveredBlock618Block654PC.
        recoveredBlock618Block654Step = 660 ifTrue: [
            recoveredBlock618Block654Stack1 := false.
            recoveredBlock618Block654PC := 661.
        ].
        recoveredBlock618Block654Step = 661 ifTrue: [
            recoveredBlock618Block654Local1 := recoveredBlock618Block654Stack1.
            recoveredBlock618Block654PC := 662.
        ].
        recoveredBlock618Block654Step = 662 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 663.
        ].
        recoveredBlock618Block654Step = 663 ifTrue: [
            recoveredBlock618Block654Stack2 := 0.
            recoveredBlock618Block654PC := 665.
        ].
        recoveredBlock618Block654Step = 665 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) = (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 666.
        ].
        recoveredBlock618Block654Step = 666 ifTrue: [
            (recoveredBlock618Block654Stack1) ifTrue: [recoveredBlock618Block654PC := 762] ifFalse: [recoveredBlock618Block654PC := 670].
        ].
        recoveredBlock618Block654Step = 670 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredLocal8.
            recoveredBlock618Block654PC := 673.
        ].
        recoveredBlock618Block654Step = 673 ifTrue: [
            recoveredBlock618Block654Stack2 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 674.
        ].
        recoveredBlock618Block654Step = 674 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) / (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 676.
        ].
        recoveredBlock618Block654Step = 676 ifTrue: [
            recoveredBlock618Block654Stack2 := #[43 135 22 217 206 247 239 63].
            recoveredBlock618Block654PC := 678.
        ].
        recoveredBlock618Block654Step = 678 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) > (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 679.
        ].
        recoveredBlock618Block654Step = 679 ifTrue: [
            (recoveredBlock618Block654Stack1) ifTrue: [recoveredBlock618Block654PC := 682] ifFalse: [recoveredBlock618Block654PC := 762].
        ].
        recoveredBlock618Block654Step = 682 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredLocal8.
            recoveredBlock618Block654PC := 685.
        ].
        recoveredBlock618Block654Step = 685 ifTrue: [
            recoveredBlock618Block654Stack2 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 686.
        ].
        recoveredBlock618Block654Step = 686 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) / (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 688.
        ].
        recoveredBlock618Block654Step = 688 ifTrue: [
            recoveredBlock618Block654Stack2 := #[106 188 116 147 24 4 240 63].
            recoveredBlock618Block654PC := 690.
        ].
        recoveredBlock618Block654Step = 690 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) < (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 691.
        ].
        recoveredBlock618Block654Step = 691 ifTrue: [
            (recoveredBlock618Block654Stack1) ifTrue: [recoveredBlock618Block654PC := 694] ifFalse: [recoveredBlock618Block654PC := 762].
        ].
        recoveredBlock618Block654Step = 694 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredLocal8.
            recoveredBlock618Block654PC := 697.
        ].
        recoveredBlock618Block654Step = 697 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) value.
            recoveredBlock618Block654PC := 699.
        ].
        recoveredBlock618Block654Step = 699 ifTrue: [
            recoveredBlock618Block654Stack2 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 700.
        ].
        recoveredBlock618Block654Step = 700 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) equals: (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 702.
        ].
        recoveredBlock618Block654Step = 702 ifTrue: [
            (recoveredBlock618Block654Stack1) ifTrue: [recoveredBlock618Block654PC := 762] ifFalse: [recoveredBlock618Block654PC := 706].
        ].
        recoveredBlock618Block654Step = 706 ifTrue: [
            recoveredBlock618Block654Stack1 := self.
            recoveredBlock618Block654PC := 707.
        ].
        recoveredBlock618Block654Step = 707 ifTrue: [
            recoveredBlock618Block654Stack2 := recoveredArg1.
            recoveredBlock618Block654PC := 710.
        ].
        recoveredBlock618Block654Step = 710 ifTrue: [
            recoveredBlock618Block654Stack2 := (recoveredBlock618Block654Stack2) leftExpr.
            recoveredBlock618Block654PC := 712.
        ].
        recoveredBlock618Block654Step = 712 ifTrue: [
            recoveredBlock618Block654Stack3 := self.
            recoveredBlock618Block654PC := 713.
        ].
        recoveredBlock618Block654Step = 713 ifTrue: [
            recoveredBlock618Block654Stack3 := (recoveredBlock618Block654Stack3) ileBuilder.
            recoveredBlock618Block654PC := 715.
        ].
        recoveredBlock618Block654Step = 715 ifTrue: [
            recoveredBlock618Block654Stack4 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 716.
        ].
        recoveredBlock618Block654Step = 716 ifTrue: [
            recoveredBlock618Block654Stack4 := (recoveredBlock618Block654Stack4) numerator.
            recoveredBlock618Block654PC := 718.
        ].
        recoveredBlock618Block654Step = 718 ifTrue: [
            recoveredBlock618Block654Stack3 := (recoveredBlock618Block654Stack3) scalarConstant: (recoveredBlock618Block654Stack4).
            recoveredBlock618Block654PC := 720.
        ].
        recoveredBlock618Block654Step = 720 ifTrue: [
            recoveredBlock618Block654Stack4 := recoveredArg1.
            recoveredBlock618Block654PC := 723.
        ].
        recoveredBlock618Block654Step = 723 ifTrue: [
            recoveredBlock618Block654Stack4 := (recoveredBlock618Block654Stack4) ileBasicType.
            recoveredBlock618Block654PC := 725.
        ].
        recoveredBlock618Block654Step = 725 ifTrue: [
            recoveredBlock618Block654Stack2 := (recoveredBlock618Block654Stack2) mul: (recoveredBlock618Block654Stack3) type: (recoveredBlock618Block654Stack4).
            recoveredBlock618Block654PC := 727.
        ].
        recoveredBlock618Block654Step = 727 ifTrue: [
            recoveredBlock618Block654Stack3 := self.
            recoveredBlock618Block654PC := 728.
        ].
        recoveredBlock618Block654Step = 728 ifTrue: [
            recoveredBlock618Block654Stack3 := (recoveredBlock618Block654Stack3) ileBuilder.
            recoveredBlock618Block654PC := 730.
        ].
        recoveredBlock618Block654Step = 730 ifTrue: [
            recoveredBlock618Block654Stack4 := recoveredBlock618Block654Arg1.
            recoveredBlock618Block654PC := 731.
        ].
        recoveredBlock618Block654Step = 731 ifTrue: [
            recoveredBlock618Block654Stack4 := (recoveredBlock618Block654Stack4) denominator.
            recoveredBlock618Block654PC := 733.
        ].
        recoveredBlock618Block654Step = 733 ifTrue: [
            recoveredBlock618Block654Stack3 := (recoveredBlock618Block654Stack3) scalarConstant: (recoveredBlock618Block654Stack4).
            recoveredBlock618Block654PC := 735.
        ].
        recoveredBlock618Block654Step = 735 ifTrue: [
            recoveredBlock618Block654Stack4 := recoveredArg1.
            recoveredBlock618Block654PC := 738.
        ].
        recoveredBlock618Block654Step = 738 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) doubleBitSizeNumerator: (recoveredBlock618Block654Stack2) denominator: (recoveredBlock618Block654Stack3) original: (recoveredBlock618Block654Stack4).
            recoveredBlock618Block654PC := 741.
        ].
        recoveredBlock618Block654Step = 741 ifTrue: [
            recoveredLocal10 := recoveredBlock618Block654Stack1.
            recoveredBlock618Block654PC := 744.
        ].
        recoveredBlock618Block654Step = 744 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredLocal10.
            recoveredBlock618Block654PC := 747.
        ].
        recoveredBlock618Block654Step = 747 ifTrue: [
            recoveredBlock618Block654Stack2 := recoveredArg1.
            recoveredBlock618Block654PC := 750.
        ].
        recoveredBlock618Block654Step = 750 ifTrue: [
            recoveredBlock618Block654Stack1 := (recoveredBlock618Block654Stack1) = (recoveredBlock618Block654Stack2).
            recoveredBlock618Block654PC := 751.
        ].
        recoveredBlock618Block654Step = 751 ifTrue: [
            (recoveredBlock618Block654Stack1) ifTrue: [recoveredBlock618Block654PC := 762] ifFalse: [recoveredBlock618Block654PC := 754].
        ].
        recoveredBlock618Block654Step = 754 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredLocal10.
            recoveredBlock618Block654PC := 757.
        ].
        recoveredBlock618Block654Step = 757 ifTrue: [
            recoveredLocal7 := recoveredBlock618Block654Stack1.
            recoveredBlock618Block654PC := 760.
        ].
        recoveredBlock618Block654Step = 760 ifTrue: [
            recoveredBlock618Block654Stack1 := true.
            recoveredBlock618Block654PC := 761.
        ].
        recoveredBlock618Block654Step = 761 ifTrue: [
            recoveredBlock618Block654Local1 := recoveredBlock618Block654Stack1.
            recoveredBlock618Block654PC := 762.
        ].
        recoveredBlock618Block654Step = 762 ifTrue: [
            recoveredBlock618Block654Stack1 := recoveredBlock618Block654Local1.
            recoveredBlock618Block654PC := 763.
        ].
        recoveredBlock618Block654Step = 763 ifTrue: [
            recoveredBlock618Block654Result := recoveredBlock618Block654Stack1.
            recoveredBlock618Block654Done := true.
        ].
    ].
    recoveredBlock618Block654Result
].
    recoveredBlock618Value13 := (recoveredBlock618Value3) rationalApproximationRasteredMaxNumerator: (recoveredBlock618Value11) test: (recoveredBlock618Value12).
    recoveredBlock618Value13
].
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 780] ifFalse: [recoveredPC := 776].
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack2 := 'Call_63315'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesArithOpServices.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 808] ifFalse: [recoveredPC := 794].
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack1 := (recoveredStack1) denominator.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 808] ifFalse: [recoveredPC := 986].
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock816Stack0 recoveredBlock816Stack1 recoveredBlock816Stack2 recoveredBlock816Stack3 recoveredBlock816Stack4 recoveredBlock816Stack5 recoveredBlock816PC recoveredBlock816Step recoveredBlock816Done recoveredBlock816Result |
    recoveredBlock816Stack0 := self.
    recoveredBlock816PC := 822.
    recoveredBlock816Done := false.
    [recoveredBlock816Done not] whileTrue: [
        recoveredBlock816Step := recoveredBlock816PC.
        recoveredBlock816Step = 822 ifTrue: [
            recoveredBlock816Stack1 := nil.
            recoveredBlock816PC := 823.
        ].
        recoveredBlock816Step = 823 ifTrue: [
            recoveredBlock816Stack2 := recoveredLocal4.
            recoveredBlock816PC := 826.
        ].
        recoveredBlock816Step = 826 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) isIleRepresentableDoubleBitSize.
            recoveredBlock816PC := 828.
        ].
        recoveredBlock816Step = 828 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 832] ifFalse: [recoveredBlock816PC := 972].
        ].
        recoveredBlock816Step = 832 ifTrue: [
            recoveredBlock816Stack2 := recoveredArg1.
            recoveredBlock816PC := 835.
        ].
        recoveredBlock816Step = 835 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) leftExpr.
            recoveredBlock816PC := 837.
        ].
        recoveredBlock816Step = 837 ifTrue: [
            recoveredBlock816Stack3 := recoveredLocal4.
            recoveredBlock816PC := 840.
        ].
        recoveredBlock816Step = 840 ifTrue: [
            recoveredBlock816Stack4 := recoveredArg1.
            recoveredBlock816PC := 843.
        ].
        recoveredBlock816Step = 843 ifTrue: [
            recoveredBlock816Stack4 := (recoveredBlock816Stack4) ileBasicType.
            recoveredBlock816PC := 845.
        ].
        recoveredBlock816Step = 845 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) div: (recoveredBlock816Stack3) type: (recoveredBlock816Stack4).
            recoveredBlock816PC := 847.
        ].
        recoveredBlock816Step = 847 ifTrue: [
            recoveredBlock816Stack3 := recoveredBlock816Stack2.
            recoveredBlock816PC := 848.
        ].
        recoveredBlock816Step = 848 ifTrue: [
            recoveredLocal10 := recoveredBlock816Stack3.
            recoveredBlock816PC := 851.
        ].
        recoveredBlock816Step = 851 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) isIleRepresentable.
            recoveredBlock816PC := 853.
        ].
        recoveredBlock816Step = 853 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 864] ifFalse: [recoveredBlock816PC := 856].
        ].
        recoveredBlock816Step = 856 ifTrue: [
            recoveredBlock816Stack2 := recoveredArg1.
            recoveredBlock816PC := 859.
        ].
        recoveredBlock816Step = 859 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) limitOverflow.
            recoveredBlock816PC := 861.
        ].
        recoveredBlock816Step = 861 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 864] ifFalse: [recoveredBlock816PC := 972].
        ].
        recoveredBlock816Step = 864 ifTrue: [
            recoveredBlock816PC := 865.
        ].
        recoveredBlock816Step = 865 ifTrue: [
            recoveredBlock816Stack1 := self.
            recoveredBlock816PC := 866.
        ].
        recoveredBlock816Step = 866 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) ileBuilder.
            recoveredBlock816PC := 868.
        ].
        recoveredBlock816Step = 868 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) usesArithOpServices.
            recoveredBlock816PC := 870.
        ].
        recoveredBlock816Step = 870 ifTrue: [
            (recoveredBlock816Stack1) ifTrue: [recoveredBlock816PC := 874] ifFalse: [recoveredBlock816PC := 897].
        ].
        recoveredBlock816Step = 874 ifTrue: [
            recoveredBlock816Stack1 := recoveredLocal10.
            recoveredBlock816PC := 877.
        ].
        recoveredBlock816Step = 877 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) isIleRepresentable.
            recoveredBlock816PC := 879.
        ].
        recoveredBlock816Step = 879 ifTrue: [
            (recoveredBlock816Stack1) ifTrue: [recoveredBlock816PC := 897] ifFalse: [recoveredBlock816PC := 882].
        ].
        recoveredBlock816Step = 882 ifTrue: [
            recoveredBlock816Stack1 := recoveredLocal10.
            recoveredBlock816PC := 885.
        ].
        recoveredBlock816Step = 885 ifTrue: [
            recoveredBlock816Stack2 := recoveredLocal10.
            recoveredBlock816PC := 888.
        ].
        recoveredBlock816Step = 888 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) interval.
            recoveredBlock816PC := 890.
        ].
        recoveredBlock816Step = 890 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) makeRepresentable.
            recoveredBlock816PC := 892.
        ].
        recoveredBlock816Step = 892 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) ileLimitToGoalInterval: (recoveredBlock816Stack2).
            recoveredBlock816PC := 894.
        ].
        recoveredBlock816Step = 894 ifTrue: [
            recoveredLocal10 := recoveredBlock816Stack1.
            recoveredBlock816PC := 897.
        ].
        recoveredBlock816Step = 897 ifTrue: [
            recoveredBlock816Stack1 := nil.
            recoveredBlock816PC := 898.
        ].
        recoveredBlock816Step = 898 ifTrue: [
            recoveredBlock816Stack2 := recoveredLocal5.
            recoveredBlock816PC := 901.
        ].
        recoveredBlock816Step = 901 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) isIleRepresentable.
            recoveredBlock816PC := 903.
        ].
        recoveredBlock816Step = 903 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 906] ifFalse: [recoveredBlock816PC := 972].
        ].
        recoveredBlock816Step = 906 ifTrue: [
            recoveredBlock816Stack2 := self.
            recoveredBlock816PC := 907.
        ].
        recoveredBlock816Step = 907 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) ileBuilder.
            recoveredBlock816PC := 909.
        ].
        recoveredBlock816Step = 909 ifTrue: [
            recoveredBlock816Stack3 := [
    | recoveredBlock816Block909Value0 recoveredBlock816Block909Value1 |
    recoveredBlock816Block909Value0 := [
    | recoveredBlock816Block909Block916Value0 recoveredBlock816Block909Block916Value1 recoveredBlock816Block909Block916Value2 recoveredBlock816Block909Block916Value3 |
    recoveredBlock816Block909Block916Value0 := recoveredArg1.
    recoveredBlock816Block909Block916Value1 := recoveredLocal10.
    recoveredBlock816Block909Block916Value2 := recoveredLocal5.
    recoveredBlock816Block909Block916Value3 := (recoveredBlock816Block909Block916Value0) createOpLeftExpr: (recoveredBlock816Block909Block916Value1) rightExpr: (recoveredBlock816Block909Block916Value2).
    recoveredBlock816Block909Block916Value3
].
    recoveredBlock816Block909Value1 := (self) disableTransformationDo: (recoveredBlock816Block909Value0).
    recoveredBlock816Block909Value1
].
            recoveredBlock816PC := 937.
        ].
        recoveredBlock816Step = 937 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) disableFractionsDo: (recoveredBlock816Stack3).
            recoveredBlock816PC := 939.
        ].
        recoveredBlock816Step = 939 ifTrue: [
            recoveredBlock816Stack3 := recoveredBlock816Stack2.
            recoveredBlock816PC := 940.
        ].
        recoveredBlock816Step = 940 ifTrue: [
            recoveredLocal2 := recoveredBlock816Stack3.
            recoveredBlock816PC := 943.
        ].
        recoveredBlock816Step = 943 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) isIleRepresentable.
            recoveredBlock816PC := 945.
        ].
        recoveredBlock816Step = 945 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 956] ifFalse: [recoveredBlock816PC := 948].
        ].
        recoveredBlock816Step = 948 ifTrue: [
            recoveredBlock816Stack2 := recoveredArg1.
            recoveredBlock816PC := 951.
        ].
        recoveredBlock816Step = 951 ifTrue: [
            recoveredBlock816Stack2 := (recoveredBlock816Stack2) limitOverflow.
            recoveredBlock816PC := 953.
        ].
        recoveredBlock816Step = 953 ifTrue: [
            (recoveredBlock816Stack2) ifTrue: [recoveredBlock816PC := 956] ifFalse: [recoveredBlock816PC := 972].
        ].
        recoveredBlock816Step = 956 ifTrue: [
            recoveredBlock816PC := 957.
        ].
        recoveredBlock816Step = 957 ifTrue: [
            recoveredBlock816Stack1 := self.
            recoveredBlock816PC := 958.
        ].
        recoveredBlock816Step = 958 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) ileBuilder.
            recoveredBlock816PC := 960.
        ].
        recoveredBlock816Step = 960 ifTrue: [
            recoveredBlock816Stack2 := recoveredLocal2.
            recoveredBlock816PC := 963.
        ].
        recoveredBlock816Step = 963 ifTrue: [
            recoveredBlock816Stack3 := recoveredArg1.
            recoveredBlock816PC := 966.
        ].
        recoveredBlock816Step = 966 ifTrue: [
            recoveredBlock816Stack1 := (recoveredBlock816Stack1) ileCopyLimitAttributesArithOpExpr: (recoveredBlock816Stack2) originalExpr: (recoveredBlock816Stack3).
            recoveredBlock816PC := 968.
        ].
        recoveredBlock816Step = 968 ifTrue: [
            recoveredBlock816Stack2 := recoveredBlock816Stack1.
            recoveredBlock816PC := 969.
        ].
        recoveredBlock816Step = 969 ifTrue: [
            recoveredLocal7 := recoveredBlock816Stack2.
            recoveredBlock816PC := 972.
        ].
        recoveredBlock816Step = 972 ifTrue: [
            recoveredBlock816Result := recoveredBlock816Stack1.
            recoveredBlock816Done := true.
        ].
    ].
    recoveredBlock816Result
].
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 986] ifFalse: [recoveredPC := 982].
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 992] ifFalse: [recoveredPC := 1244].
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock1000Value0 recoveredBlock1000Value1 recoveredBlock1000Value2 recoveredBlock1000Value3 recoveredBlock1000Value4 recoveredBlock1000Value5 recoveredBlock1000Value6 |
    recoveredLocal6 := 0.
    recoveredBlock1000Value0 := recoveredLocal8.
    recoveredBlock1000Value1 := recoveredArg1.
    recoveredBlock1000Value2 := (recoveredBlock1000Value1) leftExpr.
    recoveredBlock1000Value3 := (recoveredBlock1000Value2) interval.
    recoveredBlock1000Value4 := [:recoveredBlock1000Block1021Arg1 | 
    | recoveredBlock1000Block1021Local1 recoveredBlock1000Block1021Stack0 recoveredBlock1000Block1021Stack1 recoveredBlock1000Block1021Stack2 recoveredBlock1000Block1021Stack3 recoveredBlock1000Block1021Stack4 recoveredBlock1000Block1021PC recoveredBlock1000Block1021Step recoveredBlock1000Block1021Done recoveredBlock1000Block1021Result |
    recoveredBlock1000Block1021Stack0 := self.
    recoveredBlock1000Block1021PC := 1028.
    recoveredBlock1000Block1021Done := false.
    [recoveredBlock1000Block1021Done not] whileTrue: [
        recoveredBlock1000Block1021Step := recoveredBlock1000Block1021PC.
        recoveredBlock1000Block1021Step = 1028 ifTrue: [
            recoveredBlock1000Block1021Stack1 := false.
            recoveredBlock1000Block1021PC := 1029.
        ].
        recoveredBlock1000Block1021Step = 1029 ifTrue: [
            recoveredBlock1000Block1021Local1 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1032.
        ].
        recoveredBlock1000Block1021Step = 1032 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredBlock1000Block1021Arg1.
            recoveredBlock1000Block1021PC := 1035.
        ].
        recoveredBlock1000Block1021Step = 1035 ifTrue: [
            recoveredBlock1000Block1021Stack2 := 0.
            recoveredBlock1000Block1021PC := 1037.
        ].
        recoveredBlock1000Block1021Step = 1037 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) = (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1038.
        ].
        recoveredBlock1000Block1021Step = 1038 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1209] ifFalse: [recoveredBlock1000Block1021PC := 1042].
        ].
        recoveredBlock1000Block1021Step = 1042 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal8.
            recoveredBlock1000Block1021PC := 1045.
        ].
        recoveredBlock1000Block1021Step = 1045 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredBlock1000Block1021Arg1.
            recoveredBlock1000Block1021PC := 1048.
        ].
        recoveredBlock1000Block1021Step = 1048 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) / (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1050.
        ].
        recoveredBlock1000Block1021Step = 1050 ifTrue: [
            recoveredBlock1000Block1021Stack2 := #[43 135 22 217 206 247 239 63].
            recoveredBlock1000Block1021PC := 1052.
        ].
        recoveredBlock1000Block1021Step = 1052 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) > (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1053.
        ].
        recoveredBlock1000Block1021Step = 1053 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1056] ifFalse: [recoveredBlock1000Block1021PC := 1209].
        ].
        recoveredBlock1000Block1021Step = 1056 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal8.
            recoveredBlock1000Block1021PC := 1059.
        ].
        recoveredBlock1000Block1021Step = 1059 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredBlock1000Block1021Arg1.
            recoveredBlock1000Block1021PC := 1062.
        ].
        recoveredBlock1000Block1021Step = 1062 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) / (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1064.
        ].
        recoveredBlock1000Block1021Step = 1064 ifTrue: [
            recoveredBlock1000Block1021Stack2 := #[106 188 116 147 24 4 240 63].
            recoveredBlock1000Block1021PC := 1066.
        ].
        recoveredBlock1000Block1021Step = 1066 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) < (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1067.
        ].
        recoveredBlock1000Block1021Step = 1067 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1070] ifFalse: [recoveredBlock1000Block1021PC := 1209].
        ].
        recoveredBlock1000Block1021Step = 1070 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal8.
            recoveredBlock1000Block1021PC := 1073.
        ].
        recoveredBlock1000Block1021Step = 1073 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) value.
            recoveredBlock1000Block1021PC := 1075.
        ].
        recoveredBlock1000Block1021Step = 1075 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredBlock1000Block1021Arg1.
            recoveredBlock1000Block1021PC := 1078.
        ].
        recoveredBlock1000Block1021Step = 1078 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) equals: (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1080.
        ].
        recoveredBlock1000Block1021Step = 1080 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1209] ifFalse: [recoveredBlock1000Block1021PC := 1084].
        ].
        recoveredBlock1000Block1021Step = 1084 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredArg1.
            recoveredBlock1000Block1021PC := 1087.
        ].
        recoveredBlock1000Block1021Step = 1087 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) leftExpr.
            recoveredBlock1000Block1021PC := 1089.
        ].
        recoveredBlock1000Block1021Step = 1089 ifTrue: [
            recoveredBlock1000Block1021Stack2 := self.
            recoveredBlock1000Block1021PC := 1090.
        ].
        recoveredBlock1000Block1021Step = 1090 ifTrue: [
            recoveredBlock1000Block1021Stack2 := (recoveredBlock1000Block1021Stack2) ileBuilder.
            recoveredBlock1000Block1021PC := 1092.
        ].
        recoveredBlock1000Block1021Step = 1092 ifTrue: [
            recoveredBlock1000Block1021Stack3 := recoveredBlock1000Block1021Arg1.
            recoveredBlock1000Block1021PC := 1095.
        ].
        recoveredBlock1000Block1021Step = 1095 ifTrue: [
            recoveredBlock1000Block1021Stack3 := (recoveredBlock1000Block1021Stack3) denominator.
            recoveredBlock1000Block1021PC := 1097.
        ].
        recoveredBlock1000Block1021Step = 1097 ifTrue: [
            recoveredBlock1000Block1021Stack2 := (recoveredBlock1000Block1021Stack2) scalarConstant: (recoveredBlock1000Block1021Stack3).
            recoveredBlock1000Block1021PC := 1099.
        ].
        recoveredBlock1000Block1021Step = 1099 ifTrue: [
            recoveredBlock1000Block1021Stack3 := recoveredArg1.
            recoveredBlock1000Block1021PC := 1102.
        ].
        recoveredBlock1000Block1021Step = 1102 ifTrue: [
            recoveredBlock1000Block1021Stack3 := (recoveredBlock1000Block1021Stack3) ileBasicType.
            recoveredBlock1000Block1021PC := 1104.
        ].
        recoveredBlock1000Block1021Step = 1104 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) div: (recoveredBlock1000Block1021Stack2) type: (recoveredBlock1000Block1021Stack3).
            recoveredBlock1000Block1021PC := 1106.
        ].
        recoveredBlock1000Block1021Step = 1106 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1107.
        ].
        recoveredBlock1000Block1021Step = 1107 ifTrue: [
            recoveredLocal10 := recoveredBlock1000Block1021Stack2.
            recoveredBlock1000Block1021PC := 1110.
        ].
        recoveredBlock1000Block1021Step = 1110 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) isIleRepresentable.
            recoveredBlock1000Block1021PC := 1112.
        ].
        recoveredBlock1000Block1021Step = 1112 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1116] ifFalse: [recoveredBlock1000Block1021PC := 1202].
        ].
        recoveredBlock1000Block1021Step = 1116 ifTrue: [
            recoveredBlock1000Block1021Stack1 := self.
            recoveredBlock1000Block1021PC := 1117.
        ].
        recoveredBlock1000Block1021Step = 1117 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) ileBuilder.
            recoveredBlock1000Block1021PC := 1119.
        ].
        recoveredBlock1000Block1021Step = 1119 ifTrue: [
            recoveredBlock1000Block1021Stack2 := [
    | recoveredBlock1000Block1021Block1119Value0 recoveredBlock1000Block1021Block1119Value1 |
    recoveredBlock1000Block1021Block1119Value0 := [
    | recoveredBlock1000Block1021Block1119Block1126Value0 recoveredBlock1000Block1021Block1119Block1126Value1 recoveredBlock1000Block1021Block1119Block1126Value2 recoveredBlock1000Block1021Block1119Block1126Value3 recoveredBlock1000Block1021Block1119Block1126Value4 recoveredBlock1000Block1021Block1119Block1126Value5 recoveredBlock1000Block1021Block1119Block1126Value6 |
    recoveredBlock1000Block1021Block1119Block1126Value0 := recoveredArg1.
    recoveredBlock1000Block1021Block1119Block1126Value1 := recoveredLocal10.
    recoveredBlock1000Block1021Block1119Block1126Value2 := (self) ileBuilder.
    recoveredBlock1000Block1021Block1119Block1126Value3 := recoveredBlock1000Block1021Arg1.
    recoveredBlock1000Block1021Block1119Block1126Value4 := (recoveredBlock1000Block1021Block1119Block1126Value3) numerator.
    recoveredBlock1000Block1021Block1119Block1126Value5 := (recoveredBlock1000Block1021Block1119Block1126Value2) scalarConstant: (recoveredBlock1000Block1021Block1119Block1126Value4).
    recoveredBlock1000Block1021Block1119Block1126Value6 := (recoveredBlock1000Block1021Block1119Block1126Value0) createOpLeftExpr: (recoveredBlock1000Block1021Block1119Block1126Value1) rightExpr: (recoveredBlock1000Block1021Block1119Block1126Value5).
    recoveredBlock1000Block1021Block1119Block1126Value6
].
    recoveredBlock1000Block1021Block1119Value1 := (self) disableTransformationDo: (recoveredBlock1000Block1021Block1119Value0).
    recoveredBlock1000Block1021Block1119Value1
].
            recoveredBlock1000Block1021PC := 1154.
        ].
        recoveredBlock1000Block1021Step = 1154 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) disableFractionsDo: (recoveredBlock1000Block1021Stack2).
            recoveredBlock1000Block1021PC := 1156.
        ].
        recoveredBlock1000Block1021Step = 1156 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1157.
        ].
        recoveredBlock1000Block1021Step = 1157 ifTrue: [
            recoveredLocal2 := recoveredBlock1000Block1021Stack2.
            recoveredBlock1000Block1021PC := 1160.
        ].
        recoveredBlock1000Block1021Step = 1160 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) isIleRepresentable.
            recoveredBlock1000Block1021PC := 1162.
        ].
        recoveredBlock1000Block1021Step = 1162 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1166] ifFalse: [recoveredBlock1000Block1021PC := 1192].
        ].
        recoveredBlock1000Block1021Step = 1166 ifTrue: [
            recoveredBlock1000Block1021Stack1 := self.
            recoveredBlock1000Block1021PC := 1167.
        ].
        recoveredBlock1000Block1021Step = 1167 ifTrue: [
            recoveredBlock1000Block1021Stack2 := recoveredLocal2.
            recoveredBlock1000Block1021PC := 1170.
        ].
        recoveredBlock1000Block1021Step = 1170 ifTrue: [
            recoveredBlock1000Block1021Stack3 := recoveredArg1.
            recoveredBlock1000Block1021PC := 1173.
        ].
        recoveredBlock1000Block1021Step = 1173 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) isValidApproximation: (recoveredBlock1000Block1021Stack2) of: (recoveredBlock1000Block1021Stack3).
            recoveredBlock1000Block1021PC := 1175.
        ].
        recoveredBlock1000Block1021Step = 1175 ifTrue: [
            (recoveredBlock1000Block1021Stack1) ifTrue: [recoveredBlock1000Block1021PC := 1178] ifFalse: [recoveredBlock1000Block1021PC := 1188].
        ].
        recoveredBlock1000Block1021Step = 1178 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal2.
            recoveredBlock1000Block1021PC := 1181.
        ].
        recoveredBlock1000Block1021Step = 1181 ifTrue: [
            recoveredLocal7 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1184.
        ].
        recoveredBlock1000Block1021Step = 1184 ifTrue: [
            recoveredBlock1000Block1021Stack1 := true.
            recoveredBlock1000Block1021PC := 1185.
        ].
        recoveredBlock1000Block1021Step = 1185 ifTrue: [
            recoveredBlock1000Block1021Local1 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1188.
        ].
        recoveredBlock1000Block1021Step = 1188 ifTrue: [
            recoveredBlock1000Block1021PC := 1199.
        ].
        recoveredBlock1000Block1021Step = 1192 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal6.
            recoveredBlock1000Block1021PC := 1195.
        ].
        recoveredBlock1000Block1021Step = 1195 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) + (1).
            recoveredBlock1000Block1021PC := 1196.
        ].
        recoveredBlock1000Block1021Step = 1196 ifTrue: [
            recoveredLocal6 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1199.
        ].
        recoveredBlock1000Block1021Step = 1199 ifTrue: [
            recoveredBlock1000Block1021PC := 1209.
        ].
        recoveredBlock1000Block1021Step = 1202 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredLocal6.
            recoveredBlock1000Block1021PC := 1205.
        ].
        recoveredBlock1000Block1021Step = 1205 ifTrue: [
            recoveredBlock1000Block1021Stack1 := (recoveredBlock1000Block1021Stack1) + (1).
            recoveredBlock1000Block1021PC := 1206.
        ].
        recoveredBlock1000Block1021Step = 1206 ifTrue: [
            recoveredLocal6 := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021PC := 1209.
        ].
        recoveredBlock1000Block1021Step = 1209 ifTrue: [
            recoveredBlock1000Block1021Stack1 := recoveredBlock1000Block1021Local1.
            recoveredBlock1000Block1021PC := 1212.
        ].
        recoveredBlock1000Block1021Step = 1212 ifTrue: [
            recoveredBlock1000Block1021Result := recoveredBlock1000Block1021Stack1.
            recoveredBlock1000Block1021Done := true.
        ].
    ].
    recoveredBlock1000Block1021Result
].
    recoveredBlock1000Value5 := [
    | recoveredBlock1000Block1213Value0 recoveredBlock1000Block1213Value1 |
    recoveredBlock1000Block1213Value0 := recoveredLocal6.
    recoveredBlock1000Block1213Value1 := (recoveredBlock1000Block1213Value0) >= (10).
    recoveredBlock1000Block1213Value1
].
    recoveredBlock1000Value6 := (recoveredBlock1000Value0) rationalApproximationRasteredDivMulRange: (recoveredBlock1000Value3) test: (recoveredBlock1000Value4) cancel: (recoveredBlock1000Value5).
    recoveredBlock1000Value6
].
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1244] ifFalse: [recoveredPC := 1240].
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack2 := 'Call_63315'.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesArithOpServices.
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1477] ifFalse: [recoveredPC := 1258].
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock1266Stack0 recoveredBlock1266Stack1 recoveredBlock1266Stack2 recoveredBlock1266Stack3 recoveredBlock1266Stack4 recoveredBlock1266PC recoveredBlock1266Step recoveredBlock1266Done recoveredBlock1266Result |
    recoveredBlock1266Stack0 := self.
    recoveredBlock1266PC := 1272.
    recoveredBlock1266Done := false.
    [recoveredBlock1266Done not] whileTrue: [
        recoveredBlock1266Step := recoveredBlock1266PC.
        recoveredBlock1266Step = 1272 ifTrue: [
            recoveredBlock1266Stack1 := nil.
            recoveredBlock1266PC := 1273.
        ].
        recoveredBlock1266Step = 1273 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal5.
            recoveredBlock1266PC := 1276.
        ].
        recoveredBlock1266Step = 1276 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1278.
        ].
        recoveredBlock1266Step = 1278 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1282] ifFalse: [recoveredBlock1266PC := 1440].
        ].
        recoveredBlock1266Step = 1282 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal4.
            recoveredBlock1266PC := 1285.
        ].
        recoveredBlock1266Step = 1285 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1287.
        ].
        recoveredBlock1266Step = 1287 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1290] ifFalse: [recoveredBlock1266PC := 1440].
        ].
        recoveredBlock1266Step = 1290 ifTrue: [
            recoveredBlock1266PC := 1291.
        ].
        recoveredBlock1266Step = 1291 ifTrue: [
            recoveredBlock1266Stack1 := recoveredArg1.
            recoveredBlock1266PC := 1294.
        ].
        recoveredBlock1266Step = 1294 ifTrue: [
            recoveredBlock1266Stack1 := (recoveredBlock1266Stack1) leftExpr.
            recoveredBlock1266PC := 1296.
        ].
        recoveredBlock1266Step = 1296 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal4.
            recoveredBlock1266PC := 1299.
        ].
        recoveredBlock1266Step = 1299 ifTrue: [
            recoveredBlock1266Stack3 := nil.
            recoveredBlock1266PC := 1300.
        ].
        recoveredBlock1266Step = 1300 ifTrue: [
            recoveredBlock1266Stack1 := (recoveredBlock1266Stack1) div: (recoveredBlock1266Stack2) type: (recoveredBlock1266Stack3).
            recoveredBlock1266PC := 1302.
        ].
        recoveredBlock1266Step = 1302 ifTrue: [
            recoveredLocal10 := recoveredBlock1266Stack1.
            recoveredBlock1266PC := 1305.
        ].
        recoveredBlock1266Step = 1305 ifTrue: [
            recoveredBlock1266Stack1 := nil.
            recoveredBlock1266PC := 1306.
        ].
        recoveredBlock1266Step = 1306 ifTrue: [
            recoveredBlock1266Stack2 := recoveredArg1.
            recoveredBlock1266PC := 1309.
        ].
        recoveredBlock1266Step = 1309 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1311.
        ].
        recoveredBlock1266Step = 1311 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1314] ifFalse: [recoveredBlock1266PC := 1326].
        ].
        recoveredBlock1266Step = 1314 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal10.
            recoveredBlock1266PC := 1317.
        ].
        recoveredBlock1266Step = 1317 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1319.
        ].
        recoveredBlock1266Step = 1319 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1334] ifFalse: [recoveredBlock1266PC := 1322].
        ].
        recoveredBlock1266Step = 1322 ifTrue: [
            recoveredBlock1266PC := 1440.
        ].
        recoveredBlock1266Step = 1326 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal10.
            recoveredBlock1266PC := 1329.
        ].
        recoveredBlock1266Step = 1329 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentableDoubleBitSize.
            recoveredBlock1266PC := 1331.
        ].
        recoveredBlock1266Step = 1331 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1334] ifFalse: [recoveredBlock1266PC := 1440].
        ].
        recoveredBlock1266Step = 1334 ifTrue: [
            recoveredBlock1266PC := 1335.
        ].
        recoveredBlock1266Step = 1335 ifTrue: [
            recoveredBlock1266Stack1 := self.
            recoveredBlock1266PC := 1336.
        ].
        recoveredBlock1266Step = 1336 ifTrue: [
            recoveredBlock1266Stack1 := (recoveredBlock1266Stack1) ileBuilder.
            recoveredBlock1266PC := 1338.
        ].
        recoveredBlock1266Step = 1338 ifTrue: [
            recoveredBlock1266Stack2 := [
    | recoveredBlock1266Block1338Value0 recoveredBlock1266Block1338Value1 |
    recoveredBlock1266Block1338Value0 := [
    | recoveredBlock1266Block1338Block1344Value0 recoveredBlock1266Block1338Block1344Value1 recoveredBlock1266Block1338Block1344Value2 recoveredBlock1266Block1338Block1344Value3 |
    recoveredBlock1266Block1338Block1344Value0 := (self) generalOptimizationStrategy.
    recoveredBlock1266Block1338Block1344Value1 := (recoveredBlock1266Block1338Block1344Value0) constantFoldingScalarVisitor.
    recoveredBlock1266Block1338Block1344Value2 := [
    | recoveredBlock1266Block1338Block1344Block1354Value0 recoveredBlock1266Block1338Block1344Block1354Value1 recoveredBlock1266Block1338Block1344Block1354Value2 recoveredBlock1266Block1338Block1344Block1354Value3 |
    recoveredBlock1266Block1338Block1344Block1354Value0 := recoveredArg1.
    recoveredBlock1266Block1338Block1344Block1354Value1 := recoveredLocal10.
    recoveredBlock1266Block1338Block1344Block1354Value2 := recoveredLocal5.
    recoveredBlock1266Block1338Block1344Block1354Value3 := (recoveredBlock1266Block1338Block1344Block1354Value0) createOpLeftExpr: (recoveredBlock1266Block1338Block1344Block1354Value1) rightExpr: (recoveredBlock1266Block1338Block1344Block1354Value2).
    recoveredBlock1266Block1338Block1344Block1354Value3
].
    recoveredBlock1266Block1338Block1344Value3 := (recoveredBlock1266Block1338Block1344Value1) disableOptimizationsDo: (recoveredBlock1266Block1338Block1344Value2).
    recoveredBlock1266Block1338Block1344Value3
].
    recoveredBlock1266Block1338Value1 := (self) disableTransformationDo: (recoveredBlock1266Block1338Value0).
    recoveredBlock1266Block1338Value1
].
            recoveredBlock1266PC := 1378.
        ].
        recoveredBlock1266Step = 1378 ifTrue: [
            recoveredBlock1266Stack1 := (recoveredBlock1266Stack1) disableFractionsDo: (recoveredBlock1266Stack2).
            recoveredBlock1266PC := 1380.
        ].
        recoveredBlock1266Step = 1380 ifTrue: [
            recoveredLocal2 := recoveredBlock1266Stack1.
            recoveredBlock1266PC := 1383.
        ].
        recoveredBlock1266Step = 1383 ifTrue: [
            recoveredBlock1266Stack1 := nil.
            recoveredBlock1266PC := 1384.
        ].
        recoveredBlock1266Step = 1384 ifTrue: [
            recoveredBlock1266Stack2 := recoveredArg1.
            recoveredBlock1266PC := 1387.
        ].
        recoveredBlock1266Step = 1387 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1389.
        ].
        recoveredBlock1266Step = 1389 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1392] ifFalse: [recoveredBlock1266PC := 1404].
        ].
        recoveredBlock1266Step = 1392 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal2.
            recoveredBlock1266PC := 1395.
        ].
        recoveredBlock1266Step = 1395 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentable.
            recoveredBlock1266PC := 1397.
        ].
        recoveredBlock1266Step = 1397 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1412] ifFalse: [recoveredBlock1266PC := 1400].
        ].
        recoveredBlock1266Step = 1400 ifTrue: [
            recoveredBlock1266PC := 1440.
        ].
        recoveredBlock1266Step = 1404 ifTrue: [
            recoveredBlock1266Stack2 := recoveredLocal2.
            recoveredBlock1266PC := 1407.
        ].
        recoveredBlock1266Step = 1407 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) isIleRepresentableDoubleBitSize.
            recoveredBlock1266PC := 1409.
        ].
        recoveredBlock1266Step = 1409 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1412] ifFalse: [recoveredBlock1266PC := 1440].
        ].
        recoveredBlock1266Step = 1412 ifTrue: [
            recoveredBlock1266PC := 1413.
        ].
        recoveredBlock1266Step = 1413 ifTrue: [
            recoveredBlock1266Stack1 := nil.
            recoveredBlock1266PC := 1414.
        ].
        recoveredBlock1266Step = 1414 ifTrue: [
            recoveredBlock1266Stack2 := recoveredArg1.
            recoveredBlock1266PC := 1417.
        ].
        recoveredBlock1266Step = 1417 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) ileBasicInterval.
            recoveredBlock1266PC := 1419.
        ].
        recoveredBlock1266Step = 1419 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) rounded.
            recoveredBlock1266PC := 1421.
        ].
        recoveredBlock1266Step = 1421 ifTrue: [
            recoveredBlock1266Stack3 := recoveredLocal2.
            recoveredBlock1266PC := 1424.
        ].
        recoveredBlock1266Step = 1424 ifTrue: [
            recoveredBlock1266Stack3 := (recoveredBlock1266Stack3) interval.
            recoveredBlock1266PC := 1426.
        ].
        recoveredBlock1266Step = 1426 ifTrue: [
            recoveredBlock1266Stack2 := (recoveredBlock1266Stack2) includes: (recoveredBlock1266Stack3).
            recoveredBlock1266PC := 1428.
        ].
        recoveredBlock1266Step = 1428 ifTrue: [
            (recoveredBlock1266Stack2) ifTrue: [recoveredBlock1266PC := 1432] ifFalse: [recoveredBlock1266PC := 1440].
        ].
        recoveredBlock1266Step = 1432 ifTrue: [
            recoveredBlock1266PC := 1433.
        ].
        recoveredBlock1266Step = 1433 ifTrue: [
            recoveredBlock1266Stack1 := recoveredLocal2.
            recoveredBlock1266PC := 1436.
        ].
        recoveredBlock1266Step = 1436 ifTrue: [
            recoveredBlock1266Stack2 := recoveredBlock1266Stack1.
            recoveredBlock1266PC := 1437.
        ].
        recoveredBlock1266Step = 1437 ifTrue: [
            recoveredLocal7 := recoveredBlock1266Stack2.
            recoveredBlock1266PC := 1440.
        ].
        recoveredBlock1266Step = 1440 ifTrue: [
            recoveredBlock1266Result := recoveredBlock1266Stack1.
            recoveredBlock1266Done := true.
        ].
    ].
    recoveredBlock1266Result
].
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1454] ifFalse: [recoveredPC := 1450].
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1454 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock1455Value0 |
    recoveredBlock1455Value0 := recoveredArg2.
    recoveredBlock1455Value0
].
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack3 := [
    'The worst case variant of a mulConst with a fraction should always work.'
].
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1494] ifFalse: [recoveredPC := 1504].
        ].
        recoveredStep = 1494 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1586] ifFalse: [recoveredPC := 1504].
        ].
        recoveredStep = 1504 ifTrue: [
            recoveredPC := 1540.
        ].
        recoveredStep = 1508 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileDenomExpr.
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 1527.
        ].
        recoveredStep = 1527 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFractionalConstant: (recoveredStack2).
            recoveredPC := 1537.
        ].
        recoveredStep = 1537 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 1547.
        ].
        recoveredStep = 1547 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1550] ifFalse: [recoveredPC := 1567].
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumExpr.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1558] ifFalse: [recoveredPC := 1508].
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1567] ifFalse: [recoveredPC := 1508].
        ].
        recoveredStep = 1567 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 1576.
        ].
        recoveredStep = 1576 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 1581.
        ].
        recoveredStep = 1581 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 1585.
        ].
        recoveredStep = 1585 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1586 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock1594Stack0 recoveredBlock1594Stack1 recoveredBlock1594Stack2 recoveredBlock1594Stack3 recoveredBlock1594Stack4 recoveredBlock1594Stack5 recoveredBlock1594PC recoveredBlock1594Step recoveredBlock1594Done recoveredBlock1594Result |
    recoveredBlock1594Stack0 := self.
    recoveredBlock1594PC := 1600.
    recoveredBlock1594Done := false.
    [recoveredBlock1594Done not] whileTrue: [
        recoveredBlock1594Step := recoveredBlock1594PC.
        recoveredBlock1594Step = 1600 ifTrue: [
            recoveredBlock1594Stack1 := 0.
            recoveredBlock1594PC := 1602.
        ].
        recoveredBlock1594Step = 1602 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Stack1.
            recoveredBlock1594PC := 1605.
        ].
        recoveredBlock1594Step = 1605 ifTrue: [
            recoveredBlock1594Stack1 := recoveredArg1.
            recoveredBlock1594PC := 1608.
        ].
        recoveredBlock1594Step = 1608 ifTrue: [
            recoveredBlock1594Stack1 := (recoveredBlock1594Stack1) rightExpr.
            recoveredBlock1594PC := 1609.
        ].
        recoveredBlock1594Step = 1609 ifTrue: [
            recoveredBlock1594Stack1 := (recoveredBlock1594Stack1) value.
            recoveredBlock1594PC := 1611.
        ].
        recoveredBlock1594Step = 1611 ifTrue: [
            recoveredLocal8 := recoveredBlock1594Stack1.
            recoveredBlock1594PC := 1614.
        ].
        recoveredBlock1594Step = 1614 ifTrue: [
            recoveredBlock1594Stack1 := recoveredLocal8.
            recoveredBlock1594PC := 1617.
        ].
        recoveredBlock1594Step = 1617 ifTrue: [
            recoveredBlock1594Stack2 := recoveredArg1.
            recoveredBlock1594PC := 1620.
        ].
        recoveredBlock1594Step = 1620 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) interval.
            recoveredBlock1594PC := 1622.
        ].
        recoveredBlock1594Step = 1622 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) right.
            recoveredBlock1594PC := 1624.
        ].
        recoveredBlock1594Step = 1624 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) + (-1).
            recoveredBlock1594PC := 1625.
        ].
        recoveredBlock1594Step = 1625 ifTrue: [
            recoveredBlock1594Stack3 := [:recoveredBlock1594Block1625Arg1 | 
    | recoveredBlock1594Block1625Local1 recoveredBlock1594Block1625Stack0 recoveredBlock1594Block1625Stack1 recoveredBlock1594Block1625Stack2 recoveredBlock1594Block1625Stack3 recoveredBlock1594Block1625Stack4 recoveredBlock1594Block1625PC recoveredBlock1594Block1625Step recoveredBlock1594Block1625Done recoveredBlock1594Block1625Result |
    recoveredBlock1594Block1625Stack0 := self.
    recoveredBlock1594Block1625PC := 1632.
    recoveredBlock1594Block1625Done := false.
    [recoveredBlock1594Block1625Done not] whileTrue: [
        recoveredBlock1594Block1625Step := recoveredBlock1594Block1625PC.
        recoveredBlock1594Block1625Step = 1632 ifTrue: [
            recoveredBlock1594Block1625Stack1 := false.
            recoveredBlock1594Block1625PC := 1633.
        ].
        recoveredBlock1594Block1625Step = 1633 ifTrue: [
            recoveredBlock1594Block1625Local1 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1634.
        ].
        recoveredBlock1594Block1625Step = 1634 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1635.
        ].
        recoveredBlock1594Block1625Step = 1635 ifTrue: [
            recoveredBlock1594Block1625Stack2 := 0.
            recoveredBlock1594Block1625PC := 1637.
        ].
        recoveredBlock1594Block1625Step = 1637 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) = (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1638.
        ].
        recoveredBlock1594Block1625Step = 1638 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1773] ifFalse: [recoveredBlock1594Block1625PC := 1642].
        ].
        recoveredBlock1594Block1625Step = 1642 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal8.
            recoveredBlock1594Block1625PC := 1645.
        ].
        recoveredBlock1594Block1625Step = 1645 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1646.
        ].
        recoveredBlock1594Block1625Step = 1646 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) / (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1648.
        ].
        recoveredBlock1594Block1625Step = 1648 ifTrue: [
            recoveredBlock1594Block1625Stack2 := #[43 135 22 217 206 247 239 63].
            recoveredBlock1594Block1625PC := 1650.
        ].
        recoveredBlock1594Block1625Step = 1650 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) > (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1651.
        ].
        recoveredBlock1594Block1625Step = 1651 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1654] ifFalse: [recoveredBlock1594Block1625PC := 1773].
        ].
        recoveredBlock1594Block1625Step = 1654 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal8.
            recoveredBlock1594Block1625PC := 1657.
        ].
        recoveredBlock1594Block1625Step = 1657 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1658.
        ].
        recoveredBlock1594Block1625Step = 1658 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) / (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1660.
        ].
        recoveredBlock1594Block1625Step = 1660 ifTrue: [
            recoveredBlock1594Block1625Stack2 := #[106 188 116 147 24 4 240 63].
            recoveredBlock1594Block1625PC := 1662.
        ].
        recoveredBlock1594Block1625Step = 1662 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) < (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1663.
        ].
        recoveredBlock1594Block1625Step = 1663 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1666] ifFalse: [recoveredBlock1594Block1625PC := 1773].
        ].
        recoveredBlock1594Block1625Step = 1666 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal8.
            recoveredBlock1594Block1625PC := 1669.
        ].
        recoveredBlock1594Block1625Step = 1669 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) value.
            recoveredBlock1594Block1625PC := 1671.
        ].
        recoveredBlock1594Block1625Step = 1671 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1672.
        ].
        recoveredBlock1594Block1625Step = 1672 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) equals: (recoveredBlock1594Block1625Stack2).
            recoveredBlock1594Block1625PC := 1674.
        ].
        recoveredBlock1594Block1625Step = 1674 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1773] ifFalse: [recoveredBlock1594Block1625PC := 1678].
        ].
        recoveredBlock1594Block1625Step = 1678 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredArg1.
            recoveredBlock1594Block1625PC := 1681.
        ].
        recoveredBlock1594Block1625Step = 1681 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) leftExpr.
            recoveredBlock1594Block1625PC := 1683.
        ].
        recoveredBlock1594Block1625Step = 1683 ifTrue: [
            recoveredBlock1594Block1625Stack2 := self.
            recoveredBlock1594Block1625PC := 1684.
        ].
        recoveredBlock1594Block1625Step = 1684 ifTrue: [
            recoveredBlock1594Block1625Stack2 := (recoveredBlock1594Block1625Stack2) ileBuilder.
            recoveredBlock1594Block1625PC := 1686.
        ].
        recoveredBlock1594Block1625Step = 1686 ifTrue: [
            recoveredBlock1594Block1625Stack3 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1687.
        ].
        recoveredBlock1594Block1625Step = 1687 ifTrue: [
            recoveredBlock1594Block1625Stack3 := (recoveredBlock1594Block1625Stack3) numerator.
            recoveredBlock1594Block1625PC := 1689.
        ].
        recoveredBlock1594Block1625Step = 1689 ifTrue: [
            recoveredBlock1594Block1625Stack2 := (recoveredBlock1594Block1625Stack2) scalarConstant: (recoveredBlock1594Block1625Stack3).
            recoveredBlock1594Block1625PC := 1691.
        ].
        recoveredBlock1594Block1625Step = 1691 ifTrue: [
            recoveredBlock1594Block1625Stack3 := recoveredArg1.
            recoveredBlock1594Block1625PC := 1694.
        ].
        recoveredBlock1594Block1625Step = 1694 ifTrue: [
            recoveredBlock1594Block1625Stack3 := (recoveredBlock1594Block1625Stack3) ileBasicType.
            recoveredBlock1594Block1625PC := 1696.
        ].
        recoveredBlock1594Block1625Step = 1696 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) mul: (recoveredBlock1594Block1625Stack2) type: (recoveredBlock1594Block1625Stack3).
            recoveredBlock1594Block1625PC := 1698.
        ].
        recoveredBlock1594Block1625Step = 1698 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1699.
        ].
        recoveredBlock1594Block1625Step = 1699 ifTrue: [
            recoveredLocal10 := recoveredBlock1594Block1625Stack2.
            recoveredBlock1594Block1625PC := 1702.
        ].
        recoveredBlock1594Block1625Step = 1702 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) isIleRepresentable.
            recoveredBlock1594Block1625PC := 1704.
        ].
        recoveredBlock1594Block1625Step = 1704 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1708] ifFalse: [recoveredBlock1594Block1625PC := 1766].
        ].
        recoveredBlock1594Block1625Step = 1708 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal10.
            recoveredBlock1594Block1625PC := 1711.
        ].
        recoveredBlock1594Block1625Step = 1711 ifTrue: [
            recoveredBlock1594Block1625Stack2 := self.
            recoveredBlock1594Block1625PC := 1712.
        ].
        recoveredBlock1594Block1625Step = 1712 ifTrue: [
            recoveredBlock1594Block1625Stack2 := (recoveredBlock1594Block1625Stack2) ileBuilder.
            recoveredBlock1594Block1625PC := 1714.
        ].
        recoveredBlock1594Block1625Step = 1714 ifTrue: [
            recoveredBlock1594Block1625Stack3 := recoveredBlock1594Block1625Arg1.
            recoveredBlock1594Block1625PC := 1715.
        ].
        recoveredBlock1594Block1625Step = 1715 ifTrue: [
            recoveredBlock1594Block1625Stack3 := (recoveredBlock1594Block1625Stack3) denominator.
            recoveredBlock1594Block1625PC := 1717.
        ].
        recoveredBlock1594Block1625Step = 1717 ifTrue: [
            recoveredBlock1594Block1625Stack2 := (recoveredBlock1594Block1625Stack2) scalarConstant: (recoveredBlock1594Block1625Stack3).
            recoveredBlock1594Block1625PC := 1719.
        ].
        recoveredBlock1594Block1625Step = 1719 ifTrue: [
            recoveredBlock1594Block1625Stack3 := nil.
            recoveredBlock1594Block1625PC := 1720.
        ].
        recoveredBlock1594Block1625Step = 1720 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) div: (recoveredBlock1594Block1625Stack2) type: (recoveredBlock1594Block1625Stack3).
            recoveredBlock1594Block1625PC := 1722.
        ].
        recoveredBlock1594Block1625Step = 1722 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1723.
        ].
        recoveredBlock1594Block1625Step = 1723 ifTrue: [
            recoveredLocal2 := recoveredBlock1594Block1625Stack2.
            recoveredBlock1594Block1625PC := 1726.
        ].
        recoveredBlock1594Block1625Step = 1726 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) isIleRepresentable.
            recoveredBlock1594Block1625PC := 1728.
        ].
        recoveredBlock1594Block1625Step = 1728 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1732] ifFalse: [recoveredBlock1594Block1625PC := 1756].
        ].
        recoveredBlock1594Block1625Step = 1732 ifTrue: [
            recoveredBlock1594Block1625Stack1 := self.
            recoveredBlock1594Block1625PC := 1733.
        ].
        recoveredBlock1594Block1625Step = 1733 ifTrue: [
            recoveredBlock1594Block1625Stack2 := recoveredLocal2.
            recoveredBlock1594Block1625PC := 1736.
        ].
        recoveredBlock1594Block1625Step = 1736 ifTrue: [
            recoveredBlock1594Block1625Stack3 := recoveredArg1.
            recoveredBlock1594Block1625PC := 1739.
        ].
        recoveredBlock1594Block1625Step = 1739 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) isValidApproximation: (recoveredBlock1594Block1625Stack2) of: (recoveredBlock1594Block1625Stack3).
            recoveredBlock1594Block1625PC := 1741.
        ].
        recoveredBlock1594Block1625Step = 1741 ifTrue: [
            (recoveredBlock1594Block1625Stack1) ifTrue: [recoveredBlock1594Block1625PC := 1744] ifFalse: [recoveredBlock1594Block1625PC := 1752].
        ].
        recoveredBlock1594Block1625Step = 1744 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal2.
            recoveredBlock1594Block1625PC := 1747.
        ].
        recoveredBlock1594Block1625Step = 1747 ifTrue: [
            recoveredLocal7 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1750.
        ].
        recoveredBlock1594Block1625Step = 1750 ifTrue: [
            recoveredBlock1594Block1625Stack1 := true.
            recoveredBlock1594Block1625PC := 1751.
        ].
        recoveredBlock1594Block1625Step = 1751 ifTrue: [
            recoveredBlock1594Block1625Local1 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1752.
        ].
        recoveredBlock1594Block1625Step = 1752 ifTrue: [
            recoveredBlock1594Block1625PC := 1763.
        ].
        recoveredBlock1594Block1625Step = 1756 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal6.
            recoveredBlock1594Block1625PC := 1759.
        ].
        recoveredBlock1594Block1625Step = 1759 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) + (1).
            recoveredBlock1594Block1625PC := 1760.
        ].
        recoveredBlock1594Block1625Step = 1760 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1763.
        ].
        recoveredBlock1594Block1625Step = 1763 ifTrue: [
            recoveredBlock1594Block1625PC := 1773.
        ].
        recoveredBlock1594Block1625Step = 1766 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredLocal6.
            recoveredBlock1594Block1625PC := 1769.
        ].
        recoveredBlock1594Block1625Step = 1769 ifTrue: [
            recoveredBlock1594Block1625Stack1 := (recoveredBlock1594Block1625Stack1) + (1).
            recoveredBlock1594Block1625PC := 1770.
        ].
        recoveredBlock1594Block1625Step = 1770 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625PC := 1773.
        ].
        recoveredBlock1594Block1625Step = 1773 ifTrue: [
            recoveredBlock1594Block1625Stack1 := recoveredBlock1594Block1625Local1.
            recoveredBlock1594Block1625PC := 1774.
        ].
        recoveredBlock1594Block1625Step = 1774 ifTrue: [
            recoveredBlock1594Block1625Result := recoveredBlock1594Block1625Stack1.
            recoveredBlock1594Block1625Done := true.
        ].
    ].
    recoveredBlock1594Block1625Result
].
            recoveredBlock1594PC := 1775.
        ].
        recoveredBlock1594Step = 1775 ifTrue: [
            recoveredBlock1594Stack4 := [
    | recoveredBlock1594Block1775Value0 recoveredBlock1594Block1775Value1 |
    recoveredBlock1594Block1775Value0 := recoveredLocal6.
    recoveredBlock1594Block1775Value1 := (recoveredBlock1594Block1775Value0) >= (10).
    recoveredBlock1594Block1775Value1
].
            recoveredBlock1594PC := 1789.
        ].
        recoveredBlock1594Step = 1789 ifTrue: [
            (recoveredBlock1594Stack1) rationalApproximationRasteredMaxNumerator: (recoveredBlock1594Stack2) test: (recoveredBlock1594Stack3) cancel: (recoveredBlock1594Stack4).
            recoveredBlock1594PC := 1793.
        ].
        recoveredBlock1594Step = 1793 ifTrue: [
            recoveredBlock1594Stack1 := recoveredLocal7.
            recoveredBlock1594PC := 1796.
        ].
        recoveredBlock1594Step = 1796 ifTrue: [
            (recoveredBlock1594Stack1 == nil) ifTrue: [recoveredBlock1594PC := 1804] ifFalse: [recoveredBlock1594PC := 1800].
        ].
        recoveredBlock1594Step = 1800 ifTrue: [
            recoveredBlock1594Stack1 := recoveredLocal7.
            recoveredBlock1594PC := 1803.
        ].
        recoveredBlock1594Step = 1803 ifTrue: [
            ^recoveredBlock1594Stack1
        ].
        recoveredBlock1594Step = 1804 ifTrue: [
            recoveredBlock1594Stack1 := 0.
            recoveredBlock1594PC := 1806.
        ].
        recoveredBlock1594Step = 1806 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Stack1.
            recoveredBlock1594PC := 1809.
        ].
        recoveredBlock1594Step = 1809 ifTrue: [
            recoveredBlock1594Stack1 := recoveredLocal8.
            recoveredBlock1594PC := 1812.
        ].
        recoveredBlock1594Step = 1812 ifTrue: [
            recoveredBlock1594Stack2 := recoveredArg1.
            recoveredBlock1594PC := 1815.
        ].
        recoveredBlock1594Step = 1815 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) rightExpr.
            recoveredBlock1594PC := 1816.
        ].
        recoveredBlock1594Step = 1816 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) value.
            recoveredBlock1594PC := 1818.
        ].
        recoveredBlock1594Step = 1818 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) numerator.
            recoveredBlock1594PC := 1820.
        ].
        recoveredBlock1594Step = 1820 ifTrue: [
            recoveredBlock1594Stack2 := (recoveredBlock1594Stack2) abs.
            recoveredBlock1594PC := 1822.
        ].
        recoveredBlock1594Step = 1822 ifTrue: [
            recoveredBlock1594Stack3 := [:recoveredBlock1594Block1822Arg1 | 
    | recoveredBlock1594Block1822Local1 recoveredBlock1594Block1822Stack0 recoveredBlock1594Block1822Stack1 recoveredBlock1594Block1822Stack2 recoveredBlock1594Block1822Stack3 recoveredBlock1594Block1822Stack4 recoveredBlock1594Block1822PC recoveredBlock1594Block1822Step recoveredBlock1594Block1822Done recoveredBlock1594Block1822Result |
    recoveredBlock1594Block1822Stack0 := self.
    recoveredBlock1594Block1822PC := 1828.
    recoveredBlock1594Block1822Done := false.
    [recoveredBlock1594Block1822Done not] whileTrue: [
        recoveredBlock1594Block1822Step := recoveredBlock1594Block1822PC.
        recoveredBlock1594Block1822Step = 1828 ifTrue: [
            recoveredBlock1594Block1822Stack1 := false.
            recoveredBlock1594Block1822PC := 1829.
        ].
        recoveredBlock1594Block1822Step = 1829 ifTrue: [
            recoveredBlock1594Block1822Local1 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1830.
        ].
        recoveredBlock1594Block1822Step = 1830 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1831.
        ].
        recoveredBlock1594Block1822Step = 1831 ifTrue: [
            recoveredBlock1594Block1822Stack2 := 0.
            recoveredBlock1594Block1822PC := 1833.
        ].
        recoveredBlock1594Block1822Step = 1833 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) = (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1834.
        ].
        recoveredBlock1594Block1822Step = 1834 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1979] ifFalse: [recoveredBlock1594Block1822PC := 1838].
        ].
        recoveredBlock1594Block1822Step = 1838 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal8.
            recoveredBlock1594Block1822PC := 1841.
        ].
        recoveredBlock1594Block1822Step = 1841 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1842.
        ].
        recoveredBlock1594Block1822Step = 1842 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) / (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1844.
        ].
        recoveredBlock1594Block1822Step = 1844 ifTrue: [
            recoveredBlock1594Block1822Stack2 := #[43 135 22 217 206 247 239 63].
            recoveredBlock1594Block1822PC := 1846.
        ].
        recoveredBlock1594Block1822Step = 1846 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) > (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1847.
        ].
        recoveredBlock1594Block1822Step = 1847 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1850] ifFalse: [recoveredBlock1594Block1822PC := 1979].
        ].
        recoveredBlock1594Block1822Step = 1850 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal8.
            recoveredBlock1594Block1822PC := 1853.
        ].
        recoveredBlock1594Block1822Step = 1853 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1854.
        ].
        recoveredBlock1594Block1822Step = 1854 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) / (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1856.
        ].
        recoveredBlock1594Block1822Step = 1856 ifTrue: [
            recoveredBlock1594Block1822Stack2 := #[106 188 116 147 24 4 240 63].
            recoveredBlock1594Block1822PC := 1858.
        ].
        recoveredBlock1594Block1822Step = 1858 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) < (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1859.
        ].
        recoveredBlock1594Block1822Step = 1859 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1862] ifFalse: [recoveredBlock1594Block1822PC := 1979].
        ].
        recoveredBlock1594Block1822Step = 1862 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal8.
            recoveredBlock1594Block1822PC := 1865.
        ].
        recoveredBlock1594Block1822Step = 1865 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) value.
            recoveredBlock1594Block1822PC := 1867.
        ].
        recoveredBlock1594Block1822Step = 1867 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1868.
        ].
        recoveredBlock1594Block1822Step = 1868 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) equals: (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1870.
        ].
        recoveredBlock1594Block1822Step = 1870 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1979] ifFalse: [recoveredBlock1594Block1822PC := 1874].
        ].
        recoveredBlock1594Block1822Step = 1874 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredArg1.
            recoveredBlock1594Block1822PC := 1877.
        ].
        recoveredBlock1594Block1822Step = 1877 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) leftExpr.
            recoveredBlock1594Block1822PC := 1879.
        ].
        recoveredBlock1594Block1822Step = 1879 ifTrue: [
            recoveredBlock1594Block1822Stack2 := self.
            recoveredBlock1594Block1822PC := 1880.
        ].
        recoveredBlock1594Block1822Step = 1880 ifTrue: [
            recoveredBlock1594Block1822Stack2 := (recoveredBlock1594Block1822Stack2) ileBuilder.
            recoveredBlock1594Block1822PC := 1882.
        ].
        recoveredBlock1594Block1822Step = 1882 ifTrue: [
            recoveredBlock1594Block1822Stack3 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1883.
        ].
        recoveredBlock1594Block1822Step = 1883 ifTrue: [
            recoveredBlock1594Block1822Stack3 := (recoveredBlock1594Block1822Stack3) denominator.
            recoveredBlock1594Block1822PC := 1885.
        ].
        recoveredBlock1594Block1822Step = 1885 ifTrue: [
            recoveredBlock1594Block1822Stack2 := (recoveredBlock1594Block1822Stack2) scalarConstant: (recoveredBlock1594Block1822Stack3).
            recoveredBlock1594Block1822PC := 1887.
        ].
        recoveredBlock1594Block1822Step = 1887 ifTrue: [
            recoveredBlock1594Block1822Stack3 := recoveredArg1.
            recoveredBlock1594Block1822PC := 1890.
        ].
        recoveredBlock1594Block1822Step = 1890 ifTrue: [
            recoveredBlock1594Block1822Stack3 := (recoveredBlock1594Block1822Stack3) ileBasicType.
            recoveredBlock1594Block1822PC := 1892.
        ].
        recoveredBlock1594Block1822Step = 1892 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) div: (recoveredBlock1594Block1822Stack2) type: (recoveredBlock1594Block1822Stack3).
            recoveredBlock1594Block1822PC := 1894.
        ].
        recoveredBlock1594Block1822Step = 1894 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1895.
        ].
        recoveredBlock1594Block1822Step = 1895 ifTrue: [
            recoveredLocal10 := recoveredBlock1594Block1822Stack2.
            recoveredBlock1594Block1822PC := 1898.
        ].
        recoveredBlock1594Block1822Step = 1898 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) isIleRepresentable.
            recoveredBlock1594Block1822PC := 1900.
        ].
        recoveredBlock1594Block1822Step = 1900 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1904] ifFalse: [recoveredBlock1594Block1822PC := 1972].
        ].
        recoveredBlock1594Block1822Step = 1904 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal10.
            recoveredBlock1594Block1822PC := 1907.
        ].
        recoveredBlock1594Block1822Step = 1907 ifTrue: [
            recoveredBlock1594Block1822Stack2 := self.
            recoveredBlock1594Block1822PC := 1908.
        ].
        recoveredBlock1594Block1822Step = 1908 ifTrue: [
            recoveredBlock1594Block1822Stack2 := (recoveredBlock1594Block1822Stack2) ileBuilder.
            recoveredBlock1594Block1822PC := 1910.
        ].
        recoveredBlock1594Block1822Step = 1910 ifTrue: [
            recoveredBlock1594Block1822Stack3 := recoveredBlock1594Block1822Arg1.
            recoveredBlock1594Block1822PC := 1911.
        ].
        recoveredBlock1594Block1822Step = 1911 ifTrue: [
            recoveredBlock1594Block1822Stack3 := (recoveredBlock1594Block1822Stack3) numerator.
            recoveredBlock1594Block1822PC := 1913.
        ].
        recoveredBlock1594Block1822Step = 1913 ifTrue: [
            recoveredBlock1594Block1822Stack2 := (recoveredBlock1594Block1822Stack2) scalarConstant: (recoveredBlock1594Block1822Stack3).
            recoveredBlock1594Block1822PC := 1915.
        ].
        recoveredBlock1594Block1822Step = 1915 ifTrue: [
            recoveredBlock1594Block1822Stack3 := recoveredArg1.
            recoveredBlock1594Block1822PC := 1918.
        ].
        recoveredBlock1594Block1822Step = 1918 ifTrue: [
            recoveredBlock1594Block1822Stack3 := (recoveredBlock1594Block1822Stack3) ileBasicType.
            recoveredBlock1594Block1822PC := 1920.
        ].
        recoveredBlock1594Block1822Step = 1920 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) mul: (recoveredBlock1594Block1822Stack2) type: (recoveredBlock1594Block1822Stack3).
            recoveredBlock1594Block1822PC := 1922.
        ].
        recoveredBlock1594Block1822Step = 1922 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1923.
        ].
        recoveredBlock1594Block1822Step = 1923 ifTrue: [
            recoveredLocal2 := recoveredBlock1594Block1822Stack2.
            recoveredBlock1594Block1822PC := 1926.
        ].
        recoveredBlock1594Block1822Step = 1926 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) isIleRepresentable.
            recoveredBlock1594Block1822PC := 1928.
        ].
        recoveredBlock1594Block1822Step = 1928 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1932] ifFalse: [recoveredBlock1594Block1822PC := 1962].
        ].
        recoveredBlock1594Block1822Step = 1932 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredArg1.
            recoveredBlock1594Block1822PC := 1935.
        ].
        recoveredBlock1594Block1822Step = 1935 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) ileBasicInterval.
            recoveredBlock1594Block1822PC := 1937.
        ].
        recoveredBlock1594Block1822Step = 1937 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) rounded.
            recoveredBlock1594Block1822PC := 1939.
        ].
        recoveredBlock1594Block1822Step = 1939 ifTrue: [
            recoveredBlock1594Block1822Stack2 := recoveredLocal2.
            recoveredBlock1594Block1822PC := 1942.
        ].
        recoveredBlock1594Block1822Step = 1942 ifTrue: [
            recoveredBlock1594Block1822Stack2 := (recoveredBlock1594Block1822Stack2) interval.
            recoveredBlock1594Block1822PC := 1944.
        ].
        recoveredBlock1594Block1822Step = 1944 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) includes: (recoveredBlock1594Block1822Stack2).
            recoveredBlock1594Block1822PC := 1946.
        ].
        recoveredBlock1594Block1822Step = 1946 ifTrue: [
            (recoveredBlock1594Block1822Stack1) ifTrue: [recoveredBlock1594Block1822PC := 1950] ifFalse: [recoveredBlock1594Block1822PC := 1958].
        ].
        recoveredBlock1594Block1822Step = 1950 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal2.
            recoveredBlock1594Block1822PC := 1953.
        ].
        recoveredBlock1594Block1822Step = 1953 ifTrue: [
            recoveredLocal7 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1956.
        ].
        recoveredBlock1594Block1822Step = 1956 ifTrue: [
            recoveredBlock1594Block1822Stack1 := true.
            recoveredBlock1594Block1822PC := 1957.
        ].
        recoveredBlock1594Block1822Step = 1957 ifTrue: [
            recoveredBlock1594Block1822Local1 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1958.
        ].
        recoveredBlock1594Block1822Step = 1958 ifTrue: [
            recoveredBlock1594Block1822PC := 1969.
        ].
        recoveredBlock1594Block1822Step = 1962 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal6.
            recoveredBlock1594Block1822PC := 1965.
        ].
        recoveredBlock1594Block1822Step = 1965 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) + (1).
            recoveredBlock1594Block1822PC := 1966.
        ].
        recoveredBlock1594Block1822Step = 1966 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1969.
        ].
        recoveredBlock1594Block1822Step = 1969 ifTrue: [
            recoveredBlock1594Block1822PC := 1979.
        ].
        recoveredBlock1594Block1822Step = 1972 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredLocal6.
            recoveredBlock1594Block1822PC := 1975.
        ].
        recoveredBlock1594Block1822Step = 1975 ifTrue: [
            recoveredBlock1594Block1822Stack1 := (recoveredBlock1594Block1822Stack1) + (1).
            recoveredBlock1594Block1822PC := 1976.
        ].
        recoveredBlock1594Block1822Step = 1976 ifTrue: [
            recoveredLocal6 := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822PC := 1979.
        ].
        recoveredBlock1594Block1822Step = 1979 ifTrue: [
            recoveredBlock1594Block1822Stack1 := recoveredBlock1594Block1822Local1.
            recoveredBlock1594Block1822PC := 1980.
        ].
        recoveredBlock1594Block1822Step = 1980 ifTrue: [
            recoveredBlock1594Block1822Result := recoveredBlock1594Block1822Stack1.
            recoveredBlock1594Block1822Done := true.
        ].
    ].
    recoveredBlock1594Block1822Result
].
            recoveredBlock1594PC := 1981.
        ].
        recoveredBlock1594Step = 1981 ifTrue: [
            recoveredBlock1594Stack4 := [
    | recoveredBlock1594Block1981Value0 recoveredBlock1594Block1981Value1 |
    recoveredBlock1594Block1981Value0 := recoveredLocal6.
    recoveredBlock1594Block1981Value1 := (recoveredBlock1594Block1981Value0) >= (10).
    recoveredBlock1594Block1981Value1
].
            recoveredBlock1594PC := 1995.
        ].
        recoveredBlock1594Step = 1995 ifTrue: [
            (recoveredBlock1594Stack1) rationalApproximationRasteredMaxNumerator: (recoveredBlock1594Stack2) test: (recoveredBlock1594Stack3) cancel: (recoveredBlock1594Stack4).
            recoveredBlock1594PC := 1999.
        ].
        recoveredBlock1594Step = 1999 ifTrue: [
            recoveredBlock1594Stack1 := nil.
            recoveredBlock1594PC := 2000.
        ].
        recoveredBlock1594Step = 2000 ifTrue: [
            recoveredBlock1594Stack2 := recoveredLocal7.
            recoveredBlock1594PC := 2003.
        ].
        recoveredBlock1594Step = 2003 ifTrue: [
            (recoveredBlock1594Stack2 == nil) ifTrue: [recoveredBlock1594PC := 2011] ifFalse: [recoveredBlock1594PC := 2006].
        ].
        recoveredBlock1594Step = 2006 ifTrue: [
            recoveredBlock1594PC := 2007.
        ].
        recoveredBlock1594Step = 2007 ifTrue: [
            recoveredBlock1594Stack1 := recoveredLocal7.
            recoveredBlock1594PC := 2010.
        ].
        recoveredBlock1594Step = 2010 ifTrue: [
            ^recoveredBlock1594Stack1
        ].
        recoveredBlock1594Step = 2011 ifTrue: [
            recoveredBlock1594Result := recoveredBlock1594Stack1.
            recoveredBlock1594Done := true.
        ].
    ].
    recoveredBlock1594Result
].
            recoveredPC := 2012.
        ].
        recoveredStep = 2012 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 2014.
        ].
        recoveredStep = 2014 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 2015.
        ].
        recoveredStep = 2015 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 2019.
        ].
        recoveredStep = 2019 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 2023.
        ].
        recoveredStep = 2023 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2024.
        ].
        recoveredStep = 2024 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 2027.
        ].
        recoveredStep = 2027 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 2031.
        ].
        recoveredStep = 2031 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 2034.
        ].
        recoveredStep = 2034 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 2037.
        ].
        recoveredStep = 2037 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

