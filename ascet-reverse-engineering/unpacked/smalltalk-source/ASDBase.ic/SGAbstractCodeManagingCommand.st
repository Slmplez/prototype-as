"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001dd0; bytecode file offset 0x8ffcfc"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkDependentParameters
    ^self
! !

"ASDBase.ic method 0x20001e20; bytecode file offset 0x8ffcfc"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
storeAllNodesCount
    ^self
! !

"ASDBase.ic method 0x200023d0; bytecode file offset 0x8ffcfc"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
prepareCodeGenerationOptions
    ^self
! !

"ASDBase.ic method 0x2000884c; bytecode file offset 0x908be4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
commandLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001248c; bytecode file offset 0x912098"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
sourceANSICCollectorClass
    | recoveredValue0 |
    recoveredValue0 := SGANSICSourceCollector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016394; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
recursiveKey
    ^'recursive'
! !

"ASDBase.ic method 0x20016ec8; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
destinationPathKey
    ^'destinationPath'
! !

"ASDBase.ic method 0x2001d2d0; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectLabelKey
    ^'projectLabel'
! !

"ASDBase.ic method 0x2002006c; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForESDLGeneration
    ^#()
! !

"ASDBase.ic method 0x20020114; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
toBeCompiledSOs
    ^#()
! !

"ASDBase.ic method 0x20021b54; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
allActiveBasicCommands
    ^#()
! !

"ASDBase.ic method 0x20021d70; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useInternalTimestampKey
    ^'useInternalTimestamp'
! !

"ASDBase.ic method 0x20022268; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
osDataFileName
    ^'_asd_os_data.pm'
! !

"ASDBase.ic method 0x200233c0; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCGenKey
    ^'useCGen'
! !

"ASDBase.ic method 0x20024548; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
operationsForExportCode
    ^#()
! !

"ASDBase.ic method 0x20024d04; bytecode file offset 0x92209c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
codeNatureKey
    ^'codeNature'
! !

"ASDBase.ic method 0x20027de4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectOptionTargetSettingsSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) projectOptionTargetSettingsSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028524; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isExperimentMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) isExperimentMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029244; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectOptionOSSettingsSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) projectOptionOSSettingsSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b794; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForPreGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForPreGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bd94; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) buildEnvironmentInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c6c4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectComponentKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeConfigForContext.
    recoveredValue1 := (recoveredValue0) componentKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d644; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d9e4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
makeConfigForContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) makeConfigForContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ddf4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForLogicModelGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForLogicModelGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ec84; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForModuleGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForModuleGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030344; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForInitInstGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForInitInstGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032e84; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForInitDataGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForInitDataGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033114; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
rootNodeClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034144; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
monitorManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) monitorManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034334; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForInterfaceGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForInterfaceGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034834; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectOptionSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) projectOptionSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034b54; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
project
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034f64; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForInstanceTreeWalkingDatasetCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForInstanceTreeWalkingDatasetCollection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035364; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresOILTemplateGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) requiresOILTemplateGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035d74; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200365f4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
allMakeConfigs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeGraph.
    recoveredValue1 := (recoveredValue0) allMakeConfigs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036ae4; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
toBeProcessedGSOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeGraph.
    recoveredValue1 := (recoveredValue0) toBeProcessedGSOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037294; bytecode file offset 0x934580"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037ff8; bytecode file offset 0x934b68"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
allLinkedSOsUseCGen: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x20038244; bytecode file offset 0x934b68"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
toBeLinkedSOsUseCGen: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x2003980c; bytecode file offset 0x938608"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createAPICommand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCommand: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b9c0; bytecode file offset 0x938608"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkLinkStepRestrictionsifFail: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkEmptyOSifFail: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f358; bytecode file offset 0x93bf94"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a04; bytecode file offset 0x9452d8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
failed
    status := false.
    ^self
! !

"ASDBase.ic method 0x200496bc; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
recursive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) recursiveKey.
    recoveredValue1 := (self) getBoolAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004981c; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCGen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) useCGenKey.
    recoveredValue1 := (self) getBoolAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200498ec; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
codeNature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeNatureKey.
    recoveredValue1 := (self) getStringAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a01c; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLabelKey.
    recoveredValue1 := (self) getStringAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a41c; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
destinationPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) destinationPathKey.
    recoveredValue1 := (self) getStringAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a5ec; bytecode file offset 0x947128"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useInternalTimestamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) useInternalTimestampKey.
    recoveredValue1 := (self) getBoolAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004eb70; bytecode file offset 0x94d048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
