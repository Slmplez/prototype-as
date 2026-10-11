"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008dec; bytecode file offset 0x908be4"
!SGCgGenerationSettings methodsFor: 'recovered'!
isContImplOverrideEnabled
    | recoveredValue0 |
    recoveredValue0 := (self) contImplOverride.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009218; bytecode file offset 0x908be4"
!SGCgGenerationSettings methodsFor: 'recovered'!
changeableStationOptions
    | recoveredValue0 |
    recoveredValue0 := (self) stationOptionsDocumentation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002b224; bytecode file offset 0x934580"
!SGCgGenerationSettings methodsFor: 'recovered'!
keyCustomizedDataTypesActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCustomizedDataTypesActive.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032bb4; bytecode file offset 0x934580"
!SGCgGenerationSettings methodsFor: 'recovered'!
keyCodeGenerationPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCodeGenerationPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200439bc; bytecode file offset 0x9451f8"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformMessageAccessAnalysis
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('mustPerformMessageAccessAnalysis').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004663c; bytecode file offset 0x9451f8"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformMessageCopyGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('mustPerformMessageCopyGeneration').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200498cc; bytecode file offset 0x947128"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationSettingsWorkingPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyCodeGenerationPath.
    recoveredValue1 := (self) getString: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a42c; bytecode file offset 0x947128"
!SGCgGenerationSettings methodsFor: 'recovered'!
isCustomizedDataTypesActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyCustomizedDataTypesActive.
    recoveredValue1 := (self) getBoolean: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005f16c; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
isCTProject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keySettingsIsProjectCT.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f1f8; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtCompileTime
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtCompileTimeKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f298; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtGenerationTime
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtGenerationTimeKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f3d8; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
contImplOverride
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) contImplOverrideKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f694; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtRunTime
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtRunTimeKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fa04; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
contImplTypeOverrideSingle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) contImplTypeOverrideSingleKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fa40; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformAccessMacroGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) accessMacroGenerationKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb30; bytecode file offset 0x95c4f4"
!SGCgGenerationSettings methodsFor: 'recovered'!
useMemoryClassDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) useMemoryClassDefaultKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006897c; bytecode file offset 0x965b90"
!SGCgGenerationSettings methodsFor: 'recovered'!
codeGenerationOptions
    | recoveredValue0 |
    recoveredValue0 := codeGenerationOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069948; bytecode file offset 0x966bdc"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationOptionsDocumentation
    | recoveredValue0 |
    recoveredValue0 := stationOptionsDocumentation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a504; bytecode file offset 0x967a18"
!SGCgGenerationSettings methodsFor: 'recovered'!
projectOptionSource
    | recoveredValue0 |
    recoveredValue0 := projectOptionSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b5f8; bytecode file offset 0x96873c"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationOptionSource
    | recoveredValue0 |
    recoveredValue0 := stationOptionSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008bf2c; bytecode file offset 0x9887e8"
!SGCgGenerationSettings methodsFor: 'recovered'!
messageCopyVariant
    | recoveredValue0 |
    recoveredValue0 := (self) getSetting: ('messageCopyVariant') default: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e8c4; bytecode file offset 0x98b308"
!SGCgGenerationSettings methodsFor: 'recovered'!
isMessageCopyNoCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messageCopyVariant.
    recoveredValue1 := TGTarget.
    recoveredValue2 := (recoveredValue1) messageUsageVariantNoCopy.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e90c; bytecode file offset 0x98b308"
!SGCgGenerationSettings methodsFor: 'recovered'!
isMessageCopyNonOptCopyFunction
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messageCopyVariant.
    recoveredValue1 := TGTarget.
    recoveredValue2 := (recoveredValue1) messageCopyNonOptCopyFunctionKey.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e9fc; bytecode file offset 0x98b308"
!SGCgGenerationSettings methodsFor: 'recovered'!
isMessageCopyNonOptCopyProcess
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messageCopyVariant.
    recoveredValue1 := TGTarget.
    recoveredValue2 := (recoveredValue1) messageCopyNonOptCopyProcessKey.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008ea2c; bytecode file offset 0x98b308"
!SGCgGenerationSettings methodsFor: 'recovered'!
isMessageCopyNonOptCopyTask
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) messageCopyVariant.
    recoveredValue1 := TGTarget.
    recoveredValue2 := (recoveredValue1) messageUsageVariantNonOptCopyTask.
    recoveredValue3 := (recoveredValue0) equals: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200933e4; bytecode file offset 0x98fed0"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformMessageAccessAnalysis: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('mustPerformMessageAccessAnalysis') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093434; bytecode file offset 0x98fed0"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformMessageCopyGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('mustPerformMessageCopyGeneration') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093a00; bytecode file offset 0x9904ac"
