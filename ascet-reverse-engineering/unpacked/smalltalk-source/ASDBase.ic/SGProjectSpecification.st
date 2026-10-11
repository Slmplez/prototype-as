"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200005a0; bytecode file offset 0x8ffcfc"
!SGProjectSpecification methodsFor: 'recovered'!
resetLogicModel
    ^self
! !

"ASDBase.ic method 0x200094e8; bytecode file offset 0x908be4"
!SGProjectSpecification methodsFor: 'recovered'!
currentPlatform
    | recoveredValue0 |
    recoveredValue0 := (self) platform.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012b10; bytecode file offset 0x912098"
!SGProjectSpecification methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagram.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001497c; bytecode file offset 0x912098"
!SGProjectSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredValue0 |
    recoveredValue0 := SGProjectEditorView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015e9c; bytecode file offset 0x92209c"
!SGProjectSpecification methodsFor: 'recovered'!
sourceType
    ^'Project'
! !

"ASDBase.ic method 0x2002051c; bytecode file offset 0x92209c"
!SGProjectSpecification methodsFor: 'recovered'!
dbXmlType
    ^'project'
! !

"ASDBase.ic method 0x200208dc; bytecode file offset 0x92209c"
!SGProjectSpecification methodsFor: 'recovered'!
xmlSpecificationTypeString
    ^'ProjectSpecification'
! !

"ASDBase.ic method 0x200283d4; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
implTypeNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) implTypes.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029ba4; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
implTypeList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) implTypes.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cb94; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
formulaList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formulas.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cc54; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
topLogicBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLogic.
    recoveredValue1 := (recoveredValue0) topHybridBlock.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200310b4; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
osLogic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLogic.
    recoveredValue1 := (recoveredValue0) osLogic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200361e4; bytecode file offset 0x934580"
!SGProjectSpecification methodsFor: 'recovered'!
formulaNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formulas.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038268; bytecode file offset 0x934b68"
!SGProjectSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'Project'
! !

"ASDBase.ic method 0x20038a6c; bytecode file offset 0x935c54"
!SGProjectSpecification methodsFor: 'recovered'!
methodsForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) continuousTimeProcesses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dc58; bytecode file offset 0x93bf94"
!SGProjectSpecification methodsFor: 'recovered'!
defaultTargetSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGTargetOptions.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004953c; bytecode file offset 0x947128"
!SGProjectSpecification methodsFor: 'recovered'!
osLogicForCurrentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (self) getOrCreateOSLogic: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049a2c; bytecode file offset 0x947128"
!SGProjectSpecification methodsFor: 'recovered'!
targetIntegrationOptionsForCurrentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (self) targetIntegrationOptionsForTarget: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ebf4; bytecode file offset 0x94d048"
!SGProjectSpecification methodsFor: 'recovered'!
deleteAllImplTypes
    (self) initImplTypes.
    ^self
! !

"ASDBase.ic method 0x2005177c; bytecode file offset 0x94f0e0"
!SGProjectSpecification methodsFor: 'recovered'!
availableOSLogicKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058dd8; bytecode file offset 0x956284"
!SGProjectSpecification methodsFor: 'recovered'!
isMessageIgnored: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ignoredCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059678; bytecode file offset 0x956284"
!SGProjectSpecification methodsFor: 'recovered'!
isMessageHidden: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hiddenCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a0e8; bytecode file offset 0x956a30"
!SGProjectSpecification methodsFor: 'recovered'!
getProjectFile: recoveredArg1 toPath: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) writeToFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005eed8; bytecode file offset 0x95b7f0"
!SGProjectSpecification methodsFor: 'recovered'!
resetIgnoredCodeGenMessages
    (self) ignoredCodeGenMessages: (nil).
    ^self
! !

"ASDBase.ic method 0x2005ef14; bytecode file offset 0x95b7f0"
!SGProjectSpecification methodsFor: 'recovered'!
resetHiddenCodeGenMessages
    (self) hiddenCodeGenMessages: (nil).
    ^self
! !

"ASDBase.ic method 0x2005ef38; bytecode file offset 0x95b7f0"
!SGProjectSpecification methodsFor: 'recovered'!
resetPromotedCodeGenMessages
    (self) promotedCodeGenMessages: (nil).
    ^self
! !

"ASDBase.ic method 0x2005fbbc; bytecode file offset 0x95c4f4"
!SGProjectSpecification methodsFor: 'recovered'!
projectFilesForCurrentTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) variantKey.
    recoveredValue2 := (self) projectFilesForTarget: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060860; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlineINTECRIO
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlineINTECRIO.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060880; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlineLABCAR
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlineLABCAR.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608a0; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlinePC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlinePC.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608b0; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlineRP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlineRP.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608c0; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlineINCA
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlineINCA.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608d0; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOnlineEtasEE
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOnlineEtasEE.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200608f0; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOfflinePC
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOfflinePC.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060900; bytecode file offset 0x95d1bc"
!SGProjectSpecification methodsFor: 'recovered'!
isOfflineRP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) experimentTarget.
    recoveredValue1 := ExperimentOfflineRP.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e1dc; bytecode file offset 0x96af48"
!SGProjectSpecification methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 |
    recoveredValue0 := generatorSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e7b8; bytecode file offset 0x96b41c"
!SGProjectSpecification methodsFor: 'recovered'!
targetSettings
    | recoveredValue0 |
    recoveredValue0 := targetSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f6f8; bytecode file offset 0x96c1f4"
!SGProjectSpecification methodsFor: 'recovered'!
xmlProjectFiles
    | recoveredValue0 |
    recoveredValue0 := projectFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200706e0; bytecode file offset 0x96d06c"
!SGProjectSpecification methodsFor: 'recovered'!
experimentTarget
    | recoveredValue0 |
    recoveredValue0 := experimentTarget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007089c; bytecode file offset 0x96d218"
!SGProjectSpecification methodsFor: 'recovered'!
eHooksConfiguration
    | recoveredValue0 |
    recoveredValue0 := eHooksConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007752c; bytecode file offset 0x9757c8"
!SGProjectSpecification methodsFor: 'recovered'!
isProjectSpecification
    ^true
! !

"ASDBase.ic method 0x200777ec; bytecode file offset 0x9757c8"
!SGProjectSpecification methodsFor: 'recovered'!
isLicensed
    ^true
! !

"ASDBase.ic method 0x20083180; bytecode file offset 0x97fa3c"
!SGProjectSpecification methodsFor: 'recovered'!
experimentTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    experimentTarget := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200861ec; bytecode file offset 0x982aa8"
!SGProjectSpecification methodsFor: 'recovered'!
osAvailableForLogicKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) logicModel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) osLogicForKey: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) notNil.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008824c; bytecode file offset 0x984bc0"
!SGProjectSpecification methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('target').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008d104; bytecode file offset 0x989db0"
!SGProjectSpecification methodsFor: 'recovered'!
initTarget
    | recoveredValue0 |
    recoveredValue0 := (self) defaultTargetSettings.
    (self) targetSettings: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008f88c; bytecode file offset 0x98c228"
!SGProjectSpecification methodsFor: 'recovered'!
availableOtherOSLogicKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) availableOSLogicKeys.
    recoveredValue1 := (self) target.
    recoveredValue2 := (recoveredValue1) osLogicKey.
    recoveredValue3 := (recoveredValue0) copyWithout: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20097474; bytecode file offset 0x995850"
!SGProjectSpecification methodsFor: 'recovered'!
osLogic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLogic.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) osLogic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200977d4; bytecode file offset 0x995850"
!SGProjectSpecification methodsFor: 'recovered'!
setEHooksConfigFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksConfiguration.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) configFileName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009bfbc; bytecode file offset 0x998878"
!SGProjectSpecification methodsFor: 'recovered'!
initProjectFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    projectFiles := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009c944; bytecode file offset 0x999628"
!SGProjectSpecification methodsFor: 'recovered'!
initImplTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) implTypes: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ca84; bytecode file offset 0x999628"
!SGProjectSpecification methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGProjectLogic.
    recoveredValue1 := (recoveredValue0) createWithoutDB.
    (self) logicModel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cac0; bytecode file offset 0x999628"
!SGProjectSpecification methodsFor: 'recovered'!
initGeneratorSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSettings.
    recoveredValue1 := (recoveredValue0) createDefault.
    (self) generatorSettings: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ab760; bytecode file offset 0x9a8250"
!SGProjectSpecification methodsFor: 'recovered'!
formulaNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) formulas.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab850; bytecode file offset 0x9a8250"
!SGProjectSpecification methodsFor: 'recovered'!
promotionTypeForMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) promotedCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab8c8; bytecode file offset 0x9a8250"
!SGProjectSpecification methodsFor: 'recovered'!
implTypeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) implTypes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae5a8; bytecode file offset 0x9ab034"
!SGProjectSpecification methodsFor: 'recovered'!
promoteMessage: recoveredArg1 toType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) promotedCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bcce0; bytecode file offset 0x9b970c"
!SGProjectSpecification methodsFor: 'recovered'!
asam2MCOptionsBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) projectOptions.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) asam2MCOptionsKey.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bcd40; bytecode file offset 0x9b970c"
!SGProjectSpecification methodsFor: 'recovered'!
storageOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) projectOptions.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) storageOptionsKey.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bd25c; bytecode file offset 0x9b9b80"
!SGProjectSpecification methodsFor: 'recovered'!
revokeMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) promotedCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4820; bytecode file offset 0x9c11bc"
!SGProjectSpecification methodsFor: 'recovered'!
projectOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c5c; bytecode file offset 0x9c16b0"
!SGProjectSpecification methodsFor: 'recovered'!
generatorSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatorSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5020; bytecode file offset 0x9c1afc"
!SGProjectSpecification methodsFor: 'recovered'!
targetSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5380; bytecode file offset 0x9c1f64"
!SGProjectSpecification methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5854; bytecode file offset 0x9c22c8"
!SGProjectSpecification methodsFor: 'recovered'!
formulas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formulas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f28; bytecode file offset 0x9c2804"
!SGProjectSpecification methodsFor: 'recovered'!
xmlProjectFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c60cc; bytecode file offset 0x9c29e8"
!SGProjectSpecification methodsFor: 'recovered'!
implTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6240; bytecode file offset 0x9c2bec"
!SGProjectSpecification methodsFor: 'recovered'!
expPrjTransInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expPrjTransInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6444; bytecode file offset 0x9c2dd0"
!SGProjectSpecification methodsFor: 'recovered'!
hiddenCodeGenMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hiddenCodeGenMessages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c66e0; bytecode file offset 0x9c3164"
!SGProjectSpecification methodsFor: 'recovered'!
promotedCodeGenMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    promotedCodeGenMessages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c693c; bytecode file offset 0x9c3470"
!SGProjectSpecification methodsFor: 'recovered'!
ignoredCodeGenMessages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ignoredCodeGenMessages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6ff4; bytecode file offset 0x9c38d8"
!SGProjectSpecification methodsFor: 'recovered'!
eHooksConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eHooksConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d383c; bytecode file offset 0x9d00fc"
!SGProjectSpecification methodsFor: 'recovered'!
initTargetIntegrationOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) ownerSGClassModified.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    targetIntegrationOptions := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d3fa0; bytecode file offset 0x9d085c"
!SGProjectSpecification methodsFor: 'recovered'!
targetEditSettings
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetOptionsAreEditable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5294; bytecode file offset 0x9e1cc0"
!SGProjectSpecification methodsFor: 'recovered'!
targetIsInUse
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInUse.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e5b60; bytecode file offset 0x9e24ac"
!SGProjectSpecification methodsFor: 'recovered'!
availableOtherTargetVariantKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) projectFiles.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    recoveredValue3 := (self) target.
    recoveredValue4 := (recoveredValue3) variantKey.
    recoveredValue5 := (recoveredValue2) copyWithout: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ef5f4; bytecode file offset 0x9ebeb8"
