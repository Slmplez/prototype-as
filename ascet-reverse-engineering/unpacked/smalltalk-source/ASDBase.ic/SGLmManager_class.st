"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012cf0; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
makeConfigForModule
    | recoveredValue0 |
    recoveredValue0 := MakeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012d20; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
currentLogicModel
    | recoveredValue0 |
    recoveredValue0 := LogicModel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013578; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013764; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
currentLogicSpec
    | recoveredValue0 |
    recoveredValue0 := LogicSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200146e8; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
currentModelSpec
    | recoveredValue0 |
    recoveredValue0 := ModelSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014a54; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
currentContext
    | recoveredValue0 |
    recoveredValue0 := Context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c28; bytecode file offset 0x912098"
!SGLmManager class methodsFor: 'recovered'!
esdlController
    | recoveredValue0 |
    recoveredValue0 := ESDLController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cd68; bytecode file offset 0x93bf94"
!SGLmManager class methodsFor: 'recovered'!
createWriteStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dea8; bytecode file offset 0x93bf94"
!SGLmManager class methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e818; bytecode file offset 0x93bf94"
!SGLmManager class methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048c00; bytecode file offset 0x945728"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentContext
    Context := nil.
    ^self
! !

"ASDBase.ic method 0x20048c9c; bytecode file offset 0x945728"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentLogicModel
    LogicModel := nil.
    ^self
! !

"ASDBase.ic method 0x20048da4; bytecode file offset 0x945728"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentLogicSpec
    LogicSpec := nil.
    ^self
! !

"ASDBase.ic method 0x20048dd4; bytecode file offset 0x945728"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentMakeConfig
    MakeConfig := nil.
    ^self
! !

"ASDBase.ic method 0x20048e58; bytecode file offset 0x945728"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentModelSpec
    ModelSpec := nil.
    ^self
! !

"ASDBase.ic method 0x20053dd4; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Context := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054248; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentModelSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ModelSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200543e0; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentLogicModel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LogicModel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005444c; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200544dc; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentLogicSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LogicSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200547d0; bytecode file offset 0x951190"
!SGLmManager class methodsFor: 'recovered'!
setCurrentMakeConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MakeConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20081888; bytecode file offset 0x97e234"
!SGLmManager class methodsFor: 'recovered'!
createWriteStreamFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWriteStreamFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e0dc; bytecode file offset 0x99a9a8"
!SGLmManager class methodsFor: 'recovered'!
resetGlobals
    SGClassForModuleCache := nil.
    (self) resetAllGlobals.
    ^self
! !

"ASDBase.ic method 0x200ac634; bytecode file offset 0x9a8ef0"
!SGLmManager class methodsFor: 'recovered'!
checkECCOAPI: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) checkECCOAPI: (recoveredValue1) ifFail: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b04c8; bytecode file offset 0x9acd9c"
!SGLmManager class methodsFor: 'recovered'!
resetESDLController
    | recoveredValue0 |
    recoveredValue0 := SGASDLController.
    (recoveredValue0) resetGlobals.
    ESDLController := nil.
    ^self
! !

"ASDBase.ic method 0x200ba6a0; bytecode file offset 0x9b708c"
!SGLmManager class methodsFor: 'recovered'!
beginContext: recoveredArg1
    | recoveredValue0 |
    (self) resetGlobals.
    recoveredValue0 := recoveredArg1.
    (self) context: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200df564; bytecode file offset 0x9dbe24"
!SGLmManager class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) setCurrentManager: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fba4c; bytecode file offset 0x9f830c"
!SGLmManager class methodsFor: 'recovered'!
readMessagesOfSubsystem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGLogicBDERT.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) readMessagesOfSubsystem: (recoveredValue1).
    recoveredValue2 := SGLogicSMRT.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) readMessagesOfSubsystem: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ffd7c; bytecode file offset 0x9fc660"
