"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200088c4; bytecode file offset 0x908be4"
!SGMakeProjectNode methodsFor: 'recovered'!
needsGenerateECCOScoopIX
    | recoveredValue0 |
    recoveredValue0 := (self) needsGenerateScoopIX.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008d38; bytecode file offset 0x908be4"
!SGMakeProjectNode methodsFor: 'recovered'!
projectComponentKey
    | recoveredValue0 |
    recoveredValue0 := (self) componentKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b0e4; bytecode file offset 0x908be4"
!SGMakeProjectNode methodsFor: 'recovered'!
propagatedMethodTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b5e8; bytecode file offset 0x908be4"
!SGMakeProjectNode methodsFor: 'recovered'!
latestPrereqRecordPropagatedTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029d94; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
operatingSystemInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) operatingSystemInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f464; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
pidFileNameNoExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) pidFileNameNoExtension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ffc4; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
getMapFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) mapFile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031014; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
loadableTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) loadableTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200333c4; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
generatorOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) generationOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037234; bytecode file offset 0x934580"
!SGMakeProjectNode methodsFor: 'recovered'!
getEXEFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) exeFile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d038; bytecode file offset 0x93bf94"
!SGMakeProjectNode methodsFor: 'recovered'!
baseFilenameCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgCCodeSettings.
    recoveredValue1 := (recoveredValue0) filenameProjectKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050aa0; bytecode file offset 0x94d4ec"
!SGMakeProjectNode methodsFor: 'recovered'!
osNecessaryPreprocessorCommands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileStructureStrategy.
    recoveredValue1 := (recoveredValue0) necessaryOsPreprocessorCommandsForProject: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051da8; bytecode file offset 0x94f0e0"
!SGMakeProjectNode methodsFor: 'recovered'!
osDataFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) command.
    recoveredValue2 := (recoveredValue1) osDataFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20055c98; bytecode file offset 0x952a9c"
!SGMakeProjectNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeProjectNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200576d8; bytecode file offset 0x956284"
!SGMakeProjectNode methodsFor: 'recovered'!
memorySizeOfElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlClassInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) generateMemorySizeOfElements: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057808; bytecode file offset 0x956284"
!SGMakeProjectNode methodsFor: 'recovered'!
dependencyCount: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dependencyCount: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200605f8; bytecode file offset 0x95cf04"
!SGMakeProjectNode methodsFor: 'recovered'!
makeOSGenericSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeOSSource.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setOSGenericCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20061870; bytecode file offset 0x95e838"
!SGMakeProjectNode methodsFor: 'recovered'!
osHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osFilename.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070c14; bytecode file offset 0x96d580"
!SGMakeProjectNode methodsFor: 'recovered'!
osCodeStorageHandle
    | recoveredValue0 |
    recoveredValue0 := osCodeStorageHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070e44; bytecode file offset 0x96d7b0"
!SGMakeProjectNode methodsFor: 'recovered'!
pidCodeStorageHandle
    | recoveredValue0 |
    recoveredValue0 := pidCodeStorageHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070f38; bytecode file offset 0x96d87c"
!SGMakeProjectNode methodsFor: 'recovered'!
osCode
    | recoveredValue0 |
    recoveredValue0 := osCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071004; bytecode file offset 0x96d928"
!SGMakeProjectNode methodsFor: 'recovered'!
osFilename
    | recoveredValue0 |
    recoveredValue0 := osFilename.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200756dc; bytecode file offset 0x9757c8"
!SGMakeProjectNode methodsFor: 'recovered'!
isProjectNode
    ^true
! !

"ASDBase.ic method 0x20075c84; bytecode file offset 0x9757c8"
!SGMakeProjectNode methodsFor: 'recovered'!
isMakeProjectNode
    ^true
! !

"ASDBase.ic method 0x2007942c; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
isModuleNode
    ^false
! !

"ASDBase.ic method 0x20079bbc; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeUserDefinedInterpolation
    ^false
! !

"ASDBase.ic method 0x2007b29c; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeGenericComponentModuleCodeGeneration
    ^false
! !

"ASDBase.ic method 0x2007c60c; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
hasExternalCode
    ^false
! !

"ASDBase.ic method 0x2007cba4; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
hasDirectGetAccess
    ^false
! !

"ASDBase.ic method 0x2007eff4; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
isHWCModuleNode
    ^false
! !

"ASDBase.ic method 0x2007f1f4; bytecode file offset 0x97c330"
!SGMakeProjectNode methodsFor: 'recovered'!
isASDModuleNode
    ^false