!SGCgGenerationSettings methodsFor: 'recovered'!
isCustomizedDataTypesActive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) keyCustomizedDataTypesActive.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) set: (recoveredValue0) boolOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f2e4; bytecode file offset 0x99bc44"
!SGCgGenerationSettings methodsFor: 'recovered'!
arrayReferenceStructOnStack4Parameters
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arrayReferenceStructOnStack4ParametersKey.
    recoveredValue2 := (self) getSetting: (recoveredValue1) default: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f30c; bytecode file offset 0x99bc44"
!SGCgGenerationSettings methodsFor: 'recovered'!
arrayReferenceStructOnStack4Variables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arrayReferenceStructOnStack4VariablesKey.
    recoveredValue2 := (self) getSetting: (recoveredValue1) default: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f3b8; bytecode file offset 0x99bca0"
!SGCgGenerationSettings methodsFor: 'recovered'!
matrixDimensions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matrixDimensionsKey.
    recoveredValue2 := (self) getSetting: (recoveredValue1) default: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f3cc; bytecode file offset 0x99bca0"
!SGCgGenerationSettings methodsFor: 'recovered'!
matrixOrientation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matrixOrientationKey.
    recoveredValue2 := (self) getSetting: (recoveredValue1) default: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a3510; bytecode file offset 0x9a0b4c"
!SGCgGenerationSettings methodsFor: 'recovered'!
messageCopyVariant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) set: ('messageCopyVariant') option: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a53fc; bytecode file offset 0x9a1dc8"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationSettingsWorkingPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyCodeGenerationPath.
    recoveredValue1 := recoveredArg1.
    (self) set: (recoveredValue0) stringOption: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a561c; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtCompileTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtCompileTimeKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a56bc; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
mustPerformAccessMacroGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) accessMacroGenerationKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5798; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtGenerationTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtGenerationTimeKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a57ac; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
arrayReferenceStructOnStack4Parameters: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arrayReferenceStructOnStack4ParametersKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5824; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
resolveSystemConstantsAtRunTime: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSystemConstantsAtRunTimeKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5838; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
matrixOrientation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matrixOrientationKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) stringOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5928; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
arrayReferenceStructOnStack4Variables: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arrayReferenceStructOnStack4VariablesKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5950; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
contImplOverride: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) contImplOverrideKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5964; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
nameForMessageMemcpy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameForMessageMemcpyKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) stringOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5978; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
matrixDimensions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) matrixDimensionsKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) stringOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5b08; bytecode file offset 0x9a23f0"
!SGCgGenerationSettings methodsFor: 'recovered'!
isCTProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keySettingsIsProjectCT.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2a00; bytecode file offset 0x9af4bc"
!SGCgGenerationSettings methodsFor: 'recovered'!
nameForMessageMemcpy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) nameForMessageMemcpyKey.
    recoveredValue2 := (self) getSetting: (recoveredValue1) default: ('memcpy').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b9e00; bytecode file offset 0x9b6c88"
!SGCgGenerationSettings methodsFor: 'recovered'!
contImplTypeOverrideSingle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) contImplTypeOverrideSingleKey.
    recoveredValue2 := recoveredArg1.
    (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba314; bytecode file offset 0x9b6c88"
!SGCgGenerationSettings methodsFor: 'recovered'!
useMemoryClassDefault: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) useMemoryClassDefaultKey.
    recoveredValue2 := recoveredArg1.
    (self) set: (recoveredValue1) boolOption: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c0034; bytecode file offset 0x9bd228"
!SGCgGenerationSettings methodsFor: 'recovered'!
codeGenerationOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGenerationOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1310; bytecode file offset 0x9bdf14"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationOptionsDocumentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stationOptionsDocumentation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a0c; bytecode file offset 0x9beac8"
!SGCgGenerationSettings methodsFor: 'recovered'!
projectOptionSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectOptionSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c29e0; bytecode file offset 0x9bf474"
!SGCgGenerationSettings methodsFor: 'recovered'!
stationOptionSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stationOptionSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5f74; bytecode file offset 0x9e2848"
!SGCgGenerationSettings methodsFor: 'recovered'!
initialize
    super initialize.
    stationOptionsDocumentation := #().
    ^self
! !

"ASDBase.ic method 0x20180c78; bytecode file offset 0xa7d540"
!SGCgGenerationSettings methodsFor: 'recovered'!
isMessageCopyNonOptCopy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageCopyVariant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := TGTarget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageCopyNonOptCopyProcessKey.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageCopyVariant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageCopyNonOptCopyKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a3960; bytecode file offset 0xaa022c"
!SGCgGenerationSettings methodsFor: 'recovered'!
projectOptionIntegerArithmeticSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectOptionSource.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) copy.
    recoveredBlock5Value2 := recoveredBlock5Value1.
    recoveredBlock5Value3 := SGIaSettings.
    recoveredBlock5Value4 := (recoveredBlock5Value3) optionGroupIntegerArithmetic.
    (recoveredBlock5Value2) optionGroup: (recoveredBlock5Value4).
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

