"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048dec; bytecode file offset 0x945728"
!SGGeneratorFactory class methodsFor: 'recovered'!
resetCurrent
    Current := nil.
    ^self
! !

"ASDBase.ic method 0x200b2528; bytecode file offset 0x9aede8"
!SGGeneratorFactory class methodsFor: 'recovered'!
createCodeGeneratorStandardStrategy
    | recoveredValue0 |
    Current := nil.
    recoveredValue0 := (self) create.
    (recoveredValue0) activateCodeGeneratorStandardStrategy.
    ^self
! !

"ASDBase.ic method 0x20128474; bytecode file offset 0xa24eb0"
!SGGeneratorFactory class methodsFor: 'recovered'!
additionalGenerators
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AdditionalGenerators.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            AdditionalGenerators := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := AdditionalGenerators.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130f24; bytecode file offset 0xa2d7e8"
!SGGeneratorFactory class methodsFor: 'recovered'!
createWithContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    Current := nil.
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) genContext: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) activateCodeGeneratorStrategy.
    ^self
! !

"ASDBase.ic method 0x2017e8a4; bytecode file offset 0xa7b168"
!SGGeneratorFactory class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Current.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) new.
    recoveredBlock6Value1 := (recoveredBlock6Value0) initialize.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    Current := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Current.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e8f2c; bytecode file offset 0xae57f0"
!SGGeneratorFactory class methodsFor: 'recovered'!
registerAdditionalGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) additionalGenerators.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) = (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) reject: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) add: (recoveredValue4).
    AdditionalGenerators := recoveredValue2.
    ^self
! !