apiCommand
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f0c8; bytecode file offset 0x94d048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkRestrictions
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f6a4; bytecode file offset 0x94d048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
compileSourceCollector
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005001c; bytecode file offset 0x94d048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
label
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050688; bytecode file offset 0x94d048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
execute
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059188; bytecode file offset 0x956284"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
stationOptionSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stationOptionSource: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c370; bytecode file offset 0x959680"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
currentProjectCache
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGWorkspaceCache.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) currentProjectCache.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c8c0; bytecode file offset 0x959680"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createXMLStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) asXmlCodeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cac8; bytecode file offset 0x959680"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createMakefileStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) asExternalMakeStream.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f324; bytecode file offset 0x95c4f4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForINTECRIOTransferFunctionInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) nodesForINTECRIOTransferFunctionInfo.
    recoveredValue2 := (self) sortedNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f568; bytecode file offset 0x95c4f4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForINTECRIOTransferEnumerationInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) enumerationNodes.
    recoveredValue2 := (self) sortedNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f5a4; bytecode file offset 0x95c4f4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
stateMachineNodes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) stateMachineNodes.
    recoveredValue2 := (self) sortedNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f7ac; bytecode file offset 0x95c4f4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
enumerationNodes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) make.
    recoveredValue1 := (recoveredValue0) enumerationNodes.
    recoveredValue2 := (self) sortedNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200610e8; bytecode file offset 0x95db34"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isCodeNatureECCO
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeNature.
    recoveredValue1 := (recoveredValue0) == ('ECCO').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061138; bytecode file offset 0x95db34"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isCodeNatureANSIC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeNature.
    recoveredValue1 := (recoveredValue0) == ('ANSIC').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061188; bytecode file offset 0x95db34"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isCodeNatureESDL
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeNature.
    recoveredValue1 := (recoveredValue0) == ('ESDL').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063a34; bytecode file offset 0x961970"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createLogicManager
    | recoveredValue0 |
    recoveredValue0 := (self) codeManager.
    (recoveredValue0) createLogicManager.
    ^self
! !

"ASDBase.ic method 0x20063d04; bytecode file offset 0x961970"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
resolveSoftPrerequisites
    | recoveredValue0 |
    recoveredValue0 := (self) makeGraph.
    (recoveredValue0) resolveSoftPrerequisites.
    ^self
! !

"ASDBase.ic method 0x20064224; bytecode file offset 0x961970"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
updateSettings
    | recoveredValue0 |
    recoveredValue0 := (self) currentBuildCache.
    (recoveredValue0) updateSettings.
    ^self
! !

"ASDBase.ic method 0x200642e4; bytecode file offset 0x961970"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createFileNames
    | recoveredValue0 |
    recoveredValue0 := (self) makeGraph.
    (recoveredValue0) createFileNames.
    ^self
! !

"ASDBase.ic method 0x20064f84; bytecode file offset 0x961970"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
analyzeMakeGraph
    | recoveredValue0 |
    recoveredValue0 := (self) make.
    (recoveredValue0) analyze.
    ^self
! !

"ASDBase.ic method 0x20066164; bytecode file offset 0x963428"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
codeManager
    | recoveredValue0 |
    recoveredValue0 := codeManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200677cc; bytecode file offset 0x9646f8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
make
    | recoveredValue0 |
    recoveredValue0 := makeGraph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006794c; bytecode file offset 0x9646f8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
makeGraph
    | recoveredValue0 |
    recoveredValue0 := makeGraph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006810c; bytecode file offset 0x965b90"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
continue
    | recoveredValue0 |
    recoveredValue0 := status.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200681bc; bytecode file offset 0x965b90"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
status
    | recoveredValue0 |
    recoveredValue0 := status.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200696f8; bytecode file offset 0x966bdc"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007555c; bytecode file offset 0x9757c8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresExistentCodeHandle
    ^true
! !

"ASDBase.ic method 0x200798a4; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isPreviewCommand
    ^false
! !

"ASDBase.ic method 0x2007990c; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isCompileCommand
    ^false
! !

"ASDBase.ic method 0x20079f2c; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isANSICCommand
    ^false
! !

"ASDBase.ic method 0x2007a6bc; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isTransferCommand
    ^false
! !

"ASDBase.ic method 0x2007bbb4; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isBasicExportCodeCommand
    ^false
! !

"ASDBase.ic method 0x2007be14; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresExternalOSCode
    ^false
! !