! !

"ASDBase.ic method 0x20083b4c; bytecode file offset 0x9804b8"
!SGMakeProjectNode methodsFor: 'recovered'!
toBeCompiledSOs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) visitMakeNode: (self).
    ^self
! !

"ASDBase.ic method 0x20083d20; bytecode file offset 0x9807dc"
!SGMakeProjectNode methodsFor: 'recovered'!
isOSSourceObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) osFilename.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008e610; bytecode file offset 0x98aef8"
!SGMakeProjectNode methodsFor: 'recovered'!
incrementalLinkStatusFile
    | recoveredValue0 recoveredValue1 |
    (self) checkPermissionToLoad.
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := (recoveredValue0) incrementalLinkStatus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20090598; bytecode file offset 0x98d054"
!SGMakeProjectNode methodsFor: 'recovered'!
latestOSPrereqPropagatedTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) latestOSPrereqPropagatedTimeStamp.
    recoveredValue2 := (self) moduleSourceTimeStamp.
    recoveredValue3 := (recoveredValue1) max: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200974c4; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storeMapFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) mapFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200975f4; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storeIncrementalLinkStatusFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) incrementalLinkStatus: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200976b4; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storePIDCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) storePIDCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098374; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storeVatFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) vatFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098404; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storeEXEFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) exeFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098644; bytecode file offset 0x995850"
!SGMakeProjectNode methodsFor: 'recovered'!
storeSIXGenericCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) bemSourceSIX: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9728; bytecode file offset 0x9a5ff4"
!SGMakeProjectNode methodsFor: 'recovered'!
allScoopIxSOs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) moduleCodeStorageHandle.
    (recoveredValue0) addModuleCodeHandle: (recoveredValue1) makeNode: (self).
    ^self
! !

"ASDBase.ic method 0x200ae6b8; bytecode file offset 0x9ab034"
!SGMakeProjectNode methodsFor: 'recovered'!
storeOSCString: recoveredArg1 hString: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) storeGeneratedCString: (recoveredValue1) hString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200affb0; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeGlobalDefsHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) moduleCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createGlobalDefsH: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200affc4; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeConversionsHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) moduleCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createConversionsH: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200affd8; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeOSTemplateSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) osCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createOSTemplate: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200affec; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeOSSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) osCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createOS: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0000; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makePIDSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) pidCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createPID: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0014; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeProjDefHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) initCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createProjDefH: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0028; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeERCOSEKHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) osCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createERCOSEKH: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b003c; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeGlobalHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) initCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createGlobalH: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0064; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeGlobalStructHeaderSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) moduleCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createGlobalStructHeader: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0078; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeOSEKTaskSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) osCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createOSEKTask: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b008c; bytecode file offset 0x9ac94c"
!SGMakeProjectNode methodsFor: 'recovered'!
makeOILHSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := (self) osCodeStorageHandle.
    recoveredValue2 := (recoveredValue0) createOIL: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2958; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
osTemplateFileDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('OS generation data file').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a30; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
moduleDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('project code').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a48; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
globalStructHeaderDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('variable array/matrix struct header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a60; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
globalDefsHDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('global definition header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a78; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
globalHDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('global project header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2a90; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
ehooksDataFileDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('EHOOKS data file used for template generation').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2ad8; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
projDefHDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('Project definition header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2b80; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
oilDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('OIL file').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2bc8; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
conversionsHDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('conversion functions header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2bf8; bytecode file offset 0x9af4bc"
!SGMakeProjectNode methodsFor: 'recovered'!
ercosekHDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('ERCOSEK header').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7224; bytecode file offset 0x9c3c10"
!SGMakeProjectNode methodsFor: 'recovered'!
osCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osCodeStorageHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c74a0; bytecode file offset 0x9c3d64"
!SGMakeProjectNode methodsFor: 'recovered'!
reportOSErrors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reportOSErrors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c74ec; bytecode file offset 0x9c3e48"
!SGMakeProjectNode methodsFor: 'recovered'!
pidCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pidCodeStorageHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7608; bytecode file offset 0x9c3efc"
!SGMakeProjectNode methodsFor: 'recovered'!
osCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c76e4; bytecode file offset 0x9c3fa0"
!SGMakeProjectNode methodsFor: 'recovered'!
osFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osFilename := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2b60; bytecode file offset 0x9cf574"
!SGMakeProjectNode methodsFor: 'recovered'!
setGenerateOSCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitOSCode.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d32b4; bytecode file offset 0x9cfc24"
!SGMakeProjectNode methodsFor: 'recovered'!
pidDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) pidDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d32ec; bytecode file offset 0x9cfc24"
!SGMakeProjectNode methodsFor: 'recovered'!
asapDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) asapDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d3324; bytecode file offset 0x9cfc24"
!SGMakeProjectNode methodsFor: 'recovered'!
osGenericDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) osGenericDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d335c; bytecode file offset 0x9cfc24"
!SGMakeProjectNode methodsFor: 'recovered'!
osDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) osDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e842c; bytecode file offset 0x9e4cf4"
!SGMakeProjectNode methodsFor: 'recovered'!
osekTaskDescription: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('OSEK task ') , (recoveredValue2).
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fdb80; bytecode file offset 0x9fa490"
!SGMakeProjectNode methodsFor: 'recovered'!
storeModuleCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) moduleCode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    super storeModuleCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011bf48; bytecode file offset 0xa18824"
!SGMakeProjectNode methodsFor: 'recovered'!
needsToCompileOSCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) osCodeStorageHandle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeCompiled: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011bf60; bytecode file offset 0xa18824"
!SGMakeProjectNode methodsFor: 'recovered'!
needsToCompilePIDCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genPIDCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pidCodeStorageHandle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeCompiled: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f0d4; bytecode file offset 0xa2b9b0"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeLogicModel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super analyzeLogicModel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201300e4; bytecode file offset 0xa2ca44"
!SGMakeProjectNode methodsFor: 'recovered'!
osGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generateTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201300f8; bytecode file offset 0xa2ca44"
!SGMakeProjectNode methodsFor: 'recovered'!
pidGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generateTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20130570; bytecode file offset 0xa2ce38"
!SGMakeProjectNode methodsFor: 'recovered'!
necessaryVatTableOSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := TGCompilingSourceObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) initCodeStorageHandle.
    recoveredValue3 := (recoveredValue2) vatFile.
    recoveredValue4 := (self) initCodeStorageHandle.
    recoveredValue5 := (recoveredValue0) fileName: (recoveredValue1) description: ('virtual address table') oSource: (recoveredValue3) userReference: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20133930; bytecode file offset 0xa301f4"
!SGMakeProjectNode methodsFor: 'recovered'!
updateProjectIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    (recoveredValue0) modifiedWithoutTimeStamp.
    recoveredValue1 := (self) pidCodeStorageHandle.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) projectIdentifier: (recoveredValue2).
    recoveredValue3 := (self) pidCodeStorageHandle.
    (recoveredValue3) touch.
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20133e4c; bytecode file offset 0xa30710"
!SGMakeProjectNode methodsFor: 'recovered'!
updateNVRAMIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nvramIdentifier: (recoveredValue1).
    recoveredValue2 := (self) pidCodeStorageHandle.
    (recoveredValue2) modifiedWithoutTimeStamp.
    recoveredValue3 := (self) pidCodeStorageHandle.
    (recoveredValue3) touch.
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20140c1c; bytecode file offset 0xa3d500"
!SGMakeProjectNode methodsFor: 'recovered'!
touchHandles
    | recoveredValue0 recoveredValue1 |
    super touchHandles.
    recoveredValue0 := (self) osCodeStorageHandle.
    (recoveredValue0) touch.
    recoveredValue1 := (self) pidCodeStorageHandle.
    (recoveredValue1) touch.
    ^self
! !

"ASDBase.ic method 0x20157df0; bytecode file offset 0xa546b8"
!SGMakeProjectNode methodsFor: 'recovered'!
initFor: recoveredArg1 in: recoveredArg2 settings: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super initFor: (recoveredValue0) in: (recoveredValue1) settings: (nil).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new: (3).
    (recoveredValue3) sourceTimeStamps: (recoveredValue5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20163718; bytecode file offset 0xa5ffd8"
!SGMakeProjectNode methodsFor: 'recovered'!
dependencyCount
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) pidCodeStorageHandle.
    recoveredValue1 := [
    ^-1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) pidCodeStorageHandle.
    recoveredValue3 := (recoveredValue2) dependencyCount.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20165104; bytecode file offset 0xa619c8"
!SGMakeProjectNode methodsFor: 'recovered'!
moduleGenOptionChange: recoveredArg1
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
            recoveredStack2 := super moduleGenOptionChange: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenerationOptions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalToProjectCodeRelevantOption: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201735a0; bytecode file offset 0xa6fe60"
