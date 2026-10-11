"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001548c; bytecode file offset 0x912098"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodeClass
    | recoveredValue0 |
    recoveredValue0 := SGMakeNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016bc8; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
moduleDescriptionExtension
    ^'module code'
! !

"ASDBase.ic method 0x20017108; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
scoopIXDescriptionExtension
    ^'SCOOP-IX information'
! !

"ASDBase.ic method 0x2001a8f4; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
osDescriptionExtension
    ^'operating system code'
! !

"ASDBase.ic method 0x2001bfc8; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
genericDescriptionExtension
    ^' - ECCO input'
! !

"ASDBase.ic method 0x2001dac8; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
asapDescriptionExtension
    ^'ASAM-2MC format'
! !

"ASDBase.ic method 0x2001feb0; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
externDescriptionExtension
    ^'external C-code'
! !

"ASDBase.ic method 0x200220d0; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
pidDescriptionExtension
    ^'project identifier code'
! !

"ASDBase.ic method 0x20023a74; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
sixDescriptionExtension
    ^'SCOOP-IX description'
! !

"ASDBase.ic method 0x200250c4; bytecode file offset 0x92209c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
rteDescriptionExtension
    ^'RTE configuration'
! !

"ASDBase.ic method 0x20025fb4; bytecode file offset 0x923928"
!SGAbstractMakeGraph methodsFor: 'recovered'!
initDescriptionExtension
    ^'initialization code'
! !

"ASDBase.ic method 0x200283f4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
globalHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileStructureStrategy.
    recoveredValue1 := (recoveredValue0) globalHeaderFileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028794; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029a34; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
isUpToDate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nodesForInitInstGeneration.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002be44; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
progressReporter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) progressReporter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c7e4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
projectIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) topNode.
    recoveredValue1 := (recoveredValue0) projectIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c834; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
currentProjectCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) workspaceCache.
    recoveredValue1 := (recoveredValue0) currentProjectCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c9c4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
currentMonitorStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) currentMonitorStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e1d4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) command.
    recoveredValue1 := (recoveredValue0) codeManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ee54; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
codeStorageManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) codeStorageManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f1a4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
toBePreviewedESDLCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) topNode.
    recoveredValue1 := (recoveredValue0) toBePreviewedESDLCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030a74; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031444; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
genOSConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) genOSConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031df4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
project
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033194; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
monitorManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) monitorManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200344d4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
getMapFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) topNode.
    recoveredValue1 := (recoveredValue0) getMapFile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200375a4; bytecode file offset 0x934580"
!SGAbstractMakeGraph methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) context.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b810; bytecode file offset 0x938608"
!SGAbstractMakeGraph methodsFor: 'recovered'!
softPrereqNodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) nodeFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b948; bytecode file offset 0x938608"
!SGAbstractMakeGraph methodsFor: 'recovered'!
hardPrereqNodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) nodeFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dc78; bytecode file offset 0x93bf94"
!SGAbstractMakeGraph methodsFor: 'recovered'!
workspaceCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGWorkspaceCache.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200494cc; bytecode file offset 0x947128"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectAllCompiledSOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) activeNodes.
    recoveredValue1 := (self) collectAllCompiledSOs: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004989c; bytecode file offset 0x947128"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForINTECRIOTransferFunctionInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := (self) nodesForINTECRIOTransferFunctionInfo: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a1dc; bytecode file offset 0x947128"
!SGAbstractMakeGraph methodsFor: 'recovered'!
toBeCheckedDependentParameterDatasets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) activeNodes.
    recoveredValue1 := (self) toBeCheckedDependentParameterDatasets: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200510b0; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
variantKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) variantKey.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051434; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
useLongNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) command.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) useLongFileNames.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051574; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) generatorSettings.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005168c; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
genPIDCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) isExperimentalTarget.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051998; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
isExperimentMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) isExperimentalTarget.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051ec0; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
makeSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) command.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) makeSettings.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200521e0; bytecode file offset 0x94f0e0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
codeGenerationOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    recoveredValue2 := (recoveredValue1) codeGenerationOptions.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059808; bytecode file offset 0x956284"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fatalMustUseError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) command.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fatalMustUseError: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200624b0; bytecode file offset 0x95f8b0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
moduleGenericDescriptionExtension
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) moduleDescriptionExtension.
    recoveredValue1 := (self) genericDescriptionExtension.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006294c; bytecode file offset 0x95f8b0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
osGenericDescriptionExtension
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osDescriptionExtension.
    recoveredValue1 := (self) genericDescriptionExtension.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062a50; bytecode file offset 0x95f8b0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
initGenericDescriptionExtension
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) initDescriptionExtension.
    recoveredValue1 := (self) genericDescriptionExtension.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006530c; bytecode file offset 0x961bcc"
!SGAbstractMakeGraph methodsFor: 'recovered'!
isSoftwareDevelopmentMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) isExperimentalTarget.
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200654c4; bytecode file offset 0x961e78"
!SGAbstractMakeGraph methodsFor: 'recovered'!
globalHeadersOfTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) target.
    recoveredValue2 := (recoveredValue1) globalHeaderFiles.
    recoveredValue3 := (recoveredValue2) asOrderedCollection.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200663bc; bytecode file offset 0x963428"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodes
    | recoveredValue0 |
    recoveredValue0 := nodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069104; bytecode file offset 0x965b90"
!SGAbstractMakeGraph methodsFor: 'recovered'!
topNode
    | recoveredValue0 |
    recoveredValue0 := topNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa64; bytecode file offset 0x967a18"
!SGAbstractMakeGraph methodsFor: 'recovered'!
projectNode
    | recoveredValue0 |
    recoveredValue0 := projectNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c014; bytecode file offset 0x9692b0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
command
    | recoveredValue0 |
    recoveredValue0 := command.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e788; bytecode file offset 0x96b41c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fileStructureStrategy
    | recoveredValue0 |
    recoveredValue0 := fileStructureStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006efa4; bytecode file offset 0x96b8a0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
moduleCodeBaseFileNames
    | recoveredValue0 |
    recoveredValue0 := moduleCodeBaseFileNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f308; bytecode file offset 0x96bc1c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
exportImportTimeStamp
    | recoveredValue0 |
    recoveredValue0 := exportImportTimeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f9f0; bytecode file offset 0x96c42c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
usedInterpolation
    | recoveredValue0 |
    recoveredValue0 := usedInterpolation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff54; bytecode file offset 0x96c850"
!SGAbstractMakeGraph methodsFor: 'recovered'!
swComponentNode
    | recoveredValue0 |
    recoveredValue0 := swComponentNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200864b8; bytecode file offset 0x982e18"
!SGAbstractMakeGraph methodsFor: 'recovered'!
needsGenerateECCOCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) currentCommand.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) needsGenerateECCOCode: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090130; bytecode file offset 0x98c9ec"
!SGAbstractMakeGraph methodsFor: 'recovered'!
relevantMdlClassInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) relevantMdlClassInterfaceTable.
    recoveredValue1 := (recoveredValue0) values.
    mdlInterfaces := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20098564; bytecode file offset 0x995850"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fatalError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fatalError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ad63c; bytecode file offset 0x9a9f0c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) errorNo: (recoveredValue0) with: (recoveredValue1) source: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae888; bytecode file offset 0x9ab1ac"
!SGAbstractMakeGraph methodsFor: 'recovered'!
longFileNameKey: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) cCodeSettings.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) baseFilenameCategory: (recoveredValue2) componentInfo: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b9204; bytecode file offset 0x9b5ac0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
updateTimeStamps: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := exportImportTimeStamp.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exportImportTimeStamp.
    recoveredValue3 := (recoveredValue0) max: (recoveredValue2).
    exportImportTimeStamp := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200b95bc; bytecode file offset 0x9b5e7c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
combinedDescriptionExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('>>') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' combined module/init code').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bd300; bytecode file offset 0x9b9bbc"
!SGAbstractMakeGraph methodsFor: 'recovered'!
createMakeNodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nodeClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1) in: (self) settings: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be8c4; bytecode file offset 0x9bb178"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nodes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa5c; bytecode file offset 0x9bd228"
!SGAbstractMakeGraph methodsFor: 'recovered'!
topNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2174; bytecode file offset 0x9beac8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
projectNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f28; bytecode file offset 0x9c1afc"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fileStructureStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileStructureStrategy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6454; bytecode file offset 0x9c2dd0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
swComponentNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swComponentNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c85fc; bytecode file offset 0x9c4f88"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) errorNo: (recoveredValue0) with: (#()) source: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c865c; bytecode file offset 0x9c4f88"
!SGAbstractMakeGraph methodsFor: 'recovered'!
warningNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) warningNo: (recoveredValue0) with: (#()) source: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e5a24; bytecode file offset 0x9e22ec"
!SGAbstractMakeGraph methodsFor: 'recovered'!
build
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := (recoveredValue0) first.
    (recoveredValue1) expandRecursive.
    recoveredValue2 := (self) progressReporter.
    (recoveredValue2) finishStage.
    ^self
! !

"ASDBase.ic method 0x200ea8cc; bytecode file offset 0x9e7190"
!SGAbstractMakeGraph methodsFor: 'recovered'!
initDescriptionExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) initDescriptionExtension.
    recoveredValue1 := (recoveredValue0) , (' for "').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ec4a8; bytecode file offset 0x9e8d68"
!SGAbstractMakeGraph methodsFor: 'recovered'!
warningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ecfbc; bytecode file offset 0x9e987c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) errorNo: (recoveredValue0) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200eda70; bytecode file offset 0x9ea394"
!SGAbstractMakeGraph methodsFor: 'recovered'!
infoNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eda98; bytecode file offset 0x9ea394"
!SGAbstractMakeGraph methodsFor: 'recovered'!
warningNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200edac0; bytecode file offset 0x9ea394"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f7f8c; bytecode file offset 0x9f4e38"
!SGAbstractMakeGraph methodsFor: 'recovered'!
allMakeConfigs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5550Arg1 | 
    | block280c5550Value0 block280c5550Value1 |
    block280c5550Value0 := block280c5550Arg1.
    block280c5550Value1 := (block280c5550Value0) module.
    block280c5550Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200faeb0; bytecode file offset 0x9f7774"
!SGAbstractMakeGraph methodsFor: 'recovered'!
addRootNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) nodeFor: (recoveredValue0).
    recoveredValue1 := (self) nodes.
    recoveredValue2 := (recoveredValue1) first.
    (self) projectNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fcd58; bytecode file offset 0x9f9614"
!SGAbstractMakeGraph methodsFor: 'recovered'!
command: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    command := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeFileStructureForMakeGraph: (self).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeCodeStorageManager.
    ^self
! !

"ASDBase.ic method 0x200fd100; bytecode file offset 0x9f9a10"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForInitInstGeneration: recoveredArg1
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
            recoveredStack2 := [:block280c6000Arg1 | 
    | block280c6000Value0 block280c6000Value1 |
    block280c6000Value0 := block280c6000Arg1.
    block280c6000Value1 := (block280c6000Value0) needsGenerateInitInstCode.
    block280c6000Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010abac; bytecode file offset 0xa0746c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
allMdlInterfaces
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlInterfaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            (recoveredStack0) relevantMdlClassInterfaces.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlInterfaces.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20110110; bytecode file offset 0xa0c9d0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
updateMakeConfig: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) requiresImplementationSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) implementation: (recoveredStack1).
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

"ASDBase.ic method 0x20119c8c; bytecode file offset 0xa16880"
!SGAbstractMakeGraph methodsFor: 'recovered'!
analyzeInteger
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c80c4Arg1 | 
    | block280c80c4Value0 block280c80c4Value1 |
    block280c80c4Value0 := block280c80c4Arg1.
    block280c80c4Value1 := (block280c80c4Value0) analyzeInteger.
    block280c80c4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20123eb0; bytecode file offset 0xa20778"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fatalNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) fatalNo: (recoveredValue1) args: (recoveredValue4) category: ('Make') source: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20129e74; bytecode file offset 0xa26730"
!SGAbstractMakeGraph methodsFor: 'recovered'!
globalElementNamesTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := exports.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allGlobalNamesFromExportedAndMappedElementsDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            exports := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := exports.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a0cc; bytecode file offset 0xa269a8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
mdlInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mdlInterfaces.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            mdlInterfaces := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := mdlInterfaces.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012abcc; bytecode file offset 0xa27488"
!SGAbstractMakeGraph methodsFor: 'recovered'!
multipleInstanceTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := multipleInstanceTable.
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
            multipleInstanceTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := multipleInstanceTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131c70; bytecode file offset 0xa2e534"
!SGAbstractMakeGraph methodsFor: 'recovered'!
allActiveNodesRecursive: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeNodes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) topNode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20141a0c; bytecode file offset 0xa3e2d0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectAllCompiledSOs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGANSICSourceCollector.
    recoveredValue1 := (self) fileStructureStrategy.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    compileSourceCollector := recoveredValue2.
    recoveredValue3 := compileSourceCollector.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) collectAllCompiledSOs: (recoveredValue4).
    recoveredValue5 := compileSourceCollector.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20148de4; bytecode file offset 0xa456ac"
!SGAbstractMakeGraph methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2014f418; bytecode file offset 0xa4bce0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
analyzeInitCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280ccfa8Arg1 | 
    | block280ccfa8Value0 block280ccfa8Value1 block280ccfa8Value2 |
    block280ccfa8Value0 := block280ccfa8Arg1.
    (block280ccfa8Value0) resetInitSourceTimeStamp.
    block280ccfa8Value1 := block280ccfa8Arg1.
    block280ccfa8Value2 := (block280ccfa8Value1) analyzeInitInstCodeGeneration.
    block280ccfa8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20155ea0; bytecode file offset 0xa5280c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
moduleInstanceTable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) multipleInstanceTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd914Value0 block280cd914Value1 |
    block280cd914Value0 := LookupTable.
    block280cd914Value1 := (block280cd914Value0) new.
    block280cd914Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20155f40; bytecode file offset 0xa5280c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
componentInstances: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) multipleInstanceTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd9c8Value0 block280cd9c8Value1 |
    block280cd9c8Value0 := OrderedCollection.
    block280cd9c8Value1 := (block280cd9c8Value0) new.
    block280cd9c8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d600; bytecode file offset 0xa59ec0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
latestProjectInfluencesTimeStamp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := latestProjectTimeStamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) implementationTypeTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            latestProjectTimeStamp := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := latestProjectTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20161a70; bytecode file offset 0xa5e354"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForModuleGeneration
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
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForModuleGeneration: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeNodes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForModuleGeneration: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161a8c; bytecode file offset 0xa5e354"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForInitInstGeneration
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
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForInitInstGeneration: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeNodes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForInitInstGeneration: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20163704; bytecode file offset 0xa5ffd8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
dependencyCount
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) projectNode.
    recoveredValue1 := [
    ^-1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) projectNode.
    recoveredValue3 := (recoveredValue2) dependencyCount.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016a78c; bytecode file offset 0xa67058"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectAllScoopIxSOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGScoopIxSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) projectNode.
    (recoveredValue4) anyMakeNode: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017207c; bytecode file offset 0xa6e944"
!SGAbstractMakeGraph methodsFor: 'recovered'!
storeAllNodesCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectNode.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) projectNode.
    recoveredBlock5Value1 := (self) nodes.
    recoveredBlock5Value2 := (recoveredBlock5Value1) size.
    recoveredBlock5Value3 := (recoveredBlock5Value0) dependencyCount: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20177aac; bytecode file offset 0xa74370"
!SGAbstractMakeGraph methodsFor: 'recovered'!
mappedClassVarFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) globalElementNamesTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) elementName.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) someElement.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20189574; bytecode file offset 0xa85e44"
!SGAbstractMakeGraph methodsFor: 'recovered'!
sourcesForOSCodeExternGeneration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGOilGenerateSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) projectNode.
    (recoveredValue4) anyMakeNode: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) toBeProcessedSources.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2018dfec; bytecode file offset 0xa8a8ac"
!SGAbstractMakeGraph methodsFor: 'recovered'!
fileNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileNames.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    fileNames := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := fileNames.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ac010; bytecode file offset 0xaa88dc"
!SGAbstractMakeGraph methodsFor: 'recovered'!
addNodeFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createMakeNodeFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) updateTimeStamps: (recoveredValue2).
    recoveredValue3 := nodeMap.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) lookupKey.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    recoveredValue7 := (self) nodes.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) add: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201c70f4; bytecode file offset 0xac39c8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectAdditionalScoopIXSOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGCompileSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    compileSourceCollector := recoveredValue1.
    recoveredValue2 := compileSourceCollector.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    recoveredValue4 := Array.
    recoveredValue5 := (self) projectNode.
    recoveredValue6 := compileSourceCollector.
    recoveredValue7 := (recoveredValue5) allAdditionalScoopIXSOs: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) with: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201c7138; bytecode file offset 0xac3a04"
!SGAbstractMakeGraph methodsFor: 'recovered'!
calculateUsedInterpolation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    usedInterpolation := recoveredValue1.
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := usedInterpolation.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) usedInterpolations.
    recoveredBlock10Value3 := (recoveredBlock10Value0) addAll: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201c7328; bytecode file offset 0xac3bec"
!SGAbstractMakeGraph methodsFor: 'recovered'!
activeNodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := activeNodes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d4754Arg1 | 
    | block280d4754Value0 block280d4754Value1 |
    block280d4754Value0 := block280d4754Arg1.
    block280d4754Value1 := (block280d4754Value0) isActive.
    block280d4754Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            activeNodes := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := activeNodes.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f318c; bytecode file offset 0xaefa58"
!SGAbstractMakeGraph methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) nodes: (recoveredValue1).
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    nodeMap := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    moduleCodeBaseFileNames := recoveredValue5.
    exportImportTimeStamp := -1.
    ^self
! !

"ASDBase.ic method 0x201f61cc; bytecode file offset 0xaf2a90"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) updateMakeConfig: (recoveredValue0).
    recoveredValue1 := nodeMap.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) lookupKey.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (self) addNodeFor: (recoveredBlock15Value0).
    ^recoveredBlock15Value1
].
    recoveredValue5 := (recoveredValue1) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2020c5f8; bytecode file offset 0xb08ec8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForUpdatingDependentParameter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280da07cArg1 | 
    | block280da07cValue0 block280da07cValue1 |
    block280da07cValue0 := block280da07cArg1.
    block280da07cValue1 := (block280da07cValue0) needsCheckDependentParameter.
    block280da07cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := [
    ^#()
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202174a4; bytecode file offset 0xb13d74"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectToBeCompiledSOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGANSICSourceCollector.
    recoveredValue1 := (self) fileStructureStrategy.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    compileSourceCollector := recoveredValue2.
    (self) markSingleInstanceNodes.
    recoveredValue3 := (self) activeNodes.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := compileSourceCollector.
    recoveredBlock16Value2 := (recoveredBlock16Value0) toBeCompiledSOs: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := compileSourceCollector.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021a528; bytecode file offset 0xb16df0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
anyNode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) projectNode.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) projectNode.
    ^recoveredBlock5Value0
].
    (recoveredValue0) notNil: (recoveredValue1).
    recoveredValue2 := (self) topNode.
    recoveredValue3 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) topNode.
    ^recoveredBlock18Value0
].
    (recoveredValue2) notNil: (recoveredValue3).
    recoveredValue4 := (self) nodes.
    recoveredValue5 := (recoveredValue4) first.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022c7b0; bytecode file offset 0xb29088"
