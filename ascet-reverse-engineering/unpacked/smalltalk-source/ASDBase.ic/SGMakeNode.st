"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000440; bytecode file offset 0x8ffcfc"
!SGMakeNode methodsFor: 'recovered'!
updateInterpolationMappingChecksum
    ^self
! !

"ASDBase.ic method 0x20001808; bytecode file offset 0x8ffcfc"
!SGMakeNode methodsFor: 'recovered'!
checkGeneralRestrictions
    ^self
! !

"ASDBase.ic method 0x20001850; bytecode file offset 0x8ffcfc"
!SGMakeNode methodsFor: 'recovered'!
analyzeSCOOPIXGeneration
    ^self
! !

"ASDBase.ic method 0x20003a70; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
resolveSoftPrerequisites: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003ba0; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
storeInitInstCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004570; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
allInitSourceObjects: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200048b8; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
toBeProcessedExternalSOs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200050d0; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
toBeCheckedDependentParameterDatasets: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005388; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
unresolvedSoftPrerequisites: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200054e8; bytecode file offset 0x90206c"
!SGMakeNode methodsFor: 'recovered'!
storeAdditionalFiles: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005978; bytecode file offset 0x902744"
!SGMakeNode methodsFor: 'recovered'!
resolveSoftPrerequisites: recoveredArg1 monitorStream: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20007cac; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
analyzePhysical
    | recoveredValue0 |
    recoveredValue0 := (self) analyze.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200085f4; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
analyzeQuantPhys
    | recoveredValue0 |
    recoveredValue0 := (self) analyze.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200098d8; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
implTypesTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000992c; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
module
    | recoveredValue0 |
    recoveredValue0 := (self) makeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a7f0; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
isComponentNotInstantiated
    | recoveredValue0 |
    recoveredValue0 := (self) isMissingDataConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b3d8; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
setComponentNotInstantiated
    | recoveredValue0 |
    recoveredValue0 := (self) setMissingDataConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b6e4; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
needsFileOut
    | recoveredValue0 |
    recoveredValue0 := (self) forcedUsage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c1f4; bytecode file offset 0x908be4"
!SGMakeNode methodsFor: 'recovered'!
analyzeInteger
    | recoveredValue0 |
    recoveredValue0 := (self) analyze.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cc64; bytecode file offset 0x909658"
!SGMakeNode methodsFor: 'recovered'!
isOSSourceObject: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000e1c0; bytecode file offset 0x90ab8c"
!SGMakeNode methodsFor: 'recovered'!
propagatedRecordTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017288; bytecode file offset 0x92209c"
!SGMakeNode methodsFor: 'recovered'!
toBePreviewedESDLCode
    ^#()
! !

"ASDBase.ic method 0x2001e05c; bytecode file offset 0x92209c"
!SGMakeNode methodsFor: 'recovered'!
autosarStandardReturnTypeLabel
    ^'Std_ReturnType'
! !

"ASDBase.ic method 0x20028494; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
implLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) implLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028af4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
currentProjectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) currentProjectCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029334; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
componentTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) itemTypeLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a234; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
hasControllerCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) isSoftwareDevelopmentMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d824; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
codeGenerationOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeGenerationOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dfc4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) sgClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e454; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) context.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ec34; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
projectComponentKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) projectComponentKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f3f4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
directAccessTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) directAccessTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030644; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
componentIdString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) componentIdString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030ae4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
propagatedMethodTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) methodsTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031f44; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
hasGenericCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) isControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032f44; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
allCompileSOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) collectAllCompiledSOs.
    recoveredValue1 := (recoveredValue0) toBeCompiledSOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033184; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
preprocessorCommands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileStructureStrategy.
    recoveredValue1 := (recoveredValue0) preprocessorCommands.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033574; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
variantKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) variantKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033824; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
latestProjectInfluencesTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) latestProjectInfluencesTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200339e4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
project
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033dc4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
fileStructureStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) fileStructureStrategy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200340e4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
exportImportTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) exportImportTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200345a4; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
datasetKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) datasetKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035064; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) data.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035144; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
preprocessorCommandsNoGlobals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileStructureStrategy.
    recoveredValue1 := (recoveredValue0) preprocessorCommandsNoGlobals.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035684; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
componentKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (recoveredValue0) componentKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036a34; bytecode file offset 0x934580"
!SGMakeNode methodsFor: 'recovered'!
implementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) implementation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038118; bytecode file offset 0x934b68"
!SGMakeNode methodsFor: 'recovered'!
toBeCompiledExternalSOs: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x200382b0; bytecode file offset 0x934b68"
!SGMakeNode methodsFor: 'recovered'!
allScoopIxSOs: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x2003e3e8; bytecode file offset 0x93bf94"
!SGMakeNode methodsFor: 'recovered'!
invalidGenerationTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Infinity.
    recoveredValue1 := (recoveredValue0) plus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eeb8; bytecode file offset 0x93bf94"
!SGMakeNode methodsFor: 'recovered'!
baseFilenameCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgCCodeSettings.
    recoveredValue1 := (recoveredValue0) filenameComponentKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a76c; bytecode file offset 0x947128"
!SGMakeNode methodsFor: 'recovered'!
makeModuleSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := (self) makeModuleSource: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004df58; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
analyzeInitInstCodeGeneration
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ec60; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
setFileOut
    (self) setForcedUsage.
    ^self
! !

"ASDBase.ic method 0x2004fb6c; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
analyzeModuleCodeGeneration
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fcec; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
clearFileOut
    (self) clearForcedUsage.
    ^self
! !

"ASDBase.ic method 0x20050250; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
generatorOptions
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050718; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
analyze
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050778; bytecode file offset 0x94d048"
!SGMakeNode methodsFor: 'recovered'!
additionalPrereqHeaders
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050b70; bytecode file offset 0x94d4ec"
!SGMakeNode methodsFor: 'recovered'!
needsPreGenerateCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) requiresPreGeneration: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051524; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
timeStampNow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeStorageManager.
    recoveredValue2 := (recoveredValue1) timeStampNow.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051790; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) currentProjectCache.
    recoveredValue2 := (recoveredValue1) currentBuildCache.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200519e8; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
fatalException
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredValue2 := (recoveredValue1) fatalException.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051dbc; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
projectHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) projectNode.
    recoveredValue2 := (recoveredValue1) moduleHeaderFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005221c; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
bannerTemplates
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredValue2 := (recoveredValue1) bannerTemplates.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052384; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
osHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) projectNode.
    recoveredValue2 := (recoveredValue1) osHeaderFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200524ec; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredValue2 := (recoveredValue1) buildEnvironmentInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052708; bytecode file offset 0x94f0e0"
!SGMakeNode methodsFor: 'recovered'!
xmlBannerTemplate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredValue2 := (recoveredValue1) xmlBannerTemplate.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20053208; bytecode file offset 0x9505d0"
!SGMakeNode methodsFor: 'recovered'!
expandRecursive: recoveredArg1
    (self) expandRecursive.
    ^self
! !

"ASDBase.ic method 0x200550c8; bytecode file offset 0x952a9c"
!SGMakeNode methodsFor: 'recovered'!
acceptMakeNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) makeNode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a044; bytecode file offset 0x9568f8"
!SGMakeNode methodsFor: 'recovered'!
checkModelMoreRecentTimeStamp: recoveredArg1 generationTimeStamp: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) >= (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cfc0; bytecode file offset 0x9599ac"
!SGMakeNode methodsFor: 'recovered'!
propagatedRecordTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) propagatedRecordTimeStamp: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f130; bytecode file offset 0x95c4f4"
!SGMakeNode methodsFor: 'recovered'!
rteDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) rteDescription: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f608; bytecode file offset 0x95c4f4"
!SGMakeNode methodsFor: 'recovered'!
sixDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) sixDescription: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060548; bytecode file offset 0x95cf04"
!SGMakeNode methodsFor: 'recovered'!
makeModuleRTESource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeModuleSource.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setModuleRTECode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200613fc; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
initHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initFileName.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200615dc; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
internalHeaderFileNameNoExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('H').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061c80; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
externHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externFileName.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061cf8; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
internalHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalHeaderFileNameNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061d34; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
externFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('E').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e24; bytecode file offset 0x95e838"
!SGMakeNode methodsFor: 'recovered'!
fatalMustUseAUTOSARError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) fatalMustUseError: ('controller target, production code generation (Code Generator: "Object Based Controller Implementation") and AUTOSAR OS (Operating System: "RTE-AUTOSAR") when modeling with AUTOSAR components.').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062730; bytecode file offset 0x95f8b0"
!SGMakeNode methodsFor: 'recovered'!
allDependents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardDependents.
    recoveredValue1 := (self) softDependents.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062dac; bytecode file offset 0x95f8b0"
!SGMakeNode methodsFor: 'recovered'!
allPrerequesites
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardPrerequesites.
    recoveredValue1 := (self) softPrerequesites.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065014; bytecode file offset 0x961970"
!SGMakeNode methodsFor: 'recovered'!
touchHandles
    | recoveredValue0 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    (recoveredValue0) touch.
    ^self
! !

"ASDBase.ic method 0x200655b4; bytecode file offset 0x961e78"
!SGMakeNode methodsFor: 'recovered'!
autosarSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredValue2 := (recoveredValue1) currentBuildCache.
    recoveredValue3 := (recoveredValue2) autosarSettings.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20065a64; bytecode file offset 0x963428"
!SGMakeNode methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 |
    recoveredValue0 := generatorSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006772c; bytecode file offset 0x9646f8"
!SGMakeNode methodsFor: 'recovered'!
makeConfig
    | recoveredValue0 |
    recoveredValue0 := makeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068d6c; bytecode file offset 0x965b90"
!SGMakeNode methodsFor: 'recovered'!
hardPrerequesites
    | recoveredValue0 |
    recoveredValue0 := hardPrerequesites.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069960; bytecode file offset 0x966bdc"
!SGMakeNode methodsFor: 'recovered'!
softPrerequesites
    | recoveredValue0 |
    recoveredValue0 := softPrerequesites.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a6cc; bytecode file offset 0x967a18"
!SGMakeNode methodsFor: 'recovered'!
hardDependents
    | recoveredValue0 |
    recoveredValue0 := hardDependents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb20; bytecode file offset 0x96873c"
!SGMakeNode methodsFor: 'recovered'!
softDependents
    | recoveredValue0 |
    recoveredValue0 := softDependents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c45c; bytecode file offset 0x9692b0"
!SGMakeNode methodsFor: 'recovered'!
graph
    | recoveredValue0 |
    recoveredValue0 := graph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d030; bytecode file offset 0x969c04"
!SGMakeNode methodsFor: 'recovered'!
indegree
    | recoveredValue0 |
    recoveredValue0 := indegree.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d654; bytecode file offset 0x96a390"
!SGMakeNode methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dea8; bytecode file offset 0x96a9dc"
!SGMakeNode methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := flags.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e4a4; bytecode file offset 0x96af48"
!SGMakeNode methodsFor: 'recovered'!
sourceTimeStamps
    | recoveredValue0 |
    recoveredValue0 := sourceTimeStamps.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f4b0; bytecode file offset 0x96bf7c"
!SGMakeNode methodsFor: 'recovered'!
mdlClassInterface
    | recoveredValue0 |
    recoveredValue0 := mdlClassInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f700; bytecode file offset 0x96c1f4"
!SGMakeNode methodsFor: 'recovered'!
moduleCodeStorageHandle
    | recoveredValue0 |
    recoveredValue0 := moduleCodeStorageHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071a74; bytecode file offset 0x96e578"
!SGMakeNode methodsFor: 'recovered'!
loadableTimeStamp
    ^0
! !

"ASDBase.ic method 0x20071ac4; bytecode file offset 0x96e578"
!SGMakeNode methodsFor: 'recovered'!
moduleSCOOPIXTimeStamp
    ^0
! !

"ASDBase.ic method 0x200723b0; bytecode file offset 0x96ee04"
!SGMakeNode methodsFor: 'recovered'!
bitExpanded
    ^1
! !

"ASDBase.ic method 0x200728d0; bytecode file offset 0x96f1c4"
!SGMakeNode methodsFor: 'recovered'!
bitActive
    ^2
! !

"ASDBase.ic method 0x20072a00; bytecode file offset 0x96f3cc"
!SGMakeNode methodsFor: 'recovered'!
bitLogicModel
    ^3