!SGMakeProjectNode methodsFor: 'recovered'!
reportOSErrors
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := reportOSErrors.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := super reportOSErrors.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := reportOSErrors.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20185e54; bytecode file offset 0xa82728"
!SGMakeProjectNode methodsFor: 'recovered'!
storeLoadableCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) initCodeStorageHandle.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) project.
    recoveredValue4 := (recoveredValue3) target.
    recoveredValue5 := (recoveredValue4) requiresSRecord.
    (recoveredValue1) storeLoadableSource: (recoveredValue2) sRecord: (recoveredValue5).
    recoveredValue6 := (self) codeGenerationOptions.
    (recoveredValue0) generationOptions: (recoveredValue6).
    (self) updateInterpolationLibraryChecksum.
    ^self
! !

"ASDBase.ic method 0x201a1610; bytecode file offset 0xa9dee0"
!SGMakeProjectNode methodsFor: 'recovered'!
analyze
    | recoveredValue0 |
    (self) analyzeOSCodeGeneration.
    super analyze.
    recoveredValue0 := ('Rl') == ('Call_2008400220').
    (self) analyzeInitComponentsCode.
    (self) analyzeProjectExImport.
    ^self
! !

"ASDBase.ic method 0x201b11f4; bytecode file offset 0xaadabc"
!SGMakeProjectNode methodsFor: 'recovered'!
needsGenerateOSCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsFileOut.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := flags.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOSCode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c858c; bytecode file offset 0xac4e58"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeInitComponentsCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2008400220'.
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
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) needGenerateAnyInitClassCode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) mustGenerateModuleCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc698; bytecode file offset 0xac8f60"
!SGMakeProjectNode methodsFor: 'recovered'!
storeOSCode: recoveredArg1
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
            (recoveredStack0) osCode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericCode.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) osCodeStorageHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) storeOSGenericCode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) osCodeStorageHandle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) storeOSCode: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6758; bytecode file offset 0xad3028"
!SGMakeProjectNode methodsFor: 'recovered'!
getLoadableSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) checkPermissionToLoad.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresSRecord.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initCodeStorageHandle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadableSource.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) initCodeStorageHandle.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadableSourceString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ddf98; bytecode file offset 0xada860"
!SGMakeProjectNode methodsFor: 'recovered'!
osSourceTimeStamp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceTimeStamps.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) osTimeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceTimeStamps.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fe7e0; bytecode file offset 0xafb0b0"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeProjectExImport
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
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInitInstCode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) graph.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportImportTimeStamp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) moduleGenerateTimeStamp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) mustGenerateModuleInitCode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021674c; bytecode file offset 0xb13024"
!SGMakeProjectNode methodsFor: 'recovered'!
updateInterpolationLibraryChecksum
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    (recoveredValue0) clearInterpolationLibrary.
    recoveredValue1 := (self) graph.
    recoveredValue2 := (recoveredValue1) codeManager.
    recoveredValue3 := (recoveredValue2) interpolation.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := (self) moduleCodeStorageHandle.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) identifier.
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := (recoveredBlock12Value3) libraryCheckSum.
    recoveredBlock12Value5 := (recoveredBlock12Value0) intpolLibrary: (recoveredBlock12Value2) checkSum: (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20261c48; bytecode file offset 0xb5e520"
!SGMakeProjectNode methodsFor: 'recovered'!
toBeLinkedSOs: recoveredArg1
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
            super toBeLinkedSOs: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) osCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addOSCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) genPIDCode.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) pidCodeStorageHandle.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addPIDCodeHandle: (recoveredStack1) makeNode: (recoveredStack2).
            recoveredPC := 37.
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

"ASDBase.ic method 0x20264798; bytecode file offset 0xb61074"
!SGMakeProjectNode methodsFor: 'recovered'!
projectIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pidCodeStorageHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pidCodeStorageHandle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectIdentifier.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) moduleCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeStorageHandle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectIdentifier.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateProjectIdentifier: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202647b0; bytecode file offset 0xb61074"
!SGMakeProjectNode methodsFor: 'recovered'!
nvramIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pidCodeStorageHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) pidCodeStorageHandle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramIdentifier.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) moduleCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeStorageHandle.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramIdentifier.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateNVRAMIdentifier: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265420; bytecode file offset 0xb61d08"
!SGMakeProjectNode methodsFor: 'recovered'!
allAdditionalScoopIXSOs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := TGCompilingSourceObject.
    recoveredValue1 := (self) module.
    recoveredValue2 := (recoveredValue1) sgClass.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (recoveredValue3) , ('.oil').
    recoveredValue5 := (self) oilDescription.
    recoveredValue6 := (self) makeOILHSource.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue0) fileName: (recoveredValue4) description: (recoveredValue5) userReference: (recoveredValue6) sourceCollector: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) osCodeStorageHandle.
    recoveredValue12 := (recoveredValue11) getAdditionalCodeSnippet: ('SCOOPIXOIL').
    (recoveredValue10) oilSource: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20282330; bytecode file offset 0xb7ec08"
