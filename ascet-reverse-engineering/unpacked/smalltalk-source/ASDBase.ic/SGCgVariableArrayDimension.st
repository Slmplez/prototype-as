"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200027f0; bytecode file offset 0x8ffcfc"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
asCgVariableDimension
    ^self
! !

"ASDBase.ic method 0x20004478; bytecode file offset 0x90206c"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
convertCgDimensionWith: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200065d8; bytecode file offset 0x902ecc"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
checkVariantSizeRestrictions: recoveredArg1 reason: recoveredArg2 on: recoveredArg3 source: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x20025574; bytecode file offset 0x92209c"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
sizeLabel
    ^'*'
! !

"ASDBase.ic method 0x20038c28; bytecode file offset 0x935c54"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgVariableDimension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a2d4; bytecode file offset 0x938608"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
ileMaxSizeUseConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ileMaxSize: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c0a8; bytecode file offset 0x9389cc"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
isCgTypeAssignmentCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgVariableDimension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c108; bytecode file offset 0x9389cc"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
isCgTypeCompatibleTo: recoveredArg1 generator: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgVariableDimension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200786dc; bytecode file offset 0x9757c8"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
isCgVariableDimension
    ^true
! !

"ASDBase.ic method 0x2007ca0c; bytecode file offset 0x97c330"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
isCgFixedDimension
    ^false
! !

"ASDBase.ic method 0x200884f8; bytecode file offset 0x985628"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
indexType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) maxSize.
    recoveredValue2 := (recoveredValue0) indexType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bec30; bytecode file offset 0x9bc0b4"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
initializeSpecialCallName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    specialCallName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20254454; bytecode file offset 0xb50d28"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
sizeType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := RBInt32Unsigned.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInterval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLimitedTypeMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := RBInt16Unsigned.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInterval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlLimitedTypeMin: (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371058; bytecode file offset 0xc6d938"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
ileMaxSize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'matrixXLength'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVariableArrayMatrixSizeXAccess: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'matrixYLength'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVariableArrayMatrixSizeYAccess: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := (self) specialCallName.
    recoveredBlock33Value1 := (recoveredBlock33Value0) = ('arrayLength').
    recoveredBlock33Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 |
    recoveredBlock45Value0 := (self) specialCallName.
    recoveredBlock45Value1 := ('Unknown length special call ') , (recoveredBlock45Value0).
    recoveredBlock45Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) createVariableArrayMatrixSizeAccess: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203da950; bytecode file offset 0xcd7238"
!SGCgVariableArrayDimension methodsFor: 'recovered'!
maxSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
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
            recoveredStack0 := (recoveredStack0) suppressCheckForUpperVariantBound.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := RBInt16Unsigned.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'matrixXLength'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 64.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialCallName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'matrixYLength'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 64.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 |
    recoveredBlock52Value0 := (self) specialCallName.
    recoveredBlock52Value1 := (recoveredBlock52Value0) = ('arrayLength').
    recoveredBlock52Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 |
    recoveredBlock64Value0 := (self) specialCallName.
    recoveredBlock64Value1 := ('Unknown length special call ') , (recoveredBlock64Value0).
    recoveredBlock64Value1
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 2048.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