! !

"ASDBase.ic method 0x20072bd8; bytecode file offset 0x96f6d4"
!SGMakeNode methodsFor: 'recovered'!
bitInitCode
    ^4
! !

"ASDBase.ic method 0x20072e60; bytecode file offset 0x96f7ac"
!SGMakeNode methodsFor: 'recovered'!
bitModuleCode
    ^5
! !

"ASDBase.ic method 0x20072fc8; bytecode file offset 0x96f8bc"
!SGMakeNode methodsFor: 'recovered'!
bitOSCode
    ^6
! !

"ASDBase.ic method 0x200731e8; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
projectIdentifier
    ^nil
! !

"ASDBase.ic method 0x200731f0; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
getMapFile
    ^nil
! !

"ASDBase.ic method 0x200733e8; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
externalCC
    ^nil
! !

"ASDBase.ic method 0x200733f0; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
moduleHeaderFileName
    ^nil
! !

"ASDBase.ic method 0x20073b98; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
mcaMappingInfo
    ^nil
! !

"ASDBase.ic method 0x20073fd0; bytecode file offset 0x970b34"
!SGMakeNode methodsFor: 'recovered'!
moduleCode
    ^nil
! !

"ASDBase.ic method 0x200742fc; bytecode file offset 0x970bc8"
!SGMakeNode methodsFor: 'recovered'!
bitForceUsage
    ^7
! !

"ASDBase.ic method 0x200744f4; bytecode file offset 0x970de8"
!SGMakeNode methodsFor: 'recovered'!
bitCompilePermission
    ^8
! !

"ASDBase.ic method 0x200745a4; bytecode file offset 0x970e78"
!SGMakeNode methodsFor: 'recovered'!
bitScoopIX
    ^9
! !

"ASDBase.ic method 0x200745fc; bytecode file offset 0x970f98"
!SGMakeNode methodsFor: 'recovered'!
bitInterface
    ^10
! !

"ASDBase.ic method 0x20074730; bytecode file offset 0x97102c"
!SGMakeNode methodsFor: 'recovered'!
bitPID
    ^11
! !

"ASDBase.ic method 0x200747b8; bytecode file offset 0x9710d4"
!SGMakeNode methodsFor: 'recovered'!
bitMissingDataConfig
    ^12
! !

"ASDBase.ic method 0x20074870; bytecode file offset 0x971134"
!SGMakeNode methodsFor: 'recovered'!
bitExImportCheck
    ^13
! !

"ASDBase.ic method 0x20075d94; bytecode file offset 0x9757c8"
!SGMakeNode methodsFor: 'recovered'!
reportOSErrors
    ^true
! !

"ASDBase.ic method 0x2007747c; bytecode file offset 0x9757c8"
!SGMakeNode methodsFor: 'recovered'!
containsUsefulCode
    ^true
! !

"ASDBase.ic method 0x2007840c; bytecode file offset 0x9757c8"
!SGMakeNode methodsFor: 'recovered'!
singleInstance
    ^true
! !

"ASDBase.ic method 0x2007950c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsCompilePermissionCheck
    ^false
! !

"ASDBase.ic method 0x20079694; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARNode
    ^false
! !

"ASDBase.ic method 0x20079a44; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasInlineHeaderSource
    ^false
! !

"ASDBase.ic method 0x20079d6c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARSRInterfaceNode
    ^false
! !

"ASDBase.ic method 0x20079e54; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateECCOCode
    ^false
! !

"ASDBase.ic method 0x20079e84; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isModuleNode
    ^false
! !

"ASDBase.ic method 0x2007a794; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsToCompileInitInstCode
    ^false
! !

"ASDBase.ic method 0x2007a8b4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsToCompileModuleCode
    ^false
! !

"ASDBase.ic method 0x2007a944; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isEnumNode
    ^false
! !

"ASDBase.ic method 0x2007a9fc; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isHWCModuleNode
    ^false
! !

"ASDBase.ic method 0x2007ab3c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateOSCode
    ^false
! !

"ASDBase.ic method 0x2007abac; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasDirectGetAccess
    ^false
! !

"ASDBase.ic method 0x2007adf4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARSWComponentNode
    ^false
! !

"ASDBase.ic method 0x2007ae4c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsEmbeddedGenerateECCOInitCode
    ^false
! !

"ASDBase.ic method 0x2007b13c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isClassNode
    ^false
! !

"ASDBase.ic method 0x2007b304; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasExternalCSource
    ^false
! !

"ASDBase.ic method 0x2007b414; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isMakeProjectNode
    ^false
! !

"ASDBase.ic method 0x2007b76c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsCheckDependentParameter
    ^false
! !

"ASDBase.ic method 0x2007b8dc; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isRecordNode
    ^false
! !

"ASDBase.ic method 0x2007be54; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasSeparateInitCode
    ^false
! !

"ASDBase.ic method 0x2007c12c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateInitInstCode
    ^false
! !

"ASDBase.ic method 0x2007c87c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isUseAscetTypes
    ^false
! !

"ASDBase.ic method 0x2007cce4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isUseHeaderGlobal
    ^false
! !

"ASDBase.ic method 0x2007d9d4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARApplicationErrorNode
    ^false
! !

"ASDBase.ic method 0x2007dfdc; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasInternalHeaderSource
    ^false
! !

"ASDBase.ic method 0x2007e69c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isCTStructureNode
    ^false
! !

"ASDBase.ic method 0x2007e974; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isMakeComponentNode
    ^false
! !

"ASDBase.ic method 0x2007ea8c; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARNVDataInterface
    ^false
! !

"ASDBase.ic method 0x2007eabc; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isProjectNode
    ^false
! !

"ASDBase.ic method 0x2007eb74; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isARModeGroupNode
    ^false
! !

"ASDBase.ic method 0x2007ee24; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateECCOInitCode
    ^false
! !

"ASDBase.ic method 0x2007eeec; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsToCompileOSCode
    ^false
! !

"ASDBase.ic method 0x2007f2d4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
isASDModuleNode
    ^false
! !

"ASDBase.ic method 0x2007f4ec; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
hasExternalCode
    ^false
! !

"ASDBase.ic method 0x2007f6d4; bytecode file offset 0x97c330"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateECCOScoopIX
    ^false
! !

"ASDBase.ic method 0x200813d8; bytecode file offset 0x97dd1c"
!SGMakeNode methodsFor: 'recovered'!
invalidModelTimeStamp
    ^-1
! !

"ASDBase.ic method 0x20081438; bytecode file offset 0x97dd1c"
!SGMakeNode methodsFor: 'recovered'!
latestOSPrereqPropagatedTimeStamp
    ^-1
! !

"ASDBase.ic method 0x20083228; bytecode file offset 0x97fadc"
!SGMakeNode methodsFor: 'recovered'!
indegree: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    indegree := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083b58; bytecode file offset 0x9804b8"
!SGMakeNode methodsFor: 'recovered'!
toBeCompiledSOs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) visitMakeNode: (self).
    ^self
! !

"ASDBase.ic method 0x2008b914; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateLogicModel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLogicModel.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b924; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
isMissingDataConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMissingDataConfig.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b944; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
requiresExImportCheck
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExImportCheck.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b964; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
forcedUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitForceUsage.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b974; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateScoopIX
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitScoopIX.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b984; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
isActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitActive.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b994; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInterface.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b9a4; bytecode file offset 0x988260"
!SGMakeNode methodsFor: 'recovered'!
isExpanded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExpanded.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d6cc; bytecode file offset 0x989fc0"
!SGMakeNode methodsFor: 'recovered'!
initFlags
    (self) flags: (0).
    ^self
! !

"ASDBase.ic method 0x2008f574; bytecode file offset 0x98c228"
!SGMakeNode methodsFor: 'recovered'!
componentManagerSource
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (self) graph.
    recoveredValue2 := (recoveredValue1) context.
    recoveredValue3 := (recoveredValue0) componentManagerSource: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f70c; bytecode file offset 0x98c228"
!SGMakeNode methodsFor: 'recovered'!
componentSource
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) makeConfig.
    recoveredValue1 := (self) graph.
    recoveredValue2 := (recoveredValue1) context.
    recoveredValue3 := (recoveredValue0) componentSource: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200976e4; bytecode file offset 0x995850"
!SGMakeNode methodsFor: 'recovered'!
addSoftDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) softDependents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098214; bytecode file offset 0x995850"
!SGMakeNode methodsFor: 'recovered'!
storeEHooksCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) storeEHooksCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098894; bytecode file offset 0x995850"
!SGMakeNode methodsFor: 'recovered'!
addHardDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hardDependents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0bf4; bytecode file offset 0x99d4b8"
!SGMakeNode methodsFor: 'recovered'!
collectAllCompiledSOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) with: (self).
    recoveredValue3 := (recoveredValue0) collectAllCompiledSOs: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a1bb4; bytecode file offset 0x99e474"
!SGMakeNode methodsFor: 'recovered'!
initCodeStorageHandles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeStorageManager.
    (recoveredValue1) anyMakeNode: (self).
    ^self
! !

"ASDBase.ic method 0x200a23bc; bytecode file offset 0x99ed48"
!SGMakeNode methodsFor: 'recovered'!
makeModuleSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMakeSource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createModule: (self) codeContainer: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa004; bytecode file offset 0x9a69f0"
!SGMakeNode methodsFor: 'recovered'!
sixDescription: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) graph.
    recoveredValue2 := (recoveredValue1) sixDescriptionExtension.
    recoveredValue3 := (self) descriptionComponent: (recoveredValue0) category: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aa068; bytecode file offset 0x9a69f0"
!SGMakeNode methodsFor: 'recovered'!
rteDescription: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) graph.
    recoveredValue2 := (recoveredValue1) rteDescriptionExtension.
    recoveredValue3 := (self) descriptionComponent: (recoveredValue0) category: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae318; bytecode file offset 0x9ab034"
!SGMakeNode methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fatalException.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) signalWith: (recoveredValue1) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae588; bytecode file offset 0x9ab034"
!SGMakeNode methodsFor: 'recovered'!
addIfNew: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) addIfNew: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae8b0; bytecode file offset 0x9ab1ac"
!SGMakeNode methodsFor: 'recovered'!
descriptionComponent: recoveredArg1 category: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) errorHandler.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) descriptionComponent: (recoveredValue2) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b2b38; bytecode file offset 0x9af4bc"
!SGMakeNode methodsFor: 'recovered'!
additionalFilesDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) descriptionComponent: (recoveredValue1) category: ('Additional files').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4234; bytecode file offset 0x9b0bd0"
!SGMakeNode methodsFor: 'recovered'!
longFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (self) baseFilenameCategory.
    recoveredValue2 := (self) componentInfo.
    recoveredValue3 := (recoveredValue0) longFileNameKey: (recoveredValue1) componentInfo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4bc8; bytecode file offset 0x9b1484"
!SGMakeNode methodsFor: 'recovered'!
resetInitSourceTimeStamp
    | recoveredValue0 |
    recoveredValue0 := (self) sourceTimeStamps.
    (recoveredValue0) at: (2) put: (nil).
    ^self
! !

"ASDBase.ic method 0x200bd234; bytecode file offset 0x9b9b80"
!SGMakeNode methodsFor: 'recovered'!
fatalError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fatalException.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) signalWith: (recoveredValue1) with: ('').
    ^self
! !

