"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009578; bytecode file offset 0x908be4"
!SGGeneratorFactory methodsFor: 'recovered'!
autosarStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) arXmlGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d5f8; bytecode file offset 0x93bf94"
!SGGeneratorFactory methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAbstractNodeVisitor.
    recoveredValue1 := (recoveredValue0) inactiveNodeVisitorSingleton.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f2d8; bytecode file offset 0x94d048"
!SGGeneratorFactory methodsFor: 'recovered'!
resetScoopIXGenerationStrategy
    (self) activateScoopixFunctionGenerator.
    ^self
! !

"ASDBase.ic method 0x200606b4; bytecode file offset 0x95cf6c"
!SGGeneratorFactory methodsFor: 'recovered'!
deactivateScoopixFunctionGenerator
    | recoveredValue0 |
    recoveredValue0 := (self) inactiveNodeVisitorSingleton.
    sixFunctionGenerator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200606cc; bytecode file offset 0x95cf9c"
!SGGeneratorFactory methodsFor: 'recovered'!
deactivateScoopixElementGenerator
    | recoveredValue0 |
    recoveredValue0 := (self) inactiveNodeVisitorSingleton.
    sixElementGenerator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20065d34; bytecode file offset 0x963428"
!SGGeneratorFactory methodsFor: 'recovered'!
blockToEsdlStrategy
    | recoveredValue0 |
    recoveredValue0 := blockToEsdlStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067c04; bytecode file offset 0x9646f8"
!SGGeneratorFactory methodsFor: 'recovered'!
sixFunctionGenerator
    | recoveredValue0 |
    recoveredValue0 := sixFunctionGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006831c; bytecode file offset 0x965b90"
!SGGeneratorFactory methodsFor: 'recovered'!
sixElementGenerator
    | recoveredValue0 |
    recoveredValue0 := sixElementGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200699e8; bytecode file offset 0x966bdc"
!SGGeneratorFactory methodsFor: 'recovered'!
weaveEsdlStrategy
    | recoveredValue0 |
    recoveredValue0 := weaveESDLStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ad34; bytecode file offset 0x967a18"
!SGGeneratorFactory methodsFor: 'recovered'!
codeGeneratorStrategy
    | recoveredValue0 |
    recoveredValue0 := codeGeneratorStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b428; bytecode file offset 0x96873c"
!SGGeneratorFactory methodsFor: 'recovered'!
arXmlGenerator
    | recoveredValue0 |
    recoveredValue0 := arXmlGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c714; bytecode file offset 0x9692b0"
!SGGeneratorFactory methodsFor: 'recovered'!
genContext
    | recoveredValue0 |
    recoveredValue0 := genContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cba8; bytecode file offset 0x969c04"
!SGGeneratorFactory methodsFor: 'recovered'!
additionalOSCodeStrategies
    | recoveredValue0 |
    recoveredValue0 := additionalOSCodeStrategies.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d7fc; bytecode file offset 0x96a390"
!SGGeneratorFactory methodsFor: 'recovered'!
additionalGenerators
    | recoveredValue0 |
    recoveredValue0 := additionalGenerators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081638; bytecode file offset 0x97e234"
!SGGeneratorFactory methodsFor: 'recovered'!
createMdlDeclBuilder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdDeclBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008846c; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createMemorySizeWalker
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdMemorySizeWalk.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088534; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createEhooksConversionGenerator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGEHooksConversionsGenerator.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088598; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createMdlDeclBuilder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdDeclBuilder.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008864c; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createGlobalAnalysisContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGCgGlobalAnalysisContext.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088818; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createEHooksBypassFunctionGenerator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGEHooksBypassFunctionGenerator.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088868; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createMdlInitBuilder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdInitBuilder.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088a5c; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createNVRamWalker
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdNVramWalk.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088a70; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createBlockAnalyzer
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGLmBlockAnalyzer.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088b9c; bytecode file offset 0x985628"
!SGGeneratorFactory methodsFor: 'recovered'!
createMdlBuilder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdMethodBuilder.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200890bc; bytecode file offset 0x985bf8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorIntegerStrategy
    | recoveredValue0 |
    recoveredValue0 := SGStandardDataStructureGenerator.
    (self) activateDataGenerator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008914c; bytecode file offset 0x985bf8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorOOControllerStrategy
    | recoveredValue0 |
    recoveredValue0 := SGOOControllerDataStructureGenerator.
    (self) activateDataGenerator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008919c; bytecode file offset 0x985bf8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorQuantStrategy
    | recoveredValue0 |
    recoveredValue0 := SGStandardDataStructureGenerator.
    (self) activateDataGenerator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008921c; bytecode file offset 0x985bf8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorStandardStrategy
    | recoveredValue0 |
    recoveredValue0 := SGStandardDataStructureGenerator.
    (self) activateDataGenerator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200892bc; bytecode file offset 0x985bf8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorPhysicalControllerStrategy
    | recoveredValue0 |
    recoveredValue0 := SGOOControllerDataStructureGenerator.
    (self) activateDataGenerator: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200894fc; bytecode file offset 0x985ef8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateBlockToEsdlGenerationStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGEsdlStrategy.
    recoveredValue1 := (recoveredValue0) create.
    blockToEsdlStrategy := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20097374; bytecode file offset 0x995850"