!SGAbstractMakeGraph methodsFor: 'recovered'!
asPlainCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGLmManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWriteStream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPerlCodeStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) beginPlainCode.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) endPlainCode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022d1cc; bytecode file offset 0xb29a94"
!SGAbstractMakeGraph methodsFor: 'recovered'!
toBeCheckedDependentParameterDatasets: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredLocal1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) toBeCheckedDependentParameterDatasets: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022fa08; bytecode file offset 0xb2c2d8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
collectExternalSOs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCompileSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    compileSourceCollector := recoveredValue1.
    recoveredValue2 := compileSourceCollector.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    recoveredValue4 := (self) activeNodes.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := compileSourceCollector.
    recoveredBlock17Value2 := (recoveredBlock17Value0) toBeCompiledExternalSOs: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := compileSourceCollector.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2024802c; bytecode file offset 0xb44900"
!SGAbstractMakeGraph methodsFor: 'recovered'!
resolveSoftPrerequisites
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
            recoveredStack2 := 'Call_69783'.
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
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280de6ccArg1 | 
    | block280de6ccValue0 |
    block280de6ccValue0 := block280de6ccArg1.
    block280de6ccValue0
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (self) currentMonitorStream.
    recoveredBlock20Value2 := (recoveredBlock20Value0) resolveSoftPrerequisites: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024968c; bytecode file offset 0xb45f60"
!SGAbstractMakeGraph methodsFor: 'recovered'!
markActiveNodes
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
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setActive.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) markActiveRecursive.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20266150; bytecode file offset 0xb62a20"
!SGAbstractMakeGraph methodsFor: 'recovered'!
uniqueFileNameFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useLongNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) longFileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringCharsFor: (recoveredStack1) dict: (recoveredStack2) max7: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 37.
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
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringCharsFor: (recoveredStack1) dict: (recoveredStack2) max7: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026a7ac; bytecode file offset 0xb6707c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
allNodesForARXmlGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e0238Arg1 | 
    | block280e0238Stack0 block280e0238Stack1 block280e0238Stack2 block280e0238Stack3 block280e0238PC block280e0238Step block280e0238Done block280e0238Result |
    block280e0238Stack0 := self.
    block280e0238PC := 4.
    block280e0238Done := false.
    [block280e0238Done not] whileTrue: [
        block280e0238Step := block280e0238PC.
        block280e0238Step = 4 ifTrue: [
            block280e0238Stack1 := true.
            block280e0238PC := 5.
        ].
        block280e0238Step = 5 ifTrue: [
            block280e0238Stack2 := block280e0238Arg1.
            block280e0238PC := 6.
        ].
        block280e0238Step = 6 ifTrue: [
            block280e0238Stack2 := (block280e0238Stack2) isARNode.
            block280e0238PC := 7.
        ].
        block280e0238Step = 7 ifTrue: [
            (block280e0238Stack2) ifTrue: [block280e0238PC := 30] ifFalse: [block280e0238PC := 10].
        ].
        block280e0238Step = 10 ifTrue: [
            block280e0238PC := 11.
        ].
        block280e0238Step = 11 ifTrue: [
            block280e0238Stack1 := true.
            block280e0238PC := 12.
        ].
        block280e0238Step = 12 ifTrue: [
            block280e0238Stack2 := block280e0238Arg1.
            block280e0238PC := 13.
        ].
        block280e0238Step = 13 ifTrue: [
            block280e0238Stack2 := (block280e0238Stack2) isProjectNode.
            block280e0238PC := 14.
        ].
        block280e0238Step = 14 ifTrue: [
            (block280e0238Stack2) ifTrue: [block280e0238PC := 30] ifFalse: [block280e0238PC := 18].
        ].
        block280e0238Step = 18 ifTrue: [
            block280e0238PC := 19.
        ].
        block280e0238Step = 19 ifTrue: [
            block280e0238Stack1 := true.
            block280e0238PC := 20.
        ].
        block280e0238Step = 20 ifTrue: [
            block280e0238Stack2 := block280e0238Arg1.
            block280e0238PC := 21.
        ].
        block280e0238Step = 21 ifTrue: [
            block280e0238Stack2 := (block280e0238Stack2) isEnumNode.
            block280e0238PC := 23.
        ].
        block280e0238Step = 23 ifTrue: [
            (block280e0238Stack2) ifTrue: [block280e0238PC := 30] ifFalse: [block280e0238PC := 26].
        ].
        block280e0238Step = 26 ifTrue: [
            block280e0238PC := 27.
        ].
        block280e0238Step = 27 ifTrue: [
            block280e0238Stack1 := block280e0238Arg1.
            block280e0238PC := 28.
        ].
        block280e0238Step = 28 ifTrue: [
            block280e0238Stack1 := (block280e0238Stack1) isRecordNode.
            block280e0238PC := 30.
        ].
        block280e0238Step = 30 ifTrue: [
            block280e0238Result := block280e0238Stack1.
            block280e0238Done := true.
        ].
    ].
    block280e0238Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202704f0; bytecode file offset 0xb6cdb8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
latestOSPrereqPropagatedTimeStamp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := -1.
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isModuleNode.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 33].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) latestOSPrereqPropagatedTimeStamp.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) max: (recoveredBlock10Stack2).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20291ce0; bytecode file offset 0xb8e5b8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
toBeProcessedGSOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGECCOSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    (self) markSingleInstanceNodes.
    recoveredValue4 := (self) nodes.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) anyMakeNode: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) toBeProcessedSources.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202971f8; bytecode file offset 0xb93ac8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
needGenerateAnyInitClassCode
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
            recoveredStack0 := (recoveredStack0) isExperimentMode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isComponentMakeNode.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 39].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) needsGenerateModuleCode.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 36] ifFalse: [recoveredBlock16PC := 39].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c750; bytecode file offset 0xb9901c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodeForExportOwner: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) dbObject.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) sgClass.
    recoveredBlock5Value4 := (recoveredBlock5Value3) dbObject.
    recoveredBlock5Value5 := (recoveredBlock5Value1) = (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    recoveredValue2 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) createDefaultMakeConfig.
    ^recoveredBlock21Value1
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) module.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a4aa4; bytecode file offset 0xba137c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
allGenericSourceObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGECCOSourceCollector.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) fileStructureStrategy.
    (recoveredValue2) fileStructureStrategy: (recoveredValue3).
    recoveredValue4 := (self) activeNodes.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    (recoveredBlock19Value0) setFileOut.
    recoveredBlock19Value1 := recoveredLocal1.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    (recoveredBlock19Value1) anyMakeNode: (recoveredBlock19Value2).
    recoveredBlock19Value3 := recoveredBlock19Arg1.
    recoveredBlock19Value4 := (recoveredBlock19Value3) clearFileOut.
    recoveredBlock19Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202c55d0; bytecode file offset 0xbc1ea0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForINTECRIOTransferFunctionInfo: recoveredArg1
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
            recoveredStack2 := [:block280e5554Arg1 | 
    | block280e5554Stack0 block280e5554Stack1 block280e5554Stack2 block280e5554Stack3 block280e5554PC block280e5554Step block280e5554Done block280e5554Result |
    block280e5554Stack0 := self.
    block280e5554PC := 4.
    block280e5554Done := false.
    [block280e5554Done not] whileTrue: [
        block280e5554Step := block280e5554PC.
        block280e5554Step = 4 ifTrue: [
            block280e5554Stack1 := true.
            block280e5554PC := 5.
        ].
        block280e5554Step = 5 ifTrue: [
            block280e5554Stack2 := block280e5554Arg1.
            block280e5554PC := 6.
        ].
        block280e5554Step = 6 ifTrue: [
            block280e5554Stack2 := (block280e5554Stack2) isClassNode.
            block280e5554PC := 7.
        ].
        block280e5554Step = 7 ifTrue: [
            (block280e5554Stack2) ifTrue: [block280e5554PC := 38] ifFalse: [block280e5554PC := 10].
        ].
        block280e5554Step = 10 ifTrue: [
            block280e5554PC := 11.
        ].
        block280e5554Step = 11 ifTrue: [
            block280e5554Stack1 := true.
            block280e5554PC := 12.
        ].
        block280e5554Step = 12 ifTrue: [
            block280e5554Stack2 := block280e5554Arg1.
            block280e5554PC := 13.
        ].
        block280e5554Step = 13 ifTrue: [
            block280e5554Stack2 := (block280e5554Stack2) isHWCModuleNode.
            block280e5554PC := 14.
        ].
        block280e5554Step = 14 ifTrue: [
            (block280e5554Stack2) ifTrue: [block280e5554PC := 38] ifFalse: [block280e5554PC := 18].
        ].
        block280e5554Step = 18 ifTrue: [
            block280e5554PC := 19.
        ].
        block280e5554Step = 19 ifTrue: [
            block280e5554Stack1 := true.
            block280e5554PC := 20.
        ].
        block280e5554Step = 20 ifTrue: [
            block280e5554Stack2 := block280e5554Arg1.
            block280e5554PC := 21.
        ].
        block280e5554Step = 21 ifTrue: [
            block280e5554Stack2 := (block280e5554Stack2) isEnumNode.
            block280e5554PC := 22.
        ].
        block280e5554Step = 22 ifTrue: [
            (block280e5554Stack2) ifTrue: [block280e5554PC := 38] ifFalse: [block280e5554PC := 26].
        ].
        block280e5554Step = 26 ifTrue: [
            block280e5554PC := 27.
        ].
        block280e5554Step = 27 ifTrue: [
            block280e5554Stack1 := true.
            block280e5554PC := 28.
        ].
        block280e5554Step = 28 ifTrue: [
            block280e5554Stack2 := block280e5554Arg1.
            block280e5554PC := 29.
        ].
        block280e5554Step = 29 ifTrue: [
            block280e5554Stack2 := (block280e5554Stack2) isARNode.
            block280e5554PC := 31.
        ].
        block280e5554Step = 31 ifTrue: [
            (block280e5554Stack2) ifTrue: [block280e5554PC := 38] ifFalse: [block280e5554PC := 34].
        ].
        block280e5554Step = 34 ifTrue: [
            block280e5554PC := 35.
        ].
        block280e5554Step = 35 ifTrue: [
            block280e5554Stack1 := block280e5554Arg1.
            block280e5554PC := 36.
        ].
        block280e5554Step = 36 ifTrue: [
            block280e5554Stack1 := (block280e5554Stack1) isRecordNode.
            block280e5554PC := 38.
        ].
        block280e5554Step = 38 ifTrue: [
            block280e5554Result := block280e5554Stack1.
            block280e5554Done := true.
        ].
    ].
    block280e5554Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d75c8; bytecode file offset 0xbd3ea4"
!SGAbstractMakeGraph methodsFor: 'recovered'!
analyzeController
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) codeManager.
    recoveredBlock4Value1 := (recoveredBlock4Value0) fatalError: ('generate').
    recoveredBlock4Value1
].
    (self) checkControllerRestrictions: (recoveredValue0).
    recoveredValue1 := (self) nodes.
    recoveredValue2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) progressReporter.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isCancelled.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 45] ifFalse: [recoveredBlock20PC := 36].
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            (recoveredBlock20Stack1) analyzeController.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack1 := self.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) progressReporter.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) step.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202dc20c; bytecode file offset 0xbd8ae0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForInstanceTreeWalkingDatasetCollection
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isEnumNode.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 43] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) needsGenerateModuleCode.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 43] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) needsGenerateInitInstCode.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 43] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203172c0; bytecode file offset 0xc13b94"
!SGAbstractMakeGraph methodsFor: 'recovered'!
enumerationNodes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isEnumNode.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 48].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) componentKey.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block35Value0 |
    recoveredBlock11Block35Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block35Value0
].
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) values.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20344000; bytecode file offset 0xc408ec"
!SGAbstractMakeGraph methodsFor: 'recovered'!
touchAll
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) monitorManager.
    recoveredValue1 := (self) activeNodes.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := ('Rl') == ('Call_2008400220').
    recoveredBlock13Value1 := (self) nodes.
    recoveredBlock13Value2 := [:recoveredBlock13Block28Arg1 | 
    | recoveredBlock13Block28Stack0 recoveredBlock13Block28Stack1 recoveredBlock13Block28Stack2 recoveredBlock13Block28Stack3 recoveredBlock13Block28PC recoveredBlock13Block28Step recoveredBlock13Block28Done recoveredBlock13Block28Result |
    recoveredBlock13Block28Stack0 := self.
    recoveredBlock13Block28PC := 34.
    recoveredBlock13Block28Done := false.
    [recoveredBlock13Block28Done not] whileTrue: [
        recoveredBlock13Block28Step := recoveredBlock13Block28PC.
        recoveredBlock13Block28Step = 34 ifTrue: [
            recoveredBlock13Block28Stack1 := nil.
            recoveredBlock13Block28PC := 35.
        ].
        recoveredBlock13Block28Step = 35 ifTrue: [
            recoveredBlock13Block28Stack2 := self.
            recoveredBlock13Block28PC := 36.
        ].
        recoveredBlock13Block28Step = 36 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) progressReporter.
            recoveredBlock13Block28PC := 38.
        ].
        recoveredBlock13Block28Step = 38 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) isCancelled.
            recoveredBlock13Block28PC := 40.
        ].
        recoveredBlock13Block28Step = 40 ifTrue: [
            (recoveredBlock13Block28Stack2) ifTrue: [recoveredBlock13Block28PC := 54] ifFalse: [recoveredBlock13Block28PC := 44].
        ].
        recoveredBlock13Block28Step = 44 ifTrue: [
            recoveredBlock13Block28PC := 45.
        ].
        recoveredBlock13Block28Step = 45 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 46.
        ].
        recoveredBlock13Block28Step = 46 ifTrue: [
            recoveredBlock13Block28Stack2 := false.
            recoveredBlock13Block28PC := 47.
        ].
        recoveredBlock13Block28Step = 47 ifTrue: [
            (recoveredBlock13Block28Stack1) touch: (recoveredBlock13Block28Stack2).
            recoveredBlock13Block28PC := 49.
        ].
        recoveredBlock13Block28Step = 49 ifTrue: [
            recoveredBlock13Block28Stack1 := self.
            recoveredBlock13Block28PC := 50.
        ].
        recoveredBlock13Block28Step = 50 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) progressReporter.
            recoveredBlock13Block28PC := 52.
        ].
        recoveredBlock13Block28Step = 52 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) step.
            recoveredBlock13Block28PC := 54.
        ].
        recoveredBlock13Block28Step = 54 ifTrue: [
            recoveredBlock13Block28Result := recoveredBlock13Block28Stack1.
            recoveredBlock13Block28Done := true.
        ].
    ].
    recoveredBlock13Block28Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue0) doTiming: ('TouchingNodes') title: ('Touching nodes') max: (recoveredValue2) for: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2034543c; bytecode file offset 0xc41d24"
!SGAbstractMakeGraph methodsFor: 'recovered'!
sourcesForRTECodeGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGRTEDocSourceCollector.
    recoveredValue1 := (self) currentBuildCache.
    recoveredValue2 := (recoveredValue1) autosarSettings.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    rteSourceCollector := recoveredValue3.
    recoveredValue4 := rteSourceCollector.
    recoveredValue5 := SGAggregatedComponentKindSourceFileStructureStrategy.
    recoveredValue6 := (self) project.
    recoveredValue7 := (recoveredValue6) target.
    recoveredValue8 := (recoveredValue5) create: (recoveredValue7).
    (recoveredValue4) fileStructureStrategy: (recoveredValue8).
    recoveredValue9 := (self) nodes.
    recoveredValue10 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := recoveredArg1.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            (recoveredBlock26Stack1) ifTrue: [recoveredBlock26PC := 38] ifFalse: [recoveredBlock26PC := 52].
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            (recoveredBlock26Stack1) setForcedUsage.
            recoveredBlock26PC := 41.
        ].
        recoveredBlock26Step = 41 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := rteSourceCollector.
            recoveredBlock26PC := 44.
        ].
        recoveredBlock26Step = 44 ifTrue: [
            (recoveredBlock26Stack1) acceptMakeNodeVisitor: (recoveredBlock26Stack2).
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) clearForcedUsage.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 52 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 53.
        ].
        recoveredBlock26Step = 53 ifTrue: [
            recoveredBlock26Stack2 := rteSourceCollector.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) acceptMakeNodeVisitor: (recoveredBlock26Stack2).
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := rteSourceCollector.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2036611c; bytecode file offset 0xc629f4"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForPreGeneration
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) activeNodes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) needsPreGenerateCode.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 58].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) componentKey.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block35Value0 recoveredBlock11Block35Value1 recoveredBlock11Block35Value2 recoveredBlock11Block35Value3 recoveredBlock11Block35Value4 |
    recoveredBlock11Block35Value0 := recoveredLocal1.
    recoveredBlock11Block35Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block35Value2 := (recoveredBlock11Block35Value1) componentKey.
    recoveredBlock11Block35Value3 := recoveredBlock11Arg1.
    recoveredBlock11Block35Value4 := (recoveredBlock11Block35Value0) at: (recoveredBlock11Block35Value2) put: (recoveredBlock11Block35Value3).
    recoveredBlock11Block35Value4
].
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) values.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2036dbe4; bytecode file offset 0xc6a4b8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForModuleGeneration: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
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
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) needsGenerateModuleCode.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 61].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) componentKey.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := [
    | recoveredBlock19Block43Value0 recoveredBlock19Block43Value1 recoveredBlock19Block43Value2 |
    recoveredBlock19Block43Value0 := recoveredLocal1.
    recoveredBlock19Block43Value1 := recoveredBlock19Arg1.
    recoveredBlock19Block43Value2 := (recoveredBlock19Block43Value0) add: (recoveredBlock19Block43Value1).
    recoveredBlock19Block43Value2
].
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) ifAbsentPut: (recoveredBlock19Stack3).
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20372190; bytecode file offset 0xc6ea6c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
stateMachineNodes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isClassNode.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 60].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) sgClass.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isSmClass.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 36] ifFalse: [recoveredBlock11PC := 60].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) sgClass.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) label.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block47Value0 |
    recoveredBlock11Block47Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block47Value0
].
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) values.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2038ba98; bytecode file offset 0xc88370"
!SGAbstractMakeGraph methodsFor: 'recovered'!
dictionary: recoveredArg1 containsFileName: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 14].
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
            recoveredStack3 := 'I'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'M'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'F'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 'E'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'H'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20396974; bytecode file offset 0xc93268"