"ASDBase.ic method 0x200bdf1c; bytecode file offset 0x9bb178"
!SGMakeNode methodsFor: 'recovered'!
generatorSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatorSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9b8; bytecode file offset 0x9bc0b4"
!SGMakeNode methodsFor: 'recovered'!
makeConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c08ac; bytecode file offset 0x9bd228"
!SGMakeNode methodsFor: 'recovered'!
hardPrerequesites: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hardPrerequesites := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1398; bytecode file offset 0x9bdf14"
!SGMakeNode methodsFor: 'recovered'!
softPrerequesites: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    softPrerequesites := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c84; bytecode file offset 0x9beac8"
!SGMakeNode methodsFor: 'recovered'!
hardDependents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hardDependents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23b0; bytecode file offset 0x9bf474"
!SGMakeNode methodsFor: 'recovered'!
softDependents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    softDependents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3424; bytecode file offset 0x9bfde0"
!SGMakeNode methodsFor: 'recovered'!
graph: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graph := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f3c; bytecode file offset 0x9c0bf0"
!SGMakeNode methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4870; bytecode file offset 0x9c11bc"
!SGMakeNode methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    flags := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4aa4; bytecode file offset 0x9c16b0"
!SGMakeNode methodsFor: 'recovered'!
sourceTimeStamps: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceTimeStamps := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5128; bytecode file offset 0x9c1afc"
!SGMakeNode methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c581c; bytecode file offset 0x9c22c8"
!SGMakeNode methodsFor: 'recovered'!
moduleCodeBaseFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    moduleCodeBaseFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a28; bytecode file offset 0x9c25bc"
!SGMakeNode methodsFor: 'recovered'!
mdlClassInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClassInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f30; bytecode file offset 0x9c2804"
!SGMakeNode methodsFor: 'recovered'!
moduleCodeStorageHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    moduleCodeStorageHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2b90; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
clearForcedUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitForceUsage.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2ba8; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
clearExpanded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitExpanded.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2bc0; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
clearActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitActive.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2bd8; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setMissingDataConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitMissingDataConfig.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2bf0; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
checkExImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitExImportCheck.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c08; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setGenerateScoopIX
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitScoopIX.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c20; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setGenerateModuleCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitModuleCode.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c38; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setExpanded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitExpanded.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c50; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setForcedUsage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitForceUsage.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c68; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
clearCheckedCompilePermission
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitCompilePermission.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c80; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setGenerateLogicModel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitLogicModel.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2c98; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setCheckedCompilePermission
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitCompilePermission.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2cb0; bytecode file offset 0x9cf574"
!SGMakeNode methodsFor: 'recovered'!
setActive
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitActive.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d3298; bytecode file offset 0x9cfc24"
!SGMakeNode methodsFor: 'recovered'!
initInstDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) initDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d32d0; bytecode file offset 0x9cfc24"
!SGMakeNode methodsFor: 'recovered'!
moduleGenericDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) moduleGenericDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d3308; bytecode file offset 0x9cfc24"
!SGMakeNode methodsFor: 'recovered'!
moduleDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) moduleDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d3340; bytecode file offset 0x9cfc24"
!SGMakeNode methodsFor: 'recovered'!
externDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) moduleLabel.
    recoveredValue2 := (self) graph.
    recoveredValue3 := (recoveredValue2) externDescriptionExtension.
    recoveredValue4 := (self) descriptionComponent: (recoveredValue1) category: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d3fc0; bytecode file offset 0x9d090c"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateLogicModel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateLogicModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setGenerateLogicModel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200d3ff0; bytecode file offset 0x9d090c"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateScoopIX
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setGenerateScoopIX.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200d4010; bytecode file offset 0x9d090c"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateInterface
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setGenerateInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200d4040; bytecode file offset 0x9d090c"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateModuleCode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setGenerateModuleCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200dcf7c; bytecode file offset 0x9d983c"
!SGMakeNode methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) componentSource.
    recoveredValue4 := (recoveredValue0) errorNo: (recoveredValue1) with: (recoveredValue2) source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200de9c4; bytecode file offset 0x9db320"
!SGMakeNode methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fatalException.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) signalWith: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e2a24; bytecode file offset 0x9df430"
!SGMakeNode methodsFor: 'recovered'!
isComponentMakeNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) isClassNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isModuleNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e57e0; bytecode file offset 0x9e20ac"
!SGMakeNode methodsFor: 'recovered'!
implOrClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ead20; bytecode file offset 0x9e7644"
!SGMakeNode methodsFor: 'recovered'!
addHardPrerequesite: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hardPrerequesites.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addHardDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200ead34; bytecode file offset 0x9e7644"
!SGMakeNode methodsFor: 'recovered'!
addSoftPrerequesite: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) softPrerequesites.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) addSoftDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200fcaa0; bytecode file offset 0x9f9360"
!SGMakeNode methodsFor: 'recovered'!
allCompiledSOs: recoveredArg1
    | recoveredValue0 |
    (self) setFileOut.
    recoveredValue0 := recoveredArg1.
    (self) toBeCompiledSOs: (recoveredValue0).
    (self) clearFileOut.
    ^self
! !

"ASDBase.ic method 0x20109708; bytecode file offset 0xa05fc8"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateModuleInitCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setGenerateModuleCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) setGenerateInitInstCode.
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

"ASDBase.ic method 0x20110e90; bytecode file offset 0xa0d750"
!SGMakeNode methodsFor: 'recovered'!
fatalErrorInstanceShouldBeUsedIn: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (self) componentTypeLabel.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) errorNo: (51) with: (recoveredValue1) with: (recoveredValue2) source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20110eb4; bytecode file offset 0xa0d774"
!SGMakeNode methodsFor: 'recovered'!
errorInstanceMustNotBeUsedIn: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (self) componentTypeLabel.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) errorNo: (52) with: (recoveredValue1) with: (recoveredValue2) source: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201186d4; bytecode file offset 0xa14f9c"
!SGMakeNode methodsFor: 'recovered'!
setGenerateInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) flags.
    recoveredValue1 := (self) bitInterface.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) flags: (recoveredValue2).
    (self) mdlClassInterface: (nil).
    ^self
! !

"ASDBase.ic method 0x20118960; bytecode file offset 0xa1525c"
!SGMakeNode methodsFor: 'recovered'!
needsGenerateModuleCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) needsFileOut.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := flags.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitModuleCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBitSet: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a57c; bytecode file offset 0xa16e40"
!SGMakeNode methodsFor: 'recovered'!
elementChangeTimeStamp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) singleInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleSourceTimeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) initInstSourceTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011bdd8; bytecode file offset 0xa186a4"
!SGMakeNode methodsFor: 'recovered'!
componentErrLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) itemTypeLabel.
    recoveredValue2 := (recoveredValue1) , (' ').
    recoveredValue3 := (self) sgClass.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := (recoveredValue4) asQuotation.
    recoveredValue6 := (recoveredValue2) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011d644; bytecode file offset 0xa19f04"
!SGMakeNode methodsFor: 'recovered'!
interfaceGenerateOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlClassInterface.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generatorOptions.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20123e84; bytecode file offset 0xa20748"
!SGMakeNode methodsFor: 'recovered'!
addInstance: recoveredArg1 ifNew: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) componentInstances: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (self) addIfNew: (recoveredValue4) to: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20124738; bytecode file offset 0xa21000"
!SGMakeNode methodsFor: 'recovered'!
toBeCompiledSOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGANSICSourceCollector.
    recoveredValue1 := (self) fileStructureStrategy.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) toBeCompiledSOs: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) toBeCompiledSOs.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012d6a0; bytecode file offset 0xa29f68"
!SGMakeNode methodsFor: 'recovered'!
setGenerateInitInstCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentNotInstantiated.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := (recoveredStack1) flags.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitInitCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) setBit: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) flags: (recoveredStack1).
            recoveredPC := 16.
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

"ASDBase.ic method 0x20130088; bytecode file offset 0xa2c97c"
!SGMakeNode methodsFor: 'recovered'!
allIntpolHeader
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^#()
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) allIntpolHeader.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201300a0; bytecode file offset 0xa2c97c"
!SGMakeNode methodsFor: 'recovered'!
allIntpol
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^#()
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) allIntpol.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20130120; bytecode file offset 0xa2ca44"
!SGMakeNode methodsFor: 'recovered'!
interfaceGenerateTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlClassInterface.
    recoveredValue1 := [
    ^0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) generateTimeStamp.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013679c; bytecode file offset 0xa330a8"
!SGMakeNode methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) fatalException.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    (recoveredValue0) signalWithArguments: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2013e1b8; bytecode file offset 0xa3aa94"
!SGMakeNode methodsFor: 'recovered'!
initFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasControllerCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'I'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013e1d0; bytecode file offset 0xa3aa94"
!SGMakeNode methodsFor: 'recovered'!
moduleFileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasControllerCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeBaseFileName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleCodeBaseFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'M'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014671c; bytecode file offset 0xa42fe8"
!SGMakeNode methodsFor: 'recovered'!
fatalMustUseError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , (' when using "').
    recoveredValue3 := (self) componentTypeLabel.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('" modeling items').
    (recoveredValue0) fatalMustUseError: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20158f80; bytecode file offset 0xa5584c"
!SGMakeNode methodsFor: 'recovered'!
allCheckDependentParameterDatasets
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) setForcedUsage.
    recoveredValue0 := (self) graph.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) with: (self).
    recoveredValue3 := (recoveredValue0) toBeCheckedDependentParameterDatasets: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    (self) clearForcedUsage.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015d9e4; bytecode file offset 0xa5a2a4"
!SGMakeNode methodsFor: 'recovered'!
moduleCodeBaseFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := moduleCodeBaseFileName.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) fileName.
    recoveredBlock6Value1 := (self) moduleCodeBaseFileName: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := moduleCodeBaseFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201600ac; bytecode file offset 0xa5c974"
!SGMakeNode methodsFor: 'recovered'!
analyzeController
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARNode.
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
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) fatalMustUseAUTOSARError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) analyzeInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201682dc; bytecode file offset 0xa64bb8"
!SGMakeNode methodsFor: 'recovered'!
intpolHeaderCheckSum: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) moduleCodeStorageHandle.
    recoveredValue1 := [
    ^''
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) intpolHeaderCheckSum: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20172670; bytecode file offset 0xa6ef7c"
!SGMakeNode methodsFor: 'recovered'!
checkPermissionToLink
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
            recoveredStack0 := (recoveredStack0) isExecute.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Need execute permission to link/execute code for: '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
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

"ASDBase.ic method 0x20172690; bytecode file offset 0xa6ef7c"
!SGMakeNode methodsFor: 'recovered'!
checkPermissionToView
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
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Need read permission to view generated code for: '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
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

"ASDBase.ic method 0x201726b0; bytecode file offset 0xa6ef7c"
!SGMakeNode methodsFor: 'recovered'!
checkPermissionToLoad
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
            recoveredStack0 := (recoveredStack0) isExecute.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Need execute permission to load/execute code for: '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
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

"ASDBase.ic method 0x2017fa34; bytecode file offset 0xa7c2f8"
!SGMakeNode methodsFor: 'recovered'!
fileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileName.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) graph.
    recoveredBlock6Value1 := (recoveredBlock6Value0) uniqueFileNameFor: (self).
    recoveredBlock6Value2 := (self) fileName: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := fileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20198f4c; bytecode file offset 0xa9581c"
!SGMakeNode methodsFor: 'recovered'!
allGenericSourceObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGECCOSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    (self) setFileOut.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) anyMakeNode: (self).
    (self) clearFileOut.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201a6734; bytecode file offset 0xaa3000"
!SGMakeNode methodsFor: 'recovered'!
storeARXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) docFragmentList.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) mdlClassInterface.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) docFragmentList: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) moduleCodeStorageHandle.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) storeARXML: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201b53f0; bytecode file offset 0xab1cc4"
!SGMakeNode methodsFor: 'recovered'!
interfaceGenOptionChange: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^true
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) codeGenerationOptions.
    recoveredValue4 := (recoveredValue2) equalToMdlInterfaceRelevantOption: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ccbb4; bytecode file offset 0xac947c"
!SGMakeNode methodsFor: 'recovered'!
storeModuleCode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) moduleCodeStorageHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) storeModuleGenericCode: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) moduleCodeStorageHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) storeModuleCode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updateInterpolationMappingChecksum.
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

"ASDBase.ic method 0x201d9978; bytecode file offset 0xad624c"
!SGMakeNode methodsFor: 'recovered'!
storeMdlClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) mdlClassInterface: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) timeStampNow.
    (recoveredValue1) generateTimeStamp: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) codeGenerationOptions.
    (recoveredValue3) generatorOptions: (recoveredValue4).
    recoveredValue5 := (self) currentBuildCache.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) componentKey.
    (recoveredValue5) storeMdlClassInterface: (recoveredValue6) at: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201ebfc8; bytecode file offset 0xae8898"
!SGMakeNode methodsFor: 'recovered'!
componentInfo
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInfo.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentInfo.
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
            recoveredStack1 := SGWorkspaceCache.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildEnvironmentInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) buildEnvironmentInfo: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1ce4; bytecode file offset 0xaee5b8"