!SGGeneratorFactory methodsFor: 'recovered'!
generateInitCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGeneratorStrategy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generateInitCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c2d44; bytecode file offset 0x9bfde0"
!SGGeneratorFactory methodsFor: 'recovered'!
genContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d781c; bytecode file offset 0x9d40dc"
!SGGeneratorFactory methodsFor: 'recovered'!
addAdditionalOSCodeStrategy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := additionalOSCodeStrategies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) genContext.
    recoveredValue3 := (recoveredValue1) createWithContext: (recoveredValue2).
    (recoveredValue0) addLast: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010f380; bytecode file offset 0xa0bc64"
!SGGeneratorFactory methodsFor: 'recovered'!
createGlobalAnalysisMethodContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createGlobalAnalysisContext.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) methodDecl: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) sourceMap: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010f39c; bytecode file offset 0xa0bc64"
!SGGeneratorFactory methodsFor: 'recovered'!
createGlobalAnalysisInterfaceContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createGlobalAnalysisContext.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) ownerClassInterface: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    (recoveredValue3) sourceMap: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20118850; bytecode file offset 0xa15118"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) codeGenerationOptions.
    (self) activateCodeGeneratorStrategy: (recoveredValue1).
    recoveredValue2 := (self) codeGeneratorStrategy.
    recoveredValue3 := (self) genContext.
    (recoveredValue2) genContext: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011bf1c; bytecode file offset 0xa187e0"
!SGGeneratorFactory methodsFor: 'recovered'!
activateScoopixFunctionGenerator
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMdScoopIxFunctionGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sixFunctionGenerator := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011c094; bytecode file offset 0xa18954"
!SGGeneratorFactory methodsFor: 'recovered'!
autosarTypesStrategy
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarTypesStrategy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011eb54; bytecode file offset 0xa1b418"
!SGGeneratorFactory methodsFor: 'recovered'!
updateCGenContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCodeGenerationContext: (recoveredValue0).
    (self) genContext: (recoveredValue1).
    recoveredValue2 := (self) codeGeneratorStrategy.
    recoveredValue3 := (self) genContext.
    (recoveredValue2) genContext: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20151030; bytecode file offset 0xa4d8f8"
!SGGeneratorFactory methodsFor: 'recovered'!
activateAutosarXmlGenerationStrategy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGAbstractAutosarXmlGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAutosarXmlGenerator: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            arXmlGenerator := recoveredStack0.
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

"ASDBase.ic method 0x20152c90; bytecode file offset 0xa4f55c"
!SGGeneratorFactory methodsFor: 'recovered'!
createCodeGenerationContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgCodeGenerationContext.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) importsTable: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createTypeDefinitions.
    (recoveredValue5) typeDefinitions: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20164154; bytecode file offset 0xa60a18"
!SGGeneratorFactory methodsFor: 'recovered'!
activateDataGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGBehaviourGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) create.
    codeGeneratorStrategy := recoveredValue1.
    recoveredValue2 := codeGeneratorStrategy.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := codeGeneratorStrategy.
    (recoveredValue5) generator: (recoveredValue6).
    (recoveredValue2) dataStructureGenerator: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20168574; bytecode file offset 0xa64e38"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGenerator: recoveredArg1 dataGenerator: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGBehaviourGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) create.
    codeGeneratorStrategy := recoveredValue1.
    recoveredValue2 := codeGeneratorStrategy.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := codeGeneratorStrategy.
    (recoveredValue5) generator: (recoveredValue6).
    (recoveredValue2) dataStructureGenerator: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2016a830; bytecode file offset 0xa670fc"