!SGProjectSpecification methodsFor: 'recovered'!
prepareLmManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentModelSpec: (self).
    recoveredValue2 := (self) projectLogic.
    (recoveredValue0) setCurrentLogicModel: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f2524; bytecode file offset 0x9eef74"
!SGProjectSpecification methodsFor: 'recovered'!
isFlashPossible
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isOnlineRP.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsFlashing.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201034dc; bytecode file offset 0x9ffda0"
!SGProjectSpecification methodsFor: 'recovered'!
initProjectFilesForTarget: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) projectFiles.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010678c; bytecode file offset 0xa03044"
!SGProjectSpecification methodsFor: 'recovered'!
targetIntegrationOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := targetIntegrationOptions.
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
            (recoveredStack1) initTargetIntegrationOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := targetIntegrationOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201067f4; bytecode file offset 0xa030ac"
!SGProjectSpecification methodsFor: 'recovered'!
projectFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projectFiles.
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
            (recoveredStack1) initProjectFiles.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := projectFiles.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010e308; bytecode file offset 0xa0abc4"
!SGProjectSpecification methodsFor: 'recovered'!
asam2MCOptions: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) asam2MCOptionsBasic: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011251c; bytecode file offset 0xa0ede4"
!SGProjectSpecification methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGProjectLogic.
    recoveredValue1 := (recoveredValue0) createWithoutDB.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGTopHybridBlock.
    recoveredValue4 := (recoveredValue3) create.
    (recoveredValue2) topHybridBlock: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011ed10; bytecode file offset 0xa1b5ec"
!SGProjectSpecification methodsFor: 'recovered'!
isMessagePromoted: recoveredArg1
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMessagePromotedLocal: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessagePromotedGlobal: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011fe10; bytecode file offset 0xa1c6e4"
!SGProjectSpecification methodsFor: 'recovered'!
addImplType: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011fe24; bytecode file offset 0xa1c6e4"
!SGProjectSpecification methodsFor: 'recovered'!
addFormula: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ab9c; bytecode file offset 0xa27488"
!SGProjectSpecification methodsFor: 'recovered'!
expPrjTransInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := expPrjTransInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            expPrjTransInfo := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := expPrjTransInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ace4; bytecode file offset 0xa275d0"
!SGProjectSpecification methodsFor: 'recovered'!
promotedCodeGenMessages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := promotedCodeGenMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            promotedCodeGenMessages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := promotedCodeGenMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ad68; bytecode file offset 0xa27644"
!SGProjectSpecification methodsFor: 'recovered'!
ignoredCodeGenMessages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ignoredCodeGenMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ignoredCodeGenMessages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ignoredCodeGenMessages.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b6ec; bytecode file offset 0xa37fac"
!SGProjectSpecification methodsFor: 'recovered'!
projectOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projectOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) projectOptions: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := projectOptions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20141208; bytecode file offset 0xa3dacc"
!SGProjectSpecification methodsFor: 'recovered'!
asam2MCOptionsBasic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) projectOptions.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) asam2MCOptionsKey.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20148c68; bytecode file offset 0xa4552c"
!SGProjectSpecification methodsFor: 'recovered'!
xmlInit: recoveredArg1 name: recoveredArg2 methods: recoveredArg3 importDesc: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super xmlInit: (recoveredValue0) name: (recoveredValue1) methods: (recoveredValue2) importDesc: (recoveredValue3).
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    projectOptions := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2014a108; bytecode file offset 0xa469cc"
!SGProjectSpecification methodsFor: 'recovered'!
logicModel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectLogic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) topHybridBlock.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) recreateLogicModelFor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f2d0; bytecode file offset 0xa4bb9c"
!SGProjectSpecification methodsFor: 'recovered'!
setToDefaultCompiler
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := target.
    recoveredValue2 := (recoveredValue1) matchingCompilerTools.
    recoveredValue3 := (recoveredValue2) first.
    recoveredValue4 := (recoveredValue3) compilerToolType.
    (recoveredValue0) compilerToolType: (recoveredValue4).
    recoveredValue5 := (self) targetSettings.
    recoveredValue6 := (recoveredValue5) createTarget.
    target := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x20150764; bytecode file offset 0xa4d024"
!SGProjectSpecification methodsFor: 'recovered'!
resetTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) closeTarget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) target: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015fb80; bytecode file offset 0xa5c46c"
!SGProjectSpecification methodsFor: 'recovered'!
promotedErrors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cdf8cArg1 | 
    | block280cdf8cValue0 block280cdf8cValue1 block280cdf8cValue2 |
    block280cdf8cValue0 := block280cdf8cArg1.
    block280cdf8cValue1 := (block280cdf8cValue0) value.
    block280cdf8cValue2 := (block280cdf8cValue1) = ('error').
    block280cdf8cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015fba0; bytecode file offset 0xa5c46c"
!SGProjectSpecification methodsFor: 'recovered'!
promotedWarnings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cdfb0Arg1 | 
    | block280cdfb0Value0 block280cdfb0Value1 block280cdfb0Value2 |
    block280cdfb0Value0 := block280cdfb0Arg1.
    block280cdfb0Value1 := (block280cdfb0Value0) value.
    block280cdfb0Value2 := (block280cdfb0Value1) = ('warning').
    block280cdfb0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c040; bytecode file offset 0xa68904"
!SGProjectSpecification methodsFor: 'recovered'!
copyProjectFilesToCurrentTargetFromTargetType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyProjectFilesToTargetType: (recoveredStack1) fromTargetType: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016c260; bytecode file offset 0xa68b24"
!SGProjectSpecification methodsFor: 'recovered'!
copyProjectFilesFromCurrentTargetToTargetType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyProjectFilesToTargetType: (recoveredStack1) fromTargetType: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016fbbc; bytecode file offset 0xa6c478"
!SGProjectSpecification methodsFor: 'recovered'!
implTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := implTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initImplTypes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) convertImplTypes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := implTypes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20170058; bytecode file offset 0xa6c918"
!SGProjectSpecification methodsFor: 'recovered'!
logicModelProxy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_93569'.
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
            recoveredStack1 := logicModel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := logicModel.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) topHybridBlockKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201767f0; bytecode file offset 0xa730bc"
!SGProjectSpecification methodsFor: 'recovered'!
convertToASDV61OwnerClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super convertToASDV61OwnerClass: (recoveredValue0).
    recoveredValue1 := (self) generatorSettings.
    (recoveredValue1) protectDivSignedOverflow: (false).
    recoveredValue2 := (self) generatorSettings.
    (recoveredValue2) castStrategy: ('Legacy').
    ^self
! !

"ASDBase.ic method 0x2017c3e8; bytecode file offset 0xa78cb0"
!SGProjectSpecification methodsFor: 'recovered'!
updateProjectFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileNameFromAbstractPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updateForFile: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018aa70; bytecode file offset 0xa87340"
!SGProjectSpecification methodsFor: 'recovered'!
initTargetIntegrationOptionsForTarget: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) modified.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) targetIntegrationOptions.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) variantKey.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    (self) ownerSGClassModified.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201a184c; bytecode file offset 0xa9e114"
!SGProjectSpecification methodsFor: 'recovered'!
projectLogic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModelKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d2918Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) initLogicModel.
    recoveredBlock13Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae980; bytecode file offset 0xaab244"