!SGMakeNode methodsFor: 'recovered'!
checkPermissionToCompile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCompilePermissionCheck.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
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
            recoveredStack1 := 'Need read permission to compile code for: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setCheckedCompilePermission.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022003c; bytecode file offset 0xb1c990"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqPropagatedMethodTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) allPrerequesites.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) propagatedMethodTimeStamp.
    recoveredBlock10Value3 := (recoveredBlock10Value0) max: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20220058; bytecode file offset 0xb1c990"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqPropagatedTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) allPrerequesites.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) propagatedTimeStamp.
    recoveredBlock10Value3 := (recoveredBlock10Value0) max: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20220074; bytecode file offset 0xb1c990"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqRecordPropagatedTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) allPrerequesites.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) propagatedRecordTimeStamp.
    recoveredBlock10Value3 := (recoveredBlock10Value0) max: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202200ac; bytecode file offset 0xb1c990"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqPropagatedInterfaceTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) allPrerequesites.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) propagatedInterfaceTimeStamp.
    recoveredBlock10Value3 := (recoveredBlock10Value0) max: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202200c8; bytecode file offset 0xb1c990"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqElementChangeTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) invalidModelTimeStamp.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) allPrerequesites.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) elementChangeTimeStamp.
    recoveredBlock10Value3 := (recoveredBlock10Value0) max: (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20220108; bytecode file offset 0xb1c9dc"
!SGMakeNode methodsFor: 'recovered'!
usedInterpolations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) graph.
    recoveredValue1 := (recoveredValue0) codeManager.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) makeConfig.
    recoveredValue3 := (recoveredValue2) sgClass.
    recoveredValue4 := (recoveredValue3) usedInterpolations.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (self) componentSource.
    recoveredBlock14Value3 := (recoveredBlock14Value0) mappedInterpolation: (recoveredBlock14Value1) source: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue6 := (recoveredValue4) collect: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20228164; bytecode file offset 0xb24a34"
!SGMakeNode methodsFor: 'recovered'!
printOn: recoveredArg1
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
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) module.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '->'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) module.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237fa4; bytecode file offset 0xb3486c"
!SGMakeNode methodsFor: 'recovered'!
needsToBeCompiled: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasCSource.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsFileOut.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentBuildCache.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsToBeCompiled: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) changedInterpolationHeader.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023a9a4; bytecode file offset 0xb37274"
!SGMakeNode methodsFor: 'recovered'!
propagatedInterfaceTimeStamp
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
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
            recoveredStack0 := (recoveredStack0) exportImportTimeStamp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportedVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfig.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationTimeStamp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023c4c4; bytecode file offset 0xb38d98"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateInitInstCode
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
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setGenerateInitInstCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) componentKey.
    recoveredBlock14Value2 := (self) componentKey.
    recoveredBlock14Value3 := (recoveredBlock14Value1) = (recoveredBlock14Value2).
    recoveredBlock14Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) initCodeChanged.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20254500; bytecode file offset 0xb50dd8"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateModuleCodePropagatedForDirectAccess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASDLClass.
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
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mustGenerateModuleInitCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280df20cArg1 | 
    | block280df20cValue0 block280df20cValue1 |
    block280df20cValue0 := block280df20cArg1.
    block280df20cValue1 := (block280df20cValue0) mustGenerateModuleCodePropagatedForDirectAccess.
    block280df20cValue1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282ad4; bytecode file offset 0xb7f3a8"
!SGMakeNode methodsFor: 'recovered'!
markActiveRecursive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            (recoveredStack0) setActive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e15e8Arg1 | 
    | block280e15e8Value0 block280e15e8Value1 |
    block280e15e8Value0 := block280e15e8Arg1.
    block280e15e8Value1 := (block280e15e8Value0) markActiveRecursive.
    block280e15e8Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) softPrerequesites.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:block280e160cArg1 | 
    | block280e160cValue0 block280e160cValue1 |
    block280e160cValue0 := block280e160cArg1.
    block280e160cValue1 := (block280e160cValue0) markActiveRecursive.
    block280e160cValue1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202918d0; bytecode file offset 0xb8e19c"
!SGMakeNode methodsFor: 'recovered'!
moduleSourceTimeStamp
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
            recoveredStack1 := 1.
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
            recoveredStack0 := (recoveredStack0) implOrClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastModuleChange.
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
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) implOrClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) updateApplicationTimeStamp.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastModuleChange.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceTimeStamps.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20296c0c; bytecode file offset 0xb934e4"
!SGMakeNode methodsFor: 'recovered'!
mustGenerateModuleCodePropagatedForCT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustGenerateModuleInitCode.
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
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) mustGenerateModuleInitCode.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardDependents.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:block280e3304Arg1 | 
    | block280e3304Value0 block280e3304Value1 |
    block280e3304Value0 := block280e3304Arg1.
    block280e3304Value1 := (block280e3304Value0) mustGenerateModuleCodePropagatedForCT.
    block280e3304Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029ecf8; bytecode file offset 0xb9b5d0"
!SGMakeNode methodsFor: 'recovered'!
allRecursiveHardPrerequesites
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) hardPrerequesites.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyElement.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ce44c; bytecode file offset 0xbcad20"
!SGMakeNode methodsFor: 'recovered'!
collectRecursiveHardPrerequisites
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlComponentInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) mdlClassInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) allRecursiveHardPrerequesites.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280e5d58Arg1 | 
    | block280e5d58Stack0 block280e5d58Stack1 block280e5d58Stack2 block280e5d58PC block280e5d58Step block280e5d58Done block280e5d58Result |
    block280e5d58Stack0 := self.
    block280e5d58PC := 4.
    block280e5d58Done := false.
    [block280e5d58Done not] whileTrue: [
        block280e5d58Step := block280e5d58PC.
        block280e5d58Step = 4 ifTrue: [
            block280e5d58Stack1 := block280e5d58Arg1.
            block280e5d58PC := 5.
        ].
        block280e5d58Step = 5 ifTrue: [
            block280e5d58Stack1 := (block280e5d58Stack1) mdlClassInterface.
            block280e5d58PC := 6.
        ].
        block280e5d58Step = 6 ifTrue: [
            (block280e5d58Stack1 ~~ nil) ifTrue: [block280e5d58PC := 14] ifFalse: [block280e5d58PC := 10].
        ].
        block280e5d58Step = 10 ifTrue: [
            block280e5d58Stack1 := nil.
            block280e5d58PC := 11.
        ].
        block280e5d58Step = 11 ifTrue: [
            block280e5d58PC := 20.
        ].
        block280e5d58Step = 14 ifTrue: [
            block280e5d58Stack1 := block280e5d58Arg1.
            block280e5d58PC := 15.
        ].
        block280e5d58Step = 15 ifTrue: [
            block280e5d58Stack1 := (block280e5d58Stack1) mdlClassInterface.
            block280e5d58PC := 16.
        ].
        block280e5d58Step = 16 ifTrue: [
            block280e5d58Stack1 := (block280e5d58Stack1) mdlClassType.
            block280e5d58PC := 18.
        ].
        block280e5d58Step = 18 ifTrue: [
            block280e5d58Stack1 := (block280e5d58Stack1) mdlKey.
            block280e5d58PC := 20.
        ].
        block280e5d58Step = 20 ifTrue: [
            block280e5d58Result := block280e5d58Stack1.
            block280e5d58Done := true.
        ].
    ].
    block280e5d58Result
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) hardPrerequisites: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cf8d8; bytecode file offset 0xbcc1c8"
!SGMakeNode methodsFor: 'recovered'!
externalObjectCodeSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGExternalModuleSource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) ignore: (false).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) context.
    (recoveredValue3) context: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) data.
    (recoveredValue5) valueConfig: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) implementation.
    (recoveredValue7) implConfig: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) codeContainer: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := (self) sgClass.
    recoveredValue13 := (recoveredValue12) defaultPublicSpec.
    (recoveredValue11) specification: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) lineNumber: (3).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) setObjCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202d2938; bytecode file offset 0xbcf210"
!SGMakeNode methodsFor: 'recovered'!
latestDependentPropagatedCTBlockTimeStamp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) invalidModelTimeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDependents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280e6244Arg1 | 
    | block280e6244Value0 block280e6244Value1 block280e6244Value2 |
    block280e6244Value0 := block280e6244Arg1.
    block280e6244Value1 := (block280e6244Value0) sgClass.
    block280e6244Value2 := (block280e6244Value1) isCTClass.
    block280e6244Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) moduleSourceTimeStamp.
    recoveredBlock23Value3 := (recoveredBlock23Value0) max: (recoveredBlock23Value2).
    recoveredBlock23Value4 := recoveredBlock23Value3.
    recoveredLocal1 := recoveredBlock23Value4.
    recoveredBlock23Value3
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

"ASDBase.ic method 0x202ecd00; bytecode file offset 0xbe95cc"
!SGMakeNode methodsFor: 'recovered'!
collectAllPrerequisites: recoveredArg1 visited: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsUsefulCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) allPrerequesites.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredArg1.
    recoveredBlock32Value2 := recoveredArg2.
    recoveredBlock32Value3 := (recoveredBlock32Value0) collectAllPrerequisites: (recoveredBlock32Value1) visited: (recoveredBlock32Value2).
    recoveredBlock32Value3
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7940; bytecode file offset 0xbf421c"
!SGMakeNode methodsFor: 'recovered'!
latestPrereqPropagatedDirectAccessTimeStamp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) invalidModelTimeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeMultipleLevelDirectAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
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
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allPrerequesites.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) directAccessTimeStamp.
    recoveredBlock27Value3 := (recoveredBlock27Value0) max: (recoveredBlock27Value2).
    recoveredBlock27Value4 := recoveredBlock27Value3.
    recoveredLocal1 := recoveredBlock27Value4.
    recoveredBlock27Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030c3d8; bytecode file offset 0xc08cbc"
!SGMakeNode methodsFor: 'recovered'!
flagsPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isExpanded.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isExpanded: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) needsGenerateModuleCode.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isGenerateModuleCode: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) needsGenerateInitInstCode.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isGenerateInitInstCode: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) isActive.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isActive: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20313dc4; bytecode file offset 0xc106a0"
!SGMakeNode methodsFor: 'recovered'!
initCodeChanged
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateModuleCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPathObjectBasedController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) sgClass.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isSGOneDCharTable.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) sgClass.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isSGTwoDCharTable.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) sgClass.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isFixed.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 48] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) mustGenerateModuleCode.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20334658; bytecode file offset 0xc30f34"
!SGMakeNode methodsFor: 'recovered'!
checkRecursivelyForInstantiationOfNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) setComponentNotInstantiated.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) setActive.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) checkRecursivelyForInstantiationOfNode: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) softPrerequesites.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := recoveredArg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) checkRecursivelyForInstantiationOfNode: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033a4f8; bytecode file offset 0xc36de4"
!SGMakeNode methodsFor: 'recovered'!
expandRecursive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCancelled.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) graph.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setStep: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) expand.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardPrerequesites.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:block280ed54cArg1 | 
    | block280ed54cValue0 block280ed54cValue1 |
    block280ed54cValue0 := block280ed54cArg1.
    block280ed54cValue1 := (block280ed54cValue0) expandRecursive.
    block280ed54cValue1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) softPrerequesites.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block280ed570Arg1 | 
    | block280ed570Value0 block280ed570Value1 |
    block280ed570Value0 := block280ed570Arg1.
    block280ed570Value1 := (block280ed570Value0) expandRecursive.
    block280ed570Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034414c; bytecode file offset 0xc40a24"
!SGMakeNode methodsFor: 'recovered'!
analyzeInterfaceGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := (recoveredStack1) moduleSourceTimeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
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
            (recoveredStack0) mustGenerateInterface.
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
            recoveredStack1 := (recoveredStack1) directAccessTimeStamp.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) latestPrereqPropagatedInterfaceTimeStamp.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGenerateTimeStamp.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkModelMoreRecentTimeStamp: (recoveredStack1) generationTimeStamp: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGenerateOptions.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGenOptionChange: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) mustGenerateInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20345838; bytecode file offset 0xc42120"