!SGGeneratorFactory methodsFor: 'recovered'!
createTypeDefinitions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGTypeDefinitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCustomizedDataTypesActive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) usingCustomScalarTypes.
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

"ASDBase.ic method 0x20190d5c; bytecode file offset 0xa8d628"
!SGGeneratorFactory methodsFor: 'recovered'!
createTypesCollector
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMdUsedASCETTypesCollector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithContext: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := SGMdUsedAUTOSARTypesCollector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithContext: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a7ea4; bytecode file offset 0xaa4774"
!SGGeneratorFactory methodsFor: 'recovered'!
generateElementScoopix: recoveredArg1 stream: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMdScoopIxElementGenerator.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    sixElementGenerator := recoveredValue2.
    recoveredValue3 := (self) sixElementGenerator.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) createScoopixAdapter: (recoveredValue4).
    (recoveredValue3) sixAdapter: (recoveredValue5).
    recoveredValue6 := (self) sixElementGenerator.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) generateElementScoopix: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201ab370; bytecode file offset 0xaa7c44"
!SGGeneratorFactory methodsFor: 'recovered'!
createScoopixAdapter: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGCgScoopixGenerationContext.
    recoveredValue1 := (self) genContext.
    recoveredValue2 := (recoveredValue0) createWithContext: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) sixElementsGeneratorStream: (recoveredValue4).
    recoveredLocal1 := recoveredValue2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) sixAdapterClass.
    recoveredValue7 := SGAbstractScoopIxGenerator.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) createScoopIxGenerator: (recoveredValue8).
    recoveredValue10 := (recoveredValue6) create: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201b53a8; bytecode file offset 0xab1c6c"
!SGGeneratorFactory methodsFor: 'recovered'!
generateOSCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) generateIle.
    recoveredValue1 := (self) additionalOSCodeStrategies.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) anyMdlNode: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20206b6c; bytecode file offset 0xb03438"
!SGGeneratorFactory methodsFor: 'recovered'!
generatedOSCode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeGeneratorStrategy.
    recoveredValue1 := (recoveredValue0) expander.
    recoveredValue2 := (recoveredValue1) generatedOSCode.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) additionalOSCodeStrategies.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) currentOSCode: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202d2c20; bytecode file offset 0xbcf4f8"
!SGGeneratorFactory methodsFor: 'recovered'!
generatedModuleCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockToEsdlStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockToEsdlStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentGeneratedMethodsCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixFunctionGenerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatedModuleCode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentGeneratedModuleCode: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalGenerators.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) currentGeneratedModuleCode: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030c9c8; bytecode file offset 0xc092a4"
!SGGeneratorFactory methodsFor: 'recovered'!
activateCodeGeneratorStrategy: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isPhysicalExperimentVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCodeGeneratorStandardStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuantFloatExperimentVariant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCodeGeneratorQuantStrategy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntegerExperimentVariant.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCodeGeneratorIntegerStrategy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntegerControllerVariant.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCodeGeneratorOOControllerStrategy.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) activateCodeGeneratorPhysicalControllerStrategy.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) activateCodeGeneratorStandardStrategy.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032b4f4; bytecode file offset 0xc27dd8"
!SGGeneratorFactory methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) deactivateScoopixFunctionGenerator.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) deactivateScoopixElementGenerator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            blockToEsdlStrategy := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            weaveESDLStrategy := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            codeGeneratorStrategy := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            arXmlGenerator := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            additionalOSCodeStrategies := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalGenerators.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280ec688Arg1 | 
    | block280ec688Value0 block280ec688Value1 |
    block280ec688Value0 := block280ec688Arg1.
    block280ec688Value1 := (block280ec688Value0) create.
    block280ec688Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            additionalGenerators := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038f908; bytecode file offset 0xc8c1ec"
!SGGeneratorFactory methodsFor: 'recovered'!
generateModuleCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) weaveEsdlStrategy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGeneratorStrategy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixFunctionGenerator.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveStrategy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixFunctionGenerator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) genContext: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixFunctionGenerator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScoopixAdapter: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) sixAdapter: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixFunctionGenerator.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockToEsdlStrategy.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) anyMdlNode: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalGenerators.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) anyMdlNode: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