!SGLmManager class methodsFor: 'recovered'!
atMakeErr: recoveredArg1 putMsg: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('EMake') , (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ffd98; bytecode file offset 0x9fc660"
!SGLmManager class methodsFor: 'recovered'!
atMakeWarn: recoveredArg1 putMsg: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('WMake') , (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20104dd4; bytecode file offset 0xa0169c"
!SGLmManager class methodsFor: 'recovered'!
createStartupLog
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := TGAbstractExternalDeclaration.
    recoveredValue1 := (self) createWriteStream.
    recoveredValue2 := (recoveredValue1) asMonitorStream.
    (recoveredValue0) startupLog: (recoveredValue2).
    recoveredValue3 := TGAbstractExternalDeclaration.
    recoveredValue4 := (recoveredValue3) startupLog.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20105098; bytecode file offset 0xa01958"
!SGLmManager class methodsFor: 'recovered'!
sgClassForModule
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGClassForModuleCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGClassForModuleCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigForModule.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20114674; bytecode file offset 0xa10f50"
!SGLmManager class methodsFor: 'recovered'!
resetSomeGlobals
    (self) resetCurrentLogicModel.
    (self) resetCurrentLogicSpec.
    (self) resetCurrentMakeConfig.
    (self) resetCurrentModelSpec.
    ^self
! !

"ASDBase.ic method 0x20123438; bytecode file offset 0xa1fd54"
!SGLmManager class methodsFor: 'recovered'!
atInfoKey: recoveredArg1 no: recoveredArg2 putMsg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('I') , (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    (recoveredValue0) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20123454; bytecode file offset 0xa1fd54"
!SGLmManager class methodsFor: 'recovered'!
atSemErrKey: recoveredArg1 no: recoveredArg2 putMsg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('M') , (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    (recoveredValue0) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20123470; bytecode file offset 0xa1fd54"
!SGLmManager class methodsFor: 'recovered'!
atSynErrKey: recoveredArg1 no: recoveredArg2 putMsg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Y') , (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    (recoveredValue0) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2012348c; bytecode file offset 0xa1fd54"
!SGLmManager class methodsFor: 'recovered'!
atFatalKey: recoveredArg1 no: recoveredArg2 putMsg: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('F') , (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    (recoveredValue0) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201af7bc; bytecode file offset 0xaac08c"
!SGLmManager class methodsFor: 'recovered'!
resetCurrentManager
    Current := nil.
    (self) resetCurrentContext.
    (self) resetCurrentLogicModel.
    (self) resetCurrentLogicSpec.
    (self) resetCurrentMakeConfig.
    (self) resetCurrentModelSpec.
    Components := nil.
    ^self
! !

"ASDBase.ic method 0x201e43d0; bytecode file offset 0xae0ca0"
!SGLmManager class methodsFor: 'recovered'!
initESDLController
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) esdlController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGASDLController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlBuilder.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithBuilder: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ESDLController := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ESDLController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlBuilder.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) builder: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) resetError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219008; bytecode file offset 0xb158e4"
!SGLmManager class methodsFor: 'recovered'!
endContext
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Code generation for project >'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) context.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '<'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) showAllErrWarnsHasErrs.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) resetGlobals.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a9a04; bytecode file offset 0xba62dc"
!SGLmManager class methodsFor: 'recovered'!
withCachedSGClassForModuleDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block280e4498Value0 block280e4498Value1 |
    block280e4498Value0 := SGClassForModuleCache.
    block280e4498Value1 := (block280e4498Value0) isNil.
    block280e4498Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    'withCachedSGClassForModuleDo: should not be called within itself.'
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfigForModule.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            SGClassForModuleCache := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    SGClassForModuleCache := nil.
    nil
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c6b08; bytecode file offset 0xbc33f8"
!SGLmManager class methodsFor: 'recovered'!
beginContext: recoveredArg1 project: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) resetGlobals.
    recoveredValue0 := recoveredArg1.
    (self) context: (recoveredValue0).
    recoveredValue1 := (self) errorHandler.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := ('Code generation for project >') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('<').
    (recoveredValue2) title: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) createUnit: ('Code Manager').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) defaultPublicSpec.
    recoveredValue11 := (recoveredValue10) actualPromotedErrors.
    (recoveredValue8) promotedErrors: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) defaultPublicSpec.
    recoveredValue14 := (recoveredValue13) actualPromotedWarnings.
    (recoveredValue1) promotedWarnings: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x204cf568; bytecode file offset 0xdcbeb0"
!SGLmManager class methodsFor: 'recovered'!
addCodeGenerationOptions: recoveredArg1 asap2: recoveredArg2 target: recoveredArg3 targetSettings: recoveredArg4 generator: recoveredArg5 codegenIniOptions: recoveredArg6 ifFail: recoveredArg7
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ToDo'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Jussi'.
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
            recoveredStack1 := recoveredArg5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) minTaskCycleTime.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) targetFeatureMinTaskCycleTime: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsTimetable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) targetFeatureSupportsTimetable: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) requiresERCOSEK.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) targetFeatureRequiresERCOSEK: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetSpecificPath.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) targetFeatureSpecificPath: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) targetFeatureType: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) targetFeatureLabel: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsNVRAM.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) targetFeatureSupportsNVRAM: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEHooksTarget.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) targetFeatureSupportsEHOOKS: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPCTarget.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) targetFeatureOfflinePC: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsCacheLocking.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) targetFeatureSupportsCacheLocking: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerTarget.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'numHWLevels'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) featureAt: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) asNumber.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) targetFeatureNumHWLevels: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 'numSWLevels'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) featureAt: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) asNumber.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) targetFeatureNumSWLevels: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) productVersion.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) targetFeatureProductVersion: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) updateDocumentationOfOptions.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOOControllerPath.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateMapFile.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) vatFileName.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) setVatFileName: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) setVatFileName: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