!SGAbstractMakeGraph methodsFor: 'recovered'!
sourcesForPostGeneration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGPostGenerateSourceCollector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGNoHeaderFileStructureStrategy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) target.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) create: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack3) considerCppCommands: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack3) considerInitCSource: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block280f3ca8Arg1 | 
    | block280f3ca8Stack0 block280f3ca8Stack1 block280f3ca8Stack2 block280f3ca8Stack3 block280f3ca8PC block280f3ca8Step block280f3ca8Done block280f3ca8Result |
    block280f3ca8Stack0 := self.
    block280f3ca8PC := 4.
    block280f3ca8Done := false.
    [block280f3ca8Done not] whileTrue: [
        block280f3ca8Step := block280f3ca8PC.
        block280f3ca8Step = 4 ifTrue: [
            block280f3ca8Stack1 := true.
            block280f3ca8PC := 5.
        ].
        block280f3ca8Step = 5 ifTrue: [
            block280f3ca8Stack2 := block280f3ca8Arg1.
            block280f3ca8PC := 6.
        ].
        block280f3ca8Step = 6 ifTrue: [
            block280f3ca8Stack2 := (block280f3ca8Stack2) isModuleNode.
            block280f3ca8PC := 8.
        ].
        block280f3ca8Step = 8 ifTrue: [
            (block280f3ca8Stack2) ifTrue: [block280f3ca8PC := 16] ifFalse: [block280f3ca8PC := 12].
        ].
        block280f3ca8Step = 12 ifTrue: [
            block280f3ca8PC := 13.
        ].
        block280f3ca8Step = 13 ifTrue: [
            block280f3ca8Stack1 := block280f3ca8Arg1.
            block280f3ca8PC := 14.
        ].
        block280f3ca8Step = 14 ifTrue: [
            block280f3ca8Stack1 := (block280f3ca8Stack1) isProjectNode.
            block280f3ca8PC := 16.
        ].
        block280f3ca8Step = 16 ifTrue: [
            block280f3ca8Result := block280f3ca8Stack1.
            block280f3ca8Done := true.
        ].
    ].
    block280f3ca8Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    (recoveredBlock49Value0) setForcedUsage.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := recoveredLocal1.
    (recoveredBlock49Value1) toBeCompiledSOs: (recoveredBlock49Value2).
    recoveredBlock49Value3 := recoveredBlock49Arg1.
    recoveredBlock49Value4 := (recoveredBlock49Value3) clearForcedUsage.
    recoveredBlock49Value4
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039d0bc; bytecode file offset 0xc999a4"
!SGAbstractMakeGraph methodsFor: 'recovered'!
multipleImplementations
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
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
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) sgClass.
    recoveredBlock11Value3 := [
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 recoveredBlock11Block25Value4 recoveredBlock11Block25Value5 |
    recoveredBlock11Block25Value0 := recoveredLocal1.
    recoveredBlock11Block25Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value2 := (recoveredBlock11Block25Value1) sgClass.
    recoveredBlock11Block25Value3 := Set.
    recoveredBlock11Block25Value4 := (recoveredBlock11Block25Value3) new.
    recoveredBlock11Block25Value5 := (recoveredBlock11Block25Value0) at: (recoveredBlock11Block25Value2) put: (recoveredBlock11Block25Value4).
    recoveredBlock11Block25Value5
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) ifAbsent: (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredBlock11Arg1.
    recoveredBlock11Value6 := (recoveredBlock11Value5) implementation.
    recoveredBlock11Value7 := (recoveredBlock11Value4) add: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block280f414cArg1 | 
    | block280f414cValue0 block280f414cValue1 block280f414cValue2 |
    block280f414cValue0 := block280f414cArg1.
    block280f414cValue1 := (block280f414cValue0) size.
    block280f414cValue2 := (block280f414cValue1) > (1).
    block280f414cValue2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bcedc; bytecode file offset 0xcb97b8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForLogicModelGeneration
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) activeNodes.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) needsGenerateLogicModel.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 74].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) sgClass.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack3 := [
    | recoveredBlock17Block43Value0 recoveredBlock17Block43Value1 recoveredBlock17Block43Value2 recoveredBlock17Block43Value3 recoveredBlock17Block43Value4 recoveredBlock17Block43Value5 recoveredBlock17Block43Value6 |
    recoveredBlock17Block43Value0 := recoveredLocal1.
    recoveredBlock17Block43Value1 := recoveredBlock17Arg1.
    recoveredBlock17Block43Value2 := (recoveredBlock17Block43Value1) sgClass.
    recoveredBlock17Block43Value3 := recoveredBlock17Arg1.
    (recoveredBlock17Block43Value0) at: (recoveredBlock17Block43Value2) put: (recoveredBlock17Block43Value3).
    recoveredBlock17Block43Value4 := recoveredLocal2.
    recoveredBlock17Block43Value5 := recoveredBlock17Arg1.
    recoveredBlock17Block43Value6 := (recoveredBlock17Block43Value4) add: (recoveredBlock17Block43Value5).
    recoveredBlock17Block43Value6
].
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203c634c; bytecode file offset 0xcc2c44"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkGeneralRestrictions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            (recoveredBlock5Stack1) checkGeneralRestrictions.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isModuleNode.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 64].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) module.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) componentInstances: (recoveredBlock5Stack3).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) size.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) > (recoveredBlock5Stack3).
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 40] ifFalse: [recoveredBlock5PC := 62].
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) sgClass.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) label.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) makeConfig.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack5 := self.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) context.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) componentManagerSource: (recoveredBlock5Stack5).
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Arg1.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) makeConfig.
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) errorMultipleInstances: (recoveredBlock5Stack2) componentLabel: (recoveredBlock5Stack3) source: (recoveredBlock5Stack4) makeConfig: (recoveredBlock5Stack5).
            recoveredBlock5PC := 62.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) currentBuildCache.
    (recoveredValue2) checkGeneralRestrictions.
    recoveredValue3 := SGIlAbstractCastExprTransformation.
    recoveredValue4 := (self) currentBuildCache.
    recoveredValue5 := (recoveredValue4) genContext.
    (recoveredValue3) checkCastStrategyRestrictions: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203d9d90; bytecode file offset 0xcd6664"
!SGAbstractMakeGraph methodsFor: 'recovered'!
uniqueStringCharsFor: recoveredArg1 dict: recoveredArg2 max7: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) dictionary: (recoveredStack1) containsFileName: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'could not find a unique string'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) dictionary: (recoveredStack1) containsFileName: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e3694; bytecode file offset 0xcdff80"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForInitDataGeneration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForInterfaceGeneration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForInitInstGeneration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f867cArg1 | 
    | block280f867cValue0 block280f867cValue1 |
    block280f867cValue0 := block280f867cArg1.
    block280f867cValue1 := (block280f867cValue0) componentKey.
    block280f867cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) module.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) dataKey.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            (recoveredBlock36Stack2 == nil) ifTrue: [recoveredBlock36PC := 81] ifFalse: [recoveredBlock36PC := 52].
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal2.
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) componentKey.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) includes: (recoveredBlock36Stack3).
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 64] ifFalse: [recoveredBlock36PC := 81].
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack2 := recoveredLocal3.
            recoveredBlock36PC := 67.
        ].
        recoveredBlock36Step = 67 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Arg1.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) includes: (recoveredBlock36Stack3).
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 81] ifFalse: [recoveredBlock36PC := 74].
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal1.
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) add: (recoveredBlock36Stack2).
            recoveredBlock36PC := 81.
        ].
        recoveredBlock36Step = 81 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203efc40; bytecode file offset 0xcec534"
!SGAbstractMakeGraph methodsFor: 'recovered'!
prepareFileNamesTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    fileNames := recoveredValue1.
    recoveredValue2 := fileNames.
    recoveredValue3 := (self) fileStructureStrategy.
    recoveredValue4 := (recoveredValue3) globalHeaderFileNameNoExtension.
    recoveredValue5 := (recoveredValue4) asUppercase.
    (recoveredValue2) at: (recoveredValue5) put: (nil).
    recoveredValue6 := fileNames.
    recoveredValue7 := (self) fileStructureStrategy.
    recoveredValue8 := (recoveredValue7) ercosekHeaderFileNameNoExtension.
    recoveredValue9 := (recoveredValue8) asUppercase.
    (recoveredValue6) at: (recoveredValue9) put: (nil).
    recoveredValue10 := fileNames.
    recoveredValue11 := (self) fileStructureStrategy.
    recoveredValue12 := (recoveredValue11) projectDefinitionsHeaderNoExtension.
    recoveredValue13 := (recoveredValue12) asUppercase.
    (recoveredValue10) at: (recoveredValue13) put: (nil).
    recoveredValue14 := fileNames.
    recoveredValue15 := (self) fileStructureStrategy.
    recoveredValue16 := (recoveredValue15) projectConversionHeaderNoExtension.
    recoveredValue17 := (recoveredValue16) asUppercase.
    (recoveredValue14) at: (recoveredValue17) put: (nil).
    recoveredValue18 := fileNames.
    recoveredValue19 := (self) fileStructureStrategy.
    recoveredValue20 := (recoveredValue19) projectBypassFunctionsModuleNoExtension.
    recoveredValue21 := (recoveredValue20) asUppercase.
    (recoveredValue18) at: (recoveredValue21) put: (nil).
    recoveredValue22 := SGCgCCodeSettings.
    recoveredValue23 := (recoveredValue22) filenameOperatingSystemKey.
    recoveredValue24 := (self) projectNode.
    recoveredValue25 := (recoveredValue24) componentInfo.
    recoveredValue26 := (self) longFileNameKey: (recoveredValue23) componentInfo: (recoveredValue25).
    recoveredLocal1 := recoveredValue26.
    recoveredValue27 := fileNames.
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue28) asUppercase.
    (recoveredValue27) at: (recoveredValue29) put: (nil).
    recoveredValue30 := (self) projectNode.
    recoveredValue31 := recoveredLocal1.
    (recoveredValue30) osFilename: (recoveredValue31).
    ^self
! !

"ASDBase.ic method 0x203f3478; bytecode file offset 0xcefd80"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkExperimentalRestrictions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) useGlobalId.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) checkClassNames: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280f9564Arg1 | 
    | block280f9564Stack0 block280f9564Stack1 block280f9564Stack2 block280f9564Stack3 block280f9564PC block280f9564Step block280f9564Done block280f9564Result |
    block280f9564Stack0 := self.
    block280f9564PC := 4.
    block280f9564Done := false.
    [block280f9564Done not] whileTrue: [
        block280f9564Step := block280f9564PC.
        block280f9564Step = 4 ifTrue: [
            block280f9564Stack1 := nil.
            block280f9564PC := 5.
        ].
        block280f9564Step = 5 ifTrue: [
            block280f9564Stack2 := block280f9564Arg1.
            block280f9564PC := 6.
        ].
        block280f9564Step = 6 ifTrue: [
            block280f9564Stack2 := (block280f9564Stack2) isARNode.
            block280f9564PC := 8.
        ].
        block280f9564Step = 8 ifTrue: [
            (block280f9564Stack2) ifTrue: [block280f9564PC := 12] ifFalse: [block280f9564PC := 16].
        ].
        block280f9564Step = 12 ifTrue: [
            block280f9564PC := 13.
        ].
        block280f9564Step = 13 ifTrue: [
            block280f9564Stack1 := block280f9564Arg1.
            block280f9564PC := 14.
        ].
        block280f9564Step = 14 ifTrue: [
            block280f9564Stack1 := (block280f9564Stack1) fatalMustUseAUTOSARError.
            block280f9564PC := 16.
        ].
        block280f9564Step = 16 ifTrue: [
            block280f9564Result := block280f9564Stack1.
            block280f9564Done := true.
        ].
    ].
    block280f9564Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := ASDGenericComponentFactory.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) registeredGenericComponentList.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := recoveredArg1.
    recoveredBlock65Value2 := (self) codeManager.
    recoveredBlock65Value3 := (recoveredBlock65Value0) checkExperimentalRestrictions: (recoveredBlock65Value1) codeManager: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) multipleImplementations.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) checkMultiInstExports: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20404e84; bytecode file offset 0xd0177c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
errorMultipleInstances: recoveredArg1 componentLabel: recoveredArg2 source: recoveredArg3 makeConfig: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 recoveredBlock19Value10 recoveredBlock19Value11 recoveredBlock19Value12 recoveredBlock19Value13 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := (self) codeManager.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    recoveredBlock19Value3 := recoveredArg4.
    recoveredBlock19Value4 := (recoveredBlock19Value1) declSourceForElement: (recoveredBlock19Value2) makeConfig: (recoveredBlock19Value3).
    (recoveredBlock19Value0) add: (recoveredBlock19Value4).
    recoveredBlock19Value5 := recoveredLocal1.
    recoveredBlock19Value6 := recoveredArg2.
    recoveredBlock19Value7 := ('instance of component ') , (recoveredBlock19Value6).
    recoveredBlock19Value8 := (recoveredBlock19Value7) , (' named "').
    recoveredBlock19Value9 := recoveredBlock19Arg1.
    recoveredBlock19Value10 := (recoveredBlock19Value9) elementName.
    recoveredBlock19Value11 := (recoveredBlock19Value8) , (recoveredBlock19Value10).
    recoveredBlock19Value12 := (recoveredBlock19Value11) , ('"').
    recoveredBlock19Value13 := (recoveredBlock19Value5) add: (recoveredBlock19Value12).
    recoveredBlock19Value13
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) errorHandler.
    recoveredValue7 := Array.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue10) createMultiSource: (recoveredValue11) labels: (recoveredValue12).
    recoveredValue14 := (recoveredValue6) errorNo: (41) args: (recoveredValue9) category: ('Make') source: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20422a00; bytecode file offset 0xd1f2fc"
!SGAbstractMakeGraph methodsFor: 'recovered'!
markSingleInstanceNodes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
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
            recoveredStack0 := (recoveredStack0) activeNodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280fc774Arg1 | 
    | block280fc774Value0 block280fc774Value1 |
    block280fc774Value0 := block280fc774Arg1.
    block280fc774Value1 := (block280fc774Value0) isClassNode.
    block280fc774Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) componentKey.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack3 := [
    | block280fc798Value0 block280fc798Value1 |
    block280fc798Value0 := OrderedCollection.
    block280fc798Value1 := (block280fc798Value0) new.
    block280fc798Value1
].
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) ifAbsentPut: (recoveredBlock22Stack3).
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) componentKey.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2).
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:block280fc7bcArg1 | 
    | block280fc7bcStack0 block280fc7bcStack1 block280fc7bcStack2 block280fc7bcStack3 block280fc7bcStack4 block280fc7bcPC block280fc7bcStep block280fc7bcDone block280fc7bcResult |
    block280fc7bcStack0 := self.
    block280fc7bcPC := 4.
    block280fc7bcDone := false.
    [block280fc7bcDone not] whileTrue: [
        block280fc7bcStep := block280fc7bcPC.
        block280fc7bcStep = 4 ifTrue: [
            block280fc7bcStack1 := nil.
            block280fc7bcPC := 5.
        ].
        block280fc7bcStep = 5 ifTrue: [
            block280fc7bcStack2 := block280fc7bcArg1.
            block280fc7bcPC := 6.
        ].
        block280fc7bcStep = 6 ifTrue: [
            block280fc7bcStack2 := (block280fc7bcStack2) size.
            block280fc7bcPC := 8.
        ].
        block280fc7bcStep = 8 ifTrue: [
            block280fc7bcStack3 := 1.
            block280fc7bcPC := 10.
        ].
        block280fc7bcStep = 10 ifTrue: [
            block280fc7bcStack2 := (block280fc7bcStack2) = (block280fc7bcStack3).
            block280fc7bcPC := 11.
        ].
        block280fc7bcStep = 11 ifTrue: [
            (block280fc7bcStack2) ifTrue: [block280fc7bcPC := 14] ifFalse: [block280fc7bcPC := 29].
        ].
        block280fc7bcStep = 14 ifTrue: [
            block280fc7bcPC := 15.
        ].
        block280fc7bcStep = 15 ifTrue: [
            block280fc7bcStack1 := block280fc7bcArg1.
            block280fc7bcPC := 16.
        ].
        block280fc7bcStep = 16 ifTrue: [
            block280fc7bcStack2 := [:block280fc7e0Arg1 | 
    | block280fc7e0Value0 block280fc7e0Value1 |
    block280fc7e0Value0 := block280fc7e0Arg1.
    block280fc7e0Value1 := (block280fc7e0Value0) singleInstance: (true).
    block280fc7e0Value1
].
            block280fc7bcPC := 18.
        ].
        block280fc7bcStep = 18 ifTrue: [
            block280fc7bcPC := 27.
        ].
        block280fc7bcStep = 27 ifTrue: [
            block280fc7bcStack1 := (block280fc7bcStack1) do: (block280fc7bcStack2).
            block280fc7bcPC := 29.
        ].
        block280fc7bcStep = 29 ifTrue: [
            block280fc7bcResult := block280fc7bcStack1.
            block280fc7bcDone := true.
        ].
    ].
    block280fc7bcResult
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20477e88; bytecode file offset 0xd74780"
!SGAbstractMakeGraph methodsFor: 'recovered'!
createFileNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) prepareFileNamesTable.
    recoveredValue0 := (self) nodes.
    recoveredValue1 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useLongNames.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 18] ifFalse: [recoveredBlock8PC := 36].
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) makeConfig.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) sgClass.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) label.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack0.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg2.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) makeConfig.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) sgClass.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) label.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg1.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) makeConfig.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) sgClass.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) shortLabel.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack0.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Arg2.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) makeConfig.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) sgClass.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) shortLabel.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local2.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) size.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) size.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ~= (recoveredBlock8Stack1).
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 60] ifFalse: [recoveredBlock8PC := 70].
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local2.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) size.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) size.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) > (recoveredBlock8Stack1).
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack0 := true.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue2 := (recoveredValue0) asSortedCollection: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock76Arg1 | 
    | recoveredBlock76Value0 recoveredBlock76Value1 recoveredBlock76Value2 recoveredBlock76Value3 recoveredBlock76Value4 recoveredBlock76Value5 recoveredBlock76Value6 recoveredBlock76Value7 recoveredBlock76Value8 recoveredBlock76Value9 |
    recoveredBlock76Value0 := recoveredBlock76Arg1.
    recoveredBlock76Value1 := recoveredBlock76Arg1.
    recoveredBlock76Value2 := (self) uniqueFileNameFor: (recoveredBlock76Value1).
    (recoveredBlock76Value0) fileName: (recoveredBlock76Value2).
    recoveredBlock76Value3 := recoveredBlock76Arg1.
    recoveredBlock76Value4 := (self) moduleCodeBaseFileNames.
    recoveredBlock76Value5 := recoveredBlock76Arg1.
    recoveredBlock76Value6 := (recoveredBlock76Value5) componentKey.
    recoveredBlock76Value7 := [
    | recoveredBlock76Block104Value0 recoveredBlock76Block104Value1 |
    recoveredBlock76Block104Value0 := recoveredBlock76Arg1.
    recoveredBlock76Block104Value1 := (recoveredBlock76Block104Value0) fileName.
    recoveredBlock76Block104Value1
].
    recoveredBlock76Value8 := (recoveredBlock76Value4) at: (recoveredBlock76Value6) ifAbsentPut: (recoveredBlock76Value7).
    recoveredBlock76Value9 := (recoveredBlock76Value3) moduleCodeBaseFileName: (recoveredBlock76Value8).
    recoveredBlock76Value9
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2047f8a8; bytecode file offset 0xd7c190"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForInterfaceGeneration
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) needsGenerateInterface.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 84].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) componentKey.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack3 := [
    | recoveredBlock17Block43Stack0 recoveredBlock17Block43Stack1 recoveredBlock17Block43Stack2 recoveredBlock17Block43Stack3 recoveredBlock17Block43PC recoveredBlock17Block43Step recoveredBlock17Block43Done recoveredBlock17Block43Result |
    recoveredBlock17Block43Stack0 := nil.
    recoveredBlock17Block43PC := 50.
    recoveredBlock17Block43Done := false.
    [recoveredBlock17Block43Done not] whileTrue: [
        recoveredBlock17Block43Step := recoveredBlock17Block43PC.
        recoveredBlock17Block43Step = 50 ifTrue: [
            recoveredBlock17Block43Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block43PC := 53.
        ].
        recoveredBlock17Block43Step = 53 ifTrue: [
            recoveredBlock17Block43Stack1 := (recoveredBlock17Block43Stack1) isEnumNode.
            recoveredBlock17Block43PC := 55.
        ].
        recoveredBlock17Block43Step = 55 ifTrue: [
            (recoveredBlock17Block43Stack1) ifTrue: [recoveredBlock17Block43PC := 58] ifFalse: [recoveredBlock17Block43PC := 70].
        ].
        recoveredBlock17Block43Step = 58 ifTrue: [
            recoveredBlock17Block43Stack1 := recoveredLocal1.
            recoveredBlock17Block43PC := 61.
        ].
        recoveredBlock17Block43Step = 61 ifTrue: [
            recoveredBlock17Block43Stack2 := recoveredBlock17Arg1.
            recoveredBlock17Block43PC := 64.
        ].
        recoveredBlock17Block43Step = 64 ifTrue: [
            (recoveredBlock17Block43Stack1) addFirst: (recoveredBlock17Block43Stack2).
            recoveredBlock17Block43PC := 66.
        ].
        recoveredBlock17Block43Step = 66 ifTrue: [
            recoveredBlock17Block43PC := 78.
        ].
        recoveredBlock17Block43Step = 70 ifTrue: [
            recoveredBlock17Block43Stack1 := recoveredLocal1.
            recoveredBlock17Block43PC := 73.
        ].
        recoveredBlock17Block43Step = 73 ifTrue: [
            recoveredBlock17Block43Stack2 := recoveredBlock17Arg1.
            recoveredBlock17Block43PC := 76.
        ].
        recoveredBlock17Block43Step = 76 ifTrue: [
            (recoveredBlock17Block43Stack1) add: (recoveredBlock17Block43Stack2).
            recoveredBlock17Block43PC := 78.
        ].
        recoveredBlock17Block43Step = 78 ifTrue: [
            recoveredBlock17Block43Stack1 := recoveredBlock17Arg1.
            recoveredBlock17Block43PC := 81.
        ].
        recoveredBlock17Block43Step = 81 ifTrue: [
            recoveredBlock17Block43Result := recoveredBlock17Block43Stack1.
            recoveredBlock17Block43Done := true.
        ].
    ].
    recoveredBlock17Block43Result
].
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsentPut: (recoveredBlock17Stack3).
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsGenerateInterface.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassInterfaceKey.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 |
    recoveredBlock104Value0 := recoveredLocal1.
    recoveredBlock104Value1 := (self) projectNode.
    (recoveredBlock104Value0) add: (recoveredBlock104Value1).
    recoveredBlock104Value2 := (self) projectNode.
    recoveredBlock104Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20485e5c; bytecode file offset 0xd82764"