"ASDBase.ic method 0x2007df2c; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresSCOOPIXGeneration
    ^false
! !

"ASDBase.ic method 0x2007e184; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
isINTECRIOTransferCommand
    ^false
! !

"ASDBase.ic method 0x2007f87c; bytecode file offset 0x97c330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresRTEInputFiles
    ^false
! !

"ASDBase.ic method 0x2008c71c; bytecode file offset 0x989498"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCodeNatureECCO
    (self) codeNature: ('ECCO').
    ^self
! !

"ASDBase.ic method 0x2008c92c; bytecode file offset 0x989498"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCodeNatureESDL
    (self) codeNature: ('ESDL').
    ^self
! !

"ASDBase.ic method 0x2008caec; bytecode file offset 0x989498"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCodeNatureANSIC
    (self) codeNature: ('ANSIC').
    ^self
! !

"ASDBase.ic method 0x20098e34; bytecode file offset 0x995850"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
fatalMustUseError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fatalMustUseError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009bd9c; bytecode file offset 0x998660"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForUpdateMemorySizeOfElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) make.
    recoveredValue2 := (recoveredValue1) projectNode.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009fb6c; bytecode file offset 0x99c9e0"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
setAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (recoveredValue0) getWorkingPath.
    (self) destinationPath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a528c; bytecode file offset 0x9a1dc8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
codeNature: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeNatureKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a547c; bytecode file offset 0x9a1dc8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
projectLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectLabelKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a549c; bytecode file offset 0x9a1dc8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useInternalTimestamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) useInternalTimestampKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a54ec; bytecode file offset 0x9a1dc8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
useCGen: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) useCGenKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a54fc; bytecode file offset 0x9a1dc8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
recursive: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) recursiveKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae748; bytecode file offset 0x9ab034"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
setAttribute: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b982c; bytecode file offset 0x9b60ec"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
destinationPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) destinationPathKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPathname.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b99d0; bytecode file offset 0x9b63d0"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkRestrictionsForMakeConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) makeGraph.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createMakeNodeFor: (recoveredValue1).
    (self) checkRestrictionsForMakeNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bbca4; bytecode file offset 0x9b8564"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createBasicCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createCommand: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) apiCommand.
    (recoveredValue2) apiCommand: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bde0c; bytecode file offset 0x9bb178"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
codeManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bece0; bytecode file offset 0x9bc0b4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
makeGraph: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeGraph := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf568; bytecode file offset 0x9bc0b4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
make: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    makeGraph := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0874; bytecode file offset 0x9bd228"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
status: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    status := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0f08; bytecode file offset 0x9bdf14"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c87b8; bytecode file offset 0x9c5078"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createMakeGraph: recoveredArg1 makeConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeConfigForContext.
    recoveredValue2 := (recoveredValue0) createGraphFor: (recoveredValue1) command: (self).
    recoveredValue3 := (self) makeGraph: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca6a4; bytecode file offset 0x9c7020"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) fatalError: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc87c; bytecode file offset 0x9d9138"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createMakeSubGraph: recoveredArg1 makeConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) createSubGraphFor: (recoveredValue1) command: (self).
    (self) make: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dedec; bytecode file offset 0x9db828"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) fatalError: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200dee8c; bytecode file offset 0x9db828"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) fatalError: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e8f58; bytecode file offset 0x9e5858"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
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

"ASDBase.ic method 0x200e8f90; bytecode file offset 0x9e5858"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
initializeComponentBasedFileStructureForMakeGraph: recoveredArg1
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

"ASDBase.ic method 0x200eda84; bytecode file offset 0x9ea394"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
infoNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f87fc; bytecode file offset 0x9f50c0"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForSCOOPIXGeneration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresSCOOPIXGeneration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForSCOOPIXGeneration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fdd70; bytecode file offset 0x9fa630"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkInterpolationMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mappingFile.
    (self) checkIntpolExistency: (recoveredValue0) file: (recoveredValue2) attribute: ('Mapping') errIfEmpty: (true).
    ^self
! !

"ASDBase.ic method 0x20107b50; bytecode file offset 0xa04410"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresSCOOPIXOILGeneration
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
            recoveredStack2 := (recoveredStack2) requiresSCOOPIXGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentBuildCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a71c; bytecode file offset 0xa17000"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
