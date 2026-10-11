"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f404; bytecode file offset 0x90bd10"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x2002ccb4; bytecode file offset 0x934580"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
sizeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maxSize.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e518; bytecode file offset 0x93bf94"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
ileBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIleBuilder.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d944; bytecode file offset 0x95a1f8"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
hasElementMaxSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := elementMaxSize.
    recoveredValue1 := (recoveredValue0) isNil.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20068624; bytecode file offset 0x965b90"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
maxSize
    | recoveredValue0 |
    recoveredValue0 := maxSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200768b4; bytecode file offset 0x9757c8"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
isCgFixedDimension
    ^true
! !

"ASDBase.ic method 0x200c0d18; bytecode file offset 0x9bdf14"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
elementMaxSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    elementMaxSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cca38; bytecode file offset 0x9c92f8"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
maxSizeInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (self) maxSize.
    recoveredValue2 := (recoveredValue0) left: (1) right: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dab84; bytecode file offset 0x9d744c"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
ileMaxSizeUseConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := (self) maxSize.
    recoveredValue3 := (recoveredValue1) createIntConstant: (recoveredValue2) suffix: ('U').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e06ec; bytecode file offset 0x9dcfac"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (self) maxSize.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := (recoveredValue0) left: (0) right: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20101e28; bytecode file offset 0x9fe6e4"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
initialize: recoveredArg1 type: recoveredArg2 specialCallName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    super initialize: (recoveredValue0) specialCallName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    maxSize := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2010319c; bytecode file offset 0x9ffa80"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
ileMaxSizeType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) maxSizeInterval.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := SGCgTypeFactory.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) left.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) right.
    recoveredValue6 := (recoveredValue1) mdlLimitedTypeMin: (recoveredValue3) max: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20105cd4; bytecode file offset 0xa0258c"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
elementMaxSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementMaxSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := elementMaxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011e85c; bytecode file offset 0xa1b148"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) isCgFixedDimension.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20121fcc; bytecode file offset 0xa1e888"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
isCgTypeMappableTo: recoveredArg1 generator: recoveredArg2
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
            recoveredStack2 := (recoveredStack2) isCgFixedDimension.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ac438; bytecode file offset 0xaa8d08"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