!SGProjectSpecification methodsFor: 'recovered'!
formulas
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) formulas: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) convertFormulas.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b0c04; bytecode file offset 0xaad4d4"
!SGProjectSpecification methodsFor: 'recovered'!
asam2MCOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asam2MCOptionsBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := AsamMcdOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeDictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) asam2MCOptionsBasic: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := AsamMcdOptions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asam2MCOptionsBasic.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDictionary: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5a10; bytecode file offset 0xad22d8"
!SGProjectSpecification methodsFor: 'recovered'!
targetTemporary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTarget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280d55acArg1 | 
    | block280d55acValue0 block280d55acValue1 |
    block280d55acValue0 := block280d55acArg1.
    block280d55acValue1 := block280d55acValue0.
    (block280d55acValue1) removeFromInstancesList.
    block280d55acValue0
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7670; bytecode file offset 0xad3f3c"
!SGProjectSpecification methodsFor: 'recovered'!
targetOptionsAreEditable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInUse.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'The Target Options are not editable, because the target is in use!!'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8308; bytecode file offset 0xad4bd8"
!SGProjectSpecification methodsFor: 'recovered'!
storageOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) projectOptions.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) storageOptionsKey.
    recoveredValue3 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := (self) projectOptions.
    recoveredBlock8Value1 := (self) class.
    recoveredBlock8Value2 := (recoveredBlock8Value1) storageOptionsKey.
    recoveredBlock8Value3 := Dictionary.
    recoveredBlock8Value4 := (recoveredBlock8Value3) new.
    recoveredBlock8Value5 := (recoveredBlock8Value0) at: (recoveredBlock8Value2) put: (recoveredBlock8Value4).
    ^recoveredBlock8Value5
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201db6b8; bytecode file offset 0xad7f74"
!SGProjectSpecification methodsFor: 'recovered'!
isMessagePromotedLocal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) promotedCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^false
].
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    ^true
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201dec3c; bytecode file offset 0xadb508"
!SGProjectSpecification methodsFor: 'recovered'!
deleteFormulaNamed: recoveredArg1
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
            recoveredStack2 := 'Call_62774'.
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
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) rehash.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201def28; bytecode file offset 0xadb7ec"
!SGProjectSpecification methodsFor: 'recovered'!
projectFilesForTarget: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFiles.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) initProjectFilesForTarget: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201def5c; bytecode file offset 0xadb824"
!SGProjectSpecification methodsFor: 'recovered'!
deleteImplType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypes.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) rehash.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207458; bytecode file offset 0xb03d20"
!SGProjectSpecification methodsFor: 'recovered'!
targetIntegrationOptionsForTarget: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) variantKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetIntegrationOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) variantKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) initTargetIntegrationOptionsForTarget: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ed9c; bytecode file offset 0xb1b678"
!SGProjectSpecification methodsFor: 'recovered'!
platform
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) target.
    (recoveredValue2) target: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) target.
    recoveredValue6 := (recoveredValue5) osLogicKey.
    (recoveredValue4) osLogicKey: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) osLogicForCurrentTarget.
    recoveredValue9 := (recoveredValue8) osConfigSettings.
    (recoveredValue7) osSettings: (recoveredValue9).
    recoveredLocal1 := recoveredValue1.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) readTargetSpecificOptions.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202205e8; bytecode file offset 0xb1cebc"
!SGProjectSpecification methodsFor: 'recovered'!
copyToCurrentTargetFromTargetType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Bugfix'.
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
            (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogicKey.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyOSLogicToTargetType: (recoveredStack1) fromTargetType: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d6a8; bytecode file offset 0xb39f74"
!SGProjectSpecification methodsFor: 'recovered'!
isMessagePromotedGlobal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGlobalPromotedToWarningMessages.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGlobalPromotedToErrorMessages.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignoredCodeGenMessages.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023d980; bytecode file offset 0xb3a24c"
!SGProjectSpecification methodsFor: 'recovered'!
addFormulas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 32] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) formulas.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) name.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20254988; bytecode file offset 0xb51264"
!SGProjectSpecification methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    (self) initLogicModel.
    (self) initTarget.
    (self) initGeneratorSettings.
    formulas := nil.
    implTypes := nil.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    projectOptions := recoveredValue1.
    recoveredValue2 := AsamMcdOptions.
    recoveredValue3 := (recoveredValue2) create.
    (self) asam2MCOptions: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2025ba5c; bytecode file offset 0xb58324"
!SGProjectSpecification methodsFor: 'recovered'!
findProjectFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForCurrentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) originalFilePath.
    recoveredBlock17Value2 := (recoveredBlock17Value1) asLowercase.
    recoveredBlock17Value3 := recoveredArg1.
    recoveredBlock17Value4 := (recoveredBlock17Value3) asLowercase.
    recoveredBlock17Value5 := (recoveredBlock17Value2) = (recoveredBlock17Value4).
    recoveredBlock17Value5
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271b14; bytecode file offset 0xb6e3d8"
!SGProjectSpecification methodsFor: 'recovered'!
deleteProjectFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForCurrentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) deleteDBObject.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20286800; bytecode file offset 0xb830e4"
!SGProjectSpecification methodsFor: 'recovered'!
setToDefaultTarget
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Rl') == ('Call_69863').
    recoveredValue1 := (self) targetSettings.
    (recoveredValue1) initialize.
    recoveredValue2 := ASDProjectOptions.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue2) createFor: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) owner.
    recoveredValue7 := (recoveredValue6) targetLabel.
    (recoveredValue5) setTarget: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) writeValuesToDictionaries.
    recoveredValue9 := (self) owner.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) generatorSettings.
    (recoveredValue9) generatorSettings: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2028f2b8; bytecode file offset 0xb8bbbc"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLPromotedToErrorMessageTypes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('XMLExport').
    recoveredValue1 := (self) promotedErrors.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredArg1.
    (recoveredBlock11Value0) openComplex: ('MessageType').
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    (recoveredBlock11Value1) attr: ('label') string: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) closeComplex.
    recoveredBlock11Value4
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2028f2e4; bytecode file offset 0xb8bbbc"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLPromotedToWarningMessageTypes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('XMLExport').
    recoveredValue1 := (self) promotedWarnings.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredArg1.
    (recoveredBlock11Value0) openComplex: ('MessageType').
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    (recoveredBlock11Value1) attr: ('label') string: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) closeComplex.
    recoveredBlock11Value4
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202a46d4; bytecode file offset 0xba0fac"
!SGProjectSpecification methodsFor: 'recovered'!
isSelectHardwarePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'Hw'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'StaticCodeAnalysis'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := super isSelectHardwarePossible.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExperimentalTarget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPCTarget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) rpTargetOptions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUseIpManager.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a7e18; bytecode file offset 0xba46e4"
!SGProjectSpecification methodsFor: 'recovered'!
addProjectFileForPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForCurrentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGFileString.
            recoveredPC := 24.
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
            recoveredStack0 := (recoveredStack0) createForFileName: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202aab20; bytecode file offset 0xba73f0"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLHiddenMessageTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hiddenCodeGenMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := hiddenCodeGenMessages.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredArg1.
    (recoveredBlock16Value0) openComplex: ('MessageType').
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    (recoveredBlock16Value1) attr: ('label') string: (recoveredBlock16Value2).
    recoveredBlock16Value3 := recoveredArg1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) closeComplex.
    recoveredBlock16Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202aab74; bytecode file offset 0xba7444"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLIgnoredMessageTypes: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ignoredCodeGenMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ignoredCodeGenMessages.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    recoveredBlock16Value0 := recoveredArg1.
    (recoveredBlock16Value0) openComplex: ('MessageType').
    recoveredBlock16Value1 := recoveredArg1.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    (recoveredBlock16Value1) attr: ('label') string: (recoveredBlock16Value2).
    recoveredBlock16Value3 := recoveredArg1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) closeComplex.
    recoveredBlock16Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c645c; bytecode file offset 0xbc2d58"
!SGProjectSpecification methodsFor: 'recovered'!
isMessagePromotedToWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGlobalPromotedToWarningMessages.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignoredCodeGenMessages.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'warning'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c6484; bytecode file offset 0xbc2d58"
!SGProjectSpecification methodsFor: 'recovered'!
isMessagePromotedToError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGlobalPromotedToErrorMessages.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignoredCodeGenMessages.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'error'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d48a4; bytecode file offset 0xbd117c"
!SGProjectSpecification methodsFor: 'recovered'!
convertImplTypes
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := implTypes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := implTypes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) implTypes: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (self) addImplType: (recoveredBlock27Value0).
    recoveredBlock27Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := implTypes.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) rehash.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d9a70; bytecode file offset 0xbd6334"
!SGProjectSpecification methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super xmlCollectDependent: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := projectFiles.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := projectFiles.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := [:recoveredBlock22Block29Arg1 | 
    | recoveredBlock22Block29Value0 recoveredBlock22Block29Value1 recoveredBlock22Block29Value2 |
    recoveredBlock22Block29Value0 := recoveredBlock22Block29Arg1.
    recoveredBlock22Block29Value1 := recoveredArg1.
    recoveredBlock22Block29Value2 := (recoveredBlock22Block29Value0) xmlCollectDependent: (recoveredBlock22Block29Value1).
    recoveredBlock22Block29Value2
].
    recoveredBlock22Value2 := (recoveredBlock22Value0) do: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1158; bytecode file offset 0xbeda3c"
!SGProjectSpecification methodsFor: 'recovered'!
platformKey
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredLocal2 := $_.
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (40).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := targetSettings.
    recoveredValue7 := (recoveredValue6) targetType.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) nextPut: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := (self) targetSettings.
    recoveredValue12 := (recoveredValue11) compilerToolType.
    recoveredValue13 := (recoveredValue12) asString.
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) nextPut: (recoveredValue15).
    (recoveredValue4) nextPutAll: ('unknown').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) contents.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203031ec; bytecode file offset 0xbffac4"
!SGProjectSpecification methodsFor: 'recovered'!
deleteFormula: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62774'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteFormulaNamed: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Call_64254'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) deleteFormulaNamed: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20318394; bytecode file offset 0xc14c6c"
!SGProjectSpecification methodsFor: 'recovered'!
copyFromCurrentPlatformToOSLogicKey: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) logicModel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) osLogicForKey: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (self) createDefaultOSLogic: (recoveredBlock13Value0).
    recoveredBlock13Value1
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := (self) logicModel.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) target.
    recoveredValue8 := (recoveredValue7) osLogicKey.
    recoveredValue9 := (recoveredValue5) copyOSLogicToTargetType: (recoveredValue6) fromTargetType: (recoveredValue8).
    recoveredValue10 := recoveredValue9.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := [
    | recoveredBlock43Value0 |
    recoveredBlock43Value0 := (self) ownerSGClassModified.
    recoveredBlock43Value0
].
    (recoveredValue9) notNil: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2031937c; bytecode file offset 0xc15c60"
!SGProjectSpecification methodsFor: 'recovered'!
convertFormulas
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Call_64254'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) formulas: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (self) addFormula: (recoveredBlock36Value0).
    recoveredBlock36Value1
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := formulas.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) rehash.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033333c; bytecode file offset 0xc2fc30"
!SGProjectSpecification methodsFor: 'recovered'!
recalculateImplementationTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_68691').
    recoveredValue1 := (self) implTypeList.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) asDataElement.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) owner.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) formula.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) name.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getFormulaNamed: (recoveredBlock11Stack1).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack0 := nil.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 56] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Local2.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) deepCopy.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            (recoveredBlock11Stack0) formula: (recoveredBlock11Stack1).
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Local2.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            (recoveredBlock11Stack0) recalculateIntervalsWithFormula.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Arg1.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) values.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) createPrimitiveImplValues.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) scalarImpl.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) implTypeValue: (recoveredBlock11Stack1).
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2033fe18; bytecode file offset 0xc3c6e8"
!SGProjectSpecification methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 childrenReplacementTable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super replaceAliasNames: (recoveredValue0) childrenReplacementTable: (recoveredValue1).
    recoveredValue2 := (self) osLogic.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack3 := [:block280edd98Arg1 | 
    nil
].
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) getObjectIfUndefined: (recoveredBlock22Stack3).
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack3.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 57] ifFalse: [recoveredBlock22PC := 48].
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) replaceAliasNames: (recoveredBlock22Stack2).
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20353ab0; bytecode file offset 0xc50388"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLExpPrjTransInfo: recoveredArg1 tag: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_95026'.
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
            recoveredStack1 := expPrjTransInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := expPrjTransInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := expPrjTransInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:recoveredBlock40Arg1 :recoveredBlock40Arg2 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := recoveredBlock40Arg2.
    recoveredBlock40Value3 := (recoveredBlock40Value0) complex: ('Option') name: (recoveredBlock40Value1) value: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) withSortedKeysIn: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036e9e0; bytecode file offset 0xc6b2d4"