sourcesForPostGeneration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresProcessPostGenerate.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) sourcesForPostGeneration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGPostGenerateSourceCollector.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a768; bytecode file offset 0xa17044"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
sourcesForOSCodeExternGeneration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresExternalOSCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourcesForOSCodeExternGeneration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f968; bytecode file offset 0xa1c230"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
createCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) codeManager.
    recoveredValue2 := (self) makeGraph.
    recoveredValue3 := (recoveredValue0) createWithCodeManager: (recoveredValue1) make: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) attributes.
    (recoveredValue4) attributes: (recoveredValue5).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20121484; bytecode file offset 0xa1dd44"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
getBoolAttribute: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20123d34; bytecode file offset 0xa20628"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
generalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    (recoveredValue0) fatalMessage: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2012450c; bytecode file offset 0xa20e08"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := (recoveredValue0) fatalError: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2012c47c; bytecode file offset 0xa28d40"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkCompilerTool
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) checkCompilerDeclarationFileExists.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkCompilerToolExistency: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) continue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ebe0; bytecode file offset 0xa2b4a4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
sourcesForECCOGeneration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack0 := (recoveredStack0) toBeProcessedGSOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012fdc8; bytecode file offset 0xa2c68c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    status := true.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    attributes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2013170c; bytecode file offset 0xa2dfd0"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
printCommandOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('command: ').
    recoveredValue3 := (self) label.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20133c78; bytecode file offset 0xa305e4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
getStringAttribute: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20136770; bytecode file offset 0xa33034"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
generalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    (recoveredValue0) fatalMessage: (recoveredValue5) source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201367cc; bytecode file offset 0xa330a8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
generalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    (recoveredValue0) fatalMessage: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2013e57c; bytecode file offset 0xa3ae48"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForINTECRIOTransferDataInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresSCOOPIXGeneration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) make.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20148d90; bytecode file offset 0xa456ac"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
warningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Make') source: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148dc8; bytecode file offset 0xa456ac"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue5) category: ('Make') source: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20153be0; bytecode file offset 0xa504a4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
sortedNodes: recoveredArg1
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
            recoveredStack2 := [:block280cd740Arg1 :block280cd740Arg2 | 
    | block280cd740Value0 block280cd740Value1 block280cd740Value2 block280cd740Value3 block280cd740Value4 block280cd740Value5 block280cd740Value6 |
    block280cd740Value0 := block280cd740Arg1.
    block280cd740Value1 := (block280cd740Value0) makeConfig.
    block280cd740Value2 := (block280cd740Value1) label.
    block280cd740Value3 := block280cd740Arg2.
    block280cd740Value4 := (block280cd740Value3) makeConfig.
    block280cd740Value5 := (block280cd740Value4) label.
    block280cd740Value6 := (block280cd740Value2) <= (block280cd740Value5).
    block280cd740Value6
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017256c; bytecode file offset 0xa6ee38"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkAUTOSAR
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'CommandNotSupported'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'ASCET currently supports AUTOSAR code generation only (no compiling/linking)'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
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

"ASDBase.ic method 0x201726e8; bytecode file offset 0xa6efb4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
requiresProcessPostGenerate
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
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
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
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentBuildCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPostGenerateMakeFile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017a070; bytecode file offset 0xa76934"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
generalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    (recoveredValue0) fatalMessage: (recoveredValue7) source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2018275c; bytecode file offset 0xa7f02c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
osConfigurationSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectOptionSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d03f8Arg1 | 
    | block280d03f8Value0 block280d03f8Value1 block280d03f8Value2 block280d03f8Value3 |
    block280d03f8Value0 := block280d03f8Arg1.
    block280d03f8Value1 := ASDProjectSettings.
    block280d03f8Value2 := (block280d03f8Value1) optionGroupOS.
    block280d03f8Value3 := (block280d03f8Value0) optionGroup: (block280d03f8Value2).
    block280d03f8Value3
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20182d04; bytecode file offset 0xa7f600"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForPIDGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) make.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20182d2c; bytecode file offset 0xa7f600"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForEHooksGeneration
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
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) make.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198764; bytecode file offset 0xa95048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue7) category: ('Make') source: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20198780; bytecode file offset 0xa95048"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
warningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue7) category: ('Make') source: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a6110; bytecode file offset 0xaa29d8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkInterpolationRoutine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) headerFile.
    (self) checkIntpolExistency: (recoveredValue0) file: (recoveredValue2) attribute: ('Header') errIfEmpty: (false).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) libraryFile.
    (self) checkIntpolExistency: (recoveredValue3) file: (recoveredValue5) attribute: ('Library') errIfEmpty: (false).
    ^self
! !