ileMaxSize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'U'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIntConstant: (recoveredStack1) suffix: (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildMaxSizeSpecialCall: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbf78; bytecode file offset 0xad883c"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
isCgTypeAssignmentCompatibleTo: recoveredArg1 generator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isCgMixedDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantDimension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableDimension.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeIdentical: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023e500; bytecode file offset 0xb3adfc"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
convertCgDimensionWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgTypeIdentical: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
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
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) dimensions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) addAll: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) mixedArrayDimension: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041a924; bytecode file offset 0xd1722c"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
buildMaxSizeSpecialCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonArithmeticContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) type.
    recoveredBlock7Value3 := (self) generator.
    recoveredBlock7Value4 := (recoveredBlock7Value3) defaultInOutAttributes.
    recoveredBlock7Value5 := (recoveredBlock7Value0) parmAssign: (recoveredBlock7Value2) attributes: (recoveredBlock7Value4).
    recoveredBlock7Value6 := recoveredBlock7Value5.
    recoveredLocal2 := recoveredBlock7Value6.
    recoveredBlock7Value5
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) specialCallName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileMaxSizeType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSpecialCall: (recoveredStack2) receiver: (recoveredStack3) args: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgFixedDimension.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariantDimension.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtCompileTime.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := Infinity.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) plus.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047b2c0; bytecode file offset 0xd77bc4"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
checkVariantSizeRestrictions: recoveredArg1 reason: recoveredArg2 on: recoveredArg3 source: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtCompileTime.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariantDimension.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) sysConstDecl.
    recoveredBlock26Value2 := (recoveredBlock26Value1) errLabel.
    recoveredBlock26Value3 := ('System constant <') , (recoveredBlock26Value2).
    recoveredBlock26Value4 := (recoveredBlock26Value3) , ('> must have the value ').
    recoveredBlock26Value5 := (self) maxSize.
    recoveredBlock26Value6 := (recoveredBlock26Value5) asString.
    recoveredBlock26Value7 := (recoveredBlock26Value4) , (recoveredBlock26Value6).
    recoveredBlock26Value8 := (recoveredBlock26Value7) , (', due to ').
    recoveredBlock26Value9 := recoveredArg2.
    recoveredBlock26Value10 := (recoveredBlock26Value8) , (recoveredBlock26Value9).
    recoveredBlock26Value10
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredBlock64Value0.
    recoveredBlock64Value2 := recoveredArg1.
    recoveredBlock64Value3 := (recoveredBlock64Value2) sysConstDecl.
    recoveredBlock64Value4 := (recoveredBlock64Value3) asMdlIdentifier.
    (recoveredBlock64Value1) pushId: (recoveredBlock64Value4).
    recoveredBlock64Value5 := recoveredBlock64Value0.
    recoveredBlock64Value6 := (self) maxSize.
    (recoveredBlock64Value5) literal: (recoveredBlock64Value6).
    recoveredBlock64Value7 := (recoveredBlock64Value0) ne.
    recoveredBlock64Value7
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 |
    recoveredBlock90Value0 := (self) maxSize.
    recoveredBlock90Value1 := (recoveredBlock90Value0) asString.
    recoveredBlock90Value2 := recoveredArg1.
    recoveredBlock90Value3 := (recoveredBlock90Value2) sysConstDecl.
    recoveredBlock90Value4 := (recoveredBlock90Value3) errLabel.
    recoveredBlock90Value5 := recoveredArg4.
    recoveredBlock90Value6 := (self) mdlWarningNo: (651) with: (recoveredBlock90Value1) with: (recoveredBlock90Value4) source: (recoveredBlock90Value5).
    recoveredBlock90Value6
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) compileTimeRestriction: (recoveredStack2) block: (recoveredStack3) onWarningDo: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9820; bytecode file offset 0xda6128"
!SGCgFixedArrayDimension methodsFor: 'recovered'!
ileForEachIndex: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) uintContext.
    recoveredValue2 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Local4 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 recoveredBlock7Value14 recoveredBlock7Value15 recoveredBlock7Value16 recoveredBlock7Value17 recoveredBlock7Value18 recoveredBlock7Value19 recoveredBlock7Value20 recoveredBlock7Value21 recoveredBlock7Value22 recoveredBlock7Value23 recoveredBlock7Value24 recoveredBlock7Value25 recoveredBlock7Value26 recoveredBlock7Value27 recoveredBlock7Value28 recoveredBlock7Value29 recoveredBlock7Value30 recoveredBlock7Value31 recoveredBlock7Value32 |
    recoveredBlock7Value0 := SGCgTypeFactory.
    recoveredBlock7Value1 := (self) maxSize.
    recoveredBlock7Value2 := (recoveredBlock7Value0) mdlLimitedTypeMin: (0) max: (recoveredBlock7Value1).
    recoveredBlock7Local4 := recoveredBlock7Value2.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (self) ileMaxSize: (recoveredBlock7Value3).
    recoveredBlock7Local1 := recoveredBlock7Value4.
    recoveredBlock7Value5 := (self) ileBuilder.
    recoveredBlock7Value6 := recoveredBlock7Local4.
    recoveredBlock7Value7 := (recoveredBlock7Value5) createDummyExprType: (recoveredBlock7Value6).
    recoveredBlock7Local3 := recoveredBlock7Value7.
    recoveredBlock7Value8 := (self) ileBuilder.
    recoveredBlock7Value9 := recoveredBlock7Local3.
    recoveredBlock7Value10 := (recoveredBlock7Value8) tempAssign: (recoveredBlock7Value9).
    recoveredLocal5 := recoveredBlock7Value10.
    recoveredBlock7Value11 := (self) ileBuilder.
    recoveredBlock7Value12 := (recoveredBlock7Value11) scalarConstant: (0).
    recoveredBlock7Local2 := recoveredBlock7Value12.
    recoveredBlock7Value13 := (self) ileBuilder.
    recoveredBlock7Value14 := recoveredBlock7Local2.
    recoveredBlock7Value15 := recoveredLocal5.
    recoveredBlock7Value16 := (recoveredBlock7Value15) asIleLValue.
    recoveredBlock7Value17 := SGCgVarAttributes.
    recoveredBlock7Value18 := (recoveredBlock7Value17) create.
    recoveredBlock7Value19 := (recoveredBlock7Value13) assignExpr: (recoveredBlock7Value14) to: (recoveredBlock7Value16) attributes: (recoveredBlock7Value18).
    recoveredLocal4 := recoveredBlock7Value19.
    recoveredBlock7Value20 := (self) ileBuilder.
    recoveredBlock7Value21 := recoveredLocal5.
    recoveredBlock7Value22 := (recoveredBlock7Value21) asIleCopy.
    recoveredBlock7Value23 := recoveredBlock7Local4.
    recoveredBlock7Value24 := (recoveredBlock7Value20) createPostIncExpr: (recoveredBlock7Value22) type: (recoveredBlock7Value23).
    recoveredLocal2 := recoveredBlock7Value24.
    recoveredBlock7Value25 := (self) ileBuilder.
    recoveredBlock7Value26 := recoveredLocal5.
    recoveredBlock7Value27 := (recoveredBlock7Value26) asIleCopy.
    recoveredBlock7Value28 := recoveredBlock7Local1.
    recoveredBlock7Value29 := SGCgExpressionContext.
    recoveredBlock7Value30 := (recoveredBlock7Value29) uintContext.
    recoveredBlock7Value31 := (recoveredBlock7Value25) createLessLeftExpr: (recoveredBlock7Value27) rightExpr: (recoveredBlock7Value28) expressionContext: (recoveredBlock7Value30).
    recoveredBlock7Value32 := recoveredBlock7Value31.
    recoveredLocal3 := recoveredBlock7Value32.
    recoveredBlock7Value31
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal5.
    recoveredValue5 := (recoveredValue3) value: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asBlockedStatementList.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) ileBuilder.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue7) forExpr: (recoveredValue8) firstExpr: (recoveredValue9) lastExpr: (recoveredValue10) doStmnt: (recoveredValue11) protectLoop: (false).
    ^recoveredValue12
! !