!SGAbstractMakeGraph methodsFor: 'recovered'!
toBeLinkedSOsUseCGen: recoveredArg1 loadableTimeStamp: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGLinkSourceCollector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
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
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeManager.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) changedInterpolationLibrary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) requiresLinking: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'Call_74873'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := compileSourceCollector.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := SGCompileSourceCollector.
    recoveredBlock26Value1 := (recoveredBlock26Value0) create.
    recoveredBlock26Value2 := recoveredBlock26Value1.
    compileSourceCollector := recoveredBlock26Value2.
    recoveredBlock26Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := compileSourceCollector.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) toBeCompiledSOsTable.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := [:block28102b80Arg1 | 
    | block28102b80Value0 block28102b80Value1 |
    block28102b80Value0 := block28102b80Arg1.
    block28102b80Value1 := (block28102b80Value0) hasCSource.
    block28102b80Value1
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) toBeLinkedSOsTable: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) useCGen: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) toBeLinkedSOsTable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := recoveredArg1.
    recoveredBlock81Value2 := (recoveredBlock81Value0) useCGen: (recoveredBlock81Value1).
    recoveredBlock81Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) loadableTimeStamp: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 |
    recoveredBlock107Value0 := recoveredLocal1.
    recoveredBlock107Value1 := recoveredBlock107Arg1.
    recoveredBlock107Value2 := (recoveredBlock107Value0) anyMakeNode: (recoveredBlock107Value1).
    recoveredBlock107Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeLinkedSOs.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d18f8; bytecode file offset 0xdce1f4"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkMultiInstExports: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local3.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack2 := [:block281074a0Arg1 | 
    | block281074a0Value0 block281074a0Value1 |
    block281074a0Value0 := block281074a0Arg1.
    block281074a0Value1 := (block281074a0Value0) isExported.
    block281074a0Value1
].
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) allVariablesSelect: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block44Arg1 | 
    | recoveredBlock7Block44Local1 recoveredBlock7Block44Local2 recoveredBlock7Block44Value0 recoveredBlock7Block44Value1 recoveredBlock7Block44Value2 recoveredBlock7Block44Value3 recoveredBlock7Block44Value4 recoveredBlock7Block44Value5 recoveredBlock7Block44Value6 recoveredBlock7Block44Value7 recoveredBlock7Block44Value8 recoveredBlock7Block44Value9 recoveredBlock7Block44Value10 recoveredBlock7Block44Value11 recoveredBlock7Block44Value12 recoveredBlock7Block44Value13 recoveredBlock7Block44Value14 recoveredBlock7Block44Value15 |
    recoveredBlock7Block44Value0 := OrderedCollection.
    recoveredBlock7Block44Value1 := (recoveredBlock7Block44Value0) new.
    recoveredBlock7Block44Local2 := recoveredBlock7Block44Value1.
    recoveredBlock7Block44Value2 := OrderedCollection.
    recoveredBlock7Block44Value3 := (recoveredBlock7Block44Value2) new.
    recoveredBlock7Block44Local1 := recoveredBlock7Block44Value3.
    recoveredBlock7Block44Value4 := recoveredBlock7Local2.
    recoveredBlock7Block44Value5 := [:recoveredBlock7Block44Block67Arg1 | 
    | recoveredBlock7Block44Block67Value0 recoveredBlock7Block44Block67Value1 recoveredBlock7Block44Block67Value2 |
    recoveredBlock7Block44Block67Value0 := (self) nodes.
    recoveredBlock7Block44Block67Value1 := [:recoveredBlock7Block44Block67Block76Arg1 | 
    | recoveredBlock7Block44Block67Block76Stack0 recoveredBlock7Block44Block67Block76Stack1 recoveredBlock7Block44Block67Block76Stack2 recoveredBlock7Block44Block67Block76Stack3 recoveredBlock7Block44Block67Block76Stack4 recoveredBlock7Block44Block67Block76PC recoveredBlock7Block44Block67Block76Step recoveredBlock7Block44Block67Block76Done recoveredBlock7Block44Block67Block76Result |
    recoveredBlock7Block44Block67Block76Stack0 := nil.
    recoveredBlock7Block44Block67Block76PC := 82.
    recoveredBlock7Block44Block67Block76Done := false.
    [recoveredBlock7Block44Block67Block76Done not] whileTrue: [
        recoveredBlock7Block44Block67Block76Step := recoveredBlock7Block44Block67Block76PC.
        recoveredBlock7Block44Block67Block76Step = 82 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack1 := nil.
            recoveredBlock7Block44Block67Block76PC := 83.
        ].
        recoveredBlock7Block44Block67Block76Step = 83 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := recoveredBlock7Block44Block67Block76Arg1.
            recoveredBlock7Block44Block67Block76PC := 84.
        ].
        recoveredBlock7Block44Block67Block76Step = 84 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := (recoveredBlock7Block44Block67Block76Stack2) implementation.
            recoveredBlock7Block44Block67Block76PC := 86.
        ].
        recoveredBlock7Block44Block67Block76Step = 86 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := (recoveredBlock7Block44Block67Block76Stack2) dbObject.
            recoveredBlock7Block44Block67Block76PC := 88.
        ].
        recoveredBlock7Block44Block67Block76Step = 88 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack3 := recoveredBlock7Block44Block67Arg1.
            recoveredBlock7Block44Block67Block76PC := 91.
        ].
        recoveredBlock7Block44Block67Block76Step = 91 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack3 := (recoveredBlock7Block44Block67Block76Stack3) dbObject.
            recoveredBlock7Block44Block67Block76PC := 93.
        ].
        recoveredBlock7Block44Block67Block76Step = 93 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := (recoveredBlock7Block44Block67Block76Stack2) = (recoveredBlock7Block44Block67Block76Stack3).
            recoveredBlock7Block44Block67Block76PC := 94.
        ].
        recoveredBlock7Block44Block67Block76Step = 94 ifTrue: [
            (recoveredBlock7Block44Block67Block76Stack2) ifTrue: [recoveredBlock7Block44Block67Block76PC := 98] ifFalse: [recoveredBlock7Block44Block67Block76PC := 115].
        ].
        recoveredBlock7Block44Block67Block76Step = 98 ifTrue: [
            recoveredBlock7Block44Block67Block76PC := 99.
        ].
        recoveredBlock7Block44Block67Block76Step = 99 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack1 := recoveredBlock7Block44Local2.
            recoveredBlock7Block44Block67Block76PC := 102.
        ].
        recoveredBlock7Block44Block67Block76Step = 102 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := recoveredBlock7Block44Block67Block76Arg1.
            recoveredBlock7Block44Block67Block76PC := 103.
        ].
        recoveredBlock7Block44Block67Block76Step = 103 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := (recoveredBlock7Block44Block67Block76Stack2) componentManagerSource.
            recoveredBlock7Block44Block67Block76PC := 105.
        ].
        recoveredBlock7Block44Block67Block76Step = 105 ifTrue: [
            (recoveredBlock7Block44Block67Block76Stack1) add: (recoveredBlock7Block44Block67Block76Stack2).
            recoveredBlock7Block44Block67Block76PC := 107.
        ].
        recoveredBlock7Block44Block67Block76Step = 107 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack1 := recoveredBlock7Block44Local1.
            recoveredBlock7Block44Block67Block76PC := 110.
        ].
        recoveredBlock7Block44Block67Block76Step = 110 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := recoveredBlock7Block44Block67Block76Arg1.
            recoveredBlock7Block44Block67Block76PC := 111.
        ].
        recoveredBlock7Block44Block67Block76Step = 111 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack2 := (recoveredBlock7Block44Block67Block76Stack2) moduleDescription.
            recoveredBlock7Block44Block67Block76PC := 113.
        ].
        recoveredBlock7Block44Block67Block76Step = 113 ifTrue: [
            recoveredBlock7Block44Block67Block76Stack1 := (recoveredBlock7Block44Block67Block76Stack1) add: (recoveredBlock7Block44Block67Block76Stack2).
            recoveredBlock7Block44Block67Block76PC := 115.
        ].
        recoveredBlock7Block44Block67Block76Step = 115 ifTrue: [
            recoveredBlock7Block44Block67Block76Result := recoveredBlock7Block44Block67Block76Stack1.
            recoveredBlock7Block44Block67Block76Done := true.
        ].
    ].
    recoveredBlock7Block44Block67Block76Result
].
    recoveredBlock7Block44Block67Value2 := (recoveredBlock7Block44Block67Value0) do: (recoveredBlock7Block44Block67Value1).
    recoveredBlock7Block44Block67Value2
].
    (recoveredBlock7Block44Value4) do: (recoveredBlock7Block44Value5).
    recoveredBlock7Block44Value6 := recoveredBlock7Local3.
    recoveredBlock7Block44Value7 := (recoveredBlock7Block44Value6) label.
    recoveredBlock7Block44Value8 := recoveredBlock7Block44Arg1.
    recoveredBlock7Block44Value9 := (recoveredBlock7Block44Value8) label.
    recoveredBlock7Block44Value10 := (self) projectNode.
    recoveredBlock7Block44Value11 := (recoveredBlock7Block44Value10) componentSource.
    recoveredBlock7Block44Value12 := recoveredBlock7Block44Local2.
    recoveredBlock7Block44Value13 := recoveredBlock7Block44Local1.
    recoveredBlock7Block44Value14 := (recoveredBlock7Block44Value11) createMultiSource: (recoveredBlock7Block44Value12) labels: (recoveredBlock7Block44Value13).
    recoveredBlock7Block44Value15 := (self) errorNo: (27) with: (recoveredBlock7Block44Value7) with: (recoveredBlock7Block44Value9) source: (recoveredBlock7Block44Value14).
    recoveredBlock7Block44Value15
].
            recoveredBlock7PC := 150.
        ].
        recoveredBlock7Step = 150 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 152.
        ].
        recoveredBlock7Step = 152 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204e5e9c; bytecode file offset 0xde27c8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
multipleInstances
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredLocal2.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) implementation.
    recoveredBlock11Value3 := [
    | recoveredBlock11Block25Value0 recoveredBlock11Block25Value1 recoveredBlock11Block25Value2 recoveredBlock11Block25Value3 recoveredBlock11Block25Value4 recoveredBlock11Block25Value5 |
    recoveredBlock11Block25Value0 := recoveredLocal2.
    recoveredBlock11Block25Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block25Value2 := (recoveredBlock11Block25Value1) implOrClass.
    recoveredBlock11Block25Value3 := OrderedCollection.
    recoveredBlock11Block25Value4 := (recoveredBlock11Block25Value3) new.
    recoveredBlock11Block25Value5 := (recoveredBlock11Block25Value0) at: (recoveredBlock11Block25Value2) put: (recoveredBlock11Block25Value4).
    recoveredBlock11Block25Value5
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) ifAbsent: (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredBlock11Arg1.
    recoveredBlock11Value6 := (recoveredBlock11Value5) data.
    recoveredBlock11Value7 := (recoveredBlock11Value4) add: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:block28108bd4Arg1 | 
    | block28108bd4Value0 block28108bd4Value1 block28108bd4Value2 |
    block28108bd4Value0 := block28108bd4Arg1.
    block28108bd4Value1 := (block28108bd4Value0) size.
    block28108bd4Value2 := (block28108bd4Value1) > (1).
    block28108bd4Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Local1 recoveredBlock81Local2 recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81Stack4 recoveredBlock81Stack5 recoveredBlock81Stack6 recoveredBlock81Stack7 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 89.
        ].
        recoveredBlock81Step = 89 ifTrue: [
            recoveredBlock81Stack2 := [:block28108bf8Arg1 | 
    | block28108bf8Value0 block28108bf8Value1 |
    block28108bf8Value0 := block28108bf8Arg1.
    block28108bf8Value1 := (block28108bf8Value0) label.
    block28108bf8Value1
].
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            recoveredBlock81PC := 98.
        ].
        recoveredBlock81Step = 98 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) collect: (recoveredBlock81Stack2).
            recoveredBlock81PC := 100.
        ].
        recoveredBlock81Step = 100 ifTrue: [
            recoveredBlock81Local2 := recoveredBlock81Stack1.
            recoveredBlock81PC := 101.
        ].
        recoveredBlock81Step = 101 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Local2.
            recoveredBlock81PC := 102.
        ].
        recoveredBlock81Step = 102 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) asSet.
            recoveredBlock81PC := 104.
        ].
        recoveredBlock81Step = 104 ifTrue: [
            recoveredBlock81Local1 := recoveredBlock81Stack1.
            recoveredBlock81PC := 105.
        ].
        recoveredBlock81Step = 105 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 106.
        ].
        recoveredBlock81Step = 106 ifTrue: [
            recoveredBlock81Stack2 := recoveredBlock81Local2.
            recoveredBlock81PC := 107.
        ].
        recoveredBlock81Step = 107 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) size.
            recoveredBlock81PC := 109.
        ].
        recoveredBlock81Step = 109 ifTrue: [
            recoveredBlock81Stack3 := recoveredBlock81Local1.
            recoveredBlock81PC := 110.
        ].
        recoveredBlock81Step = 110 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) size.
            recoveredBlock81PC := 112.
        ].
        recoveredBlock81Step = 112 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) > (recoveredBlock81Stack3).
            recoveredBlock81PC := 113.
        ].
        recoveredBlock81Step = 113 ifTrue: [
            (recoveredBlock81Stack2) ifTrue: [recoveredBlock81PC := 116] ifFalse: [recoveredBlock81PC := 157].
        ].
        recoveredBlock81Step = 116 ifTrue: [
            recoveredBlock81PC := 117.
        ].
        recoveredBlock81Step = 117 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 118.
        ].
        recoveredBlock81Step = 118 ifTrue: [
            recoveredBlock81Stack2 := 30.
            recoveredBlock81PC := 120.
        ].
        recoveredBlock81Step = 120 ifTrue: [
            recoveredBlock81Stack3 := Array.
            recoveredBlock81PC := 122.
        ].
        recoveredBlock81Step = 122 ifTrue: [
            recoveredBlock81Stack4 := recoveredBlock81Local2.
            recoveredBlock81PC := 123.
        ].
        recoveredBlock81Step = 123 ifTrue: [
            recoveredBlock81Stack5 := ''.
            recoveredBlock81PC := 125.
        ].
        recoveredBlock81Step = 125 ifTrue: [
            recoveredBlock81Stack6 := [:block28108c1cArg1 :block28108c1cArg2 | 
    | block28108c1cValue0 block28108c1cValue1 block28108c1cValue2 block28108c1cValue3 |
    block28108c1cValue0 := block28108c1cArg1.
    block28108c1cValue1 := block28108c1cArg2.
    block28108c1cValue2 := (block28108c1cValue0) , (block28108c1cValue1).
    block28108c1cValue3 := (block28108c1cValue2) , (' ').
    block28108c1cValue3
].
            recoveredBlock81PC := 127.
        ].
        recoveredBlock81Step = 127 ifTrue: [
            recoveredBlock81PC := 139.
        ].
        recoveredBlock81Step = 139 ifTrue: [
            recoveredBlock81Stack4 := (recoveredBlock81Stack4) inject: (recoveredBlock81Stack5) into: (recoveredBlock81Stack6).
            recoveredBlock81PC := 141.
        ].
        recoveredBlock81Step = 141 ifTrue: [
            recoveredBlock81Stack5 := recoveredBlock81Arg1.
            recoveredBlock81PC := 142.
        ].
        recoveredBlock81Step = 142 ifTrue: [
            recoveredBlock81Stack5 := (recoveredBlock81Stack5) first.
            recoveredBlock81PC := 144.
        ].
        recoveredBlock81Step = 144 ifTrue: [
            recoveredBlock81Stack5 := (recoveredBlock81Stack5) sgClass.
            recoveredBlock81PC := 146.
        ].
        recoveredBlock81Step = 146 ifTrue: [
            recoveredBlock81Stack5 := (recoveredBlock81Stack5) label.
            recoveredBlock81PC := 148.
        ].
        recoveredBlock81Step = 148 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) with: (recoveredBlock81Stack4) with: (recoveredBlock81Stack5).
            recoveredBlock81PC := 150.
        ].
        recoveredBlock81Step = 150 ifTrue: [
            (recoveredBlock81Stack1) errorNo: (recoveredBlock81Stack2) with: (recoveredBlock81Stack3).
            recoveredBlock81PC := 152.
        ].
        recoveredBlock81Step = 152 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 153.
        ].
        recoveredBlock81Step = 153 ifTrue: [
            recoveredBlock81Stack2 := 'generate'.
            recoveredBlock81PC := 155.
        ].
        recoveredBlock81Step = 155 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) fatalError: (recoveredBlock81Stack2).
            recoveredBlock81PC := 157.
        ].
        recoveredBlock81Step = 157 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack1.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204faa58; bytecode file offset 0xdf7368"
