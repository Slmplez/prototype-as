"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005098; bytecode file offset 0x90206c"
!SGIaSettings methodsFor: 'recovered'!
optimizeLimiters: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20009da0; bytecode file offset 0x908be4"
!SGIaSettings methodsFor: 'recovered'!
maximumBitLengthLabel
    | recoveredValue0 |
    recoveredValue0 := (self) representableBitsLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a9e8; bytecode file offset 0x908be4"
!SGIaSettings methodsFor: 'recovered'!
xmlCategory
    | recoveredValue0 |
    recoveredValue0 := (self) xmlCategoryFixPointCodeLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019298; bytecode file offset 0x92209c"
!SGIaSettings methodsFor: 'recovered'!
groupLabel
    ^'Fixed Point Code Generation'
! !

"ASDBase.ic method 0x20019688; bytecode file offset 0x92209c"
!SGIaSettings methodsFor: 'recovered'!
resultOnZeroLabel
    ^'Result on division by zero'
! !

"ASDBase.ic method 0x2001a210; bytecode file offset 0x92209c"
!SGIaSettings methodsFor: 'recovered'!
sectionName
    ^'IntegerSettings'
! !

"ASDBase.ic method 0x2001f2a4; bytecode file offset 0x92209c"
!SGIaSettings methodsFor: 'recovered'!
fixedPointCodeGenerationOptions
    ^'Fixed Point Code Generation Options'
! !

"ASDBase.ic method 0x20027c70; bytecode file offset 0x92454c"
!SGIaSettings methodsFor: 'recovered'!
resultOnDivisionByZeroIsMinMaxInteger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) resultOnDivisionByZeroIsNumber.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200280b4; bytecode file offset 0x934580"
!SGIaSettings methodsFor: 'recovered'!
repBitsValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) repBitsValues.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aad4; bytecode file offset 0x934580"
!SGIaSettings methodsFor: 'recovered'!
changeableStringOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) stringOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ae04; bytecode file offset 0x934580"
!SGIaSettings methodsFor: 'recovered'!
changeableIntOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) intOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030944; bytecode file offset 0x934580"
!SGIaSettings methodsFor: 'recovered'!
repContinuousBitsValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) repContinuousBitsValues.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032f54; bytecode file offset 0x934580"
!SGIaSettings methodsFor: 'recovered'!
changeableBoolOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) boolOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb58; bytecode file offset 0x938608"
!SGIaSettings methodsFor: 'recovered'!
equalToVariant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) equalToOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005f068; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
allowDouble
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyAllowDouble.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f194; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
generateFloatLimiters
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateFloatLimiters.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f1d0; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
representableBits
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRepresentableBits.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f3b0; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
tempFloatsAlways32Bit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyTempFloatsAlways32Bit.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f450; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
shiftForMul
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForMul.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f5b8; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
shiftForDiv
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForDiv.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f658; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
divShiftNecessaryOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDivShiftNecessaryOnly.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fab8; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
useNewIntegerTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyUseNewIntegerTypes.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb6c; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
tempVarsAlways32Bit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyTempVarsAlways32Bit.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb80; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
shiftForLiterals
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForLiterals.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fbd0; bytecode file offset 0x95c4f4"
!SGIaSettings methodsFor: 'recovered'!
generateRound
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateRound.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20076fec; bytecode file offset 0x9757c8"
!SGIaSettings methodsFor: 'recovered'!
restrictedServiceUsage
    ^true
! !

"ASDBase.ic method 0x2007718c; bytecode file offset 0x9757c8"
!SGIaSettings methodsFor: 'recovered'!
optimizeLimiters
    ^true
! !

"ASDBase.ic method 0x20077864; bytecode file offset 0x9757c8"
!SGIaSettings methodsFor: 'recovered'!
optimizeFixValues
    ^true
! !

"ASDBase.ic method 0x20077e3c; bytecode file offset 0x9757c8"
!SGIaSettings methodsFor: 'recovered'!
generateLimiters
    ^true
! !