!SGMakeNode methodsFor: 'recovered'!
checkPermissionToTouch: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isWrite.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 57] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 36].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := 'Need write permission to build: '.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) label.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) , (recoveredBlock5Stack3).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            (recoveredBlock5Stack1) fatalError: (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) graph.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) errorHandler.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack2 := 3.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack3 := Array.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) label.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) with: (recoveredBlock5Stack4).
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack4 := 'Lm'.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack5 := nil.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            (recoveredBlock5Stack1) warningNo: (recoveredBlock5Stack2) args: (recoveredBlock5Stack3) category: (recoveredBlock5Stack4) source: (recoveredBlock5Stack5).
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2034c9bc; bytecode file offset 0xc49298"
!SGMakeNode methodsFor: 'recovered'!
initInstSourceTimeStamp
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
            recoveredStack1 := 2.
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
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'EHI_72149'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Date.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) dateAndTimeNowInSeconds.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastInitInstChange.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) updateApplicationTimeStamp.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastInitInstChange.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceTimeStamps.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20372cd0; bytecode file offset 0xc6f5a8"
!SGMakeNode methodsFor: 'recovered'!
touch: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPermissionToTouch: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'TouchingNode'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Touching node'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) startTiming: (recoveredStack1) title: (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock32Value0 |
    recoveredBlock32Value0 := (self) touchHandles.
    recoveredBlock32Value0
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 56] ifFalse: [recoveredBlock41PC := 64].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 58.
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) graph.
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) monitorManager.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack2 := 'TouchingNode'.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) endTiming: (recoveredBlock41Stack2).
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20382820; bytecode file offset 0xc7f10c"
!SGMakeNode methodsFor: 'recovered'!
dependentARSWComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dependentSpecificComponent.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) hardDependents.
    recoveredBlock6Value1 := [:recoveredBlock6Block13Arg1 | 
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 recoveredBlock6Block13Value2 recoveredBlock6Block13Value3 recoveredBlock6Block13Value4 |
    recoveredBlock6Block13Value0 := recoveredBlock6Block13Arg1.
    recoveredBlock6Block13Value1 := (recoveredBlock6Block13Value0) dependentARSWComponent.
    recoveredBlock6Block13Value2 := recoveredBlock6Block13Value1.
    dependentSpecificComponent := recoveredBlock6Block13Value2.
    recoveredBlock6Block13Value3 := [
    | recoveredBlock6Block13Block25Value0 |
    recoveredBlock6Block13Block25Value0 := dependentSpecificComponent.
    ^recoveredBlock6Block13Block25Value0
].
    recoveredBlock6Block13Value4 := (recoveredBlock6Block13Value1) notNil: (recoveredBlock6Block13Value3).
    recoveredBlock6Block13Value4
].
    (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2 := (self) softDependents.
    recoveredBlock6Value3 := [:recoveredBlock6Block42Arg1 | 
    | recoveredBlock6Block42Value0 recoveredBlock6Block42Value1 recoveredBlock6Block42Value2 recoveredBlock6Block42Value3 recoveredBlock6Block42Value4 |
    recoveredBlock6Block42Value0 := recoveredBlock6Block42Arg1.
    recoveredBlock6Block42Value1 := (recoveredBlock6Block42Value0) dependentARSWComponent.
    recoveredBlock6Block42Value2 := recoveredBlock6Block42Value1.
    dependentSpecificComponent := recoveredBlock6Block42Value2.
    recoveredBlock6Block42Value3 := [
    | recoveredBlock6Block42Block53Value0 |
    recoveredBlock6Block42Block53Value0 := dependentSpecificComponent.
    ^recoveredBlock6Block42Block53Value0
].
    recoveredBlock6Block42Value4 := (recoveredBlock6Block42Value1) notNil: (recoveredBlock6Block42Value3).
    recoveredBlock6Block42Value4
].
    recoveredBlock6Value4 := (recoveredBlock6Value2) do: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := dependentSpecificComponent.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20382840; bytecode file offset 0xc7f10c"
!SGMakeNode methodsFor: 'recovered'!
dependentASDModule
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dependentSpecificComponent.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) hardDependents.
    recoveredBlock6Value1 := [:recoveredBlock6Block13Arg1 | 
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 recoveredBlock6Block13Value2 recoveredBlock6Block13Value3 recoveredBlock6Block13Value4 |
    recoveredBlock6Block13Value0 := recoveredBlock6Block13Arg1.
    recoveredBlock6Block13Value1 := (recoveredBlock6Block13Value0) dependentASDModule.
    recoveredBlock6Block13Value2 := recoveredBlock6Block13Value1.
    dependentSpecificComponent := recoveredBlock6Block13Value2.
    recoveredBlock6Block13Value3 := [
    | recoveredBlock6Block13Block25Value0 |
    recoveredBlock6Block13Block25Value0 := dependentSpecificComponent.
    ^recoveredBlock6Block13Block25Value0
].
    recoveredBlock6Block13Value4 := (recoveredBlock6Block13Value1) notNil: (recoveredBlock6Block13Value3).
    recoveredBlock6Block13Value4
].
    (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2 := (self) softDependents.
    recoveredBlock6Value3 := [:recoveredBlock6Block42Arg1 | 
    | recoveredBlock6Block42Value0 recoveredBlock6Block42Value1 recoveredBlock6Block42Value2 recoveredBlock6Block42Value3 recoveredBlock6Block42Value4 |
    recoveredBlock6Block42Value0 := recoveredBlock6Block42Arg1.
    recoveredBlock6Block42Value1 := (recoveredBlock6Block42Value0) dependentASDModule.
    recoveredBlock6Block42Value2 := recoveredBlock6Block42Value1.
    dependentSpecificComponent := recoveredBlock6Block42Value2.
    recoveredBlock6Block42Value3 := [
    | recoveredBlock6Block42Block53Value0 |
    recoveredBlock6Block42Block53Value0 := dependentSpecificComponent.
    ^recoveredBlock6Block42Block53Value0
].
    recoveredBlock6Block42Value4 := (recoveredBlock6Block42Value1) notNil: (recoveredBlock6Block42Value3).
    recoveredBlock6Block42Value4
].
    recoveredBlock6Value4 := (recoveredBlock6Value2) do: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := dependentSpecificComponent.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203bd050; bytecode file offset 0xcb9934"
!SGMakeNode methodsFor: 'recovered'!
changedInterpolationHeader
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolationForHeader.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) identifier.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) identifier.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) intpolHeaderCheckSum: (recoveredBlock25Stack3).
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) headerCheckSum.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) ~= (recoveredBlock25Stack3).
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 54] ifFalse: [recoveredBlock25PC := 57].
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack1 := true.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) allIntpolHeader.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredLocal2.
    recoveredBlock63Value1 := recoveredBlock63Arg1.
    recoveredBlock63Value2 := (recoveredBlock63Value0) includes: (recoveredBlock63Value1).
    recoveredBlock63Value3 := (recoveredBlock63Value2) not.
    recoveredBlock63Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1ed4; bytecode file offset 0xcbe7bc"
!SGMakeNode methodsFor: 'recovered'!
doSoftPrerequisiteResolutionFor: recoveredArg1 monitorStream: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := (self) graph.
    recoveredBlock7Value1 := (recoveredBlock7Value0) nodes.
    recoveredBlock7Value2 := [:recoveredBlock7Block16Arg1 | 
    | recoveredBlock7Block16Value0 recoveredBlock7Block16Value1 recoveredBlock7Block16Value2 recoveredBlock7Block16Value3 |
    recoveredBlock7Block16Value0 := recoveredBlock7Arg1.
    recoveredBlock7Block16Value1 := recoveredBlock7Block16Arg1.
    recoveredBlock7Block16Value2 := (recoveredBlock7Block16Value1) makeConfig.
    recoveredBlock7Block16Value3 := (recoveredBlock7Block16Value0) match: (recoveredBlock7Block16Value2).
    recoveredBlock7Block16Value3
].
    recoveredBlock7Value3 := [
    | recoveredBlock7Block29Value0 recoveredBlock7Block29Value1 recoveredBlock7Block29Value2 recoveredBlock7Block29Value3 recoveredBlock7Block29Value4 recoveredBlock7Block29Value5 recoveredBlock7Block29Value6 recoveredBlock7Block29Value7 recoveredBlock7Block29Value8 recoveredBlock7Block29Value9 |
    recoveredBlock7Block29Value0 := (self) graph.
    recoveredBlock7Block29Value1 := recoveredBlock7Arg1.
    recoveredBlock7Block29Value2 := (recoveredBlock7Block29Value1) asDefaultConfig.
    recoveredBlock7Block29Value3 := (recoveredBlock7Block29Value0) softPrereqNodeFor: (recoveredBlock7Block29Value2).
    recoveredLocal1 := recoveredBlock7Block29Value3.
    recoveredBlock7Block29Value4 := recoveredLocal1.
    recoveredBlock7Block29Value5 := recoveredBlock7Block29Value4.
    (recoveredBlock7Block29Value5) expandRecursive.
    recoveredBlock7Block29Value6 := recoveredBlock7Block29Value4.
    recoveredBlock7Block29Value7 := recoveredArg2.
    (recoveredBlock7Block29Value6) resolveSoftPrerequisites: (recoveredBlock7Block29Value7).
    recoveredBlock7Block29Value8 := recoveredBlock7Block29Value4.
    recoveredBlock7Block29Value9 := (self) graph.
    (recoveredBlock7Block29Value8) checkRecursivelyForInstantiationOfNode: (recoveredBlock7Block29Value9).
    recoveredBlock7Block29Value4
].
    recoveredBlock7Value4 := (recoveredBlock7Value1) detect: (recoveredBlock7Value2) ifNone: (recoveredBlock7Value3).
    recoveredLocal1 := recoveredBlock7Value4.
    recoveredBlock7Value5 := recoveredLocal1.
    recoveredBlock7Value6 := (recoveredBlock7Value5) setActive.
    recoveredBlock7Value7 := (self) addSoftPrerequesite: (recoveredBlock7Value6).
    recoveredBlock7Value7
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20400e94; bytecode file offset 0xcfd784"
!SGMakeNode methodsFor: 'recovered'!
interpolationForHeader
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileStructureStrategy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComponentBasedHeaderStrategy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedInterpolations.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) graph.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 |
    recoveredBlock69Value0 := recoveredLocal1.
    recoveredBlock69Value1 := recoveredBlock69Arg1.
    recoveredBlock69Value2 := (recoveredBlock69Value1) identifier.
    recoveredBlock69Value3 := (recoveredBlock69Value0) includes: (recoveredBlock69Value2).
    recoveredBlock69Value3
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041df78; bytecode file offset 0xd1a86c"
!SGMakeNode methodsFor: 'recovered'!
expand
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpanded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock8Local1 recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 |
    recoveredBlock8Value0 := (self) collectHardPrerequesites.
    recoveredBlock8Value1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Value0 recoveredBlock8Block15Value1 recoveredBlock8Block15Value2 recoveredBlock8Block15Value3 |
    recoveredBlock8Block15Value0 := (self) graph.
    recoveredBlock8Block15Value1 := recoveredBlock8Block15Arg1.
    recoveredBlock8Block15Value2 := (recoveredBlock8Block15Value0) hardPrereqNodeFor: (recoveredBlock8Block15Value1).
    recoveredBlock8Block15Value3 := (self) addHardPrerequesite: (recoveredBlock8Block15Value2).
    recoveredBlock8Block15Value3
].
    (recoveredBlock8Value0) do: (recoveredBlock8Value1).
    recoveredBlock8Value2 := (self) collectBothResolvedAndUnresolvedPrerequesites.
    recoveredBlock8Local1 := recoveredBlock8Value2.
    recoveredBlock8Value3 := recoveredBlock8Local1.
    recoveredBlock8Value4 := (recoveredBlock8Value3) at: (1).
    recoveredBlock8Value5 := [:recoveredBlock8Block40Arg1 | 
    | recoveredBlock8Block40Value0 recoveredBlock8Block40Value1 recoveredBlock8Block40Value2 recoveredBlock8Block40Value3 |
    recoveredBlock8Block40Value0 := (self) graph.
    recoveredBlock8Block40Value1 := recoveredBlock8Block40Arg1.
    recoveredBlock8Block40Value2 := (recoveredBlock8Block40Value0) softPrereqNodeFor: (recoveredBlock8Block40Value1).
    recoveredBlock8Block40Value3 := (self) addSoftPrerequesite: (recoveredBlock8Block40Value2).
    recoveredBlock8Block40Value3
].
    (recoveredBlock8Value4) do: (recoveredBlock8Value5).
    recoveredBlock8Value6 := recoveredBlock8Local1.
    recoveredBlock8Value7 := (recoveredBlock8Value6) at: (2).
    (self) unresolvedSoftPrerequisites: (recoveredBlock8Value7).
    recoveredBlock8Value8 := (self) setExpanded.
    recoveredBlock8Value8
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) module.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 |
    recoveredBlock76Value0 := recoveredBlock76Arg1.
    recoveredBlock76Value1 := recoveredLocal1.
    recoveredBlock76Value2 := (recoveredBlock76Value0) suspendObserving: (recoveredBlock76Value1) notify: (false).
    recoveredBlock76Value2
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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