!SGAbstractMakeGraph methodsFor: 'recovered'!
analyze
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) monitorManager.
    recoveredValue1 := (self) nodes.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            (recoveredBlock13Stack0) checkGeneralRestrictions.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) variantKey.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isControllerVariant.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) analyzeController.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := [
    | recoveredBlock13Block37Value0 recoveredBlock13Block37Value1 |
    recoveredBlock13Block37Value0 := (self) codeManager.
    recoveredBlock13Block37Value1 := (recoveredBlock13Block37Value0) fatalError: ('generate').
    recoveredBlock13Block37Value1
].
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            (recoveredBlock13Stack0) checkExperimentalRestrictions: (recoveredBlock13Stack1).
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) variantKey.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isIntegerExperimentVariant.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 62] ifFalse: [recoveredBlock13PC := 96].
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) nodes.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block64Arg1 | 
    | recoveredBlock13Block64Stack0 recoveredBlock13Block64Stack1 recoveredBlock13Block64Stack2 recoveredBlock13Block64Stack3 recoveredBlock13Block64PC recoveredBlock13Block64Step recoveredBlock13Block64Done recoveredBlock13Block64Result |
    recoveredBlock13Block64Stack0 := self.
    recoveredBlock13Block64PC := 70.
    recoveredBlock13Block64Done := false.
    [recoveredBlock13Block64Done not] whileTrue: [
        recoveredBlock13Block64Step := recoveredBlock13Block64PC.
        recoveredBlock13Block64Step = 70 ifTrue: [
            recoveredBlock13Block64Stack1 := nil.
            recoveredBlock13Block64PC := 71.
        ].
        recoveredBlock13Block64Step = 71 ifTrue: [
            recoveredBlock13Block64Stack2 := self.
            recoveredBlock13Block64PC := 72.
        ].
        recoveredBlock13Block64Step = 72 ifTrue: [
            recoveredBlock13Block64Stack2 := (recoveredBlock13Block64Stack2) progressReporter.
            recoveredBlock13Block64PC := 74.
        ].
        recoveredBlock13Block64Step = 74 ifTrue: [
            recoveredBlock13Block64Stack2 := (recoveredBlock13Block64Stack2) isCancelled.
            recoveredBlock13Block64PC := 76.
        ].
        recoveredBlock13Block64Step = 76 ifTrue: [
            (recoveredBlock13Block64Stack2) ifTrue: [recoveredBlock13Block64PC := 89] ifFalse: [recoveredBlock13Block64PC := 80].
        ].
        recoveredBlock13Block64Step = 80 ifTrue: [
            recoveredBlock13Block64PC := 81.
        ].
        recoveredBlock13Block64Step = 81 ifTrue: [
            recoveredBlock13Block64Stack1 := recoveredBlock13Block64Arg1.
            recoveredBlock13Block64PC := 82.
        ].
        recoveredBlock13Block64Step = 82 ifTrue: [
            (recoveredBlock13Block64Stack1) analyzeInteger.
            recoveredBlock13Block64PC := 84.
        ].
        recoveredBlock13Block64Step = 84 ifTrue: [
            recoveredBlock13Block64Stack1 := self.
            recoveredBlock13Block64PC := 85.
        ].
        recoveredBlock13Block64Step = 85 ifTrue: [
            recoveredBlock13Block64Stack1 := (recoveredBlock13Block64Stack1) progressReporter.
            recoveredBlock13Block64PC := 87.
        ].
        recoveredBlock13Block64Step = 87 ifTrue: [
            recoveredBlock13Block64Stack1 := (recoveredBlock13Block64Stack1) step.
            recoveredBlock13Block64PC := 89.
        ].
        recoveredBlock13Block64Step = 89 ifTrue: [
            recoveredBlock13Block64Result := recoveredBlock13Block64Stack1.
            recoveredBlock13Block64Done := true.
        ].
    ].
    recoveredBlock13Block64Result
].
            recoveredBlock13PC := 90.
        ].
        recoveredBlock13Step = 90 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) variantKey.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isPhysicalExperimentVariant.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 104] ifFalse: [recoveredBlock13PC := 138].
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) nodes.
            recoveredBlock13PC := 106.
        ].
        recoveredBlock13Step = 106 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block106Arg1 | 
    | recoveredBlock13Block106Stack0 recoveredBlock13Block106Stack1 recoveredBlock13Block106Stack2 recoveredBlock13Block106Stack3 recoveredBlock13Block106PC recoveredBlock13Block106Step recoveredBlock13Block106Done recoveredBlock13Block106Result |
    recoveredBlock13Block106Stack0 := self.
    recoveredBlock13Block106PC := 112.
    recoveredBlock13Block106Done := false.
    [recoveredBlock13Block106Done not] whileTrue: [
        recoveredBlock13Block106Step := recoveredBlock13Block106PC.
        recoveredBlock13Block106Step = 112 ifTrue: [
            recoveredBlock13Block106Stack1 := nil.
            recoveredBlock13Block106PC := 113.
        ].
        recoveredBlock13Block106Step = 113 ifTrue: [
            recoveredBlock13Block106Stack2 := self.
            recoveredBlock13Block106PC := 114.
        ].
        recoveredBlock13Block106Step = 114 ifTrue: [
            recoveredBlock13Block106Stack2 := (recoveredBlock13Block106Stack2) progressReporter.
            recoveredBlock13Block106PC := 116.
        ].
        recoveredBlock13Block106Step = 116 ifTrue: [
            recoveredBlock13Block106Stack2 := (recoveredBlock13Block106Stack2) isCancelled.
            recoveredBlock13Block106PC := 118.
        ].
        recoveredBlock13Block106Step = 118 ifTrue: [
            (recoveredBlock13Block106Stack2) ifTrue: [recoveredBlock13Block106PC := 131] ifFalse: [recoveredBlock13Block106PC := 122].
        ].
        recoveredBlock13Block106Step = 122 ifTrue: [
            recoveredBlock13Block106PC := 123.
        ].
        recoveredBlock13Block106Step = 123 ifTrue: [
            recoveredBlock13Block106Stack1 := recoveredBlock13Block106Arg1.
            recoveredBlock13Block106PC := 124.
        ].
        recoveredBlock13Block106Step = 124 ifTrue: [
            (recoveredBlock13Block106Stack1) analyzePhysical.
            recoveredBlock13Block106PC := 126.
        ].
        recoveredBlock13Block106Step = 126 ifTrue: [
            recoveredBlock13Block106Stack1 := self.
            recoveredBlock13Block106PC := 127.
        ].
        recoveredBlock13Block106Step = 127 ifTrue: [
            recoveredBlock13Block106Stack1 := (recoveredBlock13Block106Stack1) progressReporter.
            recoveredBlock13Block106PC := 129.
        ].
        recoveredBlock13Block106Step = 129 ifTrue: [
            recoveredBlock13Block106Stack1 := (recoveredBlock13Block106Stack1) step.
            recoveredBlock13Block106PC := 131.
        ].
        recoveredBlock13Block106Step = 131 ifTrue: [
            recoveredBlock13Block106Result := recoveredBlock13Block106Stack1.
            recoveredBlock13Block106Done := true.
        ].
    ].
    recoveredBlock13Block106Result
].
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 134.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 138 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) nodes.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block140Arg1 | 
    | recoveredBlock13Block140Stack0 recoveredBlock13Block140Stack1 recoveredBlock13Block140Stack2 recoveredBlock13Block140Stack3 recoveredBlock13Block140PC recoveredBlock13Block140Step recoveredBlock13Block140Done recoveredBlock13Block140Result |
    recoveredBlock13Block140Stack0 := self.
    recoveredBlock13Block140PC := 146.
    recoveredBlock13Block140Done := false.
    [recoveredBlock13Block140Done not] whileTrue: [
        recoveredBlock13Block140Step := recoveredBlock13Block140PC.
        recoveredBlock13Block140Step = 146 ifTrue: [
            recoveredBlock13Block140Stack1 := nil.
            recoveredBlock13Block140PC := 147.
        ].
        recoveredBlock13Block140Step = 147 ifTrue: [
            recoveredBlock13Block140Stack2 := self.
            recoveredBlock13Block140PC := 148.
        ].
        recoveredBlock13Block140Step = 148 ifTrue: [
            recoveredBlock13Block140Stack2 := (recoveredBlock13Block140Stack2) progressReporter.
            recoveredBlock13Block140PC := 150.
        ].
        recoveredBlock13Block140Step = 150 ifTrue: [
            recoveredBlock13Block140Stack2 := (recoveredBlock13Block140Stack2) isCancelled.
            recoveredBlock13Block140PC := 152.
        ].
        recoveredBlock13Block140Step = 152 ifTrue: [
            (recoveredBlock13Block140Stack2) ifTrue: [recoveredBlock13Block140PC := 165] ifFalse: [recoveredBlock13Block140PC := 156].
        ].
        recoveredBlock13Block140Step = 156 ifTrue: [
            recoveredBlock13Block140PC := 157.
        ].
        recoveredBlock13Block140Step = 157 ifTrue: [
            recoveredBlock13Block140Stack1 := recoveredBlock13Block140Arg1.
            recoveredBlock13Block140PC := 158.
        ].
        recoveredBlock13Block140Step = 158 ifTrue: [
            (recoveredBlock13Block140Stack1) analyzeQuantPhys.
            recoveredBlock13Block140PC := 160.
        ].
        recoveredBlock13Block140Step = 160 ifTrue: [
            recoveredBlock13Block140Stack1 := self.
            recoveredBlock13Block140PC := 161.
        ].
        recoveredBlock13Block140Step = 161 ifTrue: [
            recoveredBlock13Block140Stack1 := (recoveredBlock13Block140Stack1) progressReporter.
            recoveredBlock13Block140PC := 163.
        ].
        recoveredBlock13Block140Step = 163 ifTrue: [
            recoveredBlock13Block140Stack1 := (recoveredBlock13Block140Stack1) step.
            recoveredBlock13Block140PC := 165.
        ].
        recoveredBlock13Block140Step = 165 ifTrue: [
            recoveredBlock13Block140Result := recoveredBlock13Block140Stack1.
            recoveredBlock13Block140Done := true.
        ].
    ].
    recoveredBlock13Block140Result
].
            recoveredBlock13PC := 166.
        ].
        recoveredBlock13Step = 166 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) do: (recoveredBlock13Stack1).
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue0) doTiming: ('AnalyzingDependencies') title: ('Analyzing dependencies') max: (recoveredValue2) for: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2050146c; bytecode file offset 0xdfdd90"
!SGAbstractMakeGraph methodsFor: 'recovered'!
relevantMdlClassInterfaceTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) nodes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) mdlClassInterface.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 170] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) currentBuildCache.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) genContext.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) cCodeSettings.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            (recoveredBlock11Stack1) restoreGenName: (recoveredBlock11Stack2).
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) componentKey.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block51Value0 |
    recoveredBlock11Block51Value0 := recoveredBlock11Local1.
    recoveredBlock11Block51Value0
].
            recoveredBlock11PC := 62.
        ].
        recoveredBlock11Step = 62 ifTrue: [
            (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) fileStructureStrategy.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 88] ifFalse: [recoveredBlock11PC := 70].
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) moduleFileName.
            recoveredBlock11PC := 78.
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11Stack3 := '.c'.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) , (recoveredBlock11Stack3).
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            (recoveredBlock11Stack1) fileName: (recoveredBlock11Stack2).
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11PC := 99.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) fileStructureStrategy.
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            (recoveredBlock11Stack1) setFileNamesForComponent: (recoveredBlock11Stack2) mdlClassInterface: (recoveredBlock11Stack3).
            recoveredBlock11PC := 99.
        ].
        recoveredBlock11Step = 99 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 102.
        ].
        recoveredBlock11Step = 102 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isComponentNotInstantiated.
            recoveredBlock11PC := 104.
        ].
        recoveredBlock11Step = 104 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 108] ifFalse: [recoveredBlock11PC := 115].
        ].
        recoveredBlock11Step = 108 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 111.
        ].
        recoveredBlock11Step = 111 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) optimizations.
            recoveredBlock11PC := 113.
        ].
        recoveredBlock11Step = 113 ifTrue: [
            (recoveredBlock11Stack1) cgOptComponentNotInstantiated.
            recoveredBlock11PC := 115.
        ].
        recoveredBlock11Step = 115 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 117.
        ].
        recoveredBlock11Step = 117 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) currentBuildCache.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) requiresEHSingleInstanceClasses.
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 124] ifFalse: [recoveredBlock11PC := 170].
        ].
        recoveredBlock11Step = 124 ifTrue: [
            recoveredBlock11PC := 125.
        ].
        recoveredBlock11Step = 125 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 126.
        ].
        recoveredBlock11Step = 126 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 129.
        ].
        recoveredBlock11Step = 129 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) componentAttributes.
            recoveredBlock11PC := 131.
        ].
        recoveredBlock11Step = 131 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isCgServiceRoutineComponent.
            recoveredBlock11PC := 133.
        ].
        recoveredBlock11Step = 133 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 170] ifFalse: [recoveredBlock11PC := 136].
        ].
        recoveredBlock11Step = 136 ifTrue: [
            recoveredBlock11PC := 137.
        ].
        recoveredBlock11Step = 137 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 138.
        ].
        recoveredBlock11Step = 138 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 139.
        ].
        recoveredBlock11Step = 139 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 142.
        ].
        recoveredBlock11Step = 142 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) module.
            recoveredBlock11PC := 144.
        ].
        recoveredBlock11Step = 144 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) componentInstances: (recoveredBlock11Stack3).
            recoveredBlock11PC := 146.
        ].
        recoveredBlock11Step = 146 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) size.
            recoveredBlock11PC := 148.
        ].
        recoveredBlock11Step = 148 ifTrue: [
            recoveredBlock11Stack3 := 1.
            recoveredBlock11PC := 150.
        ].
        recoveredBlock11Step = 150 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 151.
        ].
        recoveredBlock11Step = 151 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 154] ifFalse: [recoveredBlock11PC := 170].
        ].
        recoveredBlock11Step = 154 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 157.
        ].
        recoveredBlock11Step = 157 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isClassNode.
            recoveredBlock11PC := 159.
        ].
        recoveredBlock11Step = 159 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 162] ifFalse: [recoveredBlock11PC := 170].
        ].
        recoveredBlock11Step = 162 ifTrue: [
            recoveredBlock11PC := 163.
        ].
        recoveredBlock11Step = 163 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 166.
        ].
        recoveredBlock11Step = 166 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) optimizations.
            recoveredBlock11PC := 168.
        ].
        recoveredBlock11Step = 168 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) cgOptSinglelnstance.
            recoveredBlock11PC := 170.
        ].
        recoveredBlock11Step = 170 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x205365e0; bytecode file offset 0xe32ef8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