"ASDBase.ic method 0x201a93d0; bytecode file offset 0xaa5c98"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkInterpolationRoutine: recoveredArg1 doCompile: recoveredArg2 doLink: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) headerFile.
    (self) checkIntpolExistency: (recoveredValue0) file: (recoveredValue2) attribute: ('Header') errIfEmpty: (false).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) libraryFile.
    (self) checkIntpolExistency: (recoveredValue3) file: (recoveredValue5) attribute: ('Library') errIfEmpty: (false).
    ^self
! !

"ASDBase.ic method 0x201b1540; bytecode file offset 0xaade14"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkCompilerSupport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCompiling.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'CommandNotSupported'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Selected compiler tool not valid'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) projectOptionSource.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca630; bytecode file offset 0xac6ef8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkInterpolationMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) interpolation.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isAliasInterpolation.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) checkInterpolationMapping: (recoveredBlock6Stack2).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x201dca4c; bytecode file offset 0xad9318"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkTool: recoveredArg1 support: recoveredArg2 target: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ToolNotSupported'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) projectOptionSource.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) generalError: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e6114; bytecode file offset 0xae29dc"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
needsGenerateECCOCode: recoveredArg1
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
            recoveredStack2 := 'Call_2008403786'.
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
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsGenerateModuleCode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsGenerateECCOInitCode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsGenerateECCOScoopIX.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ec250; bytecode file offset 0xae8b1c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
genOSConfiguration
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
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcessClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f719c; bytecode file offset 0xaf3a6c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkTool: recoveredArg1 support: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ToolNotSupported'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := (recoveredStack5) projectOptionSource.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) generalError: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20207e94; bytecode file offset 0xb04768"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkExternalToolExistency: recoveredArg1 description: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ASDExternalToolsOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) optionExternalToolPathForKey: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) target.
    recoveredValue7 := (recoveredValue6) basicGroup.
    recoveredValue8 := (self) target.
    recoveredValue9 := (recoveredValue8) class.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue9) labelForKey: (recoveredValue10).
    recoveredValue12 := (self) target.
    recoveredValue13 := (recoveredValue12) basicGroup.
    recoveredValue14 := (self) checkExistency: (recoveredValue4) description: (recoveredValue5) optionGroup: (recoveredValue7) optionLabel: (recoveredValue11) optionSection: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2020ce5c; bytecode file offset 0xb09724"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkOSTool
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
            recoveredStack0 := (recoveredStack0) osTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) osTool.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInternal.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkOSToolExistency: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ae84; bytecode file offset 0xb47758"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkRestrictionsForMakeNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnumNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecordNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentTypeLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentSource.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) fatalNotSupportedCommand: (recoveredStack2) componentType: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261e64; bytecode file offset 0xb5e73c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForOSGeneration: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
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
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateOSCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Array.
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
            recoveredStack1 := (recoveredStack1) projectNode.
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
            recoveredStack0 := #().
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b13c0; bytecode file offset 0xbadca4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkToolExistency: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) basePathKeyName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'root path'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBasePath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := ' root path'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicGroup.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) optionGroup.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1) description: (recoveredStack2) optionGroup: (recoveredStack3) optionLabel: (recoveredStack4) optionSection: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202da44c; bytecode file offset 0xbd6d30"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
findDependencies: recoveredArg1 monitorManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) makeGraph.
    recoveredValue2 := (recoveredValue1) dependencyCount.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := (self) makeGraph.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) build.
    recoveredBlock14Value2 := recoveredBlock14Value0.
    recoveredBlock14Value3 := recoveredArg1.
    (recoveredBlock14Value2) setTopNode: (recoveredBlock14Value3).
    recoveredBlock14Value4 := recoveredBlock14Value0.
    (recoveredBlock14Value4) markActiveNodes.
    (recoveredBlock14Value0) topologicalSort.
    (self) resolveSoftPrerequisites.
    recoveredBlock14Value5 := (self) makeGraph.
    (recoveredBlock14Value5) calculateUsedInterpolation.
    recoveredBlock14Value6 := (self) createFileNames.
    recoveredBlock14Value6
].
    (recoveredValue0) doTiming: ('FindingDependencies') title: ('Finding dependencies') max: (recoveredValue2) for: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202fc404; bytecode file offset 0xbf8ce4"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
initializeCodeStorageManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFileBasedCodeStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'kep9fe'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGProxySnippetStorageManager.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) initializeCodeStorageManager: (recoveredStack1) forCommand: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SGSnippetStorageManager.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) initializeCodeStorageManager: (recoveredStack1) forCommand: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := SGDatabaseCodeStorageManager.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) initializeCodeStorageManager: (recoveredStack1) forCommand: (recoveredStack2).
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