!SGProjectSpecification methodsFor: 'recovered'!
exportCodeGenMessagesToXMLFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'File Name for Settings File'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'codeGenMessages.xml'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := '*.xml'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := XmSAVE.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) appendDefaultExtension.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenMessageOptionsFor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeOptions: (recoveredStack1) toXMLFile: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037266c; bytecode file offset 0xc6ef60"
!SGProjectSpecification methodsFor: 'recovered'!
getOrCreateOSLogic: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAvailableTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGEmptyModel.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForTarget: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogicKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefaultOSLogic: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SGOsConfigOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadSystemDefaults: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateWithSystemDefaults: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) target: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20391760; bytecode file offset 0xc8e040"
!SGProjectSpecification methodsFor: 'recovered'!
deleteProjectFileNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block27Arg1 | 
    | recoveredBlock18Block27Value0 recoveredBlock18Block27Value1 recoveredBlock18Block27Value2 recoveredBlock18Block27Value3 |
    recoveredBlock18Block27Value0 := recoveredBlock18Block27Arg1.
    recoveredBlock18Block27Value1 := (recoveredBlock18Block27Value0) name.
    recoveredBlock18Block27Value2 := recoveredArg1.
    recoveredBlock18Block27Value3 := (recoveredBlock18Block27Value1) equalsIgnoringCase: (recoveredBlock18Block27Value2).
    recoveredBlock18Block27Value3
].
    recoveredBlock18Value2 := [].
    recoveredBlock18Value3 := (recoveredBlock18Value0) detect: (recoveredBlock18Value1) ifNone: (recoveredBlock18Value2).
    recoveredBlock18Value4 := [:recoveredBlock18Block45Arg1 | 
    | recoveredBlock18Block45Value0 recoveredBlock18Block45Value1 recoveredBlock18Block45Value2 recoveredBlock18Block45Value3 recoveredBlock18Block45Value4 |
    recoveredBlock18Block45Value0 := recoveredBlock18Block45Arg1.
    (recoveredBlock18Block45Value0) deleteDBObject.
    recoveredBlock18Block45Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block45Value2 := recoveredBlock18Block45Arg1.
    recoveredBlock18Block45Value3 := [].
    recoveredBlock18Block45Value4 := (recoveredBlock18Block45Value1) remove: (recoveredBlock18Block45Value2) ifAbsent: (recoveredBlock18Block45Value3).
    recoveredBlock18Block45Value4
].
    recoveredBlock18Value5 := (recoveredBlock18Value3) ifNotNil: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ownerSGClassModified.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203920f8; bytecode file offset 0xc8e9dc"
!SGProjectSpecification methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 optionDictionary: recoveredArg2 groupName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'Group'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nmToken: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := recoveredArg2.
    recoveredBlock44Value3 := recoveredBlock44Arg1.
    recoveredBlock44Value4 := (recoveredBlock44Value2) at: (recoveredBlock44Value3).
    recoveredBlock44Value5 := (recoveredBlock44Value0) complex: ('Option') name: (recoveredBlock44Value1) value: (recoveredBlock44Value4).
    recoveredBlock44Value5
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039a7cc; bytecode file offset 0xc970a4"
!SGProjectSpecification methodsFor: 'recovered'!
target
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85065'.
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
            recoveredPC := 63.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTarget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) setToDefaultTarget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) matchingCompilerTools.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) setToDefaultTarget.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) setToDefaultCompiler.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203adcc8; bytecode file offset 0xcaa5c0"
!SGProjectSpecification methodsFor: 'recovered'!
importCodeGenMessagesToXMLFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'File Name for Settings File'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'codeGenMessages.xml'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := '*.xml'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := XmOPEN.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) appendDefaultExtension.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenMessageOptionsFor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOptions: (recoveredStack1) fromXMLFile: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) codeGenMessagesFromOptions: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b98c0; bytecode file offset 0xcb61a4"
!SGProjectSpecification methodsFor: 'recovered'!
createDefaultOSLogic: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFromOSLogicKey: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOSLogicForPlatform: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280f61c8Arg1 | 
    | block280f61c8Value0 block280f61c8Value1 |
    block280f61c8Value0 := block280f61c8Arg1.
    block280f61c8Value1 := (block280f61c8Value0) modified.
    block280f61c8Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicBasicForKey: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := (self) logicModel.
    recoveredBlock58Value1 := recoveredLocal1.
    recoveredBlock58Value2 := recoveredArg1.
    recoveredBlock58Value3 := (recoveredBlock58Value0) copyOSLogic: (recoveredBlock58Value1) toVariantKey: (recoveredBlock58Value2).
    recoveredBlock58Value3
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eadf8; bytecode file offset 0xce773c"
!SGProjectSpecification methodsFor: 'recovered'!
actualPromotedWarnings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGlobalPromotedToWarningMessages.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (self) isMessageIgnored: (recoveredBlock23Value0).
    recoveredBlock23Value2 := (recoveredBlock23Value1) not.
    recoveredBlock23Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:block280f8dccArg1 | 
    | block280f8dccValue0 block280f8dccValue1 block280f8dccValue2 |
    block280f8dccValue0 := block280f8dccArg1.
    block280f8dccValue1 := (block280f8dccValue0) value.
    block280f8dccValue2 := (block280f8dccValue1) = ('warning').
    block280f8dccValue2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := self.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isMessagePromotedToWarning: (recoveredBlock59Stack3).
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 81].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) add: (recoveredBlock59Stack2).
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eae44; bytecode file offset 0xce773c"
!SGProjectSpecification methodsFor: 'recovered'!
actualPromotedErrors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGlobalPromotedToErrorMessages.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (self) isMessageIgnored: (recoveredBlock23Value0).
    recoveredBlock23Value2 := (recoveredBlock23Value1) not.
    recoveredBlock23Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:block280f8df0Arg1 | 
    | block280f8df0Value0 block280f8df0Value1 block280f8df0Value2 |
    block280f8df0Value0 := block280f8df0Arg1.
    block280f8df0Value1 := (block280f8df0Value0) value.
    block280f8df0Value2 := (block280f8df0Value1) = ('error').
    block280f8df0Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := self.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isMessagePromotedToError: (recoveredBlock59Stack3).
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 81].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) add: (recoveredBlock59Stack2).
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1fb8; bytecode file offset 0xcee890"
!SGProjectSpecification methodsFor: 'recovered'!
copyProjectFilesToTargetType: recoveredArg1 fromTargetType: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForTarget: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block280f94b0Arg1 | 
    | block280f94b0Value0 block280f94b0Value1 |
    block280f94b0Value0 := block280f94b0Arg1.
    block280f94b0Value1 := (block280f94b0Value0) duplicateDependent.
    block280f94b0Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFilesForTarget: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredBlock52Arg1.
    (recoveredBlock52Value0) deleteDBObject.
    recoveredBlock52Value1 := recoveredLocal1.
    recoveredBlock52Value2 := recoveredBlock52Arg1.
    recoveredBlock52Value3 := (recoveredBlock52Value1) remove: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 |
    recoveredBlock73Value0 := recoveredLocal1.
    recoveredBlock73Value1 := recoveredBlock73Arg1.
    recoveredBlock73Value2 := (recoveredBlock73Value0) add: (recoveredBlock73Value1).
    recoveredBlock73Value2
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040cb2c; bytecode file offset 0xd09424"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLSimulationConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ExperimentOfflinePC'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ExperimentOfflinePC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'ExperimentOfflinePC'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ExperimentOnlinePC.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'ExperimentOnlinePC'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ExperimentOfflineRP.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'ExperimentOfflineRP'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ExperimentOnlineRP.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'ExperimentOnlineRP'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := ExperimentOnlineEtasEE.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'ExperimentOnlineEtasEE'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := ExperimentOnlineINCA.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 'ExperimentOnlineINCA'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := ExperimentOnlineINTECRIO.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 'ExperimentOnlineINTECRIO'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'experimentTarget'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204105e8; bytecode file offset 0xd0ced0"
!SGProjectSpecification methodsFor: 'recovered'!
allAvailablePartKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := super allAvailablePartKeys.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) osLogic.
    recoveredValue3 := [:recoveredBlock20Arg1 :recoveredBlock20Arg2 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := 'PC'.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) = (recoveredBlock20Stack2).
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            (recoveredBlock20Stack1) ifTrue: [recoveredBlock20PC := 34] ifFalse: [recoveredBlock20PC := 52].
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg2.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) exists.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 42] ifFalse: [recoveredBlock20PC := 49].
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg2.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 52 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg2.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 58.
        ].
        recoveredBlock20Step = 58 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := (self) projectFiles.
    recoveredValue5 := (recoveredValue4) values.
    recoveredValue6 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := [:recoveredBlock66Block73Arg1 | 
    | recoveredBlock66Block73Value0 recoveredBlock66Block73Value1 recoveredBlock66Block73Value2 recoveredBlock66Block73Value3 |
    recoveredBlock66Block73Value0 := recoveredLocal1.
    recoveredBlock66Block73Value1 := recoveredBlock66Block73Arg1.
    recoveredBlock66Block73Value2 := (recoveredBlock66Block73Value1) fileContentsKey.
    recoveredBlock66Block73Value3 := (recoveredBlock66Block73Value0) add: (recoveredBlock66Block73Value2).
    recoveredBlock66Block73Value3
].
    recoveredBlock66Value2 := (recoveredBlock66Value0) do: (recoveredBlock66Value1).
    recoveredBlock66Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2041d434; bytecode file offset 0xd19d88"