nodesForSCOOPIXGeneration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSourceTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodesForINTECRIOTransferFunctionInfo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26Stack5 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := recoveredLocal1.
            recoveredBlock26PC := 37.
        ].
        recoveredBlock26Step = 37 ifTrue: [
            recoveredBlock26Stack4 := recoveredBlock26Arg1.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack4 := (recoveredBlock26Stack4) moduleSCOOPIXTimeStamp.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) checkModelMoreRecentTimeStamp: (recoveredBlock26Stack3) generationTimeStamp: (recoveredBlock26Stack4).
            recoveredBlock26PC := 42.
        ].
        recoveredBlock26Step = 42 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 46] ifFalse: [recoveredBlock26PC := 50].
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) mustGenerateScoopIX.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'Class_2007400172'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeNodes.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:block2810d9bcArg1 | 
    | block2810d9bcValue0 block2810d9bcValue1 |
    block2810d9bcValue0 := block2810d9bcArg1.
    block2810d9bcValue1 := (block2810d9bcValue0) analyzeSCOOPIXGeneration.
    block2810d9bcValue1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 94.
        ].
        recoveredBlock83Step = 94 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) isARNode.
            recoveredBlock83PC := 96.
        ].
        recoveredBlock83Step = 96 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 172] ifFalse: [recoveredBlock83PC := 100].
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 103.
        ].
        recoveredBlock83Step = 103 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) isRecordNode.
            recoveredBlock83PC := 105.
        ].
        recoveredBlock83Step = 105 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 172] ifFalse: [recoveredBlock83PC := 108].
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83PC := 109.
        ].
        recoveredBlock83Step = 109 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 112.
        ].
        recoveredBlock83Step = 112 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) needsGenerateInterface.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 118] ifFalse: [recoveredBlock83PC := 122].
        ].
        recoveredBlock83Step = 118 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 119.
        ].
        recoveredBlock83Step = 119 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) projectNode.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            (recoveredBlock83Stack1) mustGenerateScoopIX.
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Stack1 := 'Rl'.
            recoveredBlock83PC := 124.
        ].
        recoveredBlock83Step = 124 ifTrue: [
            recoveredBlock83Stack2 := 'Call_2007402598'.
            recoveredBlock83PC := 126.
        ].
        recoveredBlock83Step = 126 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) == (recoveredBlock83Stack2).
            recoveredBlock83PC := 127.
        ].
        recoveredBlock83Step = 127 ifTrue: [
            recoveredBlock83PC := 128.
        ].
        recoveredBlock83Step = 128 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 131.
        ].
        recoveredBlock83Step = 131 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) needsGenerateModuleCode.
            recoveredBlock83PC := 133.
        ].
        recoveredBlock83Step = 133 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 136] ifFalse: [recoveredBlock83PC := 141].
        ].
        recoveredBlock83Step = 136 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 139.
        ].
        recoveredBlock83Step = 139 ifTrue: [
            (recoveredBlock83Stack1) mustGenerateScoopIX.
            recoveredBlock83PC := 141.
        ].
        recoveredBlock83Step = 141 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 142.
        ].
        recoveredBlock83Step = 142 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 145.
        ].
        recoveredBlock83Step = 145 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) needsGenerateScoopIX.
            recoveredBlock83PC := 147.
        ].
        recoveredBlock83Step = 147 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 150] ifFalse: [recoveredBlock83PC := 172].
        ].
        recoveredBlock83Step = 150 ifTrue: [
            recoveredBlock83PC := 151.
        ].
        recoveredBlock83Step = 151 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal3.
            recoveredBlock83PC := 154.
        ].
        recoveredBlock83Step = 154 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 157.
        ].
        recoveredBlock83Step = 157 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) componentKey.
            recoveredBlock83PC := 159.
        ].
        recoveredBlock83Step = 159 ifTrue: [
            recoveredBlock83Stack3 := [
    | recoveredBlock83Block159Value0 |
    recoveredBlock83Block159Value0 := recoveredBlock83Arg1.
    recoveredBlock83Block159Value0
].
            recoveredBlock83PC := 170.
        ].
        recoveredBlock83Step = 170 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) ifAbsentPut: (recoveredBlock83Stack3).
            recoveredBlock83PC := 172.
        ].
        recoveredBlock83Step = 172 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectNode.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentKey.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock191Value0 |
    recoveredBlock191Value0 := (self) projectNode.
    recoveredBlock191Value0
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20538870; bytecode file offset 0xe35190"
!SGAbstractMakeGraph methodsFor: 'recovered'!
setTopNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) module.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) equals: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    (self) resolveSoftPrerequisites.
    recoveredBlock19Value0 := (self) nodes.
    recoveredBlock19Value1 := [:recoveredBlock19Block30Arg1 | 
    | recoveredBlock19Block30Value0 recoveredBlock19Block30Value1 recoveredBlock19Block30Value2 recoveredBlock19Block30Value3 |
    recoveredBlock19Block30Value0 := recoveredBlock19Block30Arg1.
    recoveredBlock19Block30Value1 := (recoveredBlock19Block30Value0) module.
    recoveredBlock19Block30Value2 := recoveredArg1.
    recoveredBlock19Block30Value3 := (recoveredBlock19Block30Value1) equals: (recoveredBlock19Block30Value2).
    recoveredBlock19Block30Value3
].
    recoveredBlock19Value2 := [
    | recoveredBlock19Block43Local1 recoveredBlock19Block43Value0 recoveredBlock19Block43Value1 recoveredBlock19Block43Value2 recoveredBlock19Block43Value3 recoveredBlock19Block43Value4 |
    recoveredBlock19Block43Local1 := 'Incorrectly build graph'.
    recoveredBlock19Block43Value0 := recoveredArg1.
    recoveredBlock19Block43Value1 := (recoveredBlock19Block43Value0) sgClass.
    recoveredBlock19Block43Value2 := [:recoveredBlock19Block43Block60Arg1 | 
    | recoveredBlock19Block43Block60Local1 recoveredBlock19Block43Block60Stack0 recoveredBlock19Block43Block60Stack1 recoveredBlock19Block43Block60Stack2 recoveredBlock19Block43Block60Stack3 recoveredBlock19Block43Block60PC recoveredBlock19Block43Block60Step recoveredBlock19Block43Block60Done recoveredBlock19Block43Block60Result |
    recoveredBlock19Block43Block60Stack0 := self.
    recoveredBlock19Block43Block60PC := 66.
    recoveredBlock19Block43Block60Done := false.
    [recoveredBlock19Block43Block60Done not] whileTrue: [
        recoveredBlock19Block43Block60Step := recoveredBlock19Block43Block60PC.
        recoveredBlock19Block43Block60Step = 66 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := recoveredBlock19Block43Local1.
            recoveredBlock19Block43Block60PC := 69.
        ].
        recoveredBlock19Block43Block60Step = 69 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := ' - component "'.
            recoveredBlock19Block43Block60PC := 71.
        ].
        recoveredBlock19Block43Block60Step = 71 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) , (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 73.
        ].
        recoveredBlock19Block43Block60Step = 73 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := recoveredArg1.
            recoveredBlock19Block43Block60PC := 76.
        ].
        recoveredBlock19Block43Block60Step = 76 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := (recoveredBlock19Block43Block60Stack2) moduleLabel.
            recoveredBlock19Block43Block60PC := 78.
        ].
        recoveredBlock19Block43Block60Step = 78 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) , (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 80.
        ].
        recoveredBlock19Block43Block60Step = 80 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := '" not found in project "'.
            recoveredBlock19Block43Block60PC := 82.
        ].
        recoveredBlock19Block43Block60Step = 82 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) , (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 84.
        ].
        recoveredBlock19Block43Block60Step = 84 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := self.
            recoveredBlock19Block43Block60PC := 85.
        ].
        recoveredBlock19Block43Block60Step = 85 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := (recoveredBlock19Block43Block60Stack2) context.
            recoveredBlock19Block43Block60PC := 87.
        ].
        recoveredBlock19Block43Block60Step = 87 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := (recoveredBlock19Block43Block60Stack2) project.
            recoveredBlock19Block43Block60PC := 89.
        ].
        recoveredBlock19Block43Block60Step = 89 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := (recoveredBlock19Block43Block60Stack2) label.
            recoveredBlock19Block43Block60PC := 91.
        ].
        recoveredBlock19Block43Block60Step = 91 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) , (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 93.
        ].
        recoveredBlock19Block43Block60Step = 93 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := '"'.
            recoveredBlock19Block43Block60PC := 95.
        ].
        recoveredBlock19Block43Block60Step = 95 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) , (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 97.
        ].
        recoveredBlock19Block43Block60Step = 97 ifTrue: [
            recoveredBlock19Block43Local1 := recoveredBlock19Block43Block60Stack1.
            recoveredBlock19Block43Block60PC := 100.
        ].
        recoveredBlock19Block43Block60Step = 100 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) nodes.
            recoveredBlock19Block43Block60PC := 101.
        ].
        recoveredBlock19Block43Block60Step = 101 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := [:recoveredBlock19Block43Block60Block101Arg1 | 
    | recoveredBlock19Block43Block60Block101Value0 recoveredBlock19Block43Block60Block101Value1 recoveredBlock19Block43Block60Block101Value2 recoveredBlock19Block43Block60Block101Value3 recoveredBlock19Block43Block60Block101Value4 recoveredBlock19Block43Block60Block101Value5 |
    recoveredBlock19Block43Block60Block101Value0 := recoveredBlock19Block43Block60Block101Arg1.
    recoveredBlock19Block43Block60Block101Value1 := (recoveredBlock19Block43Block60Block101Value0) module.
    recoveredBlock19Block43Block60Block101Value2 := (recoveredBlock19Block43Block60Block101Value1) sgClass.
    recoveredBlock19Block43Block60Block101Value3 := recoveredArg1.
    recoveredBlock19Block43Block60Block101Value4 := (recoveredBlock19Block43Block60Block101Value3) sgClass.
    recoveredBlock19Block43Block60Block101Value5 := (recoveredBlock19Block43Block60Block101Value2) equals: (recoveredBlock19Block43Block60Block101Value4).
    recoveredBlock19Block43Block60Block101Value5
].
            recoveredBlock19Block43Block60PC := 119.
        ].
        recoveredBlock19Block43Block60Step = 119 ifTrue: [
            recoveredBlock19Block43Block60Stack2 := [].
            recoveredBlock19Block43Block60PC := 121.
        ].
        recoveredBlock19Block43Block60Step = 121 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) detect: (recoveredBlock19Block43Block60Stack1) ifNone: (recoveredBlock19Block43Block60Stack2).
            recoveredBlock19Block43Block60PC := 123.
        ].
        recoveredBlock19Block43Block60Step = 123 ifTrue: [
            recoveredBlock19Block43Block60Local1 := recoveredBlock19Block43Block60Stack0.
            recoveredBlock19Block43Block60PC := 124.
        ].
        recoveredBlock19Block43Block60Step = 124 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := recoveredBlock19Block43Block60Local1.
            recoveredBlock19Block43Block60PC := 125.
        ].
        recoveredBlock19Block43Block60Step = 125 ifTrue: [
            (recoveredBlock19Block43Block60Stack0 ~~ nil) ifTrue: [recoveredBlock19Block43Block60PC := 142] ifFalse: [recoveredBlock19Block43Block60PC := 128].
        ].
        recoveredBlock19Block43Block60Step = 128 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := recoveredBlock19Block43Local1.
            recoveredBlock19Block43Block60PC := 131.
        ].
        recoveredBlock19Block43Block60Step = 131 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := ' - no other implementation of this component found in build graph'.
            recoveredBlock19Block43Block60PC := 133.
        ].
        recoveredBlock19Block43Block60Step = 133 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) , (recoveredBlock19Block43Block60Stack1).
            recoveredBlock19Block43Block60PC := 135.
        ].
        recoveredBlock19Block43Block60Step = 135 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := recoveredBlock19Block43Block60Stack0.
            recoveredBlock19Block43Block60PC := 136.
        ].
        recoveredBlock19Block43Block60Step = 136 ifTrue: [
            recoveredBlock19Block43Local1 := recoveredBlock19Block43Block60Stack1.
            recoveredBlock19Block43Block60PC := 139.
        ].
        recoveredBlock19Block43Block60Step = 139 ifTrue: [
            recoveredBlock19Block43Block60PC := 164.
        ].
        recoveredBlock19Block43Block60Step = 142 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := recoveredBlock19Block43Local1.
            recoveredBlock19Block43Block60PC := 145.
        ].
        recoveredBlock19Block43Block60Step = 145 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := ' - there is another implementation of this component: "'.
            recoveredBlock19Block43Block60PC := 147.
        ].
        recoveredBlock19Block43Block60Step = 147 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) , (recoveredBlock19Block43Block60Stack1).
            recoveredBlock19Block43Block60PC := 149.
        ].
        recoveredBlock19Block43Block60Step = 149 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := recoveredBlock19Block43Block60Local1.
            recoveredBlock19Block43Block60PC := 150.
        ].
        recoveredBlock19Block43Block60Step = 150 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) makeConfig.
            recoveredBlock19Block43Block60PC := 152.
        ].
        recoveredBlock19Block43Block60Step = 152 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := (recoveredBlock19Block43Block60Stack1) moduleLabel.
            recoveredBlock19Block43Block60PC := 154.
        ].
        recoveredBlock19Block43Block60Step = 154 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) , (recoveredBlock19Block43Block60Stack1).
            recoveredBlock19Block43Block60PC := 156.
        ].
        recoveredBlock19Block43Block60Step = 156 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := '"'.
            recoveredBlock19Block43Block60PC := 158.
        ].
        recoveredBlock19Block43Block60Step = 158 ifTrue: [
            recoveredBlock19Block43Block60Stack0 := (recoveredBlock19Block43Block60Stack0) , (recoveredBlock19Block43Block60Stack1).
            recoveredBlock19Block43Block60PC := 160.
        ].
        recoveredBlock19Block43Block60Step = 160 ifTrue: [
            recoveredBlock19Block43Block60Stack1 := recoveredBlock19Block43Block60Stack0.
            recoveredBlock19Block43Block60PC := 161.
        ].
        recoveredBlock19Block43Block60Step = 161 ifTrue: [
            recoveredBlock19Block43Local1 := recoveredBlock19Block43Block60Stack1.
            recoveredBlock19Block43Block60PC := 164.
        ].
        recoveredBlock19Block43Block60Step = 164 ifTrue: [
            recoveredBlock19Block43Block60Result := recoveredBlock19Block43Block60Stack0.
            recoveredBlock19Block43Block60Done := true.
        ].
    ].
    recoveredBlock19Block43Block60Result
].
    (recoveredBlock19Block43Value1) ifNotNil: (recoveredBlock19Block43Value2).
    recoveredBlock19Block43Value3 := recoveredBlock19Block43Local1.
    recoveredBlock19Block43Value4 := (self) fatalError: (recoveredBlock19Block43Value3).
    recoveredBlock19Block43Value4
].
    recoveredBlock19Value3 := (recoveredBlock19Value0) detect: (recoveredBlock19Value1) ifNone: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) topNode: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) topNode.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectNode.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock191Value0 recoveredBlock191Value1 |
    recoveredBlock191Value0 := (self) topNode.
    recoveredBlock191Value1 := (self) projectNode: (recoveredBlock191Value0).
    recoveredBlock191Value1
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20546f64; bytecode file offset 0xe4389c"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkClassNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) sgClass.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) label.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isValidANSICIdentifier.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 39] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack2 := 81.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local2.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) label.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            (recoveredBlock11Stack1) errorNo: (recoveredBlock11Stack2) with: (recoveredBlock11Stack3).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local2.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) label.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) asUppercase.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack3 := [
    | block2810e934Value0 block2810e934Value1 |
    block2810e934Value0 := Set.
    block2810e934Value1 := (block2810e934Value0) new.
    block2810e934Value1
].
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11PC := 58.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:block2810e958Arg1 | 
    | block2810e958Value0 block2810e958Value1 block2810e958Value2 |
    block2810e958Value0 := block2810e958Arg1.
    block2810e958Value1 := (block2810e958Value0) size.
    block2810e958Value2 := (block2810e958Value1) > (1).
    block2810e958Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 :recoveredBlock95Arg2 | 
    | recoveredBlock95Local1 recoveredBlock95Local2 recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 recoveredBlock95Value5 recoveredBlock95Value6 recoveredBlock95Value7 recoveredBlock95Value8 recoveredBlock95Value9 recoveredBlock95Value10 recoveredBlock95Value11 recoveredBlock95Value12 recoveredBlock95Value13 recoveredBlock95Value14 recoveredBlock95Value15 recoveredBlock95Value16 |
    recoveredBlock95Value0 := OrderedCollection.
    recoveredBlock95Value1 := (recoveredBlock95Value0) new.
    recoveredBlock95Local2 := recoveredBlock95Value1.
    recoveredBlock95Value2 := OrderedCollection.
    recoveredBlock95Value3 := (recoveredBlock95Value2) new.
    recoveredBlock95Local1 := recoveredBlock95Value3.
    recoveredBlock95Value4 := (self) nodes.
    recoveredBlock95Value5 := [:recoveredBlock95Block115Arg1 | 
    | recoveredBlock95Block115Stack0 recoveredBlock95Block115Stack1 recoveredBlock95Block115Stack2 recoveredBlock95Block115Stack3 recoveredBlock95Block115Stack4 recoveredBlock95Block115PC recoveredBlock95Block115Step recoveredBlock95Block115Done recoveredBlock95Block115Result |
    recoveredBlock95Block115Stack0 := nil.
    recoveredBlock95Block115PC := 122.
    recoveredBlock95Block115Done := false.
    [recoveredBlock95Block115Done not] whileTrue: [
        recoveredBlock95Block115Step := recoveredBlock95Block115PC.
        recoveredBlock95Block115Step = 122 ifTrue: [
            recoveredBlock95Block115Stack1 := nil.
            recoveredBlock95Block115PC := 123.
        ].
        recoveredBlock95Block115Step = 123 ifTrue: [
            recoveredBlock95Block115Stack2 := recoveredBlock95Block115Arg1.
            recoveredBlock95Block115PC := 124.
        ].
        recoveredBlock95Block115Step = 124 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) sgClass.
            recoveredBlock95Block115PC := 125.
        ].
        recoveredBlock95Block115Step = 125 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) label.
            recoveredBlock95Block115PC := 127.
        ].
        recoveredBlock95Block115Step = 127 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) asUppercase.
            recoveredBlock95Block115PC := 129.
        ].
        recoveredBlock95Block115Step = 129 ifTrue: [
            recoveredBlock95Block115Stack3 := recoveredBlock95Arg1.
            recoveredBlock95Block115PC := 132.
        ].
        recoveredBlock95Block115Step = 132 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) equals: (recoveredBlock95Block115Stack3).
            recoveredBlock95Block115PC := 134.
        ].
        recoveredBlock95Block115Step = 134 ifTrue: [
            (recoveredBlock95Block115Stack2) ifTrue: [recoveredBlock95Block115PC := 138] ifFalse: [recoveredBlock95Block115PC := 173].
        ].
        recoveredBlock95Block115Step = 138 ifTrue: [
            recoveredBlock95Block115PC := 139.
        ].
        recoveredBlock95Block115Step = 139 ifTrue: [
            recoveredBlock95Block115Stack1 := recoveredBlock95Local2.
            recoveredBlock95Block115PC := 142.
        ].
        recoveredBlock95Block115Step = 142 ifTrue: [
            recoveredBlock95Block115Stack2 := recoveredBlock95Block115Arg1.
            recoveredBlock95Block115PC := 143.
        ].
        recoveredBlock95Block115Step = 143 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) componentManagerSource.
            recoveredBlock95Block115PC := 145.
        ].
        recoveredBlock95Block115Step = 145 ifTrue: [
            (recoveredBlock95Block115Stack1) add: (recoveredBlock95Block115Stack2).
            recoveredBlock95Block115PC := 147.
        ].
        recoveredBlock95Block115Step = 147 ifTrue: [
            recoveredBlock95Block115Stack1 := recoveredBlock95Local1.
            recoveredBlock95Block115PC := 150.
        ].
        recoveredBlock95Block115Step = 150 ifTrue: [
            recoveredBlock95Block115Stack2 := recoveredBlock95Block115Arg1.
            recoveredBlock95Block115PC := 151.
        ].
        recoveredBlock95Block115Step = 151 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) componentTypeLabel.
            recoveredBlock95Block115PC := 153.
        ].
        recoveredBlock95Block115Step = 153 ifTrue: [
            recoveredBlock95Block115Stack3 := ': '.
            recoveredBlock95Block115PC := 155.
        ].
        recoveredBlock95Block115Step = 155 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) , (recoveredBlock95Block115Stack3).
            recoveredBlock95Block115PC := 157.
        ].
        recoveredBlock95Block115Step = 157 ifTrue: [
            recoveredBlock95Block115Stack3 := recoveredBlock95Block115Arg1.
            recoveredBlock95Block115PC := 158.
        ].
        recoveredBlock95Block115Step = 158 ifTrue: [
            recoveredBlock95Block115Stack3 := (recoveredBlock95Block115Stack3) sgClass.
            recoveredBlock95Block115PC := 159.
        ].
        recoveredBlock95Block115Step = 159 ifTrue: [
            recoveredBlock95Block115Stack3 := (recoveredBlock95Block115Stack3) libraryPath.
            recoveredBlock95Block115PC := 161.
        ].
        recoveredBlock95Block115Step = 161 ifTrue: [
            recoveredBlock95Block115Stack3 := (recoveredBlock95Block115Stack3) asPathname.
            recoveredBlock95Block115PC := 163.
        ].
        recoveredBlock95Block115Step = 163 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) , (recoveredBlock95Block115Stack3).
            recoveredBlock95Block115PC := 165.
        ].
        recoveredBlock95Block115Step = 165 ifTrue: [
            recoveredBlock95Block115Stack3 := recoveredBlock95Block115Arg1.
            recoveredBlock95Block115PC := 166.
        ].
        recoveredBlock95Block115Step = 166 ifTrue: [
            recoveredBlock95Block115Stack3 := (recoveredBlock95Block115Stack3) sgClass.
            recoveredBlock95Block115PC := 167.
        ].
        recoveredBlock95Block115Step = 167 ifTrue: [
            recoveredBlock95Block115Stack3 := (recoveredBlock95Block115Stack3) label.
            recoveredBlock95Block115PC := 169.
        ].
        recoveredBlock95Block115Step = 169 ifTrue: [
            recoveredBlock95Block115Stack2 := (recoveredBlock95Block115Stack2) , (recoveredBlock95Block115Stack3).
            recoveredBlock95Block115PC := 171.
        ].
        recoveredBlock95Block115Step = 171 ifTrue: [
            recoveredBlock95Block115Stack1 := (recoveredBlock95Block115Stack1) add: (recoveredBlock95Block115Stack2).
            recoveredBlock95Block115PC := 173.
        ].
        recoveredBlock95Block115Step = 173 ifTrue: [
            recoveredBlock95Block115Result := recoveredBlock95Block115Stack1.
            recoveredBlock95Block115Done := true.
        ].
    ].
    recoveredBlock95Block115Result
].
    (recoveredBlock95Value4) do: (recoveredBlock95Value5).
    recoveredBlock95Value6 := recoveredBlock95Arg2.
    recoveredBlock95Value7 := (recoveredBlock95Value6) anyElement.
    recoveredBlock95Value8 := (recoveredBlock95Value7) label.
    recoveredBlock95Value9 := (self) project.
    recoveredBlock95Value10 := (recoveredBlock95Value9) label.
    recoveredBlock95Value11 := (self) projectNode.
    recoveredBlock95Value12 := (recoveredBlock95Value11) componentSource.
    recoveredBlock95Value13 := recoveredBlock95Local2.
    recoveredBlock95Value14 := recoveredBlock95Local1.
    recoveredBlock95Value15 := (recoveredBlock95Value12) createMultiSource: (recoveredBlock95Value13) labels: (recoveredBlock95Value14).
    recoveredBlock95Value16 := (self) errorNo: (20) with: (recoveredBlock95Value8) with: (recoveredBlock95Value10) source: (recoveredBlock95Value15).
    recoveredBlock95Value16
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055328c; bytecode file offset 0xe4fbf0"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkControllerRestrictions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
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
            recoveredStack1 := 24.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) duplicateTargets.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) duplicateTargets.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block2810faa4Arg1 :block2810faa4Arg2 | 
    | block2810faa4Value0 block2810faa4Value1 block2810faa4Value2 block2810faa4Value3 block2810faa4Value4 |
    block2810faa4Value0 := block2810faa4Arg1.
    block2810faa4Value1 := (block2810faa4Value0) , (' "').
    block2810faa4Value2 := block2810faa4Arg2.
    block2810faa4Value3 := (block2810faa4Value1) , (block2810faa4Value2).
    block2810faa4Value4 := (block2810faa4Value3) , ('"').
    block2810faa4Value4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 60.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetType.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectNode.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:block2810fac8Arg1 | 
    | block2810fac8Value0 block2810fac8Value1 block2810fac8Value2 |
    block2810fac8Value0 := block2810fac8Arg1.
    block2810fac8Value1 := (block2810fac8Value0) sgClass.
    block2810fac8Value2 := (block2810fac8Value1) isAtomicSoftwareComponent.
    block2810fac8Value2
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 42.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := ARAtomicSoftwareComponent.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultItemLabel.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectNode.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentSource.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 43.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := ARAtomicSoftwareComponent.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultItemLabel.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectNode.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentSource.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalControllerVariant.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsPhysicalControllerGenerator.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := 44.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := SGMdSettings.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenPhysicalControllerPathName.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeManager.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) checkClassNames: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) multipleInstances.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) checkMultiInstInterpolationScheme: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) multipleImplementations.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) checkMultiInstExports: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b5080; bytecode file offset 0xeb19c4"
!SGAbstractMakeGraph methodsFor: 'recovered'!
checkMultiInstInterpolationScheme: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) sgClass.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg2.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) asSet.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local3.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := [:block28116f14Arg1 | 
    | block28116f14Stack0 block28116f14Stack1 block28116f14Stack2 block28116f14Stack3 block28116f14Stack4 block28116f14PC block28116f14Step block28116f14Done block28116f14Result |
    block28116f14Stack0 := self.
    block28116f14PC := 4.
    block28116f14Done := false.
    [block28116f14Done not] whileTrue: [
        block28116f14Step := block28116f14PC.
        block28116f14Step = 4 ifTrue: [
            block28116f14Stack1 := false.
            block28116f14PC := 5.
        ].
        block28116f14Step = 5 ifTrue: [
            block28116f14Stack2 := block28116f14Arg1.
            block28116f14PC := 6.
        ].
        block28116f14Step = 6 ifTrue: [
            block28116f14Stack2 := (block28116f14Stack2) sgClass.
            block28116f14PC := 7.
        ].
        block28116f14Step = 7 ifTrue: [
            block28116f14Stack3 := SGOneDCharTable.
            block28116f14PC := 9.
        ].
        block28116f14Step = 9 ifTrue: [
            block28116f14Stack2 := (block28116f14Stack2) isKindOf: (block28116f14Stack3).
            block28116f14PC := 11.
        ].
        block28116f14Step = 11 ifTrue: [
            (block28116f14Stack2) ifTrue: [block28116f14PC := 14] ifFalse: [block28116f14PC := 19].
        ].
        block28116f14Step = 14 ifTrue: [
            block28116f14PC := 15.
        ].
        block28116f14Step = 15 ifTrue: [
            block28116f14Stack1 := block28116f14Arg1.
            block28116f14PC := 16.
        ].
        block28116f14Step = 16 ifTrue: [
            block28116f14Stack1 := (block28116f14Stack1) isImported.
            block28116f14PC := 18.
        ].
        block28116f14Step = 18 ifTrue: [
            block28116f14Stack1 := (block28116f14Stack1) not.
            block28116f14PC := 19.
        ].
        block28116f14Step = 19 ifTrue: [
            block28116f14Result := block28116f14Stack1.
            block28116f14Done := true.
        ].
    ].
    block28116f14Result
].
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) allVariablesSelect: (recoveredBlock7Stack2).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block60Arg1 | 
    | recoveredBlock7Block60Local1 recoveredBlock7Block60Local2 recoveredBlock7Block60Local3 recoveredBlock7Block60Stack0 recoveredBlock7Block60Stack1 recoveredBlock7Block60Stack2 recoveredBlock7Block60Stack3 recoveredBlock7Block60Stack4 recoveredBlock7Block60Stack5 recoveredBlock7Block60Stack6 recoveredBlock7Block60PC recoveredBlock7Block60Step recoveredBlock7Block60Done recoveredBlock7Block60Result |
    recoveredBlock7Block60Stack0 := self.
    recoveredBlock7Block60PC := 66.
    recoveredBlock7Block60Done := false.
    [recoveredBlock7Block60Done not] whileTrue: [
        recoveredBlock7Block60Step := recoveredBlock7Block60PC.
        recoveredBlock7Block60Step = 66 ifTrue: [
            recoveredBlock7Block60Stack1 := Set.
            recoveredBlock7Block60PC := 68.
        ].
        recoveredBlock7Block60Step = 68 ifTrue: [
            recoveredBlock7Block60Stack1 := (recoveredBlock7Block60Stack1) new.
            recoveredBlock7Block60PC := 70.
        ].
        recoveredBlock7Block60Step = 70 ifTrue: [
            recoveredBlock7Block60Local3 := recoveredBlock7Block60Stack1.
            recoveredBlock7Block60PC := 73.
        ].
        recoveredBlock7Block60Step = 73 ifTrue: [
            recoveredBlock7Block60Stack1 := recoveredBlock7Local2.
            recoveredBlock7Block60PC := 76.
        ].
        recoveredBlock7Block60Step = 76 ifTrue: [
            recoveredBlock7Block60Stack2 := [:recoveredBlock7Block60Block76Arg1 | 
    | recoveredBlock7Block60Block76Value0 recoveredBlock7Block60Block76Value1 recoveredBlock7Block60Block76Value2 recoveredBlock7Block60Block76Value3 recoveredBlock7Block60Block76Value4 |
    recoveredBlock7Block60Block76Value0 := recoveredBlock7Block60Block76Arg1.
    recoveredBlock7Block60Block76Value1 := recoveredBlock7Block60Arg1.
    recoveredBlock7Block60Block76Value2 := (recoveredBlock7Block60Block76Value0) configForElement: (recoveredBlock7Block60Block76Value1).
    recoveredBlock7Block60Block76Value3 := [:recoveredBlock7Block60Block76Block88Arg1 | 
    | recoveredBlock7Block60Block76Block88Value0 recoveredBlock7Block60Block76Block88Value1 recoveredBlock7Block60Block76Block88Value2 recoveredBlock7Block60Block76Block88Value3 |
    recoveredBlock7Block60Block76Block88Value0 := recoveredBlock7Block60Local3.
    recoveredBlock7Block60Block76Block88Value1 := recoveredBlock7Block60Block76Block88Arg1.
    recoveredBlock7Block60Block76Block88Value2 := (recoveredBlock7Block60Block76Block88Value1) interpolationValue.
    recoveredBlock7Block60Block76Block88Value3 := (recoveredBlock7Block60Block76Block88Value0) add: (recoveredBlock7Block60Block76Block88Value2).
    recoveredBlock7Block60Block76Block88Value3
].
    recoveredBlock7Block60Block76Value4 := (recoveredBlock7Block60Block76Value2) ifNotNil: (recoveredBlock7Block60Block76Value3).
    recoveredBlock7Block60Block76Value4
].
            recoveredBlock7Block60PC := 106.
        ].
        recoveredBlock7Block60Step = 106 ifTrue: [
            (recoveredBlock7Block60Stack1) do: (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 108.
        ].
        recoveredBlock7Block60Step = 108 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) codeManager.
            recoveredBlock7Block60PC := 110.
        ].
        recoveredBlock7Block60Step = 110 ifTrue: [
            recoveredBlock7Block60Stack1 := recoveredBlock7Block60Arg1.
            recoveredBlock7Block60PC := 113.
        ].
        recoveredBlock7Block60Step = 113 ifTrue: [
            recoveredBlock7Block60Stack2 := SGMakeConfig.
            recoveredBlock7Block60PC := 115.
        ].
        recoveredBlock7Block60Step = 115 ifTrue: [
            recoveredBlock7Block60Stack3 := recoveredBlock7Arg1.
            recoveredBlock7Block60PC := 118.
        ].
        recoveredBlock7Block60Step = 118 ifTrue: [
            recoveredBlock7Block60Stack4 := recoveredBlock7Arg2.
            recoveredBlock7Block60PC := 121.
        ].
        recoveredBlock7Block60Step = 121 ifTrue: [
            recoveredBlock7Block60Stack4 := (recoveredBlock7Block60Stack4) first.
            recoveredBlock7Block60PC := 123.
        ].
        recoveredBlock7Block60Step = 123 ifTrue: [
            recoveredBlock7Block60Stack5 := recoveredBlock7Local3.
            recoveredBlock7Block60PC := 126.
        ].
        recoveredBlock7Block60Step = 126 ifTrue: [
            recoveredBlock7Block60Stack2 := (recoveredBlock7Block60Stack2) createForImpl: (recoveredBlock7Block60Stack3) data: (recoveredBlock7Block60Stack4) sgClass: (recoveredBlock7Block60Stack5).
            recoveredBlock7Block60PC := 129.
        ].
        recoveredBlock7Block60Step = 129 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) declSourceForElement: (recoveredBlock7Block60Stack1) makeConfig: (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 131.
        ].
        recoveredBlock7Block60Step = 131 ifTrue: [
            recoveredBlock7Block60Local2 := recoveredBlock7Block60Stack0.
            recoveredBlock7Block60PC := 134.
        ].
        recoveredBlock7Block60Step = 134 ifTrue: [
            recoveredBlock7Block60Stack0 := recoveredBlock7Block60Local3.
            recoveredBlock7Block60PC := 137.
        ].
        recoveredBlock7Block60Step = 137 ifTrue: [
            recoveredBlock7Block60Stack1 := [:recoveredBlock7Block60Block137Arg1 | 
    | recoveredBlock7Block60Block137Value0 recoveredBlock7Block60Block137Value1 recoveredBlock7Block60Block137Value2 recoveredBlock7Block60Block137Value3 |
    recoveredBlock7Block60Block137Value0 := (self) codeManager.
    recoveredBlock7Block60Block137Value1 := recoveredBlock7Block60Block137Arg1.
    recoveredBlock7Block60Block137Value2 := recoveredBlock7Block60Local2.
    recoveredBlock7Block60Block137Value3 := (recoveredBlock7Block60Block137Value0) mappedInterpolation: (recoveredBlock7Block60Block137Value1) source: (recoveredBlock7Block60Block137Value2).
    recoveredBlock7Block60Block137Value3
].
            recoveredBlock7Block60PC := 153.
        ].
        recoveredBlock7Block60Step = 153 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) collect: (recoveredBlock7Block60Stack1).
            recoveredBlock7Block60PC := 155.
        ].
        recoveredBlock7Block60Step = 155 ifTrue: [
            recoveredBlock7Block60Local3 := recoveredBlock7Block60Stack0.
            recoveredBlock7Block60PC := 158.
        ].
        recoveredBlock7Block60Step = 158 ifTrue: [
            recoveredBlock7Block60Stack0 := nil.
            recoveredBlock7Block60PC := 159.
        ].
        recoveredBlock7Block60Step = 159 ifTrue: [
            recoveredBlock7Block60Stack1 := recoveredBlock7Block60Local3.
            recoveredBlock7Block60PC := 162.
        ].
        recoveredBlock7Block60Step = 162 ifTrue: [
            recoveredBlock7Block60Stack1 := (recoveredBlock7Block60Stack1) size.
            recoveredBlock7Block60PC := 164.
        ].
        recoveredBlock7Block60Step = 164 ifTrue: [
            recoveredBlock7Block60Stack2 := 1.
            recoveredBlock7Block60PC := 166.
        ].
        recoveredBlock7Block60Step = 166 ifTrue: [
            recoveredBlock7Block60Stack1 := (recoveredBlock7Block60Stack1) > (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 167.
        ].
        recoveredBlock7Block60Step = 167 ifTrue: [
            (recoveredBlock7Block60Stack1) ifTrue: [recoveredBlock7Block60PC := 170] ifFalse: [recoveredBlock7Block60PC := 307].
        ].
        recoveredBlock7Block60Step = 170 ifTrue: [
            recoveredBlock7Block60PC := 171.
        ].
        recoveredBlock7Block60Step = 171 ifTrue: [
            recoveredBlock7Block60Stack0 := recoveredBlock7Local2.
            recoveredBlock7Block60PC := 174.
        ].
        recoveredBlock7Block60Step = 174 ifTrue: [
            recoveredBlock7Block60Stack1 := [:block28116f38Arg1 :block28116f38Arg2 | 
    | block28116f38Value0 block28116f38Value1 block28116f38Value2 block28116f38Value3 block28116f38Value4 |
    block28116f38Value0 := block28116f38Arg1.
    block28116f38Value1 := (block28116f38Value0) label.
    block28116f38Value2 := block28116f38Arg2.
    block28116f38Value3 := (block28116f38Value2) label.
    block28116f38Value4 := (block28116f38Value1) < (block28116f38Value3).
    block28116f38Value4
].
            recoveredBlock7Block60PC := 176.
        ].
        recoveredBlock7Block60Step = 176 ifTrue: [
            recoveredBlock7Block60PC := 188.
        ].
        recoveredBlock7Block60Step = 188 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) asSortedCollection: (recoveredBlock7Block60Stack1).
            recoveredBlock7Block60PC := 190.
        ].
        recoveredBlock7Block60Step = 190 ifTrue: [
            recoveredBlock7Block60Local1 := recoveredBlock7Block60Stack0.
            recoveredBlock7Block60PC := 193.
        ].
        recoveredBlock7Block60Step = 193 ifTrue: [
            recoveredBlock7Block60Stack0 := recoveredBlock7Block60Local2.
            recoveredBlock7Block60PC := 196.
        ].
        recoveredBlock7Block60Step = 196 ifTrue: [
            recoveredBlock7Block60Stack1 := recoveredBlock7Block60Local1.
            recoveredBlock7Block60PC := 199.
        ].
        recoveredBlock7Block60Step = 199 ifTrue: [
            recoveredBlock7Block60Stack2 := [:recoveredBlock7Block60Block199Arg1 | 
    | recoveredBlock7Block60Block199Value0 recoveredBlock7Block60Block199Value1 recoveredBlock7Block60Block199Value2 recoveredBlock7Block60Block199Value3 recoveredBlock7Block60Block199Value4 recoveredBlock7Block60Block199Value5 recoveredBlock7Block60Block199Value6 recoveredBlock7Block60Block199Value7 recoveredBlock7Block60Block199Value8 |
    recoveredBlock7Block60Block199Value0 := (self) codeManager.
    recoveredBlock7Block60Block199Value1 := recoveredBlock7Block60Arg1.
    recoveredBlock7Block60Block199Value2 := SGMakeConfig.
    recoveredBlock7Block60Block199Value3 := recoveredBlock7Arg1.
    recoveredBlock7Block60Block199Value4 := recoveredBlock7Arg2.
    recoveredBlock7Block60Block199Value5 := (recoveredBlock7Block60Block199Value4) first.
    recoveredBlock7Block60Block199Value6 := recoveredBlock7Local3.
    recoveredBlock7Block60Block199Value7 := (recoveredBlock7Block60Block199Value2) createForImpl: (recoveredBlock7Block60Block199Value3) data: (recoveredBlock7Block60Block199Value5) sgClass: (recoveredBlock7Block60Block199Value6).
    recoveredBlock7Block60Block199Value8 := (recoveredBlock7Block60Block199Value0) dataDeclSourceForElement: (recoveredBlock7Block60Block199Value1) makeConfig: (recoveredBlock7Block60Block199Value7).
    recoveredBlock7Block60Block199Value8
].
            recoveredBlock7Block60PC := 230.
        ].
        recoveredBlock7Block60Step = 230 ifTrue: [
            recoveredBlock7Block60Stack1 := (recoveredBlock7Block60Stack1) collect: (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 232.
        ].
        recoveredBlock7Block60Step = 232 ifTrue: [
            recoveredBlock7Block60Stack2 := recoveredBlock7Block60Local2.
            recoveredBlock7Block60PC := 235.
        ].
        recoveredBlock7Block60Step = 235 ifTrue: [
            recoveredBlock7Block60Stack1 := (recoveredBlock7Block60Stack1) copyWith: (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 237.
        ].
        recoveredBlock7Block60Step = 237 ifTrue: [
            recoveredBlock7Block60Stack2 := recoveredBlock7Block60Local1.
            recoveredBlock7Block60PC := 240.
        ].
        recoveredBlock7Block60Step = 240 ifTrue: [
            recoveredBlock7Block60Stack3 := [:recoveredBlock7Block60Block240Arg1 | 
    | recoveredBlock7Block60Block240Value0 recoveredBlock7Block60Block240Value1 recoveredBlock7Block60Block240Value2 recoveredBlock7Block60Block240Value3 recoveredBlock7Block60Block240Value4 recoveredBlock7Block60Block240Value5 recoveredBlock7Block60Block240Value6 recoveredBlock7Block60Block240Value7 recoveredBlock7Block60Block240Value8 |
    recoveredBlock7Block60Block240Value0 := recoveredBlock7Block60Block240Arg1.
    recoveredBlock7Block60Block240Value1 := (recoveredBlock7Block60Block240Value0) label.
    recoveredBlock7Block60Block240Value2 := ('Interpolation in data set ') , (recoveredBlock7Block60Block240Value1).
    recoveredBlock7Block60Block240Value3 := (recoveredBlock7Block60Block240Value2) , (' is ').
    recoveredBlock7Block60Block240Value4 := recoveredBlock7Block60Block240Arg1.
    recoveredBlock7Block60Block240Value5 := recoveredBlock7Block60Arg1.
    recoveredBlock7Block60Block240Value6 := (recoveredBlock7Block60Block240Value4) configForElement: (recoveredBlock7Block60Block240Value5).
    recoveredBlock7Block60Block240Value7 := (recoveredBlock7Block60Block240Value6) interpolationValue.
    recoveredBlock7Block60Block240Value8 := (recoveredBlock7Block60Block240Value3) , (recoveredBlock7Block60Block240Value7).
    recoveredBlock7Block60Block240Value8
].
            recoveredBlock7Block60PC := 268.
        ].
        recoveredBlock7Block60Step = 268 ifTrue: [
            recoveredBlock7Block60Stack2 := (recoveredBlock7Block60Stack2) collect: (recoveredBlock7Block60Stack3).
            recoveredBlock7Block60PC := 270.
        ].
        recoveredBlock7Block60Step = 270 ifTrue: [
            recoveredBlock7Block60Stack3 := 'Advice: set the desired interpolation in the element properties'.
            recoveredBlock7Block60PC := 272.
        ].
        recoveredBlock7Block60Step = 272 ifTrue: [
            recoveredBlock7Block60Stack2 := (recoveredBlock7Block60Stack2) copyWith: (recoveredBlock7Block60Stack3).
            recoveredBlock7Block60PC := 274.
        ].
        recoveredBlock7Block60Step = 274 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) createMultiSource: (recoveredBlock7Block60Stack1) labels: (recoveredBlock7Block60Stack2).
            recoveredBlock7Block60PC := 276.
        ].
        recoveredBlock7Block60Step = 276 ifTrue: [
            recoveredBlock7Block60Local2 := recoveredBlock7Block60Stack0.
            recoveredBlock7Block60PC := 279.
        ].
        recoveredBlock7Block60Step = 279 ifTrue: [
            recoveredBlock7Block60Stack0 := self.
            recoveredBlock7Block60PC := 280.
        ].
        recoveredBlock7Block60Step = 280 ifTrue: [
            recoveredBlock7Block60Stack1 := 22.
            recoveredBlock7Block60PC := 282.
        ].
        recoveredBlock7Block60Step = 282 ifTrue: [
            recoveredBlock7Block60Stack2 := Array.
            recoveredBlock7Block60PC := 284.
        ].
        recoveredBlock7Block60Step = 284 ifTrue: [
            recoveredBlock7Block60Stack3 := recoveredBlock7Arg1.
            recoveredBlock7Block60PC := 287.
        ].
        recoveredBlock7Block60Step = 287 ifTrue: [
            recoveredBlock7Block60Stack3 := (recoveredBlock7Block60Stack3) sgClass.
            recoveredBlock7Block60PC := 288.
        ].
        recoveredBlock7Block60Step = 288 ifTrue: [
            recoveredBlock7Block60Stack3 := (recoveredBlock7Block60Stack3) label.
            recoveredBlock7Block60PC := 290.
        ].
        recoveredBlock7Block60Step = 290 ifTrue: [
            recoveredBlock7Block60Stack4 := recoveredBlock7Block60Arg1.
            recoveredBlock7Block60PC := 293.
        ].
        recoveredBlock7Block60Step = 293 ifTrue: [
            recoveredBlock7Block60Stack4 := (recoveredBlock7Block60Stack4) label.
            recoveredBlock7Block60PC := 295.
        ].
        recoveredBlock7Block60Step = 295 ifTrue: [
            recoveredBlock7Block60Stack2 := (recoveredBlock7Block60Stack2) with: (recoveredBlock7Block60Stack3) with: (recoveredBlock7Block60Stack4).
            recoveredBlock7Block60PC := 297.
        ].
        recoveredBlock7Block60Step = 297 ifTrue: [
            recoveredBlock7Block60Stack3 := recoveredBlock7Block60Local2.
            recoveredBlock7Block60PC := 300.
        ].
        recoveredBlock7Block60Step = 300 ifTrue: [
            recoveredBlock7Block60Stack0 := (recoveredBlock7Block60Stack0) errorNo: (recoveredBlock7Block60Stack1) with: (recoveredBlock7Block60Stack2) source: (recoveredBlock7Block60Stack3).
            recoveredBlock7Block60PC := 303.
        ].
        recoveredBlock7Block60Step = 303 ifTrue: [
            recoveredBlock7Block60Stack1 := nil.
            recoveredBlock7Block60PC := 304.
        ].
        recoveredBlock7Block60Step = 304 ifTrue: [
            recoveredBlock7Block60Local1 := recoveredBlock7Block60Stack1.
            recoveredBlock7Block60PC := 307.
        ].
        recoveredBlock7Block60Step = 307 ifTrue: [
            recoveredBlock7Block60Result := recoveredBlock7Block60Stack0.
            recoveredBlock7Block60Done := true.
        ].
    ].
    recoveredBlock7Block60Result
].
            recoveredBlock7PC := 308.
        ].
        recoveredBlock7Step = 308 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 310.
        ].
        recoveredBlock7Step = 310 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x205e6170; bytecode file offset 0xee2aa8"
