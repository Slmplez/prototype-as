"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200218d8; bytecode file offset 0x92209c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
additionalPrereqHeaders
    ^#()
! !

"ASDBase.ic method 0x200324f4; bytecode file offset 0x934580"
!SGMakeDataTypeNode methodsFor: 'recovered'!
generatorOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) generationOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050bc0; bytecode file offset 0x94d4ec"
!SGMakeDataTypeNode methodsFor: 'recovered'!
needsGenerateECCOCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) needsGenerateECCOCode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055be4; bytecode file offset 0x952a9c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeDataTypeNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200604a8; bytecode file offset 0x95cf04"
!SGMakeDataTypeNode methodsFor: 'recovered'!
makeModuleGenericSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeModuleSource.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setModuleGenericCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fdd0; bytecode file offset 0x96c6ac"
!SGMakeDataTypeNode methodsFor: 'recovered'!
initCodeStorageHandle
    | recoveredValue0 |
    recoveredValue0 := initCodeStorageHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff6c; bytecode file offset 0x96c850"
!SGMakeDataTypeNode methodsFor: 'recovered'!
additionalFilesStorageHandle
    | recoveredValue0 |
    recoveredValue0 := additionalFilesStorageHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007aa04; bytecode file offset 0x97c330"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeGenericComponentModuleCodeGeneration
    ^false
! !

"ASDBase.ic method 0x2007cb94; bytecode file offset 0x97c330"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeUserDefinedInterpolation
    ^false
! !

"ASDBase.ic method 0x200964b0; bytecode file offset 0x992d7c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
makeModuleGenericSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeModuleSource: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) setModuleGenericCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009bcf4; bytecode file offset 0x998660"
!SGMakeDataTypeNode methodsFor: 'recovered'!
toBePreviewedESDLCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) moduleCodeStorageHandle.
    recoveredValue2 := (recoveredValue1) esdlSource.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200abc84; bytecode file offset 0x9a85bc"
!SGMakeDataTypeNode methodsFor: 'recovered'!
storeESDLCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) codeOfComponent.
    (recoveredValue0) esdlSource: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200aff88; bytecode file offset 0x9ac94c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
makeInitSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) initCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createInit: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aff9c; bytecode file offset 0x9ac94c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
makeAdditionalFileSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) additionalFilesStorageHandle.
    recoveredValue2 := (recoveredValue0) createAdditionalFile: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c5fcc; bytecode file offset 0x9c29e8"
!SGMakeDataTypeNode methodsFor: 'recovered'!
moduleHeaderFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    moduleHeaderFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c62b8; bytecode file offset 0x9c2bec"
!SGMakeDataTypeNode methodsFor: 'recovered'!
initCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initCodeStorageHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6434; bytecode file offset 0x9c2dd0"
!SGMakeDataTypeNode methodsFor: 'recovered'!
additionalFilesStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalFilesStorageHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e67e0; bytecode file offset 0x9e30bc"
!SGMakeDataTypeNode methodsFor: 'recovered'!
touchHandles
    | recoveredValue0 |
    super touchHandles.
    recoveredValue0 := (self) initCodeStorageHandle.
    (recoveredValue0) touch.
    ^self
! !

"ASDBase.ic method 0x20104080; bytecode file offset 0xa0093c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
mcaMappingInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeStorageHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mcaMappingInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20118fc8; bytecode file offset 0xa1588c"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyze
    (self) analyzeModuleCodeGeneration.
    (self) analyzeInitInstCodeGeneration.
    (self) analyzeInterfaceGeneration.
    (self) analyzeAdditionalModuleCodeGeneration.
    ^self
! !

"ASDBase.ic method 0x2013010c; bytecode file offset 0xa2ca44"
!SGMakeDataTypeNode methodsFor: 'recovered'!
initGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generateTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20130170; bytecode file offset 0xa2ca44"
!SGMakeDataTypeNode methodsFor: 'recovered'!
moduleGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generateTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015dba0; bytecode file offset 0xa5a464"
!SGMakeDataTypeNode methodsFor: 'recovered'!
moduleHeaderFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := moduleHeaderFileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := '.h'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) moduleHeaderFileName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := moduleHeaderFileName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20194724; bytecode file offset 0xa90fe8"
!SGMakeDataTypeNode methodsFor: 'recovered'!
storeInitInstCode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) hasGenericCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCodeStorageHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) storeInitGenericCode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) storeInitInstCode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b53dc; bytecode file offset 0xab1cc4"
!SGMakeDataTypeNode methodsFor: 'recovered'!
initInstGenOptionChange: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^true
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) codeGenerationOptions.
    recoveredValue4 := (recoveredValue2) equalToCodeRelevantOption: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b5404; bytecode file offset 0xab1cc4"
!SGMakeDataTypeNode methodsFor: 'recovered'!
moduleGenOptionChange: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^true
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) codeGenerationOptions.
    recoveredValue4 := (recoveredValue2) equalToCodeRelevantOption: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202600ac; bytecode file offset 0xb5c980"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeDependentCTBlockParameterUsage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestDependentPropagatedCTBlockTimeStamp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCode.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026add8; bytecode file offset 0xb676ac"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeInitInstCodeGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInitInstCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) initInstSourceTimeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) initGenerateTimeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateInitInstCode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) initCodeStorageHandle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) initInstGenOptionChange: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateInitInstCode.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x202e1b20; bytecode file offset 0xbde400"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeAdditionalModuleCodeGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) scoopixSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformScoopixGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSeparateInitCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) mustGenerateInitInstCode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsDataSet: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) mustGenerateInitInstCode.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20490610; bytecode file offset 0xd8cf14"
!SGMakeDataTypeNode methodsFor: 'recovered'!
analyzeModuleCodeGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestPrereqPropagatedDirectAccessTimeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) mustGenerateModuleCodePropagatedForDirectAccess.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleSourceTimeStamp.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleInitCode.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestPrereqPropagatedTimeStamp.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCodePropagatedForCT.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresExImportCheck.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) graph.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportImportTimeStamp.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) moduleCodeStorageHandle.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptions.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleGenOptionChange: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleInitCode.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestPrereqRecordPropagatedTimeStamp.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyzeUserDefinedInterpolation.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyzeGenericComponentModuleCodeGeneration.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) analyzeDependentCTBlockParameterUsage.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

