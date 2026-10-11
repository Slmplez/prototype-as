"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dc04; bytecode file offset 0x90a4b8"
!SGLmElement class methodsFor: 'recovered'!
createMdlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017e04; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
setMethodName
    ^'set'
! !

"ASDBase.ic method 0x2001bef0; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
getDTMethodName
    ^'getdT'
! !

"ASDBase.ic method 0x2001c7fc; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
setContinuousStateMethodName
    ^'resetContinuousState'
! !

"ASDBase.ic method 0x2001ca0c; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
getMethodName
    ^'get'
! !

"ASDBase.ic method 0x2001db1c; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
blockDimensionVarName
    ^'BlockDimension'
! !

"ASDBase.ic method 0x20020f48; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
getIntegrationStepsizeMethodName
    ^'getIntegrationStepsize'
! !

"ASDBase.ic method 0x20021aa0; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
resetCTSolverMethodName
    ^'resetCTSolver'
! !

"ASDBase.ic method 0x20022a6c; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
ctBlockVarName
    ^'CTBlock'
! !

"ASDBase.ic method 0x200236fc; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
getTimeMethodName
    ^'getTime'
! !

"ASDBase.ic method 0x20023e58; bytecode file offset 0x92209c"
!SGLmElement class methodsFor: 'recovered'!
setInputsMethodName
    ^'setInputs'
! !

"ASDBase.ic method 0x20032454; bytecode file offset 0x934580"
!SGLmElement class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cc88; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) sgClassForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ccb8; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ceb8; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d098; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
makeConfigForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) makeConfigForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d4e8; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
lmRealType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReal.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d528; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
lmBoolType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dd28; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
copyVarPrefixMethodName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) copyAccessPrefixMethodName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003df88; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
lmVoidType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGVoid.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e028; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
logicSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentLogicSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ea18; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
logicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentLogicModel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ec78; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f568; bytecode file offset 0x93bf94"
!SGLmElement class methodsFor: 'recovered'!
lmIntegerType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005c1b4; bytecode file offset 0x958ab0"
!SGLmElement class methodsFor: 'recovered'!
signalLmError
    | recoveredValue0 |
    recoveredValue0 := ExSGLmError.
    (recoveredValue0) signal.
    ^self
! !

"ASDBase.ic method 0x20086020; bytecode file offset 0x982a70"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameForCopyVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) copyVarPrefixMethodName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elementName.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20091f20; bytecode file offset 0x98e9dc"
!SGLmElement class methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setCurrentContext: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092418; bytecode file offset 0x98ed78"
!SGLmElement class methodsFor: 'recovered'!
lmANSICType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGANSICType.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) name: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad4f8; bytecode file offset 0x9a9f0c"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameKey: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createMdlNameKey: (recoveredValue0) label: (recoveredValue1) uuid: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b04fc; bytecode file offset 0x9acdd0"
!SGLmElement class methodsFor: 'recovered'!
resetAllGlobals
    | recoveredValue0 |
    recoveredValue0 := SGCgErrorHandler.
    (recoveredValue0) resetCurrent.
    (self) resetAllContextGlobals.
    ^self
! !

"ASDBase.ic method 0x200b80c4; bytecode file offset 0x9b4988"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameForReturn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) outputName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (self) createMdlNameKey: (recoveredValue1) label: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e9fe8; bytecode file offset 0x9e68f4"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameForExecutable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) aliasName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) methodName.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) uuid.
    recoveredValue6 := (self) createMdlNameKey: (recoveredValue1) label: (recoveredValue3) uuid: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200ea030; bytecode file offset 0x9e68f4"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameForVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) aliasName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) elementName.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) uuid.
    recoveredValue6 := (self) createMdlNameKey: (recoveredValue1) label: (recoveredValue3) uuid: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200f96d0; bytecode file offset 0x9f5fa4"
!SGLmElement class methodsFor: 'recovered'!
checkForLmErrors
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) signalLmError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201149f8; bytecode file offset 0xa112c0"
!SGLmElement class methodsFor: 'recovered'!
reset
    | recoveredValue0 |
    recoveredValue0 := Transcript.
    (recoveredValue0) show: ('Should call >resetAllGlobals> but reset').
    (self) etasDevHalt.
    (self) resetAllGlobals.
    ^self
! !

"ASDBase.ic method 0x201340b8; bytecode file offset 0xa30978"
!SGLmElement class methodsFor: 'recovered'!
getImplementationForMethodAliasName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigForModule.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigForModule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplementationForMethodAliasName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014811c; bytecode file offset 0xa44a00"
!SGLmElement class methodsFor: 'recovered'!
createMdlNameKey: recoveredArg1 label: recoveredArg2 uuid: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGCgName.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) key: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) label: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue1) uuid: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2022f33c; bytecode file offset 0xb2bc20"
!SGLmElement class methodsFor: 'recovered'!
resetAllContextGlobals
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) resetESDLController.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) resetCurrentLogicModel.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) resetCurrentManager.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) resetCurrentLogicSpec.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) resetCurrentMakeConfig.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) resetCurrentModelSpec.
    (recoveredValue0) resetCurrentContext.
    recoveredValue7 := SGMdBuilder.
    (recoveredValue7) resetCurrentMdlBuilder.
    recoveredValue8 := SGIlExpander.
    (recoveredValue8) resetCurrent.
    ^self
! !

