"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200386d0; bytecode file offset 0x935c54"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
toBeExpandedRepresentableFraction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) toBeExpandedValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200399a4; bytecode file offset 0x938608"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
addExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addSubExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a448; bytecode file offset 0x938608"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
greaterEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) binaryRelNoEqualExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b6f0; bytecode file offset 0x938608"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
lessEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) binaryRelNoEqualExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b714; bytecode file offset 0x938608"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
subExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) addSubExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20087698; bytecode file offset 0x983f58"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
ileFraction: recoveredArg1 numerator: recoveredArg2 denominator: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) toBeExpandedValue.
    recoveredValue3 := (recoveredValue0) createIntConstant: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca780; bytecode file offset 0x9c705c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
maxLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileBasicValue.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) ileBasicValue.
    recoveredValue5 := (recoveredValue2) max: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) scalarConstant: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200ca798; bytecode file offset 0x9c705c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
minLeftConst: recoveredArg1 rightConst: recoveredArg2 type: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileBasicValue.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) ileBasicValue.
    recoveredValue5 := (recoveredValue2) min: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) scalarConstant: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200deccc; bytecode file offset 0x9db590"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryArithOpExpr: recoveredArg1 mulConstant: recoveredArg2 type: recoveredArg3 onSuccess: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) binaryArithOpExpr: (recoveredValue0) mulConstant: (recoveredValue1) type: (recoveredValue2) onSuccess: (recoveredValue3) inverse: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200decd8; bytecode file offset 0x9db590"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryArithOpExpr: recoveredArg1 divConstant: recoveredArg2 type: recoveredArg3 onSuccess: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) binaryArithOpExpr: (recoveredValue0) divConstant: (recoveredValue1) type: (recoveredValue2) onSuccess: (recoveredValue3) inverse: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20105998; bytecode file offset 0xa0224c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
allowNoOverflowOptimization
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allowNoOverflowOptimization.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            allowNoOverflowOptimization := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := allowNoOverflowOptimization.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010f660; bytecode file offset 0xa0bf2c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
anyExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileAcceptNodeVisitor: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201222d4; bytecode file offset 0xa1eb90"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
returnConst: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleFloatConstantType: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201484e8; bytecode file offset 0xa44da8"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
divLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnConst: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201689ec; bytecode file offset 0xa652b4"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
remLeftConstant: recoveredArg1 rightConstant: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) intRem: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201da2ac; bytecode file offset 0xad6b7c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryRelNoEqualExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleScalarConstant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
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
            recoveredStack1 := (recoveredStack1) isIleScalarConstant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) compareIntervals.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBoolConstant: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelExpr: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8160; bytecode file offset 0xae4a20"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
disableNoOverflowOptimizationDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowNoOverflowOptimization.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            allowNoOverflowOptimization := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    allowNoOverflowOptimization := true.
    true
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae588; bytecode file offset 0xbaae64"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
constSubExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredLocal1 := recoveredBlock16Value1.
    recoveredBlock16Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingSubOpLeftConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ae5a0; bytecode file offset 0xbaae64"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
addConstExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredLocal1 := recoveredBlock16Value1.
    recoveredBlock16Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingAddOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ca430; bytecode file offset 0xbc6cf8"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
constDivExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredLocal1 := recoveredBlock16Value1.
    recoveredBlock16Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingDivOpLeftConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) divExpr: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dcd88; bytecode file offset 0xbd9660"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
shiftLeftExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 44].
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) div: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
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
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := super shiftLeftExpr: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20300d24; bytecode file offset 0xbfd5e8"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
mulExpr: recoveredArg1
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
            recoveredStack3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) ileRuntimeCosts.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) ileRuntimeCosts.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) <= (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ileOptConstantFolding: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030956c; bytecode file offset 0xc05e28"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
addLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredLocal1 := recoveredBlock13Value1.
    recoveredBlock13Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingAddOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnConst: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203095b4; bytecode file offset 0xc05e70"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
subLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredLocal1 := recoveredBlock13Value1.
    recoveredBlock13Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingSubOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnConst: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203095fc; bytecode file offset 0xc05eb8"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
mulLeftConst: recoveredArg1 rightConstant: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredLocal1 := recoveredBlock13Value1.
    recoveredBlock13Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingMulOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnConst: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c2e18; bytecode file offset 0xcbf700"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
shiftRightExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 78].
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
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
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueZero.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
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
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) divConstExpr: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203df4c0; bytecode file offset 0xcdbd90"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryArithOpExpr: recoveredArg1 mulConstant: recoveredArg2 type: recoveredArg3 onSuccess: recoveredArg4 inverse: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041ab4c; bytecode file offset 0xd1741c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
subConstExpr: recoveredArg1
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredLocal2 := recoveredBlock16Value1.
    recoveredBlock16Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingSubOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 |
    recoveredBlock69Value0 := recoveredBlock69Arg1.
    recoveredBlock69Value1 := recoveredBlock69Value0.
    recoveredLocal2 := recoveredBlock69Value1.
    recoveredBlock69Value0
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingAddOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204bfe68; bytecode file offset 0xdbc754"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
minMaxExpr: recoveredArg1 mulConstant: recoveredArg2 type: recoveredArg3 onSuccess: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCostsOfExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileCosts.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileNumExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack5 := (recoveredStack5) < (recoveredStack6).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryArithOpExpr: (recoveredStack1) mulConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4) inverse: (recoveredStack5).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d2998; bytecode file offset 0xdcf27c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryArithOpExpr: recoveredArg1 divConstant: recoveredArg2 type: recoveredArg3 onSuccess: recoveredArg4 inverse: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleRepresentableFraction.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleRepresentableFraction.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) countDivisions: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) countDivisions: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) countDivisions: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054b698; bytecode file offset 0xe47f94"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
greaterExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Integer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionTruncatedDivision.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Local3 recoveredBlock14Local4 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local4 := recoveredBlock14Stack2.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleDivideConstantExpr.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleIntConstant.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) value.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 52] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) rightExpr.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileBasicType.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mul: (recoveredBlock14Stack2) type: (recoveredBlock14Stack3).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleRepresentable.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 76] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local2.
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ileCosts.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 83.
        ].
        recoveredBlock14Step = 83 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 89.
        ].
        recoveredBlock14Step = 89 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) leftExpr.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) rightExpr.
            recoveredBlock14PC := 97.
        ].
        recoveredBlock14Step = 97 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) <= (recoveredBlock14Stack2).
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 104] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createOpLeftExpr: (recoveredBlock14Stack2) rightExpr: (recoveredBlock14Stack3).
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) leftExpr.
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 118.
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Local3 := recoveredBlock14Stack3.
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleMulConstExpr.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 124] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 127.
        ].
        recoveredBlock14Step = 127 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleFraction.
            recoveredBlock14PC := 129.
        ].
        recoveredBlock14Step = 129 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 132] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 133.
        ].
        recoveredBlock14Step = 133 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 135.
        ].
        recoveredBlock14Step = 135 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value.
            recoveredBlock14PC := 137.
        ].
        recoveredBlock14Step = 137 ifTrue: [
            recoveredBlock14Stack3 := 0.
            recoveredBlock14PC := 139.
        ].
        recoveredBlock14Step = 139 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) > (recoveredBlock14Stack3).
            recoveredBlock14PC := 140.
        ].
        recoveredBlock14Step = 140 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 144] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 144 ifTrue: [
            recoveredBlock14PC := 145.
        ].
        recoveredBlock14Step = 145 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 146.
        ].
        recoveredBlock14Step = 146 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 149.
        ].
        recoveredBlock14Step = 149 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 151.
        ].
        recoveredBlock14Step = 151 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local3.
            recoveredBlock14PC := 152.
        ].
        recoveredBlock14Step = 152 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) rightExpr.
            recoveredBlock14PC := 154.
        ].
        recoveredBlock14Step = 154 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) reciprocal.
            recoveredBlock14PC := 156.
        ].
        recoveredBlock14Step = 156 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 159.
        ].
        recoveredBlock14Step = 159 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) rightExpr.
            recoveredBlock14PC := 161.
        ].
        recoveredBlock14Step = 161 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) ileBasicType.
            recoveredBlock14PC := 163.
        ].
        recoveredBlock14Step = 163 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) mul: (recoveredBlock14Stack3) type: (recoveredBlock14Stack4).
            recoveredBlock14PC := 165.
        ].
        recoveredBlock14Step = 165 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 166.
        ].
        recoveredBlock14Step = 166 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack3.
            recoveredBlock14PC := 167.
        ].
        recoveredBlock14Step = 167 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleRepresentable.
            recoveredBlock14PC := 169.
        ].
        recoveredBlock14Step = 169 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 172] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 172 ifTrue: [
            recoveredBlock14PC := 173.
        ].
        recoveredBlock14Step = 173 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local3.
            recoveredBlock14PC := 174.
        ].
        recoveredBlock14Step = 174 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 175.
        ].
        recoveredBlock14Step = 175 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 176.
        ].
        recoveredBlock14Step = 176 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 177.
        ].
        recoveredBlock14Step = 177 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 178.
        ].
        recoveredBlock14Step = 178 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 180.
        ].
        recoveredBlock14Step = 180 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 181.
        ].
        recoveredBlock14Step = 181 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 183.
        ].
        recoveredBlock14Step = 183 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 184.
        ].
        recoveredBlock14Step = 184 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 187.
        ].
        recoveredBlock14Step = 187 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) leftExpr.
            recoveredBlock14PC := 188.
        ].
        recoveredBlock14Step = 188 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 190.
        ].
        recoveredBlock14Step = 190 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 193.
        ].
        recoveredBlock14Step = 193 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) rightExpr.
            recoveredBlock14PC := 195.
        ].
        recoveredBlock14Step = 195 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) ileCosts.
            recoveredBlock14PC := 197.
        ].
        recoveredBlock14Step = 197 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (recoveredBlock14Stack4).
            recoveredBlock14PC := 198.
        ].
        recoveredBlock14Step = 198 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) <= (recoveredBlock14Stack3).
            recoveredBlock14PC := 199.
        ].
        recoveredBlock14Step = 199 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 202] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 202 ifTrue: [
            recoveredBlock14PC := 203.
        ].
        recoveredBlock14Step = 203 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 206.
        ].
        recoveredBlock14Step = 206 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 207.
        ].
        recoveredBlock14Step = 207 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 208.
        ].
        recoveredBlock14Step = 208 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createOpLeftExpr: (recoveredBlock14Stack2) rightExpr: (recoveredBlock14Stack3).
            recoveredBlock14PC := 210.
        ].
        recoveredBlock14Step = 210 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 211 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelNoEqualExpr: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054b7c4; bytecode file offset 0xe480c0"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
lessExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Integer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionTruncatedDivision.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Local3 recoveredBlock14Local4 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Local4 := recoveredBlock14Stack2.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleDivConstExpr.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleIntConstant.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) rightExpr.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) value.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) > (recoveredBlock14Stack2).
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 50] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local4.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) leftExpr.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileBasicType.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mul: (recoveredBlock14Stack2) type: (recoveredBlock14Stack3).
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack2.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isIleRepresentable.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 74] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local4.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 77.
        ].
        recoveredBlock14Step = 77 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local2.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ileCosts.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 84.
        ].
        recoveredBlock14Step = 84 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (recoveredBlock14Stack2).
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 88.
        ].
        recoveredBlock14Step = 88 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) leftExpr.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) rightExpr.
            recoveredBlock14PC := 96.
        ].
        recoveredBlock14Step = 96 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 99.
        ].
        recoveredBlock14Step = 99 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) <= (recoveredBlock14Stack2).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 104] ifFalse: [recoveredBlock14PC := 112].
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 108.
        ].
        recoveredBlock14Step = 108 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 109.
        ].
        recoveredBlock14Step = 109 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createOpLeftExpr: (recoveredBlock14Stack2) rightExpr: (recoveredBlock14Stack3).
            recoveredBlock14PC := 111.
        ].
        recoveredBlock14Step = 111 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 117.
        ].
        recoveredBlock14Step = 117 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 118.
        ].
        recoveredBlock14Step = 118 ifTrue: [
            recoveredBlock14Local3 := recoveredBlock14Stack3.
            recoveredBlock14PC := 119.
        ].
        recoveredBlock14Step = 119 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleMulConstExpr.
            recoveredBlock14PC := 121.
        ].
        recoveredBlock14Step = 121 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 124] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 124 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 126.
        ].
        recoveredBlock14Step = 126 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleFraction.
            recoveredBlock14PC := 128.
        ].
        recoveredBlock14Step = 128 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 132] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 132 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local3.
            recoveredBlock14PC := 133.
        ].
        recoveredBlock14Step = 133 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) rightExpr.
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 134 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value.
            recoveredBlock14PC := 136.
        ].
        recoveredBlock14Step = 136 ifTrue: [
            recoveredBlock14Stack3 := 0.
            recoveredBlock14PC := 138.
        ].
        recoveredBlock14Step = 138 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) > (recoveredBlock14Stack3).
            recoveredBlock14PC := 139.
        ].
        recoveredBlock14Step = 139 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 142] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 142 ifTrue: [
            recoveredBlock14PC := 143.
        ].
        recoveredBlock14Step = 143 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 144.
        ].
        recoveredBlock14Step = 144 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 147.
        ].
        recoveredBlock14Step = 147 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) leftExpr.
            recoveredBlock14PC := 149.
        ].
        recoveredBlock14Step = 149 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local3.
            recoveredBlock14PC := 150.
        ].
        recoveredBlock14Step = 150 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) rightExpr.
            recoveredBlock14PC := 151.
        ].
        recoveredBlock14Step = 151 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) reciprocal.
            recoveredBlock14PC := 153.
        ].
        recoveredBlock14Step = 153 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 156.
        ].
        recoveredBlock14Step = 156 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) leftExpr.
            recoveredBlock14PC := 158.
        ].
        recoveredBlock14Step = 158 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) ileBasicType.
            recoveredBlock14PC := 160.
        ].
        recoveredBlock14Step = 160 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) mul: (recoveredBlock14Stack3) type: (recoveredBlock14Stack4).
            recoveredBlock14PC := 162.
        ].
        recoveredBlock14Step = 162 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 163.
        ].
        recoveredBlock14Step = 163 ifTrue: [
            recoveredBlock14Local2 := recoveredBlock14Stack3.
            recoveredBlock14PC := 164.
        ].
        recoveredBlock14Step = 164 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleRepresentable.
            recoveredBlock14PC := 166.
        ].
        recoveredBlock14Step = 166 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 170] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 170 ifTrue: [
            recoveredBlock14PC := 171.
        ].
        recoveredBlock14Step = 171 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local3.
            recoveredBlock14PC := 172.
        ].
        recoveredBlock14Step = 172 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) leftExpr.
            recoveredBlock14PC := 174.
        ].
        recoveredBlock14Step = 174 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 175.
        ].
        recoveredBlock14Step = 175 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 176.
        ].
        recoveredBlock14Step = 176 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 177.
        ].
        recoveredBlock14Step = 177 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) ileCosts.
            recoveredBlock14PC := 179.
        ].
        recoveredBlock14Step = 179 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 180.
        ].
        recoveredBlock14Step = 180 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 182.
        ].
        recoveredBlock14Step = 182 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) + (recoveredBlock14Stack3).
            recoveredBlock14PC := 183.
        ].
        recoveredBlock14Step = 183 ifTrue: [
            recoveredBlock14Stack3 := recoveredArg1.
            recoveredBlock14PC := 186.
        ].
        recoveredBlock14Step = 186 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) leftExpr.
            recoveredBlock14PC := 188.
        ].
        recoveredBlock14Step = 188 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) ileCosts.
            recoveredBlock14PC := 190.
        ].
        recoveredBlock14Step = 190 ifTrue: [
            recoveredBlock14Stack4 := recoveredArg1.
            recoveredBlock14PC := 193.
        ].
        recoveredBlock14Step = 193 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) rightExpr.
            recoveredBlock14PC := 194.
        ].
        recoveredBlock14Step = 194 ifTrue: [
            recoveredBlock14Stack4 := (recoveredBlock14Stack4) ileCosts.
            recoveredBlock14PC := 196.
        ].
        recoveredBlock14Step = 196 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (recoveredBlock14Stack4).
            recoveredBlock14PC := 197.
        ].
        recoveredBlock14Step = 197 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) <= (recoveredBlock14Stack3).
            recoveredBlock14PC := 198.
        ].
        recoveredBlock14Step = 198 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 202] ifFalse: [recoveredBlock14PC := 211].
        ].
        recoveredBlock14Step = 202 ifTrue: [
            recoveredBlock14PC := 203.
        ].
        recoveredBlock14Step = 203 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 206.
        ].
        recoveredBlock14Step = 206 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local2.
            recoveredBlock14PC := 207.
        ].
        recoveredBlock14Step = 207 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 208.
        ].
        recoveredBlock14Step = 208 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) createOpLeftExpr: (recoveredBlock14Stack2) rightExpr: (recoveredBlock14Stack3).
            recoveredBlock14PC := 210.
        ].
        recoveredBlock14Step = 210 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 211 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) binaryRelNoEqualExpr: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058f2c4; bytecode file offset 0xe8bbd0"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