!SGAbstractMakeGraph methodsFor: 'recovered'!
topologicalSort
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block2811ab8cArg1 | 
    | block2811ab8cValue0 block2811ab8cValue1 block2811ab8cValue2 block2811ab8cValue3 block2811ab8cValue4 |
    block2811ab8cValue0 := block2811ab8cArg1.
    block2811ab8cValue1 := block2811ab8cArg1.
    block2811ab8cValue2 := (block2811ab8cValue1) hardDependents.
    block2811ab8cValue3 := (block2811ab8cValue2) size.
    block2811ab8cValue4 := (block2811ab8cValue0) indegree: (block2811ab8cValue3).
    block2811ab8cValue4
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block2811abb0Arg1 | 
    | block2811abb0Value0 block2811abb0Value1 block2811abb0Value2 |
    block2811abb0Value0 := block2811abb0Arg1.
    block2811abb0Value1 := (block2811abb0Value0) indegree.
    block2811abb0Value2 := (block2811abb0Value1) = (0).
    block2811abb0Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 recoveredBlock64Value8 recoveredBlock64Value9 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredLocal9.
    recoveredBlock64Value2 := (recoveredBlock64Value1) + (1).
    recoveredBlock64Value3 := recoveredBlock64Value2.
    recoveredLocal9 := recoveredBlock64Value3.
    (recoveredBlock64Value0) label: (recoveredBlock64Value2).
    recoveredBlock64Value4 := recoveredLocal6.
    recoveredBlock64Value5 := recoveredBlock64Arg1.
    (recoveredBlock64Value4) addFirst: (recoveredBlock64Value5).
    recoveredBlock64Value6 := recoveredBlock64Arg1.
    recoveredBlock64Value7 := (recoveredBlock64Value6) hardPrerequesites.
    recoveredBlock64Value8 := [:recoveredBlock64Block90Arg1 | 
    | recoveredBlock64Block90Stack0 recoveredBlock64Block90Stack1 recoveredBlock64Block90Stack2 recoveredBlock64Block90Stack3 recoveredBlock64Block90Stack4 recoveredBlock64Block90PC recoveredBlock64Block90Step recoveredBlock64Block90Done recoveredBlock64Block90Result |
    recoveredBlock64Block90Stack0 := nil.
    recoveredBlock64Block90PC := 96.
    recoveredBlock64Block90Done := false.
    [recoveredBlock64Block90Done not] whileTrue: [
        recoveredBlock64Block90Step := recoveredBlock64Block90PC.
        recoveredBlock64Block90Step = 96 ifTrue: [
            recoveredBlock64Block90Stack1 := nil.
            recoveredBlock64Block90PC := 97.
        ].
        recoveredBlock64Block90Step = 97 ifTrue: [
            recoveredBlock64Block90Stack2 := recoveredBlock64Block90Arg1.
            recoveredBlock64Block90PC := 98.
        ].
        recoveredBlock64Block90Step = 98 ifTrue: [
            recoveredBlock64Block90Stack3 := recoveredBlock64Block90Arg1.
            recoveredBlock64Block90PC := 99.
        ].
        recoveredBlock64Block90Step = 99 ifTrue: [
            recoveredBlock64Block90Stack3 := (recoveredBlock64Block90Stack3) indegree.
            recoveredBlock64Block90PC := 101.
        ].
        recoveredBlock64Block90Step = 101 ifTrue: [
            recoveredBlock64Block90Stack3 := (recoveredBlock64Block90Stack3) + (-1).
            recoveredBlock64Block90PC := 102.
        ].
        recoveredBlock64Block90Step = 102 ifTrue: [
            recoveredBlock64Block90Stack2 := (recoveredBlock64Block90Stack2) indegree: (recoveredBlock64Block90Stack3).
            recoveredBlock64Block90PC := 104.
        ].
        recoveredBlock64Block90Step = 104 ifTrue: [
            recoveredBlock64Block90Stack3 := 0.
            recoveredBlock64Block90PC := 106.
        ].
        recoveredBlock64Block90Step = 106 ifTrue: [
            recoveredBlock64Block90Stack2 := (recoveredBlock64Block90Stack2) = (recoveredBlock64Block90Stack3).
            recoveredBlock64Block90PC := 107.
        ].
        recoveredBlock64Block90Step = 107 ifTrue: [
            (recoveredBlock64Block90Stack2) ifTrue: [recoveredBlock64Block90PC := 110] ifFalse: [recoveredBlock64Block90PC := 117].
        ].
        recoveredBlock64Block90Step = 110 ifTrue: [
            recoveredBlock64Block90PC := 111.
        ].
        recoveredBlock64Block90Step = 111 ifTrue: [
            recoveredBlock64Block90Stack1 := recoveredLocal7.
            recoveredBlock64Block90PC := 114.
        ].
        recoveredBlock64Block90Step = 114 ifTrue: [
            recoveredBlock64Block90Stack2 := recoveredBlock64Block90Arg1.
            recoveredBlock64Block90PC := 115.
        ].
        recoveredBlock64Block90Step = 115 ifTrue: [
            recoveredBlock64Block90Stack1 := (recoveredBlock64Block90Stack1) addFirst: (recoveredBlock64Block90Stack2).
            recoveredBlock64Block90PC := 117.
        ].
        recoveredBlock64Block90Step = 117 ifTrue: [
            recoveredBlock64Block90Result := recoveredBlock64Block90Stack1.
            recoveredBlock64Block90Done := true.
        ].
    ].
    recoveredBlock64Block90Result
].
    recoveredBlock64Value9 := (recoveredBlock64Value7) do: (recoveredBlock64Value8).
    recoveredBlock64Value9
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := nodes.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Stack0 recoveredBlock162Stack1 recoveredBlock162Stack2 recoveredBlock162Stack3 recoveredBlock162Stack4 recoveredBlock162PC recoveredBlock162Step recoveredBlock162Done recoveredBlock162Result |
    recoveredBlock162Stack0 := self.
    recoveredBlock162PC := 168.
    recoveredBlock162Done := false.
    [recoveredBlock162Done not] whileTrue: [
        recoveredBlock162Step := recoveredBlock162PC.
        recoveredBlock162Step = 168 ifTrue: [
            recoveredBlock162Stack1 := false.
            recoveredBlock162PC := 169.
        ].
        recoveredBlock162Step = 169 ifTrue: [
            recoveredBlock162Stack2 := recoveredLocal6.
            recoveredBlock162PC := 172.
        ].
        recoveredBlock162Step = 172 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Arg1.
            recoveredBlock162PC := 173.
        ].
        recoveredBlock162Step = 173 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) includes: (recoveredBlock162Stack3).
            recoveredBlock162PC := 175.
        ].
        recoveredBlock162Step = 175 ifTrue: [
            (recoveredBlock162Stack2) ifTrue: [recoveredBlock162PC := 184] ifFalse: [recoveredBlock162PC := 178].
        ].
        recoveredBlock162Step = 178 ifTrue: [
            recoveredBlock162PC := 179.
        ].
        recoveredBlock162Step = 179 ifTrue: [
            recoveredBlock162Stack1 := recoveredBlock162Arg1.
            recoveredBlock162PC := 180.
        ].
        recoveredBlock162Step = 180 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) hardPrerequesites.
            recoveredBlock162PC := 182.
        ].
        recoveredBlock162Step = 182 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) notEmpty.
            recoveredBlock162PC := 184.
        ].
        recoveredBlock162Step = 184 ifTrue: [
            recoveredBlock162Result := recoveredBlock162Stack1.
            recoveredBlock162Done := true.
        ].
    ].
    recoveredBlock162Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := [:recoveredBlock193Arg1 | 
    | recoveredBlock193Value0 recoveredBlock193Value1 recoveredBlock193Value2 recoveredBlock193Value3 |
    recoveredBlock193Value0 := recoveredBlock193Arg1.
    recoveredBlock193Value1 := (recoveredBlock193Value0) hardPrerequesites.
    recoveredBlock193Value2 := [:recoveredBlock193Block203Arg1 | 
    | recoveredBlock193Block203Value0 recoveredBlock193Block203Value1 recoveredBlock193Block203Value2 |
    recoveredBlock193Block203Value0 := recoveredLocal5.
    recoveredBlock193Block203Value1 := recoveredBlock193Block203Arg1.
    recoveredBlock193Block203Value2 := (recoveredBlock193Block203Value0) includes: (recoveredBlock193Block203Value1).
    recoveredBlock193Block203Value2
].
    recoveredBlock193Value3 := (recoveredBlock193Value1) anySatisfy: (recoveredBlock193Value2).
    recoveredBlock193Value3
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Value0 recoveredBlock233Value1 recoveredBlock233Value2 recoveredBlock233Value3 recoveredBlock233Value4 recoveredBlock233Value5 recoveredBlock233Value6 recoveredBlock233Value7 recoveredBlock233Value8 recoveredBlock233Value9 recoveredBlock233Value10 recoveredBlock233Value11 recoveredBlock233Value12 recoveredBlock233Value13 recoveredBlock233Value14 recoveredBlock233Value15 |
    recoveredBlock233Value0 := recoveredLocal3.
    recoveredBlock233Value1 := recoveredBlock233Arg1.
    recoveredBlock233Value2 := (recoveredBlock233Value1) componentErrLabel.
    recoveredBlock233Value3 := (recoveredBlock233Value0) , (recoveredBlock233Value2).
    recoveredLocal3 := recoveredBlock233Value3.
    recoveredBlock233Value4 := recoveredLocal2.
    recoveredBlock233Value5 := recoveredBlock233Arg1.
    recoveredBlock233Value6 := (recoveredBlock233Value5) componentSource.
    (recoveredBlock233Value4) add: (recoveredBlock233Value6).
    recoveredBlock233Value7 := recoveredLocal1.
    recoveredBlock233Value8 := recoveredBlock233Arg1.
    recoveredBlock233Value9 := (recoveredBlock233Value8) hardPrerequesites.
    recoveredBlock233Value10 := recoveredBlock233Arg1.
    recoveredBlock233Value11 := (recoveredBlock233Value10) componentErrLabel.
    recoveredBlock233Value12 := ('prerequisites of ') , (recoveredBlock233Value11).
    recoveredBlock233Value13 := [:recoveredBlock233Block272Arg1 :recoveredBlock233Block272Arg2 | 
    | recoveredBlock233Block272Stack0 recoveredBlock233Block272Stack1 recoveredBlock233Block272Stack2 recoveredBlock233Block272Stack3 recoveredBlock233Block272PC recoveredBlock233Block272Step recoveredBlock233Block272Done recoveredBlock233Block272Result |
    recoveredBlock233Block272Stack0 := nil.
    recoveredBlock233Block272PC := 278.
    recoveredBlock233Block272Done := false.
    [recoveredBlock233Block272Done not] whileTrue: [
        recoveredBlock233Block272Step := recoveredBlock233Block272PC.
        recoveredBlock233Block272Step = 278 ifTrue: [
            recoveredBlock233Block272Stack1 := recoveredLocal5.
            recoveredBlock233Block272PC := 281.
        ].
        recoveredBlock233Block272Step = 281 ifTrue: [
            recoveredBlock233Block272Stack2 := recoveredBlock233Block272Arg2.
            recoveredBlock233Block272PC := 282.
        ].
        recoveredBlock233Block272Step = 282 ifTrue: [
            recoveredBlock233Block272Stack1 := (recoveredBlock233Block272Stack1) includes: (recoveredBlock233Block272Stack2).
            recoveredBlock233Block272PC := 284.
        ].
        recoveredBlock233Block272Step = 284 ifTrue: [
            (recoveredBlock233Block272Stack1) ifTrue: [recoveredBlock233Block272PC := 288] ifFalse: [recoveredBlock233Block272PC := 302].
        ].
        recoveredBlock233Block272Step = 288 ifTrue: [
            recoveredBlock233Block272Stack1 := recoveredBlock233Block272Arg1.
            recoveredBlock233Block272PC := 289.
        ].
        recoveredBlock233Block272Step = 289 ifTrue: [
            recoveredBlock233Block272Stack2 := ' --- '.
            recoveredBlock233Block272PC := 291.
        ].
        recoveredBlock233Block272Step = 291 ifTrue: [
            recoveredBlock233Block272Stack1 := (recoveredBlock233Block272Stack1) , (recoveredBlock233Block272Stack2).
            recoveredBlock233Block272PC := 293.
        ].
        recoveredBlock233Block272Step = 293 ifTrue: [
            recoveredBlock233Block272Stack2 := recoveredBlock233Block272Arg2.
            recoveredBlock233Block272PC := 294.
        ].
        recoveredBlock233Block272Step = 294 ifTrue: [
            recoveredBlock233Block272Stack2 := (recoveredBlock233Block272Stack2) componentErrLabel.
            recoveredBlock233Block272PC := 296.
        ].
        recoveredBlock233Block272Step = 296 ifTrue: [
            recoveredBlock233Block272Stack1 := (recoveredBlock233Block272Stack1) , (recoveredBlock233Block272Stack2).
            recoveredBlock233Block272PC := 298.
        ].
        recoveredBlock233Block272Step = 298 ifTrue: [
            recoveredBlock233Block272PC := 303.
        ].
        recoveredBlock233Block272Step = 302 ifTrue: [
            recoveredBlock233Block272Stack1 := recoveredBlock233Block272Arg1.
            recoveredBlock233Block272PC := 303.
        ].
        recoveredBlock233Block272Step = 303 ifTrue: [
            recoveredBlock233Block272Result := recoveredBlock233Block272Stack1.
            recoveredBlock233Block272Done := true.
        ].
    ].
    recoveredBlock233Block272Result
].
    recoveredBlock233Value14 := (recoveredBlock233Value9) inject: (recoveredBlock233Value12) into: (recoveredBlock233Value13).
    recoveredBlock233Value15 := (recoveredBlock233Value7) add: (recoveredBlock233Value14).
    recoveredBlock233Value15
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock309Value0 recoveredBlock309Value1 recoveredBlock309Value2 |
    recoveredBlock309Value0 := recoveredLocal3.
    recoveredBlock309Value1 := (recoveredBlock309Value0) , (' --- ').
    recoveredBlock309Value2 := recoveredBlock309Value1.
    recoveredLocal3 := recoveredBlock309Value2.
    recoveredBlock309Value1
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentSource.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := (recoveredStack3) createMultiSource: (recoveredStack4) labels: (recoveredStack5).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0) fatalWithDisplay.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack0) nodes: (recoveredStack1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