"ASDBase.ic method 0x2008ef94; bytecode file offset 0x98b944"
!SGIaSettings methodsFor: 'recovered'!
arithmeticServiceSetLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyArithmeticServiceSet.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008efd0; bytecode file offset 0x98b944"
!SGIaSettings methodsFor: 'recovered'!
representableBitsLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyRepresentableBits.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f2fc; bytecode file offset 0x98bd60"
!SGIaSettings methodsFor: 'recovered'!
resultOnDivisionByZeroIsNumber
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) resultOnDivisionByZero.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) resultOnDivisionNumberString.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a570c; bytecode file offset 0x9a23f0"
!SGIaSettings methodsFor: 'recovered'!
generateLimiters: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateLimiters.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae418; bytecode file offset 0x9ab034"
!SGIaSettings methodsFor: 'recovered'!
setOption: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) newOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b56d8; bytecode file offset 0x9b1ff4"
!SGIaSettings methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) newOptions.
    recoveredValue3 := (recoveredValue2) deepCopy.
    recoveredValue4 := (recoveredValue1) newOptions: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b9d24; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
arithmeticServiceSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyArithmeticServiceSet.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f04; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
useNewIntegerTypes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyUseNewIntegerTypes.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f2c; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
resultOnDivisionByZero: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyResultOnDivisionByZero.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f68; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
representableContinuousBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRepresentableContinuousBits.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba030; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
divShiftNecessaryOnly: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDivShiftNecessaryOnly.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba06c; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
tempVarsAlways32Bit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyTempVarsAlways32Bit.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba0a8; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
allowDouble: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyAllowDouble.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba184; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
generateRound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateRound.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba1c0; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
representableBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRepresentableBits.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba210; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
shiftForMul: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForMul.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba238; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
generateFloatLimiters: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateFloatLimiters.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba288; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
shiftForDiv: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForDiv.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba2d8; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
tempFloatsAlways32Bit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyTempFloatsAlways32Bit.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba300; bytecode file offset 0x9b6c88"
!SGIaSettings methodsFor: 'recovered'!
shiftForLiterals: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyShiftForLiterals.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2c9c; bytecode file offset 0x9bfde0"
!SGIaSettings methodsFor: 'recovered'!
newOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb058; bytecode file offset 0x9c7914"
!SGIaSettings methodsFor: 'recovered'!
getOptionDefaultValue: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super getOptionDefaultValue: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d7fb4; bytecode file offset 0x9d4874"
!SGIaSettings methodsFor: 'recovered'!
restrictedServiceUsage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRestrictedServiceUsage.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) not.
    (self) setOption: (recoveredValue1) to: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2015d324; bytecode file offset 0xa59be4"
!SGIaSettings methodsFor: 'recovered'!
newOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            newOptions := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) convertOldStyle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := newOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20182e60; bytecode file offset 0xa7f720"
!SGIaSettings methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super options.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super options.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186ec8; bytecode file offset 0xa8378c"
!SGIaSettings methodsFor: 'recovered'!
getOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) newOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) class.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) optionDefaultForKey: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20191460; bytecode file offset 0xa8dd2c"
!SGIaSettings methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) setVersion.
    (self) options: (0).
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    newOptions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20199548; bytecode file offset 0xa95e10"
!SGIaSettings methodsFor: 'recovered'!
resultOnDivisionByZero
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyResultOnDivisionByZero.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultOnDivisionNumberString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) resultOnDivisionByZero: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a1c8c; bytecode file offset 0xa9e558"
!SGIaSettings methodsFor: 'recovered'!
representableContinuousBits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempFloatsAlways32Bit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) tempFloatsAlways32Bit: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) representableContinuousBits: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyRepresentableContinuousBits.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0bf8; bytecode file offset 0xacd4b4"
!SGIaSettings methodsFor: 'recovered'!
representableBitsForDiv
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableBits.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowDouble.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d298; bytecode file offset 0xb09b6c"
!SGIaSettings methodsFor: 'recovered'!
setDefaultArithmeticServiceSet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63786'.
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
            recoveredStack1 := SGIaSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) arithmeticServicePossibleForProject: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) arithmeticServiceSetsForProject: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) arithmeticServiceSet: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022949c; bytecode file offset 0xb25d64"
!SGIaSettings methodsFor: 'recovered'!
determineArithmeticServiceSetForTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) arithmeticServiceSetsForTarget: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack3 := self.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) arithmeticServiceSet.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) = (recoveredBlock9Stack3).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) arithmeticServiceSet.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^''
! !