!SGProjectSpecification methodsFor: 'recovered'!
internalWriteXMLMethods: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'ESDLCode'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'MethodBodies'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := classMethods.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Collection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := classMethods.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'class methods in SGItemSpecification has a value'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) wrongAssumption: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Call_74536'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlMethodsForClass: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 |
    recoveredBlock58Value0 := recoveredArg1.
    (recoveredBlock58Value0) openComplex: ('MethodBody').
    recoveredBlock58Value1 := recoveredArg1.
    recoveredBlock58Value2 := recoveredBlock58Arg1.
    recoveredBlock58Value3 := (recoveredBlock58Value2) methodName.
    (recoveredBlock58Value1) attr: ('methodName') nmToken: (recoveredBlock58Value3).
    recoveredBlock58Value4 := recoveredArg1.
    recoveredBlock58Value5 := (recoveredBlock58Value4) closeComplex.
    recoveredBlock58Value5
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204267d4; bytecode file offset 0xd230c0"
!SGProjectSpecification methodsFor: 'recovered'!
hiddenCodeGenMessages
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hiddenCodeGenMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            hiddenCodeGenMessages := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280fcdecArg1 | 
    | block280fcdecValue0 block280fcdecValue1 |
    block280fcdecValue0 := block280fcdecArg1.
    block280fcdecValue1 := ('(*)') match: (block280fcdecValue0).
    block280fcdecValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := hiddenCodeGenMessages.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) value: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'detected project with wrongly stored cgen messages'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := hiddenCodeGenMessages.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal1.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) value: (recoveredBlock65Stack2).
            recoveredBlock65PC := 78.
        ].
        recoveredBlock65Step = 78 ifTrue: [
            (recoveredBlock65Stack1) ifTrue: [recoveredBlock65PC := 82] ifFalse: [recoveredBlock65PC := 94].
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack2 := 2.
            recoveredBlock65PC := 85.
        ].
        recoveredBlock65Step = 85 ifTrue: [
            recoveredBlock65Stack3 := recoveredBlock65Arg1.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) size.
            recoveredBlock65PC := 88.
        ].
        recoveredBlock65Step = 88 ifTrue: [
            recoveredBlock65Stack3 := (recoveredBlock65Stack3) + (-1).
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) copyFrom: (recoveredBlock65Stack2) to: (recoveredBlock65Stack3).
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Arg1.
            recoveredBlock65PC := 95.
        ].
        recoveredBlock65Step = 95 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) hiddenCodeGenMessages: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := hiddenCodeGenMessages.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043d278; bytecode file offset 0xd39b80"
!SGProjectSpecification methodsFor: 'recovered'!
duplicateDependent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super duplicateDependent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_93569'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) topHybridBlock: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) value.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) getObjectOrUndefined.
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Stack2.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredLocal2 := recoveredBlock27Stack3.
            recoveredBlock27PC := 44.
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isRBDBUndefinedObject.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 78] ifFalse: [recoveredBlock27PC := 50].
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal2.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isDbObject.
            recoveredBlock27PC := 57.
        ].
        recoveredBlock27Step = 57 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 60] ifFalse: [recoveredBlock27PC := 78].
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal3.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) key.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack3 := recoveredLocal2.
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) dbObject.
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) copyDatabaseObject.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) asRBDBPartOfChild.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) at: (recoveredBlock27Stack2) put: (recoveredBlock27Stack3).
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFiles.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block280fe218Arg1 | 
    | block280fe218Stack0 block280fe218Stack1 block280fe218Stack2 block280fe218Stack3 block280fe218PC block280fe218Step block280fe218Done block280fe218Result |
    block280fe218Stack0 := self.
    block280fe218PC := 4.
    block280fe218Done := false.
    [block280fe218Done not] whileTrue: [
        block280fe218Step := block280fe218PC.
        block280fe218Step = 4 ifTrue: [
            block280fe218Stack1 := block280fe218Arg1.
            block280fe218PC := 5.
        ].
        block280fe218Step = 5 ifTrue: [
            block280fe218Stack1 := (block280fe218Stack1) value.
            block280fe218PC := 7.
        ].
        block280fe218Step = 7 ifTrue: [
            block280fe218Stack2 := [:block280fe23cArg1 | 
    | block280fe23cValue0 block280fe23cValue1 |
    block280fe23cValue0 := block280fe23cArg1.
    block280fe23cValue1 := (block280fe23cValue0) duplicateDependent.
    block280fe23cValue1
].
            block280fe218PC := 9.
        ].
        block280fe218Step = 9 ifTrue: [
            block280fe218PC := 15.
        ].
        block280fe218Step = 15 ifTrue: [
            block280fe218Stack1 := (block280fe218Stack1) do: (block280fe218Stack2).
            block280fe218PC := 17.
        ].
        block280fe218Step = 17 ifTrue: [
            block280fe218Result := block280fe218Stack1.
            block280fe218Done := true.
        ].
    ].
    block280fe218Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204421dc; bytecode file offset 0xd3eaf0"