"ASDBase.ic method 0x20483600; bytecode file offset 0xd7fef4"
!SGMakeNode methodsFor: 'recovered'!
collectHardPrerequesites
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) module.
    recoveredValue3 := (recoveredValue2) sgClass.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isPrimitive.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 28].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal3.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) instanceVariables.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block31Arg1 | 
    | recoveredBlock12Block31Stack0 recoveredBlock12Block31Stack1 recoveredBlock12Block31Stack2 recoveredBlock12Block31Stack3 recoveredBlock12Block31Stack4 recoveredBlock12Block31Stack5 recoveredBlock12Block31Stack6 recoveredBlock12Block31PC recoveredBlock12Block31Step recoveredBlock12Block31Done recoveredBlock12Block31Result |
    recoveredBlock12Block31Stack0 := self.
    recoveredBlock12Block31PC := 38.
    recoveredBlock12Block31Done := false.
    [recoveredBlock12Block31Done not] whileTrue: [
        recoveredBlock12Block31Step := recoveredBlock12Block31PC.
        recoveredBlock12Block31Step = 38 ifTrue: [
            recoveredBlock12Block31Stack1 := nil.
            recoveredBlock12Block31PC := 39.
        ].
        recoveredBlock12Block31Step = 39 ifTrue: [
            recoveredBlock12Block31Stack2 := recoveredBlock12Block31Arg1.
            recoveredBlock12Block31PC := 40.
        ].
        recoveredBlock12Block31Step = 40 ifTrue: [
            recoveredBlock12Block31Stack2 := (recoveredBlock12Block31Stack2) isUserDefined.
            recoveredBlock12Block31PC := 42.
        ].
        recoveredBlock12Block31Step = 42 ifTrue: [
            (recoveredBlock12Block31Stack2) ifTrue: [recoveredBlock12Block31PC := 46] ifFalse: [recoveredBlock12Block31PC := 69].
        ].
        recoveredBlock12Block31Step = 46 ifTrue: [
            recoveredBlock12Block31Stack2 := recoveredBlock12Block31Arg1.
            recoveredBlock12Block31PC := 47.
        ].
        recoveredBlock12Block31Step = 47 ifTrue: [
            recoveredBlock12Block31Stack2 := (recoveredBlock12Block31Stack2) isReference.
            recoveredBlock12Block31PC := 49.
        ].
        recoveredBlock12Block31Step = 49 ifTrue: [
            (recoveredBlock12Block31Stack2) ifTrue: [recoveredBlock12Block31PC := 69] ifFalse: [recoveredBlock12Block31PC := 52].
        ].
        recoveredBlock12Block31Step = 52 ifTrue: [
            recoveredBlock12Block31PC := 53.
        ].
        recoveredBlock12Block31Step = 53 ifTrue: [
            recoveredBlock12Block31Stack1 := self.
            recoveredBlock12Block31PC := 54.
        ].
        recoveredBlock12Block31Step = 54 ifTrue: [
            recoveredBlock12Block31Stack2 := recoveredBlock12Block31Arg1.
            recoveredBlock12Block31PC := 55.
        ].
        recoveredBlock12Block31Step = 55 ifTrue: [
            recoveredBlock12Block31Stack3 := self.
            recoveredBlock12Block31PC := 56.
        ].
        recoveredBlock12Block31Step = 56 ifTrue: [
            recoveredBlock12Block31Stack3 := (recoveredBlock12Block31Stack3) module.
            recoveredBlock12Block31PC := 57.
        ].
        recoveredBlock12Block31Step = 57 ifTrue: [
            recoveredBlock12Block31Stack4 := recoveredBlock12Block31Arg1.
            recoveredBlock12Block31PC := 58.
        ].
        recoveredBlock12Block31Step = 58 ifTrue: [
            recoveredBlock12Block31Stack5 := self.
            recoveredBlock12Block31PC := 59.
        ].
        recoveredBlock12Block31Step = 59 ifTrue: [
            recoveredBlock12Block31Stack5 := (recoveredBlock12Block31Stack5) exceptionBlock.
            recoveredBlock12Block31PC := 61.
        ].
        recoveredBlock12Block31Step = 61 ifTrue: [
            recoveredBlock12Block31Stack3 := (recoveredBlock12Block31Stack3) checkedMakeConfigForElement: (recoveredBlock12Block31Stack4) ifFail: (recoveredBlock12Block31Stack5).
            recoveredBlock12Block31PC := 63.
        ].
        recoveredBlock12Block31Step = 63 ifTrue: [
            recoveredBlock12Block31Stack4 := recoveredLocal3.
            recoveredBlock12Block31PC := 66.
        ].
        recoveredBlock12Block31Step = 66 ifTrue: [
            recoveredBlock12Block31Stack1 := (recoveredBlock12Block31Stack1) addInstance: (recoveredBlock12Block31Stack2) ifNew: (recoveredBlock12Block31Stack3) to: (recoveredBlock12Block31Stack4).
            recoveredBlock12Block31PC := 69.
        ].
        recoveredBlock12Block31Step = 69 ifTrue: [
            recoveredBlock12Block31Result := recoveredBlock12Block31Stack1.
            recoveredBlock12Block31Done := true.
        ].
    ].
    recoveredBlock12Block31Result
].
            recoveredBlock12PC := 70.
        ].
        recoveredBlock12Step = 70 ifTrue: [
            (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 72.
        ].
        recoveredBlock12Step = 72 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 73.
        ].
        recoveredBlock12Step = 73 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 74.
        ].
        recoveredBlock12Step = 74 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) exportedUserDefinedNoReferenceVariables.
            recoveredBlock12PC := 76.
        ].
        recoveredBlock12Step = 76 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 77.
        ].
        recoveredBlock12Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack3.
            recoveredBlock12PC := 80.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isEmpty.
            recoveredBlock12PC := 82.
        ].
        recoveredBlock12Step = 82 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 121] ifFalse: [recoveredBlock12PC := 86].
        ].
        recoveredBlock12Step = 86 ifTrue: [
            recoveredBlock12PC := 87.
        ].
        recoveredBlock12Step = 87 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 88.
        ].
        recoveredBlock12Step = 88 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) createClassMakeConfig.
            recoveredBlock12PC := 90.
        ].
        recoveredBlock12Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 93.
        ].
        recoveredBlock12Step = 93 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 96.
        ].
        recoveredBlock12Step = 96 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block96Arg1 | 
    | recoveredBlock12Block96Value0 recoveredBlock12Block96Value1 recoveredBlock12Block96Value2 recoveredBlock12Block96Value3 recoveredBlock12Block96Value4 recoveredBlock12Block96Value5 recoveredBlock12Block96Value6 |
    recoveredBlock12Block96Value0 := recoveredBlock12Block96Arg1.
    recoveredBlock12Block96Value1 := recoveredLocal2.
    recoveredBlock12Block96Value2 := recoveredBlock12Block96Arg1.
    recoveredBlock12Block96Value3 := (self) exceptionBlock.
    recoveredBlock12Block96Value4 := (recoveredBlock12Block96Value1) checkedMakeConfigForElement: (recoveredBlock12Block96Value2) ifFail: (recoveredBlock12Block96Value3).
    recoveredBlock12Block96Value5 := recoveredLocal3.
    recoveredBlock12Block96Value6 := (self) addInstance: (recoveredBlock12Block96Value0) ifNew: (recoveredBlock12Block96Value4) to: (recoveredBlock12Block96Value5).
    recoveredBlock12Block96Value6
].
            recoveredBlock12PC := 119.
        ].
        recoveredBlock12Step = 119 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 121.
        ].
        recoveredBlock12Step = 121 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal3.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20495ba4; bytecode file offset 0xd924a4"
!SGMakeNode methodsFor: 'recovered'!
propagatedTimeStamp
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) propagatedInterfaceTimeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodsTimeStamp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAnyPhysicalVariant.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := recoveredLocal2.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) applicationTimeStamp.
    recoveredBlock29Value3 := (recoveredBlock29Value0) max: (recoveredBlock29Value2).
    recoveredBlock29Value4 := recoveredBlock29Value3.
    recoveredLocal2 := recoveredBlock29Value4.
    recoveredBlock29Value3
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerPath.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) classDataConfig.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:block28103a8cArg1 | 
    | block28103a8cStack0 block28103a8cStack1 block28103a8cStack2 block28103a8cStack3 block28103a8cPC block28103a8cStep block28103a8cDone block28103a8cResult |
    block28103a8cStack0 := self.
    block28103a8cPC := 4.
    block28103a8cDone := false.
    [block28103a8cDone not] whileTrue: [
        block28103a8cStep := block28103a8cPC.
        block28103a8cStep = 4 ifTrue: [
            block28103a8cStack1 := false.
            block28103a8cPC := 5.
        ].
        block28103a8cStep = 5 ifTrue: [
            block28103a8cStack2 := block28103a8cArg1.
            block28103a8cPC := 6.
        ].
        block28103a8cStep = 6 ifTrue: [
            block28103a8cStack2 := (block28103a8cStack2) sgClass.
            block28103a8cPC := 7.
        ].
        block28103a8cStep = 7 ifTrue: [
            block28103a8cStack2 := (block28103a8cStack2) isSGOneDCharTable.
            block28103a8cPC := 9.
        ].
        block28103a8cStep = 9 ifTrue: [
            (block28103a8cStack2) ifTrue: [block28103a8cPC := 20] ifFalse: [block28103a8cPC := 12].
        ].
        block28103a8cStep = 12 ifTrue: [
            block28103a8cStack2 := block28103a8cArg1.
            block28103a8cPC := 13.
        ].
        block28103a8cStep = 13 ifTrue: [
            block28103a8cStack2 := (block28103a8cStack2) sgClass.
            block28103a8cPC := 14.
        ].
        block28103a8cStep = 14 ifTrue: [
            block28103a8cStack2 := (block28103a8cStack2) isSGTwoDCharTable.
            block28103a8cPC := 16.
        ].
        block28103a8cStep = 16 ifTrue: [
            (block28103a8cStack2) ifTrue: [block28103a8cPC := 20] ifFalse: [block28103a8cPC := 25].
        ].
        block28103a8cStep = 20 ifTrue: [
            block28103a8cPC := 21.
        ].
        block28103a8cStep = 21 ifTrue: [
            block28103a8cStack1 := block28103a8cArg1.
            block28103a8cPC := 22.
        ].
        block28103a8cStep = 22 ifTrue: [
            block28103a8cStack1 := (block28103a8cStack1) sgClass.
            block28103a8cPC := 23.
        ].
        block28103a8cStep = 23 ifTrue: [
            block28103a8cStack1 := (block28103a8cStack1) isFixed.
            block28103a8cPC := 25.
        ].
        block28103a8cStep = 25 ifTrue: [
            block28103a8cResult := block28103a8cStack1.
            block28103a8cDone := true.
        ].
    ].
    block28103a8cResult
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationTimeStamp.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204af9a4; bytecode file offset 0xdac2ac"
!SGMakeNode methodsFor: 'recovered'!
exceptionBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block10Arg1 | 
    | recoveredBlock4Block10Value0 recoveredBlock4Block10Value1 recoveredBlock4Block10Value2 recoveredBlock4Block10Value3 recoveredBlock4Block10Value4 recoveredBlock4Block10Value5 recoveredBlock4Block10Value6 recoveredBlock4Block10Value7 recoveredBlock4Block10Value8 recoveredBlock4Block10Value9 recoveredBlock4Block10Value10 |
    recoveredBlock4Block10Value0 := recoveredBlock4Arg1.
    recoveredBlock4Block10Value1 := (recoveredBlock4Block10Value0) elementName.
    recoveredBlock4Block10Value2 := ('referenced as "') , (recoveredBlock4Block10Value1).
    recoveredBlock4Block10Value3 := (recoveredBlock4Block10Value2) , ('" from "').
    recoveredBlock4Block10Value4 := (self) module.
    recoveredBlock4Block10Value5 := (recoveredBlock4Block10Value4) sgClass.
    recoveredBlock4Block10Value6 := (recoveredBlock4Block10Value5) label.
    recoveredBlock4Block10Value7 := (recoveredBlock4Block10Value3) , (recoveredBlock4Block10Value6).
    recoveredBlock4Block10Value8 := (recoveredBlock4Block10Value7) , ('"').
    recoveredBlock4Block10Value9 := (self) componentSource.
    recoveredBlock4Block10Value10 := (self) fatalError: ('undefinedComponent') with: (recoveredBlock4Block10Value8) source: (recoveredBlock4Block10Value9).
    recoveredBlock4Block10Value10
].
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            (recoveredBlock4Stack1) sgClassIfUndefined: (recoveredBlock4Stack2).
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isMessage.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 66] ifFalse: [recoveredBlock4PC := 90].
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sgClass.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) basicTypeKey.
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isRBDBObject.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 78] ifFalse: [recoveredBlock4PC := 90].
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sgClass.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) basicTypeKey.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            (recoveredBlock4Stack1) getObjectIfUndefined: (recoveredBlock4Stack2).
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sgClass.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 130] ifFalse: [recoveredBlock4PC := 98].
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) sgClass.
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) modifiable.
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 130] ifFalse: [recoveredBlock4PC := 108].
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack2 := 'invalidMakeConfig'.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack3 := 'in '.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Arg1.
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) elementName.
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) , (recoveredBlock4Stack4).
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack4 := '. Versioned components must have a valid implementation and data set.'.
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) , (recoveredBlock4Stack4).
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack4 := self.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) componentSource.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) fatalError: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) source: (recoveredBlock4Stack4).
            recoveredBlock4PC := 127.
        ].
        recoveredBlock4Step = 127 ifTrue: [
            recoveredBlock4PC := 141.
        ].
        recoveredBlock4Step = 130 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Stack2 := 'invalidMakeConfig'.
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack3 := ''.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            recoveredBlock4Stack4 := self.
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) componentSource.
            recoveredBlock4PC := 138.
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) fatalError: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) source: (recoveredBlock4Stack4).
            recoveredBlock4PC := 141.
        ].
        recoveredBlock4Step = 141 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x204be84c; bytecode file offset 0xdbb158"