"ASDBase.ic method 0x2026795c; bytecode file offset 0xb64238"
!SGIaSettings methodsFor: 'recovered'!
getArithmeticServiceSetFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyArithmeticServiceSet.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) sectionName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ''.
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027d154; bytecode file offset 0xb79a30"
!SGIaSettings methodsFor: 'recovered'!
getRepresentableBitsFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyRepresentableBits.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) sectionName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 32.
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
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027d1b0; bytecode file offset 0xb79a8c"
!SGIaSettings methodsFor: 'recovered'!
getResultOnDivisionByZeroFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyResultOnDivisionByZero.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) sectionName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultOnDivisionNumberString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e85ac; bytecode file offset 0xbe4ec8"
!SGIaSettings methodsFor: 'recovered'!
determineDefaultArithmeticServiceSetForTarget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62959'.
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
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsUseArithmeticService.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) arithmeticServiceSetsForTarget: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) arithmeticServiceSet: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) noArithmeticServiceSetString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e85e4; bytecode file offset 0xbe4ec8"
!SGIaSettings methodsFor: 'recovered'!
determineDefaultArithmeticServiceSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62959'.
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
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdGeneralOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsImplementationServiceSet.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) arithmeticServiceSetsForProject: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) arithmeticServiceSet: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) noArithmeticServiceSetString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f51b8; bytecode file offset 0xbf1a88"
!SGIaSettings methodsFor: 'recovered'!
setOptionsFromEntries: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) name.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) arithmeticServiceSetLabel.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 42].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := ''.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ~= (recoveredBlock5Stack3).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 30] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) userField.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value: (recoveredBlock5Stack2).
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) userField.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value: (recoveredBlock5Stack2).
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203169e0; bytecode file offset 0xc132c0"
!SGIaSettings methodsFor: 'recovered'!
arithmeticServiceSet
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62959'.
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyArithmeticServiceSet.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Call_62959'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) determineDefaultArithmeticServiceSet: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) arithmeticServiceSet: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035f82c; bytecode file offset 0xc5c118"
!SGIaSettings methodsFor: 'recovered'!
determineArithmeticServiceSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) arithmeticServiceSetsForProject: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack3 := self.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) arithmeticServiceSet.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) = (recoveredBlock9Stack3).
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) arithmeticServiceSet.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := ('\') withCrs.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := RBUserInfo.
    recoveredValue6 := (self) arithmeticServiceSet.
    recoveredValue7 := ('Arithmetic service <') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('> required but not defined!!').
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , ('Please check the "services.ini" file!!').
    recoveredValue12 := (recoveredValue5) errorMessage: (recoveredValue11).
    (recoveredValue12) prompt.
    ^''
! !

"ASDBase.ic method 0x203da780; bytecode file offset 0xcd7054"
!SGIaSettings methodsFor: 'recovered'!
convertOldStyle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := representableBits.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := representableBits.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) representableBits: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            representableBits := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := generateLimiters.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := generateLimiters.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) generateLimiters: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            generateLimiters := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) options.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) tempVarsAlways32Bit: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) options.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) tempFloatsAlways32Bit: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) options.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) optimizeLimiters: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            options := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042aa84; bytecode file offset 0xd2735c"
!SGIaSettings methodsFor: 'recovered'!
equalToOption: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'invalid argument class'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getVersion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVersion.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptions.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34Stack6 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) newOptions.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack4 := [
    | recoveredBlock34Block47Value0 recoveredBlock34Block47Value1 recoveredBlock34Block47Value2 |
    recoveredBlock34Block47Value0 := (self) class.
    recoveredBlock34Block47Value1 := recoveredBlock34Arg1.
    recoveredBlock34Block47Value2 := (recoveredBlock34Block47Value0) optionDefaultForKey: (recoveredBlock34Block47Value1).
    recoveredBlock34Block47Value2
].
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) at: (recoveredBlock34Stack3) ifAbsent: (recoveredBlock34Stack4).
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg1.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) newOptions.
            recoveredBlock34PC := 68.
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Arg1.
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack5 := [
    | recoveredBlock34Block71Value0 recoveredBlock34Block71Value1 recoveredBlock34Block71Value2 |
    recoveredBlock34Block71Value0 := (self) class.
    recoveredBlock34Block71Value1 := recoveredBlock34Arg1.
    recoveredBlock34Block71Value2 := (recoveredBlock34Block71Value0) optionDefaultForKey: (recoveredBlock34Block71Value1).
    recoveredBlock34Block71Value2
].
            recoveredBlock34PC := 85.
        ].
        recoveredBlock34Step = 85 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) at: (recoveredBlock34Stack4) ifAbsent: (recoveredBlock34Stack5).
            recoveredBlock34PC := 87.
        ].
        recoveredBlock34Step = 87 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 88.
        ].
        recoveredBlock34Step = 88 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 95] ifFalse: [recoveredBlock34PC := 92].
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34PC := 93.
        ].
        recoveredBlock34Step = 93 ifTrue: [
            recoveredBlock34Stack1 := false.
            recoveredBlock34PC := 94.
        ].
        recoveredBlock34Step = 94 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 95 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ed968; bytecode file offset 0xeea2f0"