!SGProjectSpecification methodsFor: 'recovered'!
checkTarget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTarget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'The target-type >'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetSettings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '< or the compiler-tool >'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetSettings.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) compilerToolType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := '< are unknown. '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := '\Replace the settings by the default?'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'SetTargetSettingsToDefault'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) setToDefaultTarget.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'Project is not modifiable !!'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20457bf4; bytecode file offset 0xd544d8"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLBuildSettings: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'todoReiko'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := generatorSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := generatorSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) options.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 'build'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) internalWriteXML: (recoveredStack2) optionDictionary: (recoveredStack3) groupName: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := generatorSettings.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value1) options.
    recoveredBlock30Value3 := (self) internalWriteXML: (recoveredBlock30Value0) optionDictionary: (recoveredBlock30Value2) groupName: ('codeOptimization').
    recoveredBlock30Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := generatorSettings.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaSettingsCreateIfAbsent.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) newOptions.
    recoveredBlock53Value2 := [:recoveredBlock53Block63Arg1 | 
    | recoveredBlock53Block63Value0 recoveredBlock53Block63Value1 recoveredBlock53Block63Value2 |
    recoveredBlock53Block63Value0 := recoveredArg1.
    recoveredBlock53Block63Value1 := recoveredBlock53Block63Arg1.
    recoveredBlock53Block63Value2 := (self) internalWriteXML: (recoveredBlock53Block63Value0) optionDictionary: (recoveredBlock53Block63Value1) groupName: ('iaSettings').
    recoveredBlock53Block63Value2
].
    recoveredBlock53Value3 := (recoveredBlock53Value1) ifNotNil: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := projectOptions.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := projectOptions.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [:recoveredBlock98Arg1 :recoveredBlock98Arg2 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 |
    recoveredBlock98Value0 := recoveredArg1.
    recoveredBlock98Value1 := recoveredBlock98Arg2.
    recoveredBlock98Value2 := recoveredBlock98Arg1.
    recoveredBlock98Value3 := (self) internalWriteXML: (recoveredBlock98Value0) optionDictionary: (recoveredBlock98Value1) groupName: (recoveredBlock98Value2).
    recoveredBlock98Value3
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20476d04; bytecode file offset 0xd735f8"
!SGProjectSpecification methodsFor: 'recovered'!
convertFormulaParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := formulas.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) parameterArray.
    recoveredBlock6Value2 := [:recoveredBlock6Block14Arg1 | 
    | recoveredBlock6Block14Stack0 recoveredBlock6Block14Stack1 recoveredBlock6Block14Stack2 recoveredBlock6Block14Stack3 recoveredBlock6Block14Stack4 recoveredBlock6Block14Stack5 recoveredBlock6Block14PC recoveredBlock6Block14Step recoveredBlock6Block14Done recoveredBlock6Block14Result |
    recoveredBlock6Block14Stack0 := self.
    recoveredBlock6Block14PC := 20.
    recoveredBlock6Block14Done := false.
    [recoveredBlock6Block14Done not] whileTrue: [
        recoveredBlock6Block14Step := recoveredBlock6Block14PC.
        recoveredBlock6Block14Step = 20 ifTrue: [
            recoveredBlock6Block14Stack1 := nil.
            recoveredBlock6Block14PC := 21.
        ].
        recoveredBlock6Block14Step = 21 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 22.
        ].
        recoveredBlock6Block14Step = 22 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) isFraction.
            recoveredBlock6Block14PC := 23.
        ].
        recoveredBlock6Block14Step = 23 ifTrue: [
            (recoveredBlock6Block14Stack2) ifTrue: [recoveredBlock6Block14PC := 26] ifFalse: [recoveredBlock6Block14PC := 118].
        ].
        recoveredBlock6Block14Step = 26 ifTrue: [
            recoveredBlock6Block14PC := 27.
        ].
        recoveredBlock6Block14Step = 27 ifTrue: [
            recoveredBlock6Block14Stack1 := nil.
            recoveredBlock6Block14PC := 28.
        ].
        recoveredBlock6Block14Step = 28 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 29.
        ].
        recoveredBlock6Block14Step = 29 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) numerator.
            recoveredBlock6Block14PC := 30.
        ].
        recoveredBlock6Block14Step = 30 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) isFloat.
            recoveredBlock6Block14PC := 31.
        ].
        recoveredBlock6Block14Step = 31 ifTrue: [
            (recoveredBlock6Block14Stack2) ifTrue: [recoveredBlock6Block14PC := 42] ifFalse: [recoveredBlock6Block14PC := 34].
        ].
        recoveredBlock6Block14Step = 34 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 35.
        ].
        recoveredBlock6Block14Step = 35 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) denominator.
            recoveredBlock6Block14PC := 37.
        ].
        recoveredBlock6Block14Step = 37 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) isFloat.
            recoveredBlock6Block14PC := 38.
        ].
        recoveredBlock6Block14Step = 38 ifTrue: [
            (recoveredBlock6Block14Stack2) ifTrue: [recoveredBlock6Block14PC := 42] ifFalse: [recoveredBlock6Block14PC := 118].
        ].
        recoveredBlock6Block14Step = 42 ifTrue: [
            recoveredBlock6Block14PC := 43.
        ].
        recoveredBlock6Block14Step = 43 ifTrue: [
            recoveredBlock6Block14PC := 60.
        ].
        recoveredBlock6Block14Step = 46 ifTrue: [
            recoveredBlock6Block14Stack1 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 47.
        ].
        recoveredBlock6Block14Step = 47 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 48.
        ].
        recoveredBlock6Block14Step = 48 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) numerator.
            recoveredBlock6Block14PC := 49.
        ].
        recoveredBlock6Block14Step = 49 ifTrue: [
            recoveredBlock6Block14Stack3 := 10.
            recoveredBlock6Block14PC := 51.
        ].
        recoveredBlock6Block14Step = 51 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) * (recoveredBlock6Block14Stack3).
            recoveredBlock6Block14PC := 52.
        ].
        recoveredBlock6Block14Step = 52 ifTrue: [
            recoveredBlock6Block14Stack3 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 53.
        ].
        recoveredBlock6Block14Step = 53 ifTrue: [
            recoveredBlock6Block14Stack3 := (recoveredBlock6Block14Stack3) denominator.
            recoveredBlock6Block14PC := 55.
        ].
        recoveredBlock6Block14Step = 55 ifTrue: [
            recoveredBlock6Block14Stack4 := 10.
            recoveredBlock6Block14PC := 57.
        ].
        recoveredBlock6Block14Step = 57 ifTrue: [
            recoveredBlock6Block14Stack3 := (recoveredBlock6Block14Stack3) * (recoveredBlock6Block14Stack4).
            recoveredBlock6Block14PC := 58.
        ].
        recoveredBlock6Block14Step = 58 ifTrue: [
            (recoveredBlock6Block14Stack1) numerator: (recoveredBlock6Block14Stack2) denominator: (recoveredBlock6Block14Stack3).
            recoveredBlock6Block14PC := 60.
        ].
        recoveredBlock6Block14Step = 60 ifTrue: [
            recoveredBlock6Block14Stack1 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 61.
        ].
        recoveredBlock6Block14Step = 61 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) numerator.
            recoveredBlock6Block14PC := 62.
        ].
        recoveredBlock6Block14Step = 62 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) asInteger.
            recoveredBlock6Block14PC := 64.
        ].
        recoveredBlock6Block14Step = 64 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 65.
        ].
        recoveredBlock6Block14Step = 65 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) numerator.
            recoveredBlock6Block14PC := 66.
        ].
        recoveredBlock6Block14Step = 66 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) asFloat.
            recoveredBlock6Block14PC := 68.
        ].
        recoveredBlock6Block14Step = 68 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) ~= (recoveredBlock6Block14Stack2).
            recoveredBlock6Block14PC := 69.
        ].
        recoveredBlock6Block14Step = 69 ifTrue: [
            (recoveredBlock6Block14Stack1) ifTrue: [recoveredBlock6Block14PC := 46] ifFalse: [recoveredBlock6Block14PC := 71].
        ].
        recoveredBlock6Block14Step = 71 ifTrue: [
            recoveredBlock6Block14Stack1 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 72.
        ].
        recoveredBlock6Block14Step = 72 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) denominator.
            recoveredBlock6Block14PC := 74.
        ].
        recoveredBlock6Block14Step = 74 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) asInteger.
            recoveredBlock6Block14PC := 76.
        ].
        recoveredBlock6Block14Step = 76 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 77.
        ].
        recoveredBlock6Block14Step = 77 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) denominator.
            recoveredBlock6Block14PC := 79.
        ].
        recoveredBlock6Block14Step = 79 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) asFloat.
            recoveredBlock6Block14PC := 81.
        ].
        recoveredBlock6Block14Step = 81 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) ~= (recoveredBlock6Block14Stack2).
            recoveredBlock6Block14PC := 82.
        ].
        recoveredBlock6Block14Step = 82 ifTrue: [
            (recoveredBlock6Block14Stack1) ifTrue: [recoveredBlock6Block14PC := 46] ifFalse: [recoveredBlock6Block14PC := 84].
        ].
        recoveredBlock6Block14Step = 84 ifTrue: [
            recoveredBlock6Block14Stack1 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 85.
        ].
        recoveredBlock6Block14Step = 85 ifTrue: [
            recoveredBlock6Block14Stack2 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 86.
        ].
        recoveredBlock6Block14Step = 86 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) numerator.
            recoveredBlock6Block14PC := 87.
        ].
        recoveredBlock6Block14Step = 87 ifTrue: [
            recoveredBlock6Block14Stack2 := (recoveredBlock6Block14Stack2) asInteger.
            recoveredBlock6Block14PC := 89.
        ].
        recoveredBlock6Block14Step = 89 ifTrue: [
            recoveredBlock6Block14Stack3 := recoveredBlock6Block14Arg1.
            recoveredBlock6Block14PC := 90.
        ].
        recoveredBlock6Block14Step = 90 ifTrue: [
            recoveredBlock6Block14Stack3 := (recoveredBlock6Block14Stack3) denominator.
            recoveredBlock6Block14PC := 92.
        ].
        recoveredBlock6Block14Step = 92 ifTrue: [
            recoveredBlock6Block14Stack3 := (recoveredBlock6Block14Stack3) asInteger.
            recoveredBlock6Block14PC := 94.
        ].
        recoveredBlock6Block14Step = 94 ifTrue: [
            (recoveredBlock6Block14Stack1) numerator: (recoveredBlock6Block14Stack2) denominator: (recoveredBlock6Block14Stack3).
            recoveredBlock6Block14PC := 96.
        ].
        recoveredBlock6Block14Step = 96 ifTrue: [
            recoveredBlock6Block14Stack1 := SGMonitorStreamDummy.
            recoveredBlock6Block14PC := 98.
        ].
        recoveredBlock6Block14Step = 98 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) create.
            recoveredBlock6Block14PC := 100.
        ].
        recoveredBlock6Block14Step = 100 ifTrue: [
            recoveredBlock6Block14Stack2 := [
    | recoveredBlock6Block14Block100Value0 recoveredBlock6Block14Block100Value1 recoveredBlock6Block14Block100Value2 |
    recoveredBlock6Block14Block100Value0 := (self) ownerSGClass.
    recoveredBlock6Block14Block100Value1 := (recoveredBlock6Block14Block100Value0) label.
    recoveredBlock6Block14Block100Value2 := ('<Data Model Conversion> Formula parameter converted in %1') bindWith: (recoveredBlock6Block14Block100Value1).
    recoveredBlock6Block14Block100Value2
].
            recoveredBlock6Block14PC := 116.
        ].
        recoveredBlock6Block14Step = 116 ifTrue: [
            recoveredBlock6Block14Stack1 := (recoveredBlock6Block14Stack1) addInfoTextBlock: (recoveredBlock6Block14Stack2).
            recoveredBlock6Block14PC := 118.
        ].
        recoveredBlock6Block14Step = 118 ifTrue: [
            recoveredBlock6Block14Result := recoveredBlock6Block14Stack1.
            recoveredBlock6Block14Done := true.
        ].
    ].
    recoveredBlock6Block14Result
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) do: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204b5dac; bytecode file offset 0xdb26d0"
!SGProjectSpecification methodsFor: 'recovered'!
writeXMLConfig: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'Platform'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) openComplex: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'platformKey'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) platformKey.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'Target'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) openComplex: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := targetSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) string: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'key'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := targetSettings.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'Compiler'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) openComplex: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := targetSettings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) compilerToolType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) string: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'path'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := targetSettings.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) getCompilerToolPath.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Bfr'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'Call_468462'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'CodeGenerator'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := generatorSettings.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPath.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := SGMdSettings.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlPathNames.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := targetSettings.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'OperatingSystem'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := targetSettings.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) osType.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'BuildSettings'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) writeXMLBuildSettings: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d4dbc; bytecode file offset 0xdd16d0"
!SGProjectSpecification methodsFor: 'recovered'!
buildConfigKey
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 |
    recoveredLocal3 := $_.
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (40).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) generatorSettings.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) targetSettings.
    recoveredValue8 := (recoveredValue7) targetType.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := recoveredLocal3.
    (recoveredValue10) nextPut: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := (self) targetSettings.
    recoveredValue14 := (recoveredValue13) compilerToolType.
    recoveredValue15 := (recoveredValue14) asString.
    (recoveredValue12) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue5.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue16) nextPut: (recoveredValue17).
    recoveredValue18 := recoveredValue5.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) codeGenPath.
    recoveredValue21 := (recoveredValue20) printString.
    (recoveredValue18) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue5.
    recoveredValue23 := recoveredLocal3.
    (recoveredValue22) nextPut: (recoveredValue23).
    recoveredValue24 := recoveredValue5.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) generateMapFile.
    recoveredValue27 := (recoveredValue26) printString.
    recoveredValue28 := (recoveredValue27) first.
    (recoveredValue24) nextPut: (recoveredValue28).
    recoveredValue29 := recoveredValue5.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue30) protectDiv.
    recoveredValue32 := (recoveredValue31) printString.
    recoveredValue33 := (recoveredValue32) first.
    (recoveredValue29) nextPut: (recoveredValue33).
    recoveredValue34 := recoveredValue5.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := (recoveredValue35) dataLogging.
    recoveredValue37 := (recoveredValue36) printString.
    recoveredValue38 := (recoveredValue37) first.
    (recoveredValue34) nextPut: (recoveredValue38).
    recoveredValue39 := recoveredValue5.
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := (recoveredValue40) protectVecIndex.
    recoveredValue42 := (recoveredValue41) printString.
    recoveredValue43 := (recoveredValue42) first.
    (recoveredValue39) nextPut: (recoveredValue43).
    recoveredValue44 := recoveredValue5.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (recoveredValue45) generateMethodsDT.
    recoveredValue47 := (recoveredValue46) printString.
    recoveredValue48 := (recoveredValue47) first.
    (recoveredValue44) nextPut: (recoveredValue48).
    recoveredValue49 := recoveredValue5.
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (recoveredValue50) definesForEnumValues.
    recoveredValue52 := (recoveredValue51) printString.
    recoveredValue53 := (recoveredValue52) first.
    (recoveredValue49) nextPut: (recoveredValue53).
    recoveredValue54 := recoveredValue5.
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue55) useGlobalId.
    recoveredValue57 := (recoveredValue56) printString.
    recoveredValue58 := (recoveredValue57) first.
    (recoveredValue54) nextPut: (recoveredValue58).
    recoveredValue59 := recoveredValue5.
    recoveredValue60 := recoveredLocal3.
    (recoveredValue59) nextPut: (recoveredValue60).
    recoveredValue61 := recoveredValue5.
    recoveredValue62 := recoveredLocal1.
    recoveredValue63 := (recoveredValue62) maxLoopIterate.
    recoveredValue64 := (recoveredValue63) printString.
    (recoveredValue61) nextPutAll: (recoveredValue64).
    recoveredValue65 := recoveredValue5.
    recoveredValue66 := recoveredLocal3.
    (recoveredValue65) nextPut: (recoveredValue66).
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := (recoveredValue67) prefixComponentName.
    (recoveredValue5) nextPutAll: (recoveredValue68).
    recoveredValue69 := recoveredLocal2.
    recoveredValue70 := (recoveredValue69) contents.
    ^recoveredValue70