"ASDBase.ic method 0x20310160; bytecode file offset 0xc0ca38"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
generateScoopixDataAndFunctionElements: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sixGenerator.
    recoveredValue2 := (recoveredValue1) expander.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) nodesForINTECRIOTransferDataInfo.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) moduleCodeStorageHandle.
    recoveredBlock13Value3 := (recoveredBlock13Value2) scoopIXDataElements.
    recoveredBlock13Value4 := (recoveredBlock13Value0) printToStream: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) nodesForINTECRIOTransferFunctionInfo.
    recoveredValue6 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value1) moduleCodeStorageHandle.
    recoveredBlock35Value3 := (recoveredBlock35Value2) scoopIXFunctionElements.
    recoveredBlock35Value4 := (recoveredBlock35Value0) printToStream: (recoveredBlock35Value3).
    recoveredBlock35Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203305e8; bytecode file offset 0xc2ced0"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkExistency: recoveredArg1 description: recoveredArg2 optionGroup: recoveredArg3 optionLabel: recoveredArg4 optionSection: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) stationOptionSource: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'External Tools\Compiler'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeManager.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectOptionSource.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := '... or change the used compiler'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiSource: (recoveredStack1) labels: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'FileToolMissing'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) generalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203380cc; bytecode file offset 0xc349b8"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkMemClassDeclarationFileExists
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentBuildCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) memClassDeclarationFilename.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) readMemoryDeclarationFile: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentProjectCache.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'FileToolMissing'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) memSectionFileOptionLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) memSectionFileOptionLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) optionGroupOS.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := (recoveredStack6) projectOptionOSSettingsSource.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
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

"ASDBase.ic method 0x20378650; bytecode file offset 0xc74f30"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkInterpolationRoutines
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
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedInterpolation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isExperimentMode.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 46] ifFalse: [recoveredBlock19PC := 34].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal1.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) identifier.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) includes: (recoveredBlock19Stack3).
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 46] ifFalse: [recoveredBlock19PC := 65].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isMissingInterpolationSet.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 65] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isAliasInterpolation.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 65] ifFalse: [recoveredBlock19PC := 60].
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) checkInterpolationRoutine: (recoveredBlock19Stack2).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038eb3c; bytecode file offset 0xc8b41c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkCompilerDeclarationFileExists
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) fatalError: ('missingDeclaration') with: (recoveredBlock5Value0) with: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) checkForCompilerDeclaration: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerTool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerTool.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingTool.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'ToolMissing'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := TGCCompilerTool.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) declCategoryLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := recoveredBlock55Arg2.
    recoveredBlock55Value2 := (self) fatalError: ('missingDeclaration') with: (recoveredBlock55Value0) with: (recoveredBlock55Value1).
    recoveredBlock55Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) checkForOsToolDeclaration: (recoveredStack1).
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

"ASDBase.ic method 0x203c2a48; bytecode file offset 0xcbf330"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
nodesForARXMLGeneration
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) make.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) allNodesForARXmlGeneration.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isEnumNode.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 75] ifFalse: [recoveredBlock32PC := 48].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) componentKey.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack3 := [
    | recoveredBlock32Block57Value0 recoveredBlock32Block57Value1 recoveredBlock32Block57Value2 |
    recoveredBlock32Block57Value0 := recoveredLocal1.
    recoveredBlock32Block57Value1 := recoveredBlock32Arg1.
    recoveredBlock32Block57Value2 := (recoveredBlock32Block57Value0) add: (recoveredBlock32Block57Value1).
    recoveredBlock32Block57Value2
].
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) at: (recoveredBlock32Stack2) ifAbsentPut: (recoveredBlock32Stack3).
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0328; bytecode file offset 0xcecc1c"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkEmptyOSifFail: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) requireOSTasksForBuild.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 70.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeManager.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectOSSource.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) value: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPCTarget.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) makeGraph.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := 70.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeManager.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectOSSource.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) warningNo: (recoveredStack1) source: (recoveredStack2).
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

"ASDBase.ic method 0x20435c6c; bytecode file offset 0xd32554"
!SGAbstractCodeManagingCommand methodsFor: 'recovered'!
checkIntpolExistency: recoveredArg1 file: recoveredArg2 attribute: recoveredArg3 errIfEmpty: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionGroup: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) stationOptionSource: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 221.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathTokens: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := $$.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 220.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) warningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 220.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