divConstExpr: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) ileRuntimeCosts.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) ileRuntimeCosts.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) <= (recoveredBlock16Stack3).
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 34] ifFalse: [recoveredBlock16PC := 40].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredLocal5 := recoveredBlock16Stack2.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingDivOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExpansionPreparationPhase.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMultiplyConstantExpr.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivConstExpr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'Call_63439'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIntConstant.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIntConstant.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstantValueZero.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 204.
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) ggt: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d5988; bytecode file offset 0xed22a4"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
addSubExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOperands.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) operands.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block28119aacArg1 | 
    | block28119aacValue0 block28119aacValue1 block28119aacValue2 |
    block28119aacValue0 := block28119aacArg1.
    block28119aacValue1 := (block28119aacValue0) at: (2).
    block28119aacValue2 := (block28119aacValue1) isIleConstant.
    block28119aacValue2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:block28119ad0Arg1 | 
    | block28119ad0Value0 block28119ad0Value1 |
    block28119ad0Value0 := block28119ad0Arg1.
    block28119ad0Value1 := (block28119ad0Value0) isIleConstant.
    block28119ad0Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSubResult: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:block28119af4Arg1 | 
    | block28119af4Value0 block28119af4Value1 block28119af4Value2 |
    block28119af4Value0 := block28119af4Arg1.
    block28119af4Value1 := (block28119af4Value0) isIleConstant.
    block28119af4Value2 := (block28119af4Value1) not.
    block28119af4Value2
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSubResult: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 355].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 355].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsUnsigned.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 349] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 334] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 349].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e7f0c; bytecode file offset 0xee482c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
addSubExpr: recoveredArg1 mulConstant: recoveredArg2 type: recoveredArg3 currentCosts: recoveredArg4 onSuccess: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) numerator.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMultiplyConstantExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
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
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 387].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 387] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 387].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 387] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCostsOfExpr.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleIntConstant.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 241].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) countDivisions: (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFraction.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleMulConstExpr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFraction.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleMulConstExpr.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 347] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleFraction.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleIntConstant.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 347] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntConstant.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 387].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 387].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 380] ifFalse: [recoveredPC := 387].
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2061fa4c; bytecode file offset 0xf1c384"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 59].
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitOverflow.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock71Local1 recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredArg1.
            recoveredBlock71PC := 81.
        ].
        recoveredBlock71Step = 81 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) leftExpr.
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) asIleUnlimitedExpr.
            recoveredBlock71PC := 84.
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Local1 := recoveredBlock71Stack1.
            recoveredBlock71PC := 85.
        ].
        recoveredBlock71Step = 85 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 86.
        ].
        recoveredBlock71Step = 86 ifTrue: [
            recoveredBlock71Stack2 := recoveredArg1.
            recoveredBlock71PC := 89.
        ].
        recoveredBlock71Step = 89 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) leftExpr.
            recoveredBlock71PC := 90.
        ].
        recoveredBlock71Step = 90 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) ~= (recoveredBlock71Stack2).
            recoveredBlock71PC := 91.
        ].
        recoveredBlock71Step = 91 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 94] ifFalse: [recoveredBlock71PC := 110].
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Local1.
            recoveredBlock71PC := 95.
        ].
        recoveredBlock71Step = 95 ifTrue: [
            recoveredBlock71Stack2 := recoveredArg1.
            recoveredBlock71PC := 98.
        ].
        recoveredBlock71Step = 98 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) rightExpr.
            recoveredBlock71PC := 100.
        ].
        recoveredBlock71Step = 100 ifTrue: [
            recoveredBlock71Stack3 := recoveredArg1.
            recoveredBlock71PC := 103.
        ].
        recoveredBlock71Step = 103 ifTrue: [
            recoveredBlock71Stack3 := (recoveredBlock71Stack3) ileBasicType.
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) mul: (recoveredBlock71Stack2) type: (recoveredBlock71Stack3).
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71PC := 113.
        ].
        recoveredBlock71Step = 110 ifTrue: [
            recoveredBlock71Stack1 := recoveredArg1.
            recoveredBlock71PC := 113.
        ].
        recoveredBlock71Step = 113 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack1.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowAnySizeDo: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCosts.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCopyLimitAttributesArithOpExpr: (recoveredStack2) originalExpr: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitOverflow.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 288].
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
            recoveredStack1 := (recoveredStack1) isIleMulConstExpr.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 288].
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
            recoveredStack1 := (recoveredStack1) limitOverflow.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 284].
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileCosts.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack5 := [:recoveredBlock327Arg1 | 
    | recoveredBlock327Value0 recoveredBlock327Value1 |
    recoveredBlock327Value0 := recoveredBlock327Arg1.
    recoveredBlock327Value1 := recoveredBlock327Value0.
    recoveredLocal3 := recoveredBlock327Value1.
    recoveredBlock327Value0
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingMulOpRightConstant: (recoveredStack2) type: (recoveredStack3) currentCosts: (recoveredStack4) onSuccess: (recoveredStack5).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 375.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack4 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 |
    recoveredBlock360Value0 := recoveredBlock360Arg1.
    recoveredBlock360Value1 := recoveredBlock360Value0.
    recoveredLocal3 := recoveredBlock360Value1.
    recoveredBlock360Value0
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingMulOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 402] ifFalse: [recoveredPC := 532].
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 532].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 506] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20641b20; bytecode file offset 0xf3e494"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isIleScalarConstant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
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
            recoveredStack1 := (recoveredStack1) isIleScalarConstant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) compareIntervals.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBoolConstant: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Local1 recoveredBlock35Local2 recoveredBlock35Local3 recoveredBlock35Local4 recoveredBlock35Local5 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35Stack6 recoveredBlock35Stack7 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) type.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleBooleanType.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 54] ifFalse: [recoveredBlock35PC := 709].
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) leftExpr.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredLocal6 := recoveredBlock35Stack2.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleBasicArithmeticOpExpr.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 68] ifFalse: [recoveredBlock35PC := 338].
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredLocal5 := recoveredBlock35Stack2.
            recoveredBlock35PC := 76.
        ].
        recoveredBlock35Step = 76 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleConstant.
            recoveredBlock35PC := 78.
        ].
        recoveredBlock35Step = 78 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 82] ifFalse: [recoveredBlock35PC := 338].
        ].
        recoveredBlock35Step = 82 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 85.
        ].
        recoveredBlock35Step = 85 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 86.
        ].
        recoveredBlock35Step = 86 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleConstant.
            recoveredBlock35PC := 88.
        ].
        recoveredBlock35Step = 88 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 92] ifFalse: [recoveredBlock35PC := 338].
        ].
        recoveredBlock35Step = 92 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 95.
        ].
        recoveredBlock35Step = 95 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleDivideConstantExpr.
            recoveredBlock35PC := 97.
        ].
        recoveredBlock35Step = 97 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 100] ifFalse: [recoveredBlock35PC := 116].
        ].
        recoveredBlock35Step = 100 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 103.
        ].
        recoveredBlock35Step = 103 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleEqualExpr.
            recoveredBlock35PC := 105.
        ].
        recoveredBlock35Step = 105 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 108].
        ].
        recoveredBlock35Step = 108 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 111.
        ].
        recoveredBlock35Step = 111 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleNotEqualExpr.
            recoveredBlock35PC := 113.
        ].
        recoveredBlock35Step = 113 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 116].
        ].
        recoveredBlock35Step = 116 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 119.
        ].
        recoveredBlock35Step = 119 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleDivideConstantExpr.
            recoveredBlock35PC := 121.
        ].
        recoveredBlock35Step = 121 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 124] ifFalse: [recoveredBlock35PC := 176].
        ].
        recoveredBlock35Step = 124 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 127.
        ].
        recoveredBlock35Step = 127 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) interval.
            recoveredBlock35PC := 129.
        ].
        recoveredBlock35Step = 129 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isPositiveAndNegative.
            recoveredBlock35PC := 131.
        ].
        recoveredBlock35Step = 131 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 134] ifFalse: [recoveredBlock35PC := 176].
        ].
        recoveredBlock35Step = 134 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 137.
        ].
        recoveredBlock35Step = 137 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 138.
        ].
        recoveredBlock35Step = 138 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleIntConstant.
            recoveredBlock35PC := 140.
        ].
        recoveredBlock35Step = 140 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 176] ifFalse: [recoveredBlock35PC := 144].
        ].
        recoveredBlock35Step = 144 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 147.
        ].
        recoveredBlock35Step = 147 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleGreaterExpr.
            recoveredBlock35PC := 149.
        ].
        recoveredBlock35Step = 149 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 152].
        ].
        recoveredBlock35Step = 152 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 155.
        ].
        recoveredBlock35Step = 155 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleLessExpr.
            recoveredBlock35PC := 157.
        ].
        recoveredBlock35Step = 157 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 160].
        ].
        recoveredBlock35Step = 160 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 163.
        ].
        recoveredBlock35Step = 163 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleGreaterEqualExpr.
            recoveredBlock35PC := 165.
        ].
        recoveredBlock35Step = 165 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 168].
        ].
        recoveredBlock35Step = 168 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 171.
        ].
        recoveredBlock35Step = 171 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleLessEqualExpr.
            recoveredBlock35PC := 173.
        ].
        recoveredBlock35Step = 173 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 176].
        ].
        recoveredBlock35Step = 176 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal5.
            recoveredBlock35PC := 179.
        ].
        recoveredBlock35Step = 179 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal6.
            recoveredBlock35PC := 182.
        ].
        recoveredBlock35Step = 182 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ileNeutralElement.
            recoveredBlock35PC := 184.
        ].
        recoveredBlock35Step = 184 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleIdentical: (recoveredBlock35Stack2).
            recoveredBlock35PC := 186.
        ].
        recoveredBlock35Step = 186 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 190].
        ].
        recoveredBlock35Step = 190 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 193.
        ].
        recoveredBlock35Step = 193 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal6.
            recoveredBlock35PC := 196.
        ].
        recoveredBlock35Step = 196 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) leftExpr.
            recoveredBlock35PC := 197.
        ].
        recoveredBlock35Step = 197 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal6.
            recoveredBlock35PC := 200.
        ].
        recoveredBlock35Step = 200 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) ileNeutralElement.
            recoveredBlock35PC := 202.
        ].
        recoveredBlock35Step = 202 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3).
            recoveredBlock35PC := 204.
        ].
        recoveredBlock35Step = 204 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 205.
        ].
        recoveredBlock35Step = 205 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack2.
            recoveredBlock35PC := 207.
        ].
        recoveredBlock35Step = 207 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleRepresentable.
            recoveredBlock35PC := 209.
        ].
        recoveredBlock35Step = 209 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 212] ifFalse: [recoveredBlock35PC := 331].
        ].
        recoveredBlock35Step = 212 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal6.
            recoveredBlock35PC := 215.
        ].
        recoveredBlock35Step = 215 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 218.
        ].
        recoveredBlock35Step = 218 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) rightExpr.
            recoveredBlock35PC := 219.
        ].
        recoveredBlock35Step = 219 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal5.
            recoveredBlock35PC := 222.
        ].
        recoveredBlock35Step = 222 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createInverseOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3).
            recoveredBlock35PC := 224.
        ].
        recoveredBlock35Step = 224 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 225.
        ].
        recoveredBlock35Step = 225 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack2.
            recoveredBlock35PC := 226.
        ].
        recoveredBlock35Step = 226 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleRepresentable.
            recoveredBlock35PC := 228.
        ].
        recoveredBlock35Step = 228 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 232] ifFalse: [recoveredBlock35PC := 331].
        ].
        recoveredBlock35Step = 232 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local5.
            recoveredBlock35PC := 234.
        ].
        recoveredBlock35Step = 234 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleFloatTypedExpr.
            recoveredBlock35PC := 236.
        ].
        recoveredBlock35Step = 236 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 240] ifFalse: [recoveredBlock35PC := 250].
        ].
        recoveredBlock35Step = 240 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 241.
        ].
        recoveredBlock35Step = 241 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleConstant.
            recoveredBlock35PC := 243.
        ].
        recoveredBlock35Step = 243 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 246] ifFalse: [recoveredBlock35PC := 250].
        ].
        recoveredBlock35Step = 246 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 247.
        ].
        recoveredBlock35Step = 247 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) asIleFloatConstant.
            recoveredBlock35PC := 249.
        ].
        recoveredBlock35Step = 249 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack1.
            recoveredBlock35PC := 250.
        ].
        recoveredBlock35Step = 250 ifTrue: [
            recoveredBlock35Stack1 := false.
            recoveredBlock35PC := 251.
        ].
        recoveredBlock35Step = 251 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal6.
            recoveredBlock35PC := 254.
        ].
        recoveredBlock35Step = 254 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleMulExpr.
            recoveredBlock35PC := 256.
        ].
        recoveredBlock35Step = 256 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 268] ifFalse: [recoveredBlock35PC := 260].
        ].
        recoveredBlock35Step = 260 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal6.
            recoveredBlock35PC := 263.
        ].
        recoveredBlock35Step = 263 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleDivExpr.
            recoveredBlock35PC := 265.
        ].
        recoveredBlock35Step = 265 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 268] ifFalse: [recoveredBlock35PC := 277].
        ].
        recoveredBlock35Step = 268 ifTrue: [
            recoveredBlock35PC := 269.
        ].
        recoveredBlock35Step = 269 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal5.
            recoveredBlock35PC := 272.
        ].
        recoveredBlock35Step = 272 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) value.
            recoveredBlock35PC := 274.
        ].
        recoveredBlock35Step = 274 ifTrue: [
            recoveredBlock35Stack2 := 0.
            recoveredBlock35PC := 276.
        ].
        recoveredBlock35Step = 276 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) < (recoveredBlock35Stack2).
            recoveredBlock35PC := 277.
        ].
        recoveredBlock35Step = 277 ifTrue: [
            recoveredBlock35Local3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 278.
        ].
        recoveredBlock35Step = 278 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 279.
        ].
        recoveredBlock35Step = 279 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleFraction.
            recoveredBlock35PC := 281.
        ].
        recoveredBlock35Step = 281 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 284] ifFalse: [recoveredBlock35PC := 314].
        ].
        recoveredBlock35Step = 284 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 287.
        ].
        recoveredBlock35Step = 287 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleLessEqualExpr.
            recoveredBlock35PC := 289.
        ].
        recoveredBlock35Step = 289 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 300] ifFalse: [recoveredBlock35PC := 292].
        ].
        recoveredBlock35Step = 292 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 295.
        ].
        recoveredBlock35Step = 295 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleLessExpr.
            recoveredBlock35PC := 297.
        ].
        recoveredBlock35Step = 297 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 300] ifFalse: [recoveredBlock35PC := 308].
        ].
        recoveredBlock35Step = 300 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 301.
        ].
        recoveredBlock35Step = 301 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local3.
            recoveredBlock35PC := 302.
        ].
        recoveredBlock35Step = 302 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpRoundToInfinity: (recoveredBlock35Stack2).
            recoveredBlock35PC := 304.
        ].
        recoveredBlock35Step = 304 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack1.
            recoveredBlock35PC := 305.
        ].
        recoveredBlock35Step = 305 ifTrue: [
            recoveredBlock35PC := 314.
        ].
        recoveredBlock35Step = 308 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 309.
        ].
        recoveredBlock35Step = 309 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local3.
            recoveredBlock35PC := 310.
        ].
        recoveredBlock35Step = 310 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) not.
            recoveredBlock35PC := 311.
        ].
        recoveredBlock35Step = 311 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpRoundToInfinity: (recoveredBlock35Stack2).
            recoveredBlock35PC := 313.
        ].
        recoveredBlock35Step = 313 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack1.
            recoveredBlock35PC := 314.
        ].
        recoveredBlock35Step = 314 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 317.
        ].
        recoveredBlock35Step = 317 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local5.
            recoveredBlock35PC := 319.
        ].
        recoveredBlock35Step = 319 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Local4.
            recoveredBlock35PC := 320.
        ].
        recoveredBlock35Step = 320 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Local3.
            recoveredBlock35PC := 321.
        ].
        recoveredBlock35Step = 321 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3) inverse: (recoveredBlock35Stack4).
            recoveredBlock35PC := 324.
        ].
        recoveredBlock35Step = 324 ifTrue: [
            recoveredLocal1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 327.
        ].
        recoveredBlock35Step = 327 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 330.
        ].
        recoveredBlock35Step = 330 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 331 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 332.
        ].
        recoveredBlock35Step = 332 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 333.
        ].
        recoveredBlock35Step = 333 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack2.
            recoveredBlock35PC := 335.
        ].
        recoveredBlock35Step = 335 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 336.
        ].
        recoveredBlock35Step = 336 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack2.
            recoveredBlock35PC := 337.
        ].
        recoveredBlock35Step = 337 ifTrue: [
            recoveredBlock35Local3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 338.
        ].
        recoveredBlock35Step = 338 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 341.
        ].
        recoveredBlock35Step = 341 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) leftExpr.
            recoveredBlock35PC := 342.
        ].
        recoveredBlock35Step = 342 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleConstSubExpr.
            recoveredBlock35PC := 344.
        ].
        recoveredBlock35Step = 344 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 348] ifFalse: [recoveredBlock35PC := 396].
        ].
        recoveredBlock35Step = 348 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 351.
        ].
        recoveredBlock35Step = 351 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 352.
        ].
        recoveredBlock35Step = 352 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleConstant.
            recoveredBlock35PC := 354.
        ].
        recoveredBlock35Step = 354 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 358] ifFalse: [recoveredBlock35PC := 396].
        ].
        recoveredBlock35Step = 358 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 361.
        ].
        recoveredBlock35Step = 361 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) leftExpr.
            recoveredBlock35PC := 362.
        ].
        recoveredBlock35Step = 362 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) leftExpr.
            recoveredBlock35PC := 363.
        ].
        recoveredBlock35Step = 363 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 366.
        ].
        recoveredBlock35Step = 366 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) rightExpr.
            recoveredBlock35PC := 367.
        ].
        recoveredBlock35Step = 367 ifTrue: [
            recoveredBlock35Stack3 := nil.
            recoveredBlock35PC := 368.
        ].
        recoveredBlock35Step = 368 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) sub: (recoveredBlock35Stack2) type: (recoveredBlock35Stack3).
            recoveredBlock35PC := 370.
        ].
        recoveredBlock35Step = 370 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 371.
        ].
        recoveredBlock35Step = 371 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack2.
            recoveredBlock35PC := 373.
        ].
        recoveredBlock35Step = 373 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleRepresentable.
            recoveredBlock35PC := 375.
        ].
        recoveredBlock35Step = 375 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 378] ifFalse: [recoveredBlock35PC := 393].
        ].
        recoveredBlock35Step = 378 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 381.
        ].
        recoveredBlock35Step = 381 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local5.
            recoveredBlock35PC := 383.
        ].
        recoveredBlock35Step = 383 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 386.
        ].
        recoveredBlock35Step = 386 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) leftExpr.
            recoveredBlock35PC := 387.
        ].
        recoveredBlock35Step = 387 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) rightExpr.
            recoveredBlock35PC := 388.
        ].
        recoveredBlock35Step = 388 ifTrue: [
            recoveredBlock35Stack4 := false.
            recoveredBlock35PC := 389.
        ].
        recoveredBlock35Step = 389 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3) inverse: (recoveredBlock35Stack4).
            recoveredBlock35PC := 392.
        ].
        recoveredBlock35Step = 392 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 393 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 394.
        ].
        recoveredBlock35Step = 394 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack1.
            recoveredBlock35PC := 396.
        ].
        recoveredBlock35Step = 396 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 399.
        ].
        recoveredBlock35Step = 399 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) leftExpr.
            recoveredBlock35PC := 400.
        ].
        recoveredBlock35Step = 400 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 401.
        ].
        recoveredBlock35Step = 401 ifTrue: [
            recoveredLocal4 := recoveredBlock35Stack2.
            recoveredBlock35PC := 404.
        ].
        recoveredBlock35Step = 404 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleMultiplyConstantExpr.
            recoveredBlock35PC := 406.
        ].
        recoveredBlock35Step = 406 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 410] ifFalse: [recoveredBlock35PC := 642].
        ].
        recoveredBlock35Step = 410 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 413.
        ].
        recoveredBlock35Step = 413 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 414.
        ].
        recoveredBlock35Step = 414 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 415.
        ].
        recoveredBlock35Step = 415 ifTrue: [
            recoveredLocal3 := recoveredBlock35Stack2.
            recoveredBlock35PC := 418.
        ].
        recoveredBlock35Step = 418 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleMultiplyConstantExpr.
            recoveredBlock35PC := 420.
        ].
        recoveredBlock35Step = 420 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 424] ifFalse: [recoveredBlock35PC := 642].
        ].
        recoveredBlock35Step = 424 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal4.
            recoveredBlock35PC := 427.
        ].
        recoveredBlock35Step = 427 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 428.
        ].
        recoveredBlock35Step = 428 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack1.
            recoveredBlock35PC := 430.
        ].
        recoveredBlock35Step = 430 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal3.
            recoveredBlock35PC := 433.
        ].
        recoveredBlock35Step = 433 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 434.
        ].
        recoveredBlock35Step = 434 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack1.
            recoveredBlock35PC := 435.
        ].
        recoveredBlock35Step = 435 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local5.
            recoveredBlock35PC := 437.
        ].
        recoveredBlock35Step = 437 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleFloatConstant.
            recoveredBlock35PC := 439.
        ].
        recoveredBlock35Step = 439 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 442] ifFalse: [recoveredBlock35PC := 524].
        ].
        recoveredBlock35Step = 442 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 443.
        ].
        recoveredBlock35Step = 443 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleFloatConstant.
            recoveredBlock35PC := 445.
        ].
        recoveredBlock35Step = 445 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 448] ifFalse: [recoveredBlock35PC := 524].
        ].
        recoveredBlock35Step = 448 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal4.
            recoveredBlock35PC := 451.
        ].
        recoveredBlock35Step = 451 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rightExpr.
            recoveredBlock35PC := 452.
        ].
        recoveredBlock35Step = 452 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) value.
            recoveredBlock35PC := 454.
        ].
        recoveredBlock35Step = 454 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) abs.
            recoveredBlock35PC := 456.
        ].
        recoveredBlock35Step = 456 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal3.
            recoveredBlock35PC := 459.
        ].
        recoveredBlock35Step = 459 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) rightExpr.
            recoveredBlock35PC := 460.
        ].
        recoveredBlock35Step = 460 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) value.
            recoveredBlock35PC := 462.
        ].
        recoveredBlock35Step = 462 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) abs.
            recoveredBlock35PC := 464.
        ].
        recoveredBlock35Step = 464 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) max: (recoveredBlock35Stack2).
            recoveredBlock35PC := 466.
        ].
        recoveredBlock35Step = 466 ifTrue: [
            recoveredLocal2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 469.
        ].
        recoveredBlock35Step = 469 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 472.
        ].
        recoveredBlock35Step = 472 ifTrue: [
            recoveredBlock35Stack2 := 0.
            recoveredBlock35PC := 474.
        ].
        recoveredBlock35Step = 474 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) > (recoveredBlock35Stack2).
            recoveredBlock35PC := 475.
        ].
        recoveredBlock35Step = 475 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 478] ifFalse: [recoveredBlock35PC := 524].
        ].
        recoveredBlock35Step = 478 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 481.
        ].
        recoveredBlock35Step = 481 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 482.
        ].
        recoveredBlock35Step = 482 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ileBuilder.
            recoveredBlock35PC := 483.
        ].
        recoveredBlock35Step = 483 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal4.
            recoveredBlock35PC := 486.
        ].
        recoveredBlock35Step = 486 ifTrue: [
            recoveredBlock35Stack4 := self.
            recoveredBlock35PC := 487.
        ].
        recoveredBlock35Step = 487 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) ileBuilder.
            recoveredBlock35PC := 488.
        ].
        recoveredBlock35Step = 488 ifTrue: [
            recoveredBlock35Stack5 := recoveredLocal2.
            recoveredBlock35PC := 491.
        ].
        recoveredBlock35Step = 491 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) createScalarConstant: (recoveredBlock35Stack5).
            recoveredBlock35PC := 493.
        ].
        recoveredBlock35Step = 493 ifTrue: [
            recoveredBlock35Stack5 := recoveredLocal4.
            recoveredBlock35PC := 496.
        ].
        recoveredBlock35Step = 496 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) ileBasicType.
            recoveredBlock35PC := 498.
        ].
        recoveredBlock35Step = 498 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) divLeftExpr: (recoveredBlock35Stack3) rightExpr: (recoveredBlock35Stack4) type: (recoveredBlock35Stack5).
            recoveredBlock35PC := 501.
        ].
        recoveredBlock35Step = 501 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 502.
        ].
        recoveredBlock35Step = 502 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) ileBuilder.
            recoveredBlock35PC := 503.
        ].
        recoveredBlock35Step = 503 ifTrue: [
            recoveredBlock35Stack4 := recoveredLocal3.
            recoveredBlock35PC := 506.
        ].
        recoveredBlock35Step = 506 ifTrue: [
            recoveredBlock35Stack5 := self.
            recoveredBlock35PC := 507.
        ].
        recoveredBlock35Step = 507 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) ileBuilder.
            recoveredBlock35PC := 508.
        ].
        recoveredBlock35Step = 508 ifTrue: [
            recoveredBlock35Stack6 := recoveredLocal2.
            recoveredBlock35PC := 511.
        ].
        recoveredBlock35Step = 511 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) createScalarConstant: (recoveredBlock35Stack6).
            recoveredBlock35PC := 513.
        ].
        recoveredBlock35Step = 513 ifTrue: [
            recoveredBlock35Stack6 := recoveredLocal3.
            recoveredBlock35PC := 516.
        ].
        recoveredBlock35Step = 516 ifTrue: [
            recoveredBlock35Stack6 := (recoveredBlock35Stack6) ileBasicType.
            recoveredBlock35PC := 518.
        ].
        recoveredBlock35Step = 518 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) divLeftExpr: (recoveredBlock35Stack4) rightExpr: (recoveredBlock35Stack5) type: (recoveredBlock35Stack6).
            recoveredBlock35PC := 521.
        ].
        recoveredBlock35Step = 521 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3).
            recoveredBlock35PC := 523.
        ].
        recoveredBlock35Step = 523 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 524 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local5.
            recoveredBlock35PC := 526.
        ].
        recoveredBlock35Step = 526 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleIntConstant.
            recoveredBlock35PC := 528.
        ].
        recoveredBlock35Step = 528 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 532] ifFalse: [recoveredBlock35PC := 637].
        ].
        recoveredBlock35Step = 532 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 533.
        ].
        recoveredBlock35Step = 533 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleIntConstant.
            recoveredBlock35PC := 535.
        ].
        recoveredBlock35Step = 535 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 538] ifFalse: [recoveredBlock35PC := 637].
        ].
        recoveredBlock35Step = 538 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local5.
            recoveredBlock35PC := 540.
        ].
        recoveredBlock35Step = 540 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) value.
            recoveredBlock35PC := 542.
        ].
        recoveredBlock35Step = 542 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local4.
            recoveredBlock35PC := 543.
        ].
        recoveredBlock35Step = 543 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) value.
            recoveredBlock35PC := 545.
        ].
        recoveredBlock35Step = 545 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rem: (recoveredBlock35Stack2).
            recoveredBlock35PC := 547.
        ].
        recoveredBlock35Step = 547 ifTrue: [
            recoveredBlock35Stack2 := 0.
            recoveredBlock35PC := 549.
        ].
        recoveredBlock35Step = 549 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) = (recoveredBlock35Stack2).
            recoveredBlock35PC := 550.
        ].
        recoveredBlock35Step = 550 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 554] ifFalse: [recoveredBlock35PC := 556].
        ].
        recoveredBlock35Step = 554 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 555.
        ].
        recoveredBlock35Step = 555 ifTrue: [
            recoveredBlock35Local3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 556.
        ].
        recoveredBlock35Step = 556 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local4.
            recoveredBlock35PC := 557.
        ].
        recoveredBlock35Step = 557 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) value.
            recoveredBlock35PC := 559.
        ].
        recoveredBlock35Step = 559 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local5.
            recoveredBlock35PC := 561.
        ].
        recoveredBlock35Step = 561 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) value.
            recoveredBlock35PC := 563.
        ].
        recoveredBlock35Step = 563 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) rem: (recoveredBlock35Stack2).
            recoveredBlock35PC := 565.
        ].
        recoveredBlock35Step = 565 ifTrue: [
            recoveredBlock35Stack2 := 0.
            recoveredBlock35PC := 567.
        ].
        recoveredBlock35Step = 567 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) = (recoveredBlock35Stack2).
            recoveredBlock35PC := 568.
        ].
        recoveredBlock35Step = 568 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 572] ifFalse: [recoveredBlock35PC := 575].
        ].
        recoveredBlock35Step = 572 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local5.
            recoveredBlock35PC := 574.
        ].
        recoveredBlock35Step = 574 ifTrue: [
            recoveredBlock35Local3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 575.
        ].
        recoveredBlock35Step = 575 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Local3.
            recoveredBlock35PC := 576.
        ].
        recoveredBlock35Step = 576 ifTrue: [
            (recoveredBlock35Stack1 == nil) ifTrue: [recoveredBlock35PC := 635] ifFalse: [recoveredBlock35PC := 580].
        ].
        recoveredBlock35Step = 580 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal4.
            recoveredBlock35PC := 583.
        ].
        recoveredBlock35Step = 583 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local3.
            recoveredBlock35PC := 584.
        ].
        recoveredBlock35Step = 584 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal4.
            recoveredBlock35PC := 587.
        ].
        recoveredBlock35Step = 587 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) ileBasicType.
            recoveredBlock35PC := 589.
        ].
        recoveredBlock35Step = 589 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) div: (recoveredBlock35Stack2) type: (recoveredBlock35Stack3).
            recoveredBlock35PC := 591.
        ].
        recoveredBlock35Step = 591 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 592.
        ].
        recoveredBlock35Step = 592 ifTrue: [
            recoveredBlock35Local2 := recoveredBlock35Stack2.
            recoveredBlock35PC := 593.
        ].
        recoveredBlock35Step = 593 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleRepresentable.
            recoveredBlock35PC := 595.
        ].
        recoveredBlock35Step = 595 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 598] ifFalse: [recoveredBlock35PC := 631].
        ].
        recoveredBlock35Step = 598 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal3.
            recoveredBlock35PC := 601.
        ].
        recoveredBlock35Step = 601 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local3.
            recoveredBlock35PC := 602.
        ].
        recoveredBlock35Step = 602 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal3.
            recoveredBlock35PC := 605.
        ].
        recoveredBlock35Step = 605 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) ileBasicType.
            recoveredBlock35PC := 607.
        ].
        recoveredBlock35Step = 607 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) div: (recoveredBlock35Stack2) type: (recoveredBlock35Stack3).
            recoveredBlock35PC := 609.
        ].
        recoveredBlock35Step = 609 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 610.
        ].
        recoveredBlock35Step = 610 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack2.
            recoveredBlock35PC := 611.
        ].
        recoveredBlock35Step = 611 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) isIleRepresentable.
            recoveredBlock35PC := 613.
        ].
        recoveredBlock35Step = 613 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 616] ifFalse: [recoveredBlock35PC := 631].
        ].
        recoveredBlock35Step = 616 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg1.
            recoveredBlock35PC := 619.
        ].
        recoveredBlock35Step = 619 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Local2.
            recoveredBlock35PC := 620.
        ].
        recoveredBlock35Step = 620 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Local1.
            recoveredBlock35PC := 621.
        ].
        recoveredBlock35Step = 621 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Local3.
            recoveredBlock35PC := 622.
        ].
        recoveredBlock35Step = 622 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) value.
            recoveredBlock35PC := 624.
        ].
        recoveredBlock35Step = 624 ifTrue: [
            recoveredBlock35Stack5 := 0.
            recoveredBlock35PC := 626.
        ].
        recoveredBlock35Step = 626 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) < (recoveredBlock35Stack5).
            recoveredBlock35PC := 627.
        ].
        recoveredBlock35Step = 627 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) createOpLeftExpr: (recoveredBlock35Stack2) rightExpr: (recoveredBlock35Stack3) inverse: (recoveredBlock35Stack4).
            recoveredBlock35PC := 630.
        ].
        recoveredBlock35Step = 630 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 631 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 632.
        ].
        recoveredBlock35Step = 632 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 633.
        ].
        recoveredBlock35Step = 633 ifTrue: [
            recoveredBlock35Local2 := recoveredBlock35Stack2.
            recoveredBlock35PC := 634.
        ].
        recoveredBlock35Step = 634 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 635.
        ].
        recoveredBlock35Step = 635 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 636.
        ].
        recoveredBlock35Step = 636 ifTrue: [
            recoveredBlock35Local3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 637.
        ].
        recoveredBlock35Step = 637 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 638.
        ].
        recoveredBlock35Step = 638 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 639.
        ].
        recoveredBlock35Step = 639 ifTrue: [
            recoveredBlock35Local5 := recoveredBlock35Stack2.
            recoveredBlock35PC := 641.
        ].
        recoveredBlock35Step = 641 ifTrue: [
            recoveredBlock35Local4 := recoveredBlock35Stack1.
            recoveredBlock35PC := 642.
        ].
        recoveredBlock35Step = 642 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 643.
        ].
        recoveredBlock35Step = 643 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 646.
        ].
        recoveredBlock35Step = 646 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) leftExpr.
            recoveredBlock35PC := 647.
        ].
        recoveredBlock35Step = 647 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleConstant.
            recoveredBlock35PC := 649.
        ].
        recoveredBlock35Step = 649 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 652] ifFalse: [recoveredBlock35PC := 709].
        ].
        recoveredBlock35Step = 652 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg1.
            recoveredBlock35PC := 655.
        ].
        recoveredBlock35Step = 655 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) rightExpr.
            recoveredBlock35PC := 656.
        ].
        recoveredBlock35Step = 656 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleConstant.
            recoveredBlock35PC := 658.
        ].
        recoveredBlock35Step = 658 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 709] ifFalse: [recoveredBlock35PC := 662].
        ].
        recoveredBlock35Step = 662 ifTrue: [
            recoveredBlock35PC := 663.
        ].
        recoveredBlock35Step = 663 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 664.
        ].
        recoveredBlock35Step = 664 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 665.
        ].
        recoveredBlock35Step = 665 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 668.
        ].
        recoveredBlock35Step = 668 ifTrue: [
            recoveredBlock35Stack4 := recoveredArg1.
            recoveredBlock35PC := 671.
        ].
        recoveredBlock35Step = 671 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) rightExpr.
            recoveredBlock35PC := 672.
        ].
        recoveredBlock35Step = 672 ifTrue: [
            recoveredBlock35Stack5 := recoveredArg1.
            recoveredBlock35PC := 675.
        ].
        recoveredBlock35Step = 675 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) leftExpr.
            recoveredBlock35PC := 676.
        ].
        recoveredBlock35Step = 676 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) createInverseOpLeftExpr: (recoveredBlock35Stack4) rightExpr: (recoveredBlock35Stack5).
            recoveredBlock35PC := 678.
        ].
        recoveredBlock35Step = 678 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) visitNode: (recoveredBlock35Stack3).
            recoveredBlock35PC := 680.
        ].
        recoveredBlock35Step = 680 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Stack2.
            recoveredBlock35PC := 681.
        ].
        recoveredBlock35Step = 681 ifTrue: [
            recoveredLocal1 := recoveredBlock35Stack3.
            recoveredBlock35PC := 684.
        ].
        recoveredBlock35Step = 684 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleBinaryRelOp.
            recoveredBlock35PC := 686.
        ].
        recoveredBlock35Step = 686 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 690] ifFalse: [recoveredBlock35PC := 704].
        ].
        recoveredBlock35Step = 690 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal1.
            recoveredBlock35PC := 693.
        ].
        recoveredBlock35Step = 693 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) rightExpr.
            recoveredBlock35PC := 694.
        ].
        recoveredBlock35Step = 694 ifTrue: [
            recoveredBlock35Stack3 := recoveredArg1.
            recoveredBlock35PC := 697.
        ].
        recoveredBlock35Step = 697 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) leftExpr.
            recoveredBlock35PC := 698.
        ].
        recoveredBlock35Step = 698 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isIleIdentical: (recoveredBlock35Stack3).
            recoveredBlock35PC := 700.
        ].
        recoveredBlock35Step = 700 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 709] ifFalse: [recoveredBlock35PC := 704].
        ].
        recoveredBlock35Step = 704 ifTrue: [
            recoveredBlock35PC := 705.
        ].
        recoveredBlock35Step = 705 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 708.
        ].
        recoveredBlock35Step = 708 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 709 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20647f54; bytecode file offset 0xf4489c"
!SGIlOptimizeConstFoldingScalar methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivConstExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 256].
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
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsTempVar.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileNumberOfEvalsTo: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumberOfEvalsTo: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumberOfEvalsTo: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCommaExpr: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal9.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsTempVar.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 285].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 371].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCommaExpr: (recoveredStack2).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := (recoveredStack2) toBeExpandedValue.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) toBeExpandedValue.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 444] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 458] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 464] ifFalse: [recoveredPC := 479].
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCommaExpr: (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubExpr.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 735].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 504] ifFalse: [recoveredPC := 735].
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMultiplyConstantExpr.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 512] ifFalse: [recoveredPC := 607].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 526] ifFalse: [recoveredPC := 607].
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 603].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 562] ifFalse: [recoveredPC := 603].
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := (recoveredStack2) reciprocal.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 584] ifFalse: [recoveredPC := 603].
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 600] ifFalse: [recoveredPC := 603].
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 616] ifFalse: [recoveredPC := 735].
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack2 := (recoveredStack2) denominator.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScalarConstant: (recoveredStack2).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 636] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 654] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 672] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack4 := (recoveredStack4) numerator.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 696] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 712] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 724] ifFalse: [recoveredPC := 727].
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