! !

"ASDBase.ic method 0x204e1c50; bytecode file offset 0xdde54c"
!SGProjectSpecification methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super allPartProxiesWithUnloaded: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := ('Kli') == ('Call_93569').
    recoveredValue3 := (self) osLogic.
    recoveredValue4 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) values.
    recoveredBlock23Value2 := [:recoveredBlock23Block33Arg1 | 
    | recoveredBlock23Block33Stack0 recoveredBlock23Block33Stack1 recoveredBlock23Block33Stack2 recoveredBlock23Block33Stack3 recoveredBlock23Block33Stack4 recoveredBlock23Block33PC recoveredBlock23Block33Step recoveredBlock23Block33Done recoveredBlock23Block33Result |
    recoveredBlock23Block33Stack0 := self.
    recoveredBlock23Block33PC := 40.
    recoveredBlock23Block33Done := false.
    [recoveredBlock23Block33Done not] whileTrue: [
        recoveredBlock23Block33Step := recoveredBlock23Block33PC.
        recoveredBlock23Block33Step = 40 ifTrue: [
            recoveredBlock23Block33Stack1 := nil.
            recoveredBlock23Block33PC := 41.
        ].
        recoveredBlock23Block33Step = 41 ifTrue: [
            recoveredBlock23Block33Stack2 := recoveredBlock23Block33Arg1.
            recoveredBlock23Block33PC := 42.
        ].
        recoveredBlock23Block33Step = 42 ifTrue: [
            recoveredBlock23Block33Stack3 := [:block28108634Arg1 | 
    nil
].
            recoveredBlock23Block33PC := 44.
        ].
        recoveredBlock23Block33Step = 44 ifTrue: [
            recoveredBlock23Block33PC := 50.
        ].
        recoveredBlock23Block33Step = 50 ifTrue: [
            recoveredBlock23Block33Stack2 := (recoveredBlock23Block33Stack2) readKeyIfUndefined: (recoveredBlock23Block33Stack3).
            recoveredBlock23Block33PC := 52.
        ].
        recoveredBlock23Block33Step = 52 ifTrue: [
            recoveredBlock23Block33Stack3 := recoveredBlock23Block33Stack2.
            recoveredBlock23Block33PC := 53.
        ].
        recoveredBlock23Block33Step = 53 ifTrue: [
            recoveredLocal1 := recoveredBlock23Block33Stack3.
            recoveredBlock23Block33PC := 56.
        ].
        recoveredBlock23Block33Step = 56 ifTrue: [
            (recoveredBlock23Block33Stack2 == nil) ifTrue: [recoveredBlock23Block33PC := 84] ifFalse: [recoveredBlock23Block33PC := 60].
        ].
        recoveredBlock23Block33Step = 60 ifTrue: [
            recoveredBlock23Block33PC := 61.
        ].
        recoveredBlock23Block33Step = 61 ifTrue: [
            recoveredBlock23Block33Stack1 := recoveredLocal2.
            recoveredBlock23Block33PC := 64.
        ].
        recoveredBlock23Block33Step = 64 ifTrue: [
            recoveredBlock23Block33Stack2 := recoveredLocal1.
            recoveredBlock23Block33PC := 67.
        ].
        recoveredBlock23Block33Step = 67 ifTrue: [
            (recoveredBlock23Block33Stack1) add: (recoveredBlock23Block33Stack2).
            recoveredBlock23Block33PC := 69.
        ].
        recoveredBlock23Block33Step = 69 ifTrue: [
            recoveredBlock23Block33Stack1 := recoveredLocal2.
            recoveredBlock23Block33PC := 72.
        ].
        recoveredBlock23Block33Step = 72 ifTrue: [
            recoveredBlock23Block33Stack2 := self.
            recoveredBlock23Block33PC := 73.
        ].
        recoveredBlock23Block33Step = 73 ifTrue: [
            recoveredBlock23Block33Stack2 := (recoveredBlock23Block33Stack2) owner.
            recoveredBlock23Block33PC := 75.
        ].
        recoveredBlock23Block33Step = 75 ifTrue: [
            recoveredBlock23Block33Stack3 := recoveredLocal1.
            recoveredBlock23Block33PC := 78.
        ].
        recoveredBlock23Block33Step = 78 ifTrue: [
            recoveredBlock23Block33Stack3 := (recoveredBlock23Block33Stack3) globalId.
            recoveredBlock23Block33PC := 80.
        ].
        recoveredBlock23Block33Step = 80 ifTrue: [
            recoveredBlock23Block33Stack2 := (recoveredBlock23Block33Stack2) getAllCodeStoragePartProxiesForDeleteFor: (recoveredBlock23Block33Stack3).
            recoveredBlock23Block33PC := 82.
        ].
        recoveredBlock23Block33Step = 82 ifTrue: [
            recoveredBlock23Block33Stack1 := (recoveredBlock23Block33Stack1) addAll: (recoveredBlock23Block33Stack2).
            recoveredBlock23Block33PC := 84.
        ].
        recoveredBlock23Block33Step = 84 ifTrue: [
            recoveredBlock23Block33Result := recoveredBlock23Block33Stack1.
            recoveredBlock23Block33Done := true.
        ].
    ].
    recoveredBlock23Block33Result
].
    recoveredBlock23Value3 := (recoveredBlock23Value1) do: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) projectFiles.
    recoveredValue6 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 |
    recoveredBlock93Value0 := recoveredBlock93Arg1.
    recoveredBlock93Value1 := (recoveredBlock93Value0) values.
    recoveredBlock93Value2 := [:recoveredBlock93Block103Arg1 | 
    | recoveredBlock93Block103Value0 recoveredBlock93Block103Value1 recoveredBlock93Block103Value2 |
    recoveredBlock93Block103Value0 := recoveredBlock93Block103Arg1.
    recoveredBlock93Block103Value1 := [:recoveredBlock93Block103Block111Arg1 | 
    | recoveredBlock93Block103Block111Stack0 recoveredBlock93Block103Block111Stack1 recoveredBlock93Block103Block111Stack2 recoveredBlock93Block103Block111Stack3 recoveredBlock93Block103Block111Stack4 recoveredBlock93Block103Block111PC recoveredBlock93Block103Block111Step recoveredBlock93Block103Block111Done recoveredBlock93Block103Block111Result |
    recoveredBlock93Block103Block111Stack0 := nil.
    recoveredBlock93Block103Block111PC := 118.
    recoveredBlock93Block103Block111Done := false.
    [recoveredBlock93Block103Block111Done not] whileTrue: [
        recoveredBlock93Block103Block111Step := recoveredBlock93Block103Block111PC.
        recoveredBlock93Block103Block111Step = 118 ifTrue: [
            recoveredBlock93Block103Block111Stack1 := nil.
            recoveredBlock93Block103Block111PC := 119.
        ].
        recoveredBlock93Block103Block111Step = 119 ifTrue: [
            recoveredBlock93Block103Block111Stack2 := recoveredBlock93Block103Block111Arg1.
            recoveredBlock93Block103Block111PC := 120.
        ].
        recoveredBlock93Block103Block111Step = 120 ifTrue: [
            recoveredBlock93Block103Block111Stack2 := (recoveredBlock93Block103Block111Stack2) fileContentsKey.
            recoveredBlock93Block103Block111PC := 122.
        ].
        recoveredBlock93Block103Block111Step = 122 ifTrue: [
            recoveredBlock93Block103Block111Stack3 := [:block28108658Arg1 | 
    nil
].
            recoveredBlock93Block103Block111PC := 124.
        ].
        recoveredBlock93Block103Block111Step = 124 ifTrue: [
            recoveredBlock93Block103Block111PC := 130.
        ].
        recoveredBlock93Block103Block111Step = 130 ifTrue: [
            recoveredBlock93Block103Block111Stack2 := (recoveredBlock93Block103Block111Stack2) readKeyIfUndefined: (recoveredBlock93Block103Block111Stack3).
            recoveredBlock93Block103Block111PC := 132.
        ].
        recoveredBlock93Block103Block111Step = 132 ifTrue: [
            recoveredBlock93Block103Block111Stack3 := recoveredBlock93Block103Block111Stack2.
            recoveredBlock93Block103Block111PC := 133.
        ].
        recoveredBlock93Block103Block111Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock93Block103Block111Stack3.
            recoveredBlock93Block103Block111PC := 136.
        ].
        recoveredBlock93Block103Block111Step = 136 ifTrue: [
            (recoveredBlock93Block103Block111Stack2 == nil) ifTrue: [recoveredBlock93Block103Block111PC := 149] ifFalse: [recoveredBlock93Block103Block111PC := 140].
        ].
        recoveredBlock93Block103Block111Step = 140 ifTrue: [
            recoveredBlock93Block103Block111PC := 141.
        ].
        recoveredBlock93Block103Block111Step = 141 ifTrue: [
            recoveredBlock93Block103Block111Stack1 := recoveredLocal2.
            recoveredBlock93Block103Block111PC := 144.
        ].
        recoveredBlock93Block103Block111Step = 144 ifTrue: [
            recoveredBlock93Block103Block111Stack2 := recoveredLocal1.
            recoveredBlock93Block103Block111PC := 147.
        ].
        recoveredBlock93Block103Block111Step = 147 ifTrue: [
            recoveredBlock93Block103Block111Stack1 := (recoveredBlock93Block103Block111Stack1) add: (recoveredBlock93Block103Block111Stack2).
            recoveredBlock93Block103Block111PC := 149.
        ].
        recoveredBlock93Block103Block111Step = 149 ifTrue: [
            recoveredBlock93Block103Block111Result := recoveredBlock93Block103Block111Stack1.
            recoveredBlock93Block103Block111Done := true.
        ].
    ].
    recoveredBlock93Block103Block111Result
].
    recoveredBlock93Block103Value2 := (recoveredBlock93Block103Value0) do: (recoveredBlock93Block103Value1).
    recoveredBlock93Block103Value2
].
    recoveredBlock93Value3 := (recoveredBlock93Value1) do: (recoveredBlock93Value2).
    recoveredBlock93Value3
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x204fd828; bytecode file offset 0xdfa144"
!SGProjectSpecification methodsFor: 'recovered'!
codeGenMessagesFromOptions: recoveredArg1
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
            recoveredStack2 := [:block2810a350Arg1 | 
    | block2810a350Value0 block2810a350Value1 block2810a350Value2 |
    block2810a350Value0 := block2810a350Arg1.
    block2810a350Value1 := (block2810a350Value0) attributeName.
    block2810a350Value2 := (block2810a350Value1) = ('HiddenMessages').
    block2810a350Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 |
    (self) resetHiddenCodeGenMessages.
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) optionClass.
    recoveredBlock16Value2 := (recoveredBlock16Value1) value.
    recoveredBlock16Value3 := (recoveredBlock16Value2) asSet.
    recoveredBlock16Value4 := (self) hiddenCodeGenMessages: (recoveredBlock16Value3).
    recoveredBlock16Value4
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'Call_2010401688'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:block2810a374Arg1 | 
    | block2810a374Value0 block2810a374Value1 block2810a374Value2 |
    block2810a374Value0 := block2810a374Arg1.
    block2810a374Value1 := (block2810a374Value0) attributeName.
    block2810a374Value2 := (block2810a374Value1) = ('IgnoredGlobalPromotedMessages').
    block2810a374Value2
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 |
    (self) resetIgnoredCodeGenMessages.
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) optionClass.
    recoveredBlock56Value2 := (recoveredBlock56Value1) value.
    recoveredBlock56Value3 := (recoveredBlock56Value2) asSet.
    recoveredBlock56Value4 := (self) ignoredCodeGenMessages: (recoveredBlock56Value3).
    recoveredBlock56Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:block2810a398Arg1 | 
    | block2810a398Value0 block2810a398Value1 block2810a398Value2 |
    block2810a398Value0 := block2810a398Arg1.
    block2810a398Value1 := (block2810a398Value0) attributeName.
    block2810a398Value2 := (block2810a398Value1) = ('PromotedToWarningMessages').
    block2810a398Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := [:block2810a3bcArg1 | 
    | block2810a3bcValue0 block2810a3bcValue1 block2810a3bcValue2 |
    block2810a3bcValue0 := block2810a3bcArg1.
    block2810a3bcValue1 := (block2810a3bcValue0) attributeName.
    block2810a3bcValue2 := (block2810a3bcValue1) = ('PromotedToErrorMessages').
    block2810a3bcValue2
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) resetPromotedCodeGenMessages.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 |
    recoveredBlock135Value0 := recoveredBlock135Arg1.
    recoveredBlock135Value1 := (self) promoteMessage: (recoveredBlock135Value0) toType: ('warning').
    recoveredBlock135Value1
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := (self) promoteMessage: (recoveredBlock159Value0) toType: ('error').
    recoveredBlock159Value1
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b5254; bytecode file offset 0xeb1bc0"
!SGProjectSpecification methodsFor: 'recovered'!
checkTargetIsValid
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85065'.
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
            recoveredStack1 := target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTarget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'Target '''.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetSettings.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) generatorSettings.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeGenPathName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := ''' is not available.\Change target of project '''.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerSGClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := ''' to ''PC''?'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := 'Change target?'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) setToDefaultTarget.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) matchingCompilerTools.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'call_81850'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'Missing compiler tools for target '''.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetSettings.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetType.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := '''. Compiler declaration file is missing.\Change target of project '''.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerSGClass.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := ''' to ''PC''?'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) info: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := 'Change target?'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) setToDefaultTarget.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 261.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 'Compiler with ID '''.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetSettings.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) compilerToolType.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := ''' for target '''.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := ''' is not available.\Change compiler to '''.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) matchingCompilerTools.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) compilerToolLabel.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := ''' (with compiler ID '''.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) matchingCompilerTools.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := ''')?'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := 'Change compiler?'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) setToDefaultCompiler.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 310.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := 'Target '''.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetSettings.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetType.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := ''' is not installed and '''.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := (recoveredStack3) ownerSGClass.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := ''' is protected.\ \Please install missing target or remove write protection.\(In case of a version create an edition).'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := 'Unable to open editor'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e77fc; bytecode file offset 0xee4194"
!SGProjectSpecification methodsFor: 'recovered'!
codeGenMessageOptionsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := SGCodeManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) infoMessages.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := SGCodeManager.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) warningMessages.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := SGCodeManager.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorMessages.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'CodeGenMessageConfiguration'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'HiddenMessages'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := 'Hidden CodeGen Messages'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := 'A list of all hidden CodeGen Messages. Checked means hidden!!'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack7 := 'Hidden CodeGen Messages'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack8 := (recoveredStack8) hiddenCodeGenMessages.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack9 := [:block2811ac88Arg1 :block2811ac88Arg2 | 
    | block2811ac88Value0 block2811ac88Value1 block2811ac88Value2 |
    block2811ac88Value0 := block2811ac88Arg1.
    block2811ac88Value1 := block2811ac88Arg2.
    block2811ac88Value2 := (block2811ac88Value0) < (block2811ac88Value1).
    block2811ac88Value2
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack8 := (recoveredStack8) asSortedCollection: (recoveredStack9).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack9 := OrderedCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack10 := 'Build'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack11 := [
    false
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack6 := [:block2811acf4Arg1 :block2811acf4Arg2 | 
    | block2811acf4Value0 block2811acf4Value1 block2811acf4Value2 |
    block2811acf4Value0 := block2811acf4Arg1.
    block2811acf4Value1 := block2811acf4Arg2.
    block2811acf4Value2 := (block2811acf4Value0) < (block2811acf4Value1).
    block2811acf4Value2
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := (recoveredStack5) asSortedCollection: (recoveredStack6).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'CodeGenMessageConfiguration'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 'PromotedToWarningMessages'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack5 := 'CodeGen Messages Promoted To Warning'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack6 := 'A list of all CodeGen Messages promoted to Warning. Checked means promoted!!'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack7 := 'CodeGen Messages Promoted To Warning'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack8 := (recoveredStack8) promotedWarnings.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack9 := [:block2811ad18Arg1 :block2811ad18Arg2 | 
    | block2811ad18Value0 block2811ad18Value1 block2811ad18Value2 |
    block2811ad18Value0 := block2811ad18Arg1.
    block2811ad18Value1 := block2811ad18Arg2.
    block2811ad18Value2 := (block2811ad18Value0) < (block2811ad18Value1).
    block2811ad18Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack8 := (recoveredStack8) asSortedCollection: (recoveredStack9).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack9 := OrderedCollection.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack10 := 'Build'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack11 := [
    false
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack6 := [:block2811ad84Arg1 :block2811ad84Arg2 | 
    | block2811ad84Value0 block2811ad84Value1 block2811ad84Value2 |
    block2811ad84Value0 := block2811ad84Arg1.
    block2811ad84Value1 := block2811ad84Arg2.
    block2811ad84Value2 := (block2811ad84Value0) < (block2811ad84Value1).
    block2811ad84Value2
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack5 := (recoveredStack5) asSortedCollection: (recoveredStack6).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 'CodeGenMessageConfiguration'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := 'PromotedToErrorMessages'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack5 := 'CodeGen Messages Promoted To Error'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack6 := 'A list of all CodeGen Messages promoted to Error. Checked means promoted!!'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack7 := 'CodeGen Messages Promoted To Error'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack8 := (recoveredStack8) promotedErrors.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack9 := [:block2811ada8Arg1 :block2811ada8Arg2 | 
    | block2811ada8Value0 block2811ada8Value1 block2811ada8Value2 |
    block2811ada8Value0 := block2811ada8Arg1.
    block2811ada8Value1 := block2811ada8Arg2.
    block2811ada8Value2 := (block2811ada8Value0) < (block2811ada8Value1).
    block2811ada8Value2
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack8 := (recoveredStack8) asSortedCollection: (recoveredStack9).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack9 := OrderedCollection.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack10 := 'Build'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack11 := [
    false
].
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack6 := [:block2811ae14Arg1 :block2811ae14Arg2 | 
    | block2811ae14Value0 block2811ae14Value1 block2811ae14Value2 |
    block2811ae14Value0 := block2811ae14Arg1.
    block2811ae14Value1 := block2811ae14Arg2.
    block2811ae14Value2 := (block2811ae14Value0) < (block2811ae14Value1).
    block2811ae14Value2
].
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack5 := (recoveredStack5) asSortedCollection: (recoveredStack6).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'Call_2010401688'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := 'CodeGenMessageConfiguration'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := 'IgnoredGlobalPromotedMessages'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := 'Ignored Global Promoted CodeGen Messages'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack6 := 'A list of all global promoted CodeGen Messages that are ignored for this project. Checked means ignored!!'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack7 := 'Ignored Global Promoted CodeGen Messages'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack8 := (recoveredStack8) ignoredCodeGenMessages.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack9 := [:block2811ae38Arg1 :block2811ae38Arg2 | 
    | block2811ae38Value0 block2811ae38Value1 block2811ae38Value2 |
    block2811ae38Value0 := block2811ae38Arg1.
    block2811ae38Value1 := block2811ae38Arg2.
    block2811ae38Value2 := (block2811ae38Value0) < (block2811ae38Value1).
    block2811ae38Value2
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack8 := (recoveredStack8) asSortedCollection: (recoveredStack9).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack9 := OrderedCollection.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack10 := 'Build'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack11 := [
    false
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack6 := [:block2811aea4Arg1 :block2811aea4Arg2 | 
    | block2811aea4Value0 block2811aea4Value1 block2811aea4Value2 |
    block2811aea4Value0 := block2811aea4Arg1.
    block2811aea4Value1 := block2811aea4Arg2.
    block2811aea4Value2 := (block2811aea4Value0) < (block2811aea4Value1).
    block2811aea4Value2
].
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack5 := (recoveredStack5) asSortedCollection: (recoveredStack6).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := (recoveredStack4) stringCollection: (recoveredStack5).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

