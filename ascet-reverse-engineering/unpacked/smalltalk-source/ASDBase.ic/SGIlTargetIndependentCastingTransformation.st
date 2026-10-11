"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20058c88; bytecode file offset 0x956284"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
possibleTypes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) possibleTypes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e32c; bytecode file offset 0x96af48"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
bitSize
    | recoveredValue0 |
    recoveredValue0 := bitSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009724c; bytecode file offset 0x993b34"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
promote: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) resolveControllerSize: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) promote: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c4d2c; bytecode file offset 0x9c16b0"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
bitSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ec2f0; bytecode file offset 0x9e8bb0"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
convert: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) resolveControllerSize: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) resolveControllerSize: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) convert: (recoveredValue2) and: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20113e20; bytecode file offset 0xa106e4"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
intSizedType: recoveredArg1 interval: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) bitSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) resolveControllerSize: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) intSizedType: (recoveredValue2) interval: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) selectControllerSize: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20132a70; bytecode file offset 0xa2f34c"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
resolveControllerSize: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isRBIntControllerSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInt16.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ccae8; bytecode file offset 0xac93b0"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
selectControllerSize: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isRBInt16Signed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBIntSignedControllerSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
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
            recoveredStack1 := (recoveredStack1) isRBInt16Unsigned.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBIntUnsignedContollerSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20229d30; bytecode file offset 0xb265f4"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
isAsEfficient: recoveredArg1 as: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsType: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) isRBIntControllerSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInt16Signed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInt16Unsigned.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a5964; bytecode file offset 0xca224c"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
intMultiplexExpr: recoveredArg1 interval: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) choices.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg2.
    recoveredBlock10Value1 := (recoveredBlock10Value0) type.
    recoveredBlock10Value2 := (recoveredBlock10Value1) getImplType.
    recoveredBlock10Value3 := recoveredBlock10Arg1.
    recoveredBlock10Value4 := (self) convert: (recoveredBlock10Value2) and: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSizedType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSizedType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeFromInterval: (recoveredStack1) type: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpType: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204129a4; bytecode file offset 0xd0f298"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
typeFromInterval: recoveredArg1 type: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) contextType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) possibleTypes: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'Cannot find type for interval '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := '. Using sint32 instead'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := RBInt32Signed.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) byteSize.
    recoveredBlock53Value2 := recoveredArg2.
    recoveredBlock53Value3 := (self) resolveControllerSize: (recoveredBlock53Value2).
    recoveredBlock53Value4 := (recoveredBlock53Value3) byteSize.
    recoveredBlock53Value5 := (recoveredBlock53Value1) <= (recoveredBlock53Value4).
    recoveredBlock53Value5
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock73Value0 recoveredBlock73Value1 |
    recoveredBlock73Value0 := recoveredLocal2.
    recoveredBlock73Value1 := (recoveredBlock73Value0) first.
    recoveredBlock73Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectControllerSize: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047f524; bytecode file offset 0xd7be28"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
shiftExpr: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) unaryArithIntExpr: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftForDiv.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftRightExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftForMul.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftLeftExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSigned.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) leftExpr.
    recoveredBlock53Value2 := (recoveredBlock53Value1) interval.
    recoveredBlock53Value3 := (recoveredBlock53Value2) left.
    recoveredBlock53Value4 := (recoveredBlock53Value3) >= (0).
    recoveredBlock53Value4
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [
    'Shifts must not be applied to signed values'
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplType.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) promote: (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) asUnsigned.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectControllerSize: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeIleType: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) promote: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUnsigned.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExpr: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ede74; bytecode file offset 0xdea798"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
unaryArithIntExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) promote: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpLeftExpr: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) castInterval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) castInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSizedType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCastExpr: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := bitSize.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) sintType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) ignoreAddSubOverflow.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSigned.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSigned.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectControllerSize: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) forcedCastExpr: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeFromInterval: (recoveredStack1) type: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpExpr: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20522148; bytecode file offset 0xe1ea48"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
binaryRelIntExpr: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) convert: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) castInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) castInterval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSizedType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) promote: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplType.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) convert: (recoveredStack3) and: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeFromInterval: (recoveredStack1) type: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBIntControllerSize.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSigned.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) convert: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053e974; bytecode file offset 0xe3b278"
!SGIlTargetIndependentCastingTransformation methodsFor: 'recovered'!
binaryArithIntExpr: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) convert: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) castInterval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) castInterval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) castInterval.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSizedType: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) promote: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) getImplType.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) convert: (recoveredStack3) and: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsEfficient: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeFromInterval: (recoveredStack1) type: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBIntControllerSize.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSigned.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSigned.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) convert: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeIleType: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