!SGMakeNode methodsFor: 'recovered'!
initFor: recoveredArg1 in: recoveredArg2 settings: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) makeConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) graph: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) generatorSettings: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [:block28106450Arg1 :block28106450Arg2 | 
    | block28106450Value0 block28106450Value1 block28106450Value2 block28106450Value3 block28106450Value4 block28106450Value5 block28106450Value6 |
    block28106450Value0 := block28106450Arg1.
    block28106450Value1 := (block28106450Value0) makeConfig.
    block28106450Value2 := (block28106450Value1) label.
    block28106450Value3 := block28106450Arg2.
    block28106450Value4 := (block28106450Value3) makeConfig.
    block28106450Value5 := (block28106450Value4) label.
    block28106450Value6 := (block28106450Value2) <= (block28106450Value5).
    block28106450Value6
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) hardPrerequesites: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack3) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:block28106474Arg1 :block28106474Arg2 | 
    | block28106474Value0 block28106474Value1 block28106474Value2 block28106474Value3 block28106474Value4 block28106474Value5 block28106474Value6 |
    block28106474Value0 := block28106474Arg1.
    block28106474Value1 := (block28106474Value0) makeConfig.
    block28106474Value2 := (block28106474Value1) label.
    block28106474Value3 := block28106474Arg2.
    block28106474Value4 := (block28106474Value3) makeConfig.
    block28106474Value5 := (block28106474Value4) label.
    block28106474Value6 := (block28106474Value2) <= (block28106474Value5).
    block28106474Value6
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) softPrerequesites: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack3) new.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [:block28106498Arg1 :block28106498Arg2 | 
    | block28106498Value0 block28106498Value1 block28106498Value2 block28106498Value3 block28106498Value4 block28106498Value5 block28106498Value6 |
    block28106498Value0 := block28106498Arg1.
    block28106498Value1 := (block28106498Value0) makeConfig.
    block28106498Value2 := (block28106498Value1) label.
    block28106498Value3 := block28106498Arg2.
    block28106498Value4 := (block28106498Value3) makeConfig.
    block28106498Value5 := (block28106498Value4) label.
    block28106498Value6 := (block28106498Value2) <= (block28106498Value5).
    block28106498Value6
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) hardDependents: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack3) new.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := [:block281064bcArg1 :block281064bcArg2 | 
    | block281064bcValue0 block281064bcValue1 block281064bcValue2 block281064bcValue3 block281064bcValue4 block281064bcValue5 block281064bcValue6 |
    block281064bcValue0 := block281064bcArg1.
    block281064bcValue1 := (block281064bcValue0) makeConfig.
    block281064bcValue2 := (block281064bcValue1) label.
    block281064bcValue3 := block281064bcArg2.
    block281064bcValue4 := (block281064bcValue3) makeConfig.
    block281064bcValue5 := (block281064bcValue4) label.
    block281064bcValue6 := (block281064bcValue2) <= (block281064bcValue5).
    block281064bcValue6
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) softDependents: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) sourceTimeStamps: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) indegree: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) initFlags.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) initCodeStorageHandles.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e1b3c; bytecode file offset 0xede4a4"
!SGMakeNode methodsFor: 'recovered'!
collectBothResolvedAndUnresolvedPrerequesites
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) module.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := ('Rl') == ('Call_70729').
    recoveredValue7 := recoveredLocal6.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) isUserDefined.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 44] ifFalse: [recoveredBlock30PC := 59].
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) module.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack4 := self.
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30Stack4 := (recoveredBlock30Stack4) exceptionBlock.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) checkedMakeConfigForElement: (recoveredBlock30Stack3) ifFail: (recoveredBlock30Stack4).
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal3.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) addIfNew: (recoveredBlock30Stack2) to: (recoveredBlock30Stack3).
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) allMethodElementsDo: (recoveredValue8).
    recoveredValue9 := recoveredLocal6.
    recoveredValue10 := (recoveredValue9) instanceVariables.
    recoveredValue11 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67Stack5 recoveredBlock67Stack6 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) isUserDefined.
            recoveredBlock67PC := 78.
        ].
        recoveredBlock67Step = 78 ifTrue: [
            (recoveredBlock67Stack2) ifTrue: [recoveredBlock67PC := 82] ifFalse: [recoveredBlock67PC := 105].
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 83.
        ].
        recoveredBlock67Step = 83 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) isReference.
            recoveredBlock67PC := 85.
        ].
        recoveredBlock67Step = 85 ifTrue: [
            (recoveredBlock67Stack2) ifTrue: [recoveredBlock67PC := 88] ifFalse: [recoveredBlock67PC := 105].
        ].
        recoveredBlock67Step = 88 ifTrue: [
            recoveredBlock67PC := 89.
        ].
        recoveredBlock67Step = 89 ifTrue: [
            recoveredBlock67Stack1 := self.
            recoveredBlock67PC := 90.
        ].
        recoveredBlock67Step = 90 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 91.
        ].
        recoveredBlock67Step = 91 ifTrue: [
            recoveredBlock67Stack3 := self.
            recoveredBlock67PC := 92.
        ].
        recoveredBlock67Step = 92 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) module.
            recoveredBlock67PC := 93.
        ].
        recoveredBlock67Step = 93 ifTrue: [
            recoveredBlock67Stack4 := recoveredBlock67Arg1.
            recoveredBlock67PC := 94.
        ].
        recoveredBlock67Step = 94 ifTrue: [
            recoveredBlock67Stack5 := self.
            recoveredBlock67PC := 95.
        ].
        recoveredBlock67Step = 95 ifTrue: [
            recoveredBlock67Stack5 := (recoveredBlock67Stack5) exceptionBlock.
            recoveredBlock67PC := 97.
        ].
        recoveredBlock67Step = 97 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) checkedMakeConfigForElement: (recoveredBlock67Stack4) ifFail: (recoveredBlock67Stack5).
            recoveredBlock67PC := 99.
        ].
        recoveredBlock67Step = 99 ifTrue: [
            recoveredBlock67Stack4 := recoveredLocal3.
            recoveredBlock67PC := 102.
        ].
        recoveredBlock67Step = 102 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) addInstance: (recoveredBlock67Stack2) ifNew: (recoveredBlock67Stack3) to: (recoveredBlock67Stack4).
            recoveredBlock67PC := 105.
        ].
        recoveredBlock67Step = 105 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal6.
    recoveredValue13 := (recoveredValue12) createClassMakeConfig.
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := recoveredLocal6.
    recoveredValue15 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119Stack5 recoveredBlock119Stack6 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := nil.
            recoveredBlock119PC := 127.
        ].
        recoveredBlock119Step = 127 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 128.
        ].
        recoveredBlock119Step = 128 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) isExported.
            recoveredBlock119PC := 130.
        ].
        recoveredBlock119Step = 130 ifTrue: [
            (recoveredBlock119Stack2) ifTrue: [recoveredBlock119PC := 134] ifFalse: [recoveredBlock119PC := 164].
        ].
        recoveredBlock119Step = 134 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 135.
        ].
        recoveredBlock119Step = 135 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) isUserDefined.
            recoveredBlock119PC := 137.
        ].
        recoveredBlock119Step = 137 ifTrue: [
            (recoveredBlock119Stack2) ifTrue: [recoveredBlock119PC := 140] ifFalse: [recoveredBlock119PC := 164].
        ].
        recoveredBlock119Step = 140 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 141.
        ].
        recoveredBlock119Step = 141 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) isReference.
            recoveredBlock119PC := 143.
        ].
        recoveredBlock119Step = 143 ifTrue: [
            (recoveredBlock119Stack2) ifTrue: [recoveredBlock119PC := 146] ifFalse: [recoveredBlock119PC := 164].
        ].
        recoveredBlock119Step = 146 ifTrue: [
            recoveredBlock119PC := 147.
        ].
        recoveredBlock119Step = 147 ifTrue: [
            recoveredBlock119Stack1 := self.
            recoveredBlock119PC := 148.
        ].
        recoveredBlock119Step = 148 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 149.
        ].
        recoveredBlock119Step = 149 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal5.
            recoveredBlock119PC := 152.
        ].
        recoveredBlock119Step = 152 ifTrue: [
            recoveredBlock119Stack4 := recoveredBlock119Arg1.
            recoveredBlock119PC := 153.
        ].
        recoveredBlock119Step = 153 ifTrue: [
            recoveredBlock119Stack5 := self.
            recoveredBlock119PC := 154.
        ].
        recoveredBlock119Step = 154 ifTrue: [
            recoveredBlock119Stack5 := (recoveredBlock119Stack5) exceptionBlock.
            recoveredBlock119PC := 156.
        ].
        recoveredBlock119Step = 156 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) checkedMakeConfigForElement: (recoveredBlock119Stack4) ifFail: (recoveredBlock119Stack5).
            recoveredBlock119PC := 158.
        ].
        recoveredBlock119Step = 158 ifTrue: [
            recoveredBlock119Stack4 := recoveredLocal3.
            recoveredBlock119PC := 161.
        ].
        recoveredBlock119Step = 161 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) addInstance: (recoveredBlock119Stack2) ifNew: (recoveredBlock119Stack3) to: (recoveredBlock119Stack4).
            recoveredBlock119PC := 164.
        ].
        recoveredBlock119Step = 164 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack1.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
    (recoveredValue14) allVariablesDo: (recoveredValue15).
    recoveredValue16 := recoveredLocal6.
    recoveredValue17 := (recoveredValue16) importedVariables.
    recoveredValue18 := [:recoveredBlock172Arg1 | 
    | recoveredBlock172Local1 recoveredBlock172Stack0 recoveredBlock172Stack1 recoveredBlock172Stack2 recoveredBlock172Stack3 recoveredBlock172Stack4 recoveredBlock172Stack5 recoveredBlock172PC recoveredBlock172Step recoveredBlock172Done recoveredBlock172Result |
    recoveredBlock172Stack0 := self.
    recoveredBlock172PC := 178.
    recoveredBlock172Done := false.
    [recoveredBlock172Done not] whileTrue: [
        recoveredBlock172Step := recoveredBlock172PC.
        recoveredBlock172Step = 178 ifTrue: [
            recoveredBlock172Stack1 := 'Rl'.
            recoveredBlock172PC := 180.
        ].
        recoveredBlock172Step = 180 ifTrue: [
            recoveredBlock172Stack2 := 'Call_72654'.
            recoveredBlock172PC := 182.
        ].
        recoveredBlock172Step = 182 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) == (recoveredBlock172Stack2).
            recoveredBlock172PC := 183.
        ].
        recoveredBlock172Step = 183 ifTrue: [
            recoveredBlock172PC := 184.
        ].
        recoveredBlock172Step = 184 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) graph.
            recoveredBlock172PC := 186.
        ].
        recoveredBlock172Step = 186 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Arg1.
            recoveredBlock172PC := 189.
        ].
        recoveredBlock172Step = 189 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) mappedClassVarFor: (recoveredBlock172Stack1).
            recoveredBlock172PC := 191.
        ].
        recoveredBlock172Step = 191 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Stack0.
            recoveredBlock172PC := 192.
        ].
        recoveredBlock172Step = 192 ifTrue: [
            recoveredBlock172Local1 := recoveredBlock172Stack1.
            recoveredBlock172PC := 195.
        ].
        recoveredBlock172Step = 195 ifTrue: [
            (recoveredBlock172Stack0 ~~ nil) ifTrue: [recoveredBlock172PC := 204] ifFalse: [recoveredBlock172PC := 198].
        ].
        recoveredBlock172Step = 198 ifTrue: [
            recoveredBlock172Stack0 := self.
            recoveredBlock172PC := 199.
        ].
        recoveredBlock172Step = 199 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) checkExImport.
            recoveredBlock172PC := 201.
        ].
        recoveredBlock172Step = 201 ifTrue: [
            recoveredBlock172PC := 362.
        ].
        recoveredBlock172Step = 204 ifTrue: [
            recoveredBlock172Stack0 := recoveredBlock172Local1.
            recoveredBlock172PC := 207.
        ].
        recoveredBlock172Step = 207 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) isCollection.
            recoveredBlock172PC := 209.
        ].
        recoveredBlock172Step = 209 ifTrue: [
            (recoveredBlock172Stack0) ifTrue: [recoveredBlock172PC := 212] ifFalse: [recoveredBlock172PC := 238].
        ].
        recoveredBlock172Step = 212 ifTrue: [
            recoveredBlock172Stack0 := self.
            recoveredBlock172PC := 213.
        ].
        recoveredBlock172Step = 213 ifTrue: [
            recoveredBlock172Stack1 := SGMakeConfig.
            recoveredBlock172PC := 215.
        ].
        recoveredBlock172Step = 215 ifTrue: [
            recoveredBlock172Stack2 := nil.
            recoveredBlock172PC := 216.
        ].
        recoveredBlock172Step = 216 ifTrue: [
            recoveredBlock172Stack3 := nil.
            recoveredBlock172PC := 217.
        ].
        recoveredBlock172Step = 217 ifTrue: [
            recoveredBlock172Stack4 := recoveredBlock172Local1.
            recoveredBlock172PC := 220.
        ].
        recoveredBlock172Step = 220 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) last.
            recoveredBlock172PC := 222.
        ].
        recoveredBlock172Step = 222 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) owner.
            recoveredBlock172PC := 224.
        ].
        recoveredBlock172Step = 224 ifTrue: [
            recoveredBlock172Stack4 := (recoveredBlock172Stack4) asInstVar.
            recoveredBlock172PC := 226.
        ].
        recoveredBlock172Step = 226 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) createForImpl: (recoveredBlock172Stack2) data: (recoveredBlock172Stack3) asdElement: (recoveredBlock172Stack4).
            recoveredBlock172PC := 229.
        ].
        recoveredBlock172Step = 229 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal3.
            recoveredBlock172PC := 232.
        ].
        recoveredBlock172Step = 232 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) addIfNew: (recoveredBlock172Stack1) to: (recoveredBlock172Stack2).
            recoveredBlock172PC := 234.
        ].
        recoveredBlock172Step = 234 ifTrue: [
            recoveredBlock172PC := 362.
        ].
        recoveredBlock172Step = 238 ifTrue: [
            recoveredBlock172Stack0 := SGClassMakeConfig.
            recoveredBlock172PC := 240.
        ].
        recoveredBlock172Step = 240 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Local1.
            recoveredBlock172PC := 243.
        ].
        recoveredBlock172Step = 243 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) owner.
            recoveredBlock172PC := 245.
        ].
        recoveredBlock172Step = 245 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) classImplConfig.
            recoveredBlock172PC := 247.
        ].
        recoveredBlock172Step = 247 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Local1.
            recoveredBlock172PC := 250.
        ].
        recoveredBlock172Step = 250 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) owner.
            recoveredBlock172PC := 252.
        ].
        recoveredBlock172Step = 252 ifTrue: [
            recoveredBlock172Stack2 := (recoveredBlock172Stack2) classDataConfig.
            recoveredBlock172PC := 254.
        ].
        recoveredBlock172Step = 254 ifTrue: [
            recoveredBlock172Stack3 := recoveredBlock172Local1.
            recoveredBlock172PC := 257.
        ].
        recoveredBlock172Step = 257 ifTrue: [
            recoveredBlock172Stack3 := (recoveredBlock172Stack3) owner.
            recoveredBlock172PC := 259.
        ].
        recoveredBlock172Step = 259 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) createForImpl: (recoveredBlock172Stack1) data: (recoveredBlock172Stack2) sgClass: (recoveredBlock172Stack3).
            recoveredBlock172PC := 262.
        ].
        recoveredBlock172Step = 262 ifTrue: [
            recoveredBlock172Stack1 := recoveredBlock172Stack0.
            recoveredBlock172PC := 263.
        ].
        recoveredBlock172Step = 263 ifTrue: [
            recoveredLocal1 := recoveredBlock172Stack1.
            recoveredBlock172PC := 266.
        ].
        recoveredBlock172Step = 266 ifTrue: [
            recoveredBlock172Stack1 := [
    | recoveredBlock172Block266Value0 recoveredBlock172Block266Value1 recoveredBlock172Block266Value2 recoveredBlock172Block266Value3 recoveredBlock172Block266Value4 recoveredBlock172Block266Value5 recoveredBlock172Block266Value6 recoveredBlock172Block266Value7 recoveredBlock172Block266Value8 recoveredBlock172Block266Value9 |
    recoveredBlock172Block266Value0 := recoveredBlock172Local1.
    recoveredBlock172Block266Value1 := (recoveredBlock172Block266Value0) owner.
    recoveredBlock172Block266Value2 := (recoveredBlock172Block266Value1) label.
    recoveredBlock172Block266Value3 := ('global configuration (either implementation or data) for component "') , (recoveredBlock172Block266Value2).
    recoveredBlock172Block266Value4 := (recoveredBlock172Block266Value3) , ('" as owner of exported element "').
    recoveredBlock172Block266Value5 := recoveredBlock172Local1.
    recoveredBlock172Block266Value6 := (recoveredBlock172Block266Value5) label.
    recoveredBlock172Block266Value7 := (recoveredBlock172Block266Value4) , (recoveredBlock172Block266Value6).
    recoveredBlock172Block266Value8 := (recoveredBlock172Block266Value7) , ('"').
    recoveredBlock172Block266Value9 := (self) fatalError: ('undefinedComponent') with: (recoveredBlock172Block266Value8).
    recoveredBlock172Block266Value9
].
            recoveredBlock172PC := 303.
        ].
        recoveredBlock172Step = 303 ifTrue: [
            (recoveredBlock172Stack0) ifNil: (recoveredBlock172Stack1).
            recoveredBlock172PC := 305.
        ].
        recoveredBlock172Step = 305 ifTrue: [
            recoveredBlock172Stack0 := 'Rl'.
            recoveredBlock172PC := 307.
        ].
        recoveredBlock172Step = 307 ifTrue: [
            recoveredBlock172Stack1 := 'Call_80561'.
            recoveredBlock172PC := 309.
        ].
        recoveredBlock172Step = 309 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) == (recoveredBlock172Stack1).
            recoveredBlock172PC := 310.
        ].
        recoveredBlock172Step = 310 ifTrue: [
            recoveredBlock172PC := 311.
        ].
        recoveredBlock172Step = 311 ifTrue: [
            recoveredBlock172Stack0 := recoveredBlock172Local1.
            recoveredBlock172PC := 314.
        ].
        recoveredBlock172Step = 314 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) isUserDefined.
            recoveredBlock172PC := 316.
        ].
        recoveredBlock172Step = 316 ifTrue: [
            (recoveredBlock172Stack0) ifTrue: [recoveredBlock172PC := 320] ifFalse: [recoveredBlock172PC := 345].
        ].
        recoveredBlock172Step = 320 ifTrue: [
            recoveredBlock172Stack0 := recoveredBlock172Local1.
            recoveredBlock172PC := 323.
        ].
        recoveredBlock172Step = 323 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) isReference.
            recoveredBlock172PC := 325.
        ].
        recoveredBlock172Step = 325 ifTrue: [
            (recoveredBlock172Stack0) ifTrue: [recoveredBlock172PC := 345] ifFalse: [recoveredBlock172PC := 328].
        ].
        recoveredBlock172Step = 328 ifTrue: [
            recoveredBlock172Stack0 := self.
            recoveredBlock172PC := 329.
        ].
        recoveredBlock172Step = 329 ifTrue: [
            recoveredBlock172Stack1 := recoveredLocal1.
            recoveredBlock172PC := 332.
        ].
        recoveredBlock172Step = 332 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Local1.
            recoveredBlock172PC := 335.
        ].
        recoveredBlock172Step = 335 ifTrue: [
            recoveredBlock172Stack3 := self.
            recoveredBlock172PC := 336.
        ].
        recoveredBlock172Step = 336 ifTrue: [
            recoveredBlock172Stack3 := (recoveredBlock172Stack3) exceptionBlock.
            recoveredBlock172PC := 338.
        ].
        recoveredBlock172Step = 338 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) checkedMakeConfigForElement: (recoveredBlock172Stack2) ifFail: (recoveredBlock172Stack3).
            recoveredBlock172PC := 340.
        ].
        recoveredBlock172Step = 340 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal4.
            recoveredBlock172PC := 343.
        ].
        recoveredBlock172Step = 343 ifTrue: [
            (recoveredBlock172Stack0) addIfNew: (recoveredBlock172Stack1) to: (recoveredBlock172Stack2).
            recoveredBlock172PC := 345.
        ].
        recoveredBlock172Step = 345 ifTrue: [
            recoveredBlock172Stack0 := self.
            recoveredBlock172PC := 346.
        ].
        recoveredBlock172Step = 346 ifTrue: [
            recoveredBlock172Stack1 := recoveredLocal1.
            recoveredBlock172PC := 349.
        ].
        recoveredBlock172Step = 349 ifTrue: [
            recoveredBlock172Stack2 := recoveredBlock172Local1.
            recoveredBlock172PC := 352.
        ].
        recoveredBlock172Step = 352 ifTrue: [
            recoveredBlock172Stack3 := self.
            recoveredBlock172PC := 353.
        ].
        recoveredBlock172Step = 353 ifTrue: [
            recoveredBlock172Stack3 := (recoveredBlock172Stack3) exceptionBlock.
            recoveredBlock172PC := 355.
        ].
        recoveredBlock172Step = 355 ifTrue: [
            recoveredBlock172Stack1 := (recoveredBlock172Stack1) checkedMakeConfigForOwnerOfElement: (recoveredBlock172Stack2) ifFail: (recoveredBlock172Stack3).
            recoveredBlock172PC := 357.
        ].
        recoveredBlock172Step = 357 ifTrue: [
            recoveredBlock172Stack2 := recoveredLocal3.
            recoveredBlock172PC := 360.
        ].
        recoveredBlock172Step = 360 ifTrue: [
            recoveredBlock172Stack0 := (recoveredBlock172Stack0) addIfNew: (recoveredBlock172Stack1) to: (recoveredBlock172Stack2).
            recoveredBlock172PC := 362.
        ].
        recoveredBlock172Step = 362 ifTrue: [
            recoveredBlock172Result := recoveredBlock172Stack0.
            recoveredBlock172Done := true.
        ].
    ].
    recoveredBlock172Result
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := Array.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (recoveredValue19) with: (recoveredValue20) with: (recoveredValue21).
    ^recoveredValue22
! !