!SGIaSettings methodsFor: 'recovered'!
determineOptionEntriesForProject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := RBEnumerationEditOptionEntry.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) replaceWhitespacesBy_.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack4) xmlCategory: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) keyArithmeticServiceSet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack4) attributeName: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) arithmeticServiceSetLabel.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) arithmeticServiceSet.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := (recoveredStack5) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack5) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) determineDefaultArithmeticServiceSet: (recoveredStack6).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) determineArithmeticServiceSet: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack4) value: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack4) group: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := (recoveredStack5) arithmeticServiceSetsForProject: (recoveredStack6).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := (recoveredStack5) arithmeticServiceSet.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack4) text: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := (self) class.
    recoveredBlock90Value1 := recoveredArg1.
    recoveredBlock90Value2 := recoveredBlock90Arg1.
    recoveredBlock90Value3 := (recoveredBlock90Value0) openArithmeticServiceEditorForProject: (recoveredBlock90Value1) selectedSet: (recoveredBlock90Value2).
    recoveredBlock90Value3
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack4) editAction: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := (self) arithmeticServiceSet: (recoveredBlock108Value0).
    recoveredBlock108Value1
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack4) userField: (recoveredStack5).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := RBEnumerationOptionEntry.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := (recoveredStack5) replaceWhitespacesBy_.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack4) xmlCategory: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := (recoveredStack5) keyResultOnDivisionByZero.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack4) attributeName: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := 'Result on division by zero'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := (recoveredStack5) resultOnDivisionByZero.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack4) value: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack4) group: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack6 := (recoveredStack6) resultOnDivisionNumberString.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack7 := (recoveredStack7) class.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack7 := (recoveredStack7) resultOnDivsionUserDefinedString.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := 'Result on division by zero'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack4) text: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := [:recoveredBlock182Arg1 | 
    | recoveredBlock182Stack0 recoveredBlock182Stack1 recoveredBlock182Stack2 recoveredBlock182Stack3 recoveredBlock182PC recoveredBlock182Step recoveredBlock182Done recoveredBlock182Result |
    recoveredBlock182Stack0 := self.
    recoveredBlock182PC := 188.
    recoveredBlock182Done := false.
    [recoveredBlock182Done not] whileTrue: [
        recoveredBlock182Step := recoveredBlock182PC.
        recoveredBlock182Step = 188 ifTrue: [
            recoveredBlock182Stack1 := nil.
            recoveredBlock182PC := 189.
        ].
        recoveredBlock182Step = 189 ifTrue: [
            recoveredBlock182Stack2 := recoveredBlock182Arg1.
            recoveredBlock182PC := 190.
        ].
        recoveredBlock182Step = 190 ifTrue: [
            (recoveredBlock182Stack2 == nil) ifTrue: [recoveredBlock182PC := 199] ifFalse: [recoveredBlock182PC := 194].
        ].
        recoveredBlock182Step = 194 ifTrue: [
            recoveredBlock182PC := 195.
        ].
        recoveredBlock182Step = 195 ifTrue: [
            recoveredBlock182Stack1 := self.
            recoveredBlock182PC := 196.
        ].
        recoveredBlock182Step = 196 ifTrue: [
            recoveredBlock182Stack2 := recoveredBlock182Arg1.
            recoveredBlock182PC := 197.
        ].
        recoveredBlock182Step = 197 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) resultOnDivisionByZero: (recoveredBlock182Stack2).
            recoveredBlock182PC := 199.
        ].
        recoveredBlock182Step = 199 ifTrue: [
            recoveredBlock182Result := recoveredBlock182Stack1.
            recoveredBlock182Done := true.
        ].
    ].
    recoveredBlock182Result
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack4) userField: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := RBEnumerationOptionEntry.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack5 := (recoveredStack5) replaceWhitespacesBy_.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack4) xmlCategory: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack5 := (recoveredStack5) class.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := (recoveredStack5) keyRepresentableBits.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack4) attributeName: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack5 := (recoveredStack5) maximumBitLengthLabel.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := (recoveredStack5) representableBits.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack4) value: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack5 := (recoveredStack5) groupLabel.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack4) group: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := (recoveredStack5) repBitsValues.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack6 := [:block2811b51cArg1 | 
    | block2811b51cValue0 block2811b51cValue1 |
    block2811b51cValue0 := block2811b51cArg1.
    block2811b51cValue1 := (block2811b51cValue0) printString.
    block2811b51cValue1
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := (recoveredStack5) collect: (recoveredStack6).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack5 := (recoveredStack5) maximumBitLengthLabel.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack4) text: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack5 := [:recoveredBlock269Arg1 | 
    | recoveredBlock269Stack0 recoveredBlock269Stack1 recoveredBlock269Stack2 recoveredBlock269Stack3 recoveredBlock269PC recoveredBlock269Step recoveredBlock269Done recoveredBlock269Result |
    recoveredBlock269Stack0 := self.
    recoveredBlock269PC := 276.
    recoveredBlock269Done := false.
    [recoveredBlock269Done not] whileTrue: [
        recoveredBlock269Step := recoveredBlock269PC.
        recoveredBlock269Step = 276 ifTrue: [
            recoveredBlock269Stack1 := nil.
            recoveredBlock269PC := 277.
        ].
        recoveredBlock269Step = 277 ifTrue: [
            recoveredBlock269Stack2 := recoveredBlock269Arg1.
            recoveredBlock269PC := 278.
        ].
        recoveredBlock269Step = 278 ifTrue: [
            (recoveredBlock269Stack2 == nil) ifTrue: [recoveredBlock269PC := 289] ifFalse: [recoveredBlock269PC := 282].
        ].
        recoveredBlock269Step = 282 ifTrue: [
            recoveredBlock269PC := 283.
        ].
        recoveredBlock269Step = 283 ifTrue: [
            recoveredBlock269Stack1 := self.
            recoveredBlock269PC := 284.
        ].
        recoveredBlock269Step = 284 ifTrue: [
            recoveredBlock269Stack2 := recoveredBlock269Arg1.
            recoveredBlock269PC := 285.
        ].
        recoveredBlock269Step = 285 ifTrue: [
            recoveredBlock269Stack2 := (recoveredBlock269Stack2) asInteger.
            recoveredBlock269PC := 287.
        ].
        recoveredBlock269Step = 287 ifTrue: [
            recoveredBlock269Stack1 := (recoveredBlock269Stack1) representableBits: (recoveredBlock269Stack2).
            recoveredBlock269PC := 289.
        ].
        recoveredBlock269Step = 289 ifTrue: [
            recoveredBlock269Result := recoveredBlock269Stack1.
            recoveredBlock269Done := true.
        ].
    ].
    recoveredBlock269Result
].
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack4) userField: (recoveredStack5).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeableBoolOptions.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Value0 recoveredBlock297Value1 recoveredBlock297Value2 recoveredBlock297Value3 recoveredBlock297Value4 recoveredBlock297Value5 recoveredBlock297Value6 recoveredBlock297Value7 recoveredBlock297Value8 recoveredBlock297Value9 recoveredBlock297Value10 recoveredBlock297Value11 recoveredBlock297Value12 recoveredBlock297Value13 recoveredBlock297Value14 recoveredBlock297Value15 recoveredBlock297Value16 recoveredBlock297Value17 recoveredBlock297Value18 recoveredBlock297Value19 recoveredBlock297Value20 recoveredBlock297Value21 recoveredBlock297Value22 recoveredBlock297Value23 recoveredBlock297Value24 |
    recoveredBlock297Value0 := recoveredLocal2.
    recoveredBlock297Value1 := recoveredBlock297Value0.
    recoveredBlock297Value2 := RBBooleanOptionEntry.
    recoveredBlock297Value3 := (recoveredBlock297Value2) create.
    recoveredBlock297Value4 := recoveredBlock297Value3.
    recoveredBlock297Value5 := (self) groupLabel.
    recoveredBlock297Value6 := (recoveredBlock297Value5) replaceWhitespacesBy_.
    (recoveredBlock297Value4) xmlCategory: (recoveredBlock297Value6).
    recoveredBlock297Value7 := recoveredBlock297Value3.
    recoveredBlock297Value8 := recoveredBlock297Arg1.
    (recoveredBlock297Value7) attributeName: (recoveredBlock297Value8).
    recoveredBlock297Value9 := recoveredBlock297Value3.
    recoveredBlock297Value10 := (self) class.
    recoveredBlock297Value11 := recoveredBlock297Arg1.
    recoveredBlock297Value12 := (recoveredBlock297Value10) optionLabel: (recoveredBlock297Value11).
    (recoveredBlock297Value9) name: (recoveredBlock297Value12).
    recoveredBlock297Value13 := recoveredBlock297Value3.
    recoveredBlock297Value14 := recoveredBlock297Arg1.
    recoveredBlock297Value15 := (recoveredBlock297Value14) asSymbol.
    recoveredBlock297Value16 := (self) perform: (recoveredBlock297Value15).
    (recoveredBlock297Value13) value: (recoveredBlock297Value16).
    recoveredBlock297Value17 := recoveredBlock297Value3.
    recoveredBlock297Value18 := (self) groupLabel.
    (recoveredBlock297Value17) group: (recoveredBlock297Value18).
    recoveredBlock297Value19 := recoveredBlock297Value3.
    recoveredBlock297Value20 := (self) class.
    recoveredBlock297Value21 := recoveredBlock297Arg1.
    recoveredBlock297Value22 := (recoveredBlock297Value20) optionLabel: (recoveredBlock297Value21).
    (recoveredBlock297Value19) text: (recoveredBlock297Value22).
    recoveredBlock297Value23 := recoveredBlock297Value3.
    recoveredBlock297Value24 := [:recoveredBlock297Block365Arg1 | 
    | recoveredBlock297Block365Stack0 recoveredBlock297Block365Stack1 recoveredBlock297Block365Stack2 recoveredBlock297Block365Stack3 recoveredBlock297Block365Stack4 recoveredBlock297Block365PC recoveredBlock297Block365Step recoveredBlock297Block365Done recoveredBlock297Block365Result |
    recoveredBlock297Block365Stack0 := self.
    recoveredBlock297Block365PC := 372.
    recoveredBlock297Block365Done := false.
    [recoveredBlock297Block365Done not] whileTrue: [
        recoveredBlock297Block365Step := recoveredBlock297Block365PC.
        recoveredBlock297Block365Step = 372 ifTrue: [
            recoveredBlock297Block365Stack1 := nil.
            recoveredBlock297Block365PC := 373.
        ].
        recoveredBlock297Block365Step = 373 ifTrue: [
            recoveredBlock297Block365Stack2 := recoveredBlock297Block365Arg1.
            recoveredBlock297Block365PC := 374.
        ].
        recoveredBlock297Block365Step = 374 ifTrue: [
            (recoveredBlock297Block365Stack2 == nil) ifTrue: [recoveredBlock297Block365PC := 392] ifFalse: [recoveredBlock297Block365PC := 378].
        ].
        recoveredBlock297Block365Step = 378 ifTrue: [
            recoveredBlock297Block365PC := 379.
        ].
        recoveredBlock297Block365Step = 379 ifTrue: [
            recoveredBlock297Block365Stack1 := self.
            recoveredBlock297Block365PC := 380.
        ].
        recoveredBlock297Block365Step = 380 ifTrue: [
            recoveredBlock297Block365Stack2 := recoveredBlock297Arg1.
            recoveredBlock297Block365PC := 383.
        ].
        recoveredBlock297Block365Step = 383 ifTrue: [
            recoveredBlock297Block365Stack3 := ':'.
            recoveredBlock297Block365PC := 385.
        ].
        recoveredBlock297Block365Step = 385 ifTrue: [
            recoveredBlock297Block365Stack2 := (recoveredBlock297Block365Stack2) , (recoveredBlock297Block365Stack3).
            recoveredBlock297Block365PC := 387.
        ].
        recoveredBlock297Block365Step = 387 ifTrue: [
            recoveredBlock297Block365Stack2 := (recoveredBlock297Block365Stack2) asSymbol.
            recoveredBlock297Block365PC := 389.
        ].
        recoveredBlock297Block365Step = 389 ifTrue: [
            recoveredBlock297Block365Stack3 := recoveredBlock297Block365Arg1.
            recoveredBlock297Block365PC := 390.
        ].
        recoveredBlock297Block365Step = 390 ifTrue: [
            recoveredBlock297Block365Stack1 := (recoveredBlock297Block365Stack1) perform: (recoveredBlock297Block365Stack2) with: (recoveredBlock297Block365Stack3).
            recoveredBlock297Block365PC := 392.
        ].
        recoveredBlock297Block365Step = 392 ifTrue: [
            recoveredBlock297Block365Result := recoveredBlock297Block365Stack1.
            recoveredBlock297Block365Done := true.
        ].
    ].
    recoveredBlock297Block365Result
].
    (recoveredBlock297Value23) userField: (recoveredBlock297Value24).
    (recoveredBlock297Value1) add: (recoveredBlock297Value3).
    recoveredBlock297Value0
].
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

