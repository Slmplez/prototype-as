"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001df0; bytecode file offset 0x8ffcfc"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
resolveSoftPrerequisites
    ^self
! !

"ASDBase.ic method 0x20002d18; bytecode file offset 0x8ffcfc"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
createFileNames
    ^self
! !

"ASDBase.ic method 0x20006a1c; bytecode file offset 0x908be4"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
viewPath
    | recoveredValue0 |
    recoveredValue0 := (self) destinationPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20006cd4; bytecode file offset 0x908be4"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
previewExperimentCode
    | recoveredValue0 |
    recoveredValue0 := (self) isExperimentMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f1e4; bytecode file offset 0x92209c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForUpdateMemorySizeOfElements
    ^#()
! !

"ASDBase.ic method 0x20020b04; bytecode file offset 0x92209c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForEHooksGeneration
    ^#()
! !

"ASDBase.ic method 0x2002210c; bytecode file offset 0x92209c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForPIDGeneration
    ^#()
! !

"ASDBase.ic method 0x2004fadc; bytecode file offset 0x94d048"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
copFileName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005136c; bytecode file offset 0x94f0e0"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
rootNodeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) makeGraph.
    recoveredValue1 := (recoveredValue0) topNode.
    recoveredValue2 := (recoveredValue1) sgClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074bec; bytecode file offset 0x9757c8"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
isPreviewCommand
    ^true
! !

"ASDBase.ic method 0x2007b2f4; bytecode file offset 0x97c330"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
previewANSICCode
    ^false
! !

"ASDBase.ic method 0x2007b41c; bytecode file offset 0x97c330"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
previewECCOCode
    ^false
! !

"ASDBase.ic method 0x2007df74; bytecode file offset 0x97c330"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
requiresSCOOPIXGeneration
    ^false
! !

"ASDBase.ic method 0x200a1464; bytecode file offset 0x99dfb8"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
checkAPICommandRestrictions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) destinationPath.
    (recoveredValue0) createHostDirectory: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bbb24; bytecode file offset 0x9b83e4"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
needsGenerateECCOCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) componentKey.
    recoveredValue2 := (self) makeGraph.
    recoveredValue3 := (recoveredValue2) topNode.
    recoveredValue4 := (recoveredValue3) componentKey.
    recoveredValue5 := (recoveredValue1) = (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e5cc0; bytecode file offset 0x9e25cc"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
allMakeConfigs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super allMakeConfigs.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) makeConfigForContext.
    (recoveredValue1) add: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e8f74; bytecode file offset 0x9e5858"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
initializeFileStructureForMakeGraph: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGComponentBasedFileStructureStrategy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) project.
    recoveredValue4 := (recoveredValue3) target.
    recoveredValue5 := (recoveredValue1) create: (recoveredValue4).
    (recoveredValue0) fileStructureStrategy: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012b574; bytecode file offset 0xa27e3c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
initializeCodeStorageManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rl') == ('Rl_ToDo').
    recoveredValue1 := (self) codeManager.
    recoveredValue2 := SGNonPersistentCodeStorageManager.
    (recoveredValue1) initializeCodeStorageManager: (recoveredValue2) forCommand: (self).
    ^self
! !

"ASDBase.ic method 0x20151620; bytecode file offset 0xa4deec"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
genOSConfiguration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super genOSConfiguration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20184588; bytecode file offset 0xa80e54"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
prepareCodeGenerationIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rl') == ('Call_81643').
    recoveredValue1 := ('Rl') == ('ToDo').
    recoveredValue2 := SGGeneratorFactory.
    recoveredValue3 := (recoveredValue2) create.
    (recoveredValue3) deactivateScoopixFunctionGenerator.
    ^self
! !

"ASDBase.ic method 0x20191658; bytecode file offset 0xa8df2c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) destinationPathKey.
    recoveredValue3 := ASDPathOptions.
    recoveredValue4 := (recoveredValue3) instance.
    recoveredValue5 := (recoveredValue4) optionCodeGenerationPath.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201c93d8; bytecode file offset 0xac5ca8"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForInitInstGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCodeNatureANSIC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForInitInstGeneration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) topNode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d040; bytecode file offset 0xb29914"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForOSGeneration: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) topNode.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setForcedUsage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super nodesForOSGeneration: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) clearForcedUsage.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024e750; bytecode file offset 0xb4b028"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
toBeProcessedGSOs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) previewECCOCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) previewExperimentCode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := #().
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
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setFileOut.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super toBeProcessedGSOs.
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
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) clearFileOut.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20269f80; bytecode file offset 0xb6685c"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
prepareCodeGenerationOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Rl') == ('Call_81643').
    recoveredValue1 := ('Rl') == ('ToDo').
    recoveredValue2 := (self) currentBuildCache.
    recoveredValue3 := (recoveredValue2) generationOptionsCRC.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) useGlobalId: (false).
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) commentSpecificationSource: (true).
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) commentGenerationInfo: (true).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) commentElementDeclSource: (true).
    (recoveredValue3) commentFormula: (true).
    ^self
! !

"ASDBase.ic method 0x2030bbe0; bytecode file offset 0xc084bc"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
nodesForModuleGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCodeNatureANSIC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTStructureNode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super nodesForModuleGeneration.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) topNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isCodeNatureECCO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) topNode.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := super nodesForModuleGeneration.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203480e8; bytecode file offset 0xc449dc"
!SGAbstractPreviewCommand methodsFor: 'recovered'!
toBePreviewedSOs
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) previewECCOCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allGenericSourceObjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSources.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceANSICCollectorClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileStructureStrategy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeGraph.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) topNode.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) collectAllCompiledSOs: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeCompiledSOs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280ee47cArg1 :block280ee47cArg2 | 
    | block280ee47cValue0 block280ee47cValue1 block280ee47cValue2 block280ee47cValue3 block280ee47cValue4 |
    block280ee47cValue0 := block280ee47cArg1.
    block280ee47cValue1 := (block280ee47cValue0) fileName.
    block280ee47cValue2 := block280ee47cArg2.
    block280ee47cValue3 := (block280ee47cValue2) fileName.
    block280ee47cValue4 := (block280ee47cValue1) > (block280ee47cValue3).
    block280ee47cValue4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