!SGMakeProjectNode methodsFor: 'recovered'!
globalStructHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := varstructFilename.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 |
    recoveredBlock6Value0 := (self) graph.
    recoveredBlock6Value1 := (self) graph.
    recoveredBlock6Value2 := SGCgCCodeSettings.
    recoveredBlock6Value3 := (recoveredBlock6Value2) filenameVarstructKey.
    recoveredBlock6Value4 := (self) componentInfo.
    recoveredBlock6Value5 := (recoveredBlock6Value1) longFileNameKey: (recoveredBlock6Value3) componentInfo: (recoveredBlock6Value4).
    recoveredBlock6Value6 := (self) graph.
    recoveredBlock6Value7 := (recoveredBlock6Value6) fileNames.
    recoveredBlock6Value8 := (self) graph.
    recoveredBlock6Value9 := (recoveredBlock6Value8) useLongNames.
    recoveredBlock6Value10 := (recoveredBlock6Value0) uniqueStringCharsFor: (recoveredBlock6Value5) dict: (recoveredBlock6Value7) max7: (recoveredBlock6Value9).
    recoveredBlock6Value11 := recoveredBlock6Value10.
    varstructFilename := recoveredBlock6Value11.
    recoveredBlock6Value10
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := varstructFilename.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20282a10; bytecode file offset 0xb7f2f0"
!SGMakeProjectNode methodsFor: 'recovered'!
dependentARSWComponent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e15a0Arg1 | 
    | block280e15a0Value0 block280e15a0Value1 |
    block280e15a0Value0 := block280e15a0Arg1.
    block280e15a0Value1 := (block280e15a0Value0) isARSWComponentNode.
    block280e15a0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := (self) sgClass.
    recoveredBlock13Value1 := (recoveredBlock13Value0) label.
    recoveredBlock13Value2 := ('Missing SWcomponent in project "') , (recoveredBlock13Value1).
    recoveredBlock13Value3 := (recoveredBlock13Value2) , ('"').
    recoveredBlock13Value4 := (self) componentSource.
    recoveredBlock13Value5 := (self) fatalError: (recoveredBlock13Value3) with: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202944ec; bytecode file offset 0xb90dc8"
!SGMakeProjectNode methodsFor: 'recovered'!
updateProjectIdentifier
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Date.
    recoveredValue1 := (recoveredValue0) today.
    recoveredValue2 := Date.
    recoveredValue3 := (recoveredValue2) newDay: (1) monthIndex: (4) year: (1996).
    recoveredValue4 := (recoveredValue1) subtractDate: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (2) raisedToInteger: (21).
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := OSCall.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := (recoveredValue9) getTickCount.
    recoveredValue11 := (recoveredValue7) + (recoveredValue10).
    recoveredValue12 := (recoveredValue11) asUInt32.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (self) updateProjectIdentifier: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x202c4f3c; bytecode file offset 0xbc1810"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeInterfaceGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super analyzeInterfaceGeneration.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSourceTimeStamp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) setGenerateInterface.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestOSPrereqPropagatedTimeStamp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) setGenerateInterface.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20460314; bytecode file offset 0xd5cc10"
!SGMakeProjectNode methodsFor: 'recovered'!
analyzeOSCodeGeneration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Call_69061'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) enableMonitoring.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 60].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack3 := self.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) osSourceTimeStamp.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack4 := self.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack4 := (recoveredBlock25Stack4) moduleGenerateTimeStamp.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) checkModelMoreRecentTimeStamp: (recoveredBlock25Stack3) generationTimeStamp: (recoveredBlock25Stack4).
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 56] ifFalse: [recoveredBlock25PC := 60].
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) mustGenerateModuleInitCode.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSourceTimeStamp.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) osGenerateTimeStamp.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) setGenerateOSCode.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestOSPrereqPropagatedTimeStamp.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) osGenerateTimeStamp.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) setGenerateOSCode.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) osCodeStorageHandle.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptions.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleGenOptionChange: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) setGenerateOSCode.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

