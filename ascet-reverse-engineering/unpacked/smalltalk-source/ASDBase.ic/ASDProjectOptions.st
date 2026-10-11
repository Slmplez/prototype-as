"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007b44; bytecode file offset 0x908be4"
!ASDProjectOptions methodsFor: 'recovered'!
targetSettings
    | recoveredValue0 |
    recoveredValue0 := (self) platformSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b9e4; bytecode file offset 0x908be4"
!ASDProjectOptions methodsFor: 'recovered'!
currentPlatform
    | recoveredValue0 |
    recoveredValue0 := (self) platform.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cf0c; bytecode file offset 0x909ab8"
!ASDProjectOptions methodsFor: 'recovered'!
optionUserFieldForKey: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d384; bytecode file offset 0x909e08"
!ASDProjectOptions methodsFor: 'recovered'!
optionChangeableForKey: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2001260c; bytecode file offset 0x912098"
!ASDProjectOptions methodsFor: 'recovered'!
operatingSystemClass
    | recoveredValue0 |
    recoveredValue0 := TGOperatingSystemTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012e40; bytecode file offset 0x912098"
!ASDProjectOptions methodsFor: 'recovered'!
compilerClass
    | recoveredValue0 |
    recoveredValue0 := TGCCompilerTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012f84; bytecode file offset 0x912098"
!ASDProjectOptions methodsFor: 'recovered'!
targetClass
    | recoveredValue0 |
    recoveredValue0 := TGTarget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014dfc; bytecode file offset 0x912098"
!ASDProjectOptions methodsFor: 'recovered'!
operatingSystemToolClass
    | recoveredValue0 |
    recoveredValue0 := TGOperatingSystemTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016b38; bytecode file offset 0x92209c"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupASAM2MC
    ^'ASAM-2MC'
! !

"ASDBase.ic method 0x20017ce4; bytecode file offset 0x92209c"
!ASDProjectOptions methodsFor: 'recovered'!
operatingSystemOptionAttributeName
    ^'OperatingSystem'
! !

"ASDBase.ic method 0x200192b0; bytecode file offset 0x92209c"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupCodeStorage
    ^'Code Storage'
! !

"ASDBase.ic method 0x2001c4c0; bytecode file offset 0x92209c"
!ASDProjectOptions methodsFor: 'recovered'!
xmlCategoryTargetSpecific
    ^'TargetSettings'
! !

"ASDBase.ic method 0x20022ab4; bytecode file offset 0x92209c"
!ASDProjectOptions methodsFor: 'recovered'!
keyCodeStorageRootPath
    ^'CodeStorageRootPath'
! !

"ASDBase.ic method 0x200267dc; bytecode file offset 0x923928"
!ASDProjectOptions methodsFor: 'recovered'!
compilerOptionName
    ^'Compiler'
! !

"ASDBase.ic method 0x20026ac4; bytecode file offset 0x923928"
!ASDProjectOptions methodsFor: 'recovered'!
operatingSystemOptionName
    ^'Operating System'
! !

"ASDBase.ic method 0x20029674; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
allowMemorySectionsFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isControllerTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a794; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupBuild
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) optionGroupBuild.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d214; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
targetSpecificPathTokens
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentPlatform.
    recoveredValue1 := (recoveredValue0) targetSpecificPathTokens.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d6a4; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
isTargetPC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isPCTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f8d4; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
getOperatingSystemId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osSettings.
    recoveredValue1 := (recoveredValue0) operatingSystem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fd94; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
allowARXmlConfigOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOSCategoryAUTOSAR.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030c04; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
availableCodeGenPathDefaultLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) availableCodeGenPathLabels.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030ff4; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
getCompilerToolId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := (recoveredValue0) getCompilerToolType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033344; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
getCodeGenPathDefaultLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) availableCodeGenPathLabelsBasic.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035a84; bytecode file offset 0x934580"
!ASDProjectOptions methodsFor: 'recovered'!
getDefaultOperatingSystemId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) defaultOSType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049dfc; bytecode file offset 0x947128"
!ASDProjectOptions methodsFor: 'recovered'!
getDefaultOSToolType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (self) getDefaultOSToolType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051858; bytecode file offset 0x94f0e0"
!ASDProjectOptions methodsFor: 'recovered'!
availableTargetLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) targetClass.
    recoveredValue1 := (recoveredValue0) availableTargetLabels.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051d08; bytecode file offset 0x94f0e0"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupExperimentCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) optionGroupExperimentCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051d30; bytecode file offset 0x94f0e0"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupProductionCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) optionGroupProductionCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200526cc; bytecode file offset 0x94f0e0"
!ASDProjectOptions methodsFor: 'recovered'!
allowCompilerOption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) compilerTool.
    recoveredValue2 := (recoveredValue1) supportsCompiling.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200527e4; bytecode file offset 0x94f0e0"
!ASDProjectOptions methodsFor: 'recovered'!
allowCompilerHyperlink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) compilerTool.
    recoveredValue2 := (recoveredValue1) isDeclarationFileExistent.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057888; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionMinForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionMinForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057938; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionMaxForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionMaxForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057b88; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionGroupForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057d98; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
visibleBlockForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) visibleBlockForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057ed8; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
xmlConversionBlockForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) xmlConversionBlockForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200583b8; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
xmlAttributeNameForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) xmlAttributeNameForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058588; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionDescriptionForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionDescriptionForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058838; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionFileForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionFileForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058898; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionTypeForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionTypeForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200588c8; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
xmlCategoryForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) xmlCategoryForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058f78; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionLabelForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionLabelForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200591b8; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionClassForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionClassForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059618; bytecode file offset 0x956284"
!ASDProjectOptions methodsFor: 'recovered'!
optionToolTipForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) optionToolTipForKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005eecc; bytecode file offset 0x95b7f0"
!ASDProjectOptions methodsFor: 'recovered'!
editOptions
    (self) editOptionsFor: (nil).
    ^self
! !

"ASDBase.ic method 0x2006544c; bytecode file offset 0x961e78"
!ASDProjectOptions methodsFor: 'recovered'!
getDefaultCompilerToolId
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) matchingCompilerTools.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) compilerToolType.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200690ec; bytecode file offset 0x965b90"
!ASDProjectOptions methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b0ac; bytecode file offset 0x967a18"
!ASDProjectOptions methodsFor: 'recovered'!
platformSettings
    | recoveredValue0 |
    recoveredValue0 := platformSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b658; bytecode file offset 0x96873c"
!ASDProjectOptions methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 |
    recoveredValue0 := generatorSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bbd0; bytecode file offset 0x96873c"
!ASDProjectOptions methodsFor: 'recovered'!
generationSettings
    | recoveredValue0 |
    recoveredValue0 := generatorSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d4c4; bytecode file offset 0x96a390"
!ASDProjectOptions methodsFor: 'recovered'!
asam2MCSettings
    | recoveredValue0 |
    recoveredValue0 := asam2MCSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075c04; bytecode file offset 0x9757c8"
!ASDProjectOptions methodsFor: 'recovered'!
allowOperatingSystemHyperlink
    ^true
! !

"ASDBase.ic method 0x20078e4c; bytecode file offset 0x9757c8"
!ASDProjectOptions methodsFor: 'recovered'!
allowCodeGenerationSystemHyperlink
    ^true
! !

"ASDBase.ic method 0x20079dc4; bytecode file offset 0x97c330"
!ASDProjectOptions methodsFor: 'recovered'!
allowEHooksTargetSpecificOptions
    ^false
! !

"ASDBase.ic method 0x20079f8c; bytecode file offset 0x97c330"
!ASDProjectOptions methodsFor: 'recovered'!
allowEnableExternalBuildToolContainerOption
    ^false
! !

"ASDBase.ic method 0x200846f0; bytecode file offset 0x981ca4"
!ASDProjectOptions methodsFor: 'recovered'!
targetSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) platformSettings: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200903d0; bytecode file offset 0x98ccc4"
!ASDProjectOptions methodsFor: 'recovered'!
additionalOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (recoveredValue1) codeGenMessageOptionsFor: ('codeGenMessages.xml').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094c04; bytecode file offset 0x991570"
!ASDProjectOptions methodsFor: 'recovered'!
editARXMLConfigurationOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) editARXMLConfigurationOptions: (recoveredValue0) firstSelection: (nil).
    ^self
! !

"ASDBase.ic method 0x20094f7c; bytecode file offset 0x991c58"
!ASDProjectOptions methodsFor: 'recovered'!
editProjectSpecificOSOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) optionGroupOS.
    recoveredValue2 := (self) editProjectOptions: (recoveredValue0) optionGroupPathname: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009fa7c; bytecode file offset 0x99c9e0"
!ASDProjectOptions methodsFor: 'recovered'!
editOperatingSystemOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) osTool.
    (self) editExternalToolOptions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fc98; bytecode file offset 0x99c9e0"
!ASDProjectOptions methodsFor: 'recovered'!
editCompilerOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) compilerTool.
    (self) editExternalToolOptions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a1c5c; bytecode file offset 0x99e5c8"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupOS
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (self) generatorSettings.
    recoveredValue3 := (recoveredValue2) optionGroupOS.
    recoveredValue4 := (recoveredValue1) optionSubGroupBuild: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a1cbc; bytecode file offset 0x99e5c8"
!ASDProjectOptions methodsFor: 'recovered'!
optionGroupTargetSpecific
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (self) generatorSettings.
    recoveredValue3 := (recoveredValue2) optionGroupTargetSpecific.
    recoveredValue4 := (recoveredValue1) optionSubGroupBuild: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a9924; bytecode file offset 0x9a6780"
!ASDProjectOptions methodsFor: 'recovered'!
editOptionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) optionGroupBuild.
    (self) editOptionsFor: (recoveredValue0) firstSelection: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b2c34; bytecode file offset 0x9af4f8"
!ASDProjectOptions methodsFor: 'recovered'!
availableCodeGenPathLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) availableCodeGenPathLabelsBasic.
    recoveredValue1 := (recoveredValue0) asOrderedCollection.
    recoveredValue2 := (self) getCodeGenPathLabel.
    recoveredValue3 := (self) availableToolLabels: (recoveredValue1) currentLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b58c8; bytecode file offset 0x9b2190"
!ASDProjectOptions methodsFor: 'recovered'!
availableServiceSetLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) iaSettingsCreateIfAbsent.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (self) target.
    recoveredValue4 := (recoveredValue2) arithmeticServiceSetsForTarget: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ba044; bytecode file offset 0x9b6c88"
!ASDProjectOptions methodsFor: 'recovered'!
editARXMLConfigurationOptionsFirstSelection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osSettings.
    recoveredValue1 := (recoveredValue0) arXmlConfigurationFile.
    recoveredValue2 := recoveredArg1.
    (self) editARXMLConfigurationOptions: (recoveredValue1) firstSelection: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c03e4; bytecode file offset 0x9bd228"
!ASDProjectOptions methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ce0; bytecode file offset 0x9bdf14"
!ASDProjectOptions methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f1c; bytecode file offset 0x9beac8"
!ASDProjectOptions methodsFor: 'recovered'!
platformSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2580; bytecode file offset 0x9bf474"
!ASDProjectOptions methodsFor: 'recovered'!
generatorSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatorSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c30b4; bytecode file offset 0x9bfde0"
!ASDProjectOptions methodsFor: 'recovered'!
osSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42a4; bytecode file offset 0x9c0bf0"
!ASDProjectOptions methodsFor: 'recovered'!
asam2MCSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asam2MCSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4878; bytecode file offset 0x9c11bc"
!ASDProjectOptions methodsFor: 'recovered'!
optionKeys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optionKeys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da7b8; bytecode file offset 0x9d7154"
!ASDProjectOptions methodsFor: 'recovered'!
setCompilerWithId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) compilerToolType: (recoveredValue1).
    (self) resetTarget.
    ^self
! !

"ASDBase.ic method 0x200da880; bytecode file offset 0x9d7154"
!ASDProjectOptions methodsFor: 'recovered'!
setOSToolWithId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) targetSettings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) osType: (recoveredValue1).
    (self) resetTarget.
    ^self
! !

"ASDBase.ic method 0x20107ba4; bytecode file offset 0xa044b0"
!ASDProjectOptions methodsFor: 'recovered'!
allowConfigToolOptions
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
            recoveredStack2 := (recoveredStack2) allowOperatingSystemOption.
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
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDeclarationFileExistent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107c50; bytecode file offset 0xa0458c"
!ASDProjectOptions methodsFor: 'recovered'!
allowOperatingSystemOption
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
            recoveredStack2 := (recoveredStack2) isTargetPC.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsOSConfiguration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a394; bytecode file offset 0xa26ca0"
!ASDProjectOptions methodsFor: 'recovered'!
optionKeys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := optionKeys.
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
            optionKeys := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := optionKeys.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012be30; bytecode file offset 0xa2870c"
!ASDProjectOptions methodsFor: 'recovered'!
allowConfigToolContainerOption
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
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) osTool.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInternal.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDeclarationFileExistent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012be48; bytecode file offset 0xa2870c"
!ASDProjectOptions methodsFor: 'recovered'!
allowOSTemplateFileOption
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
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) osTool.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInternal.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDeclarationFileExistent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f1a8; bytecode file offset 0xa2ba74"
!ASDProjectOptions methodsFor: 'recovered'!
writeBackOptionsToProject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (self) options.
    (recoveredValue1) codeGenMessagesFromOptions: (recoveredValue2).
    (self) writeValuesToDictionaries.
    (self) writeSettingsToProject.
    ^self
! !

"ASDBase.ic method 0x2016c768; bytecode file offset 0xa69028"
!ASDProjectOptions methodsFor: 'recovered'!
optionDefaultOptionDialogForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGIaSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyRestrictedServiceUsage.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x201706e8; bytecode file offset 0xa6cfa8"
!ASDProjectOptions methodsFor: 'recovered'!
resetTarget
    (self) target: (nil).
    (self) osSettings: (nil).
    osDefaultSettings := nil.
    platform := nil.
    (self) updateAllOptions.
    ^self
! !

"ASDBase.ic method 0x20171a14; bytecode file offset 0xa6e2dc"
!ASDProjectOptions methodsFor: 'recovered'!
getCodeGenPathLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCodeGenPathLabelsBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPathName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenPathName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNotSupportedString.
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
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenPathName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018b074; bytecode file offset 0xa8793c"
!ASDProjectOptions methodsFor: 'recovered'!
optionValueOptionDialogForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyGenerateDataStructures.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultOptionDialogForKey: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019faac; bytecode file offset 0xa9c370"
!ASDProjectOptions methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := target.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) targetClass.
    recoveredBlock6Value1 := (self) platformSettings.
    recoveredBlock6Value2 := (recoveredBlock6Value0) createWithOptions: (recoveredBlock6Value1).
    recoveredBlock6Value3 := recoveredBlock6Value2.
    target := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := target.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a5b14; bytecode file offset 0xaa2408"
!ASDProjectOptions methodsFor: 'recovered'!
optionValueCollectionForKey: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyMessageUsageVariant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := (recoveredStack1) messageCopyVariantExpTargetsValueCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionValueCollectionForKey: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5b38; bytecode file offset 0xaa2408"
!ASDProjectOptions methodsFor: 'recovered'!
optionDefaultForKey: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyMessageUsageVariant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := (recoveredStack1) defaultMessageCopyVariantExpTargets.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aab94; bytecode file offset 0xaa7460"
!ASDProjectOptions methodsFor: 'recovered'!
getServiceSetLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithmeticServiceSet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) determineDefaultArithmeticServiceSetForTarget: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201af8f8; bytecode file offset 0xaac1bc"
!ASDProjectOptions methodsFor: 'recovered'!
isFixPointOptionsEnabled
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
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIntegerPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isControllerPath.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cdc54; bytecode file offset 0xaca51c"
!ASDProjectOptions methodsFor: 'recovered'!
editSpecificCodeGenerationOptions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroupExperimentCode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) editProjectOptions: (recoveredStack1) optionGroupPathname: (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroupProductionCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) editProjectOptions: (recoveredStack1) optionGroupPathname: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5900; bytecode file offset 0xad21cc"
!ASDProjectOptions methodsFor: 'recovered'!
osDefaultSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := osDefaultSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGOsConfigOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadSystemDefaults: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            osDefaultSettings := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := osDefaultSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := osDefaultSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201de440; bytecode file offset 0xadad14"
!ASDProjectOptions methodsFor: 'recovered'!
availableCompilerToolTypes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) matchingCompilerTools.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d617cArg1 | 
    | block280d617cValue0 block280d617cValue1 |
    block280d617cValue0 := block280d617cArg1.
    block280d617cValue1 := (block280d617cValue0) compilerToolType.
    block280d617cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCompilerToolType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableToolTypes: (recoveredStack1) currentType: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ec410; bytecode file offset 0xae8ce4"
!ASDProjectOptions methodsFor: 'recovered'!
availableCompilerToolLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) matchingCompilerTools.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) compilerClass.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) compilerToolType.
    recoveredBlock6Value3 := (recoveredBlock6Value0) compilerToolLabelForType: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) getCompilerToolLabel.
    recoveredValue6 := (self) availableToolLabels: (recoveredValue4) currentLabel: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201f0a70; bytecode file offset 0xaed33c"
!ASDProjectOptions methodsFor: 'recovered'!
platform
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := platform.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) target: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) target.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) osLogicKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) osLogicKey: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            platform := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := platform.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202000d0; bytecode file offset 0xafcc28"
!ASDProjectOptions methodsFor: 'recovered'!
optionTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d8e58Arg1 | 
    | block280d8e58Value0 block280d8e58Value1 block280d8e58Value2 |
    block280d8e58Value0 := block280d8e58Arg1.
    block280d8e58Value1 := (block280d8e58Value0) attributeName.
    block280d8e58Value2 := (block280d8e58Value1) = ('Target').
    block280d8e58Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200238; bytecode file offset 0xafcc28"
!ASDProjectOptions methodsFor: 'recovered'!
optionCodeGenerator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d8fc0Arg1 | 
    | block280d8fc0Value0 block280d8fc0Value1 block280d8fc0Value2 |
    block280d8fc0Value0 := block280d8fc0Arg1.
    block280d8fc0Value1 := (block280d8fc0Value0) attributeName.
    block280d8fc0Value2 := (block280d8fc0Value1) = ('CodeGenerator').
    block280d8fc0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020197c; bytecode file offset 0xafe24c"
!ASDProjectOptions methodsFor: 'recovered'!
optionVisibleBlockForKey: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyCacheLocking.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := (self) target.
    recoveredBlock14Value1 := (recoveredBlock14Value0) supportsCacheLocking.
    recoveredBlock14Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleBlockForKey: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20219300; bytecode file offset 0xb15bc8"
!ASDProjectOptions methodsFor: 'recovered'!
readValuesFromDictionaries
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionKeys.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionForKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionValueForKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021a670; bytecode file offset 0xb16f9c"
!ASDProjectOptions methodsFor: 'recovered'!
optionCompiler
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) compilerOptionName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^false
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021a6d0; bytecode file offset 0xb16f9c"
!ASDProjectOptions methodsFor: 'recovered'!
optionOperatingSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) operatingSystemOptionAttributeName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^false
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021c77c; bytecode file offset 0xb1904c"
!ASDProjectOptions methodsFor: 'recovered'!
optionForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_72291').
    recoveredValue1 := (self) allOptions.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) attributeName.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (self) xmlAttributeNameForKey: (recoveredBlock11Value2).
    recoveredBlock11Value4 := (recoveredBlock11Value1) = (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202256a0; bytecode file offset 0xb21f68"
!ASDProjectOptions methodsFor: 'recovered'!
writeValuesToDictionaries
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionKeys.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionForKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 29] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionValue: (recoveredBlock5Stack2) forKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20232190; bytecode file offset 0xb2ea84"
!ASDProjectOptions methodsFor: 'recovered'!
optionEHOOKSProjectFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) generatorSettings.
    recoveredBlock5Value3 := (recoveredBlock5Value2) class.
    recoveredBlock5Value4 := (recoveredBlock5Value3) eHooksProjectFileKey.
    recoveredBlock5Value5 := (recoveredBlock5Value1) = (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202321b4; bytecode file offset 0xb2ea84"
!ASDProjectOptions methodsFor: 'recovered'!
optionEHOOKSConfigurationFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) generatorSettings.
    recoveredBlock5Value3 := (recoveredBlock5Value2) class.
    recoveredBlock5Value4 := (recoveredBlock5Value3) eHooksConfigurationFileKey.
    recoveredBlock5Value5 := (recoveredBlock5Value1) = (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2023e0f8; bytecode file offset 0xb3a9d4"
!ASDProjectOptions methodsFor: 'recovered'!
optionStringCollectionForKey: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyMessageUsageVariant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
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
            recoveredStack1 := (recoveredStack1) messageCopyVariantExpTargetsValueCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280ddf34Arg1 | 
    | block280ddf34Value0 block280ddf34Value1 |
    block280ddf34Value0 := block280ddf34Arg1.
    block280ddf34Value1 := (block280ddf34Value0) asString.
    block280ddf34Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202428f8; bytecode file offset 0xb3f1d4"
!ASDProjectOptions methodsFor: 'recovered'!
getOperatingSystemLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingSystemClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) operatingSystem.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolForType: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
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
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectAvailableOSToolTypes: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNotSupportedString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025a660; bytecode file offset 0xb56f34"
!ASDProjectOptions methodsFor: 'recovered'!
isCachingEnabled
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
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
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
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyCacheLocking.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionForKey: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredLocal1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) value.
    ^recoveredBlock22Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025b904; bytecode file offset 0xb581d4"
!ASDProjectOptions methodsFor: 'recovered'!
collectAvailableOSToolTypes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) availableOSToolTypes.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASDGenericComponentFactory.
    recoveredValue3 := (recoveredValue2) registeredGenericComponentList.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := (self) project.
    recoveredBlock15Value3 := (recoveredBlock15Value0) selectAvailableOSToolTypes: (recoveredBlock15Value1) project: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026bd60; bytecode file offset 0xb6863c"
!ASDProjectOptions methodsFor: 'recovered'!
createSeparatorOptionForGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasXMLProjectOptionEntry.
    recoveredValue1 := EtasSeparatorOption.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) label: ('Separator') description: ('Separator') toolTip: ('Separator') value: ('') default: ('') group: (recoveredValue2) visible: (true) sensitive: (true) type: ('PROJECT') userField: (nil).
    recoveredValue4 := (recoveredValue0) xmlCategory: ('Build') attributeName: ('Separator') optionClass: (recoveredValue3) optionFile: (nil).
    recoveredValue5 := (recoveredValue4) optionCategory: ('FIXED').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2027bbe4; bytecode file offset 0xb784b8"
!ASDProjectOptions methodsFor: 'recovered'!
exportOptionsToXMLFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) allOptions.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) project.
    recoveredValue2 := (recoveredValue1) specification.
    recoveredValue3 := (recoveredValue2) codeGenMessageOptionsFor: ('codeGenMessages.xml').
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) addAll: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) writeOptions: (recoveredValue5) toXMLFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2028c020; bytecode file offset 0xb888f0"
!ASDProjectOptions methodsFor: 'recovered'!
updateAllOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e20e0Arg1 | 
    | block280e20e0Stack0 block280e20e0Stack1 block280e20e0Stack2 block280e20e0Stack3 block280e20e0PC block280e20e0Step block280e20e0Done block280e20e0Result |
    block280e20e0Stack0 := self.
    block280e20e0PC := 4.
    block280e20e0Done := false.
    [block280e20e0Done not] whileTrue: [
        block280e20e0Step := block280e20e0PC.
        block280e20e0Step = 4 ifTrue: [
            block280e20e0Stack1 := block280e20e0Arg1.
            block280e20e0PC := 5.
        ].
        block280e20e0Step = 5 ifTrue: [
            block280e20e0Stack1 := (block280e20e0Stack1) optionClass.
            block280e20e0PC := 6.
        ].
        block280e20e0Step = 6 ifTrue: [
            (block280e20e0Stack1) updateOptionWidget.
            block280e20e0PC := 8.
        ].
        block280e20e0Step = 8 ifTrue: [
            block280e20e0Stack1 := nil.
            block280e20e0PC := 9.
        ].
        block280e20e0Step = 9 ifTrue: [
            block280e20e0Stack2 := block280e20e0Arg1.
            block280e20e0PC := 10.
        ].
        block280e20e0Step = 10 ifTrue: [
            block280e20e0Stack2 := (block280e20e0Stack2) optionClass.
            block280e20e0PC := 11.
        ].
        block280e20e0Step = 11 ifTrue: [
            block280e20e0Stack2 := (block280e20e0Stack2) isContainerOption.
            block280e20e0PC := 13.
        ].
        block280e20e0Step = 13 ifTrue: [
            (block280e20e0Stack2) ifTrue: [block280e20e0PC := 16] ifFalse: [block280e20e0PC := 32].
        ].
        block280e20e0Step = 16 ifTrue: [
            block280e20e0PC := 17.
        ].
        block280e20e0Step = 17 ifTrue: [
            block280e20e0Stack1 := block280e20e0Arg1.
            block280e20e0PC := 18.
        ].
        block280e20e0Step = 18 ifTrue: [
            block280e20e0Stack1 := (block280e20e0Stack1) optionClass.
            block280e20e0PC := 19.
        ].
        block280e20e0Step = 19 ifTrue: [
            block280e20e0Stack1 := (block280e20e0Stack1) options.
            block280e20e0PC := 20.
        ].
        block280e20e0Step = 20 ifTrue: [
            block280e20e0Stack2 := [:block280e2104Arg1 | 
    | block280e2104Value0 block280e2104Value1 block280e2104Value2 |
    block280e2104Value0 := block280e2104Arg1.
    block280e2104Value1 := (block280e2104Value0) optionClass.
    block280e2104Value2 := (block280e2104Value1) updateOptionWidget.
    block280e2104Value2
].
            block280e20e0PC := 22.
        ].
        block280e20e0Step = 22 ifTrue: [
            block280e20e0PC := 30.
        ].
        block280e20e0Step = 30 ifTrue: [
            block280e20e0Stack1 := (block280e20e0Stack1) do: (block280e20e0Stack2).
            block280e20e0PC := 32.
        ].
        block280e20e0Step = 32 ifTrue: [
            block280e20e0Result := block280e20e0Stack1.
            block280e20e0Done := true.
        ].
    ].
    block280e20e0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291520; bytecode file offset 0xb8ddfc"
!ASDProjectOptions methodsFor: 'recovered'!
availableOSToolLabels
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
            recoveredStack0 := (recoveredStack0) collectAvailableOSToolTypes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) operatingSystemClass.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) toolForType: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280e2e18Arg1 | 
    | block280e2e18Value0 block280e2e18Value1 |
    block280e2e18Value0 := block280e2e18Arg1.
    block280e2e18Value1 := (block280e2e18Value0) label.
    block280e2e18Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOperatingSystemLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableToolLabels: (recoveredStack1) currentLabel: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a4024; bytecode file offset 0xba0904"
!ASDProjectOptions methodsFor: 'recovered'!
availableOSToolTypes
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
            recoveredStack0 := (recoveredStack0) collectAvailableOSToolTypes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) operatingSystemClass.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) toolForType: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280e3e8cArg1 | 
    | block280e3e8cValue0 block280e3e8cValue1 |
    block280e3e8cValue0 := block280e3e8cArg1.
    block280e3e8cValue1 := (block280e3e8cValue0) identifier.
    block280e3e8cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) osSettings.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) operatingSystem.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableToolTypes: (recoveredStack1) currentType: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202acbf0; bytecode file offset 0xba94d0"
!ASDProjectOptions methodsFor: 'recovered'!
getCompilerToolLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCompilerToolType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerToolLabelForType: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) matchingCompilerTools.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) compilerToolType.
    recoveredBlock17Value2 := (self) targetSettings.
    recoveredBlock17Value3 := (recoveredBlock17Value2) getCompilerToolType.
    recoveredBlock17Value4 := (recoveredBlock17Value1) equals: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNotSupportedString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202da668; bytecode file offset 0xbd6f3c"
!ASDProjectOptions methodsFor: 'recovered'!
optionValue: recoveredArg1 forKey: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) optionValue: (recoveredValue1) forKey: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) asam2MCSettings.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) keys.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) includes: (recoveredBlock13Stack3).
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 32] ifFalse: [recoveredBlock13PC := 45].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asam2MCSettings.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asString.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) ifNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202db588; bytecode file offset 0xbd7e60"
!ASDProjectOptions methodsFor: 'recovered'!
osSettings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := osSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicModel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogicForTarget: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) osDefaultSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            osSettings := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) osConfigSettings.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            osSettings := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := osSettings.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := osSettings.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030fe58; bytecode file offset 0xc0c72c"
!ASDProjectOptions methodsFor: 'recovered'!
optionValueForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionValueForKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) asam2MCSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'true'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'false'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20343e70; bytecode file offset 0xc40764"
!ASDProjectOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    (self) readSettingsFromProject.
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeAsam2MCOptions.
    (recoveredValue1) addAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeCodeStorageOptions.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeBuildConfigOptions.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeOSOptions.
    (recoveredValue7) addAll: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeOptionsFromDictionaries.
    (recoveredValue9) addAll: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeCodeGenMessageOption.
    (recoveredValue11) add: (recoveredValue12).
    (self) readValuesFromDictionaries.
    recoveredValue13 := EtasXMLCustomizableProjectOptions.
    recoveredValue14 := (recoveredValue13) instance.
    recoveredValue15 := (self) options.
    (recoveredValue14) updateOptions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2034bacc; bytecode file offset 0xc4839c"
!ASDProjectOptions methodsFor: 'recovered'!
initializeCodeGenerationOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) changeableStringOptionsGeneral.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (self) createOptionForKey: (recoveredBlock6Value1).
    recoveredBlock6Value3 := (recoveredBlock6Value0) add: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) generatorSettings.
    recoveredValue4 := (recoveredValue3) changeableBoolOptionsGeneral.
    recoveredValue5 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (self) createOptionForKey: (recoveredBlock26Value1).
    recoveredBlock26Value3 := (recoveredBlock26Value0) add: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) generatorSettings.
    recoveredValue7 := (recoveredValue6) changeableBoolOptionsCodeAppearance.
    recoveredValue8 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredArg1.
    recoveredBlock46Value1 := recoveredBlock46Arg1.
    recoveredBlock46Value2 := (self) createOptionForKey: (recoveredBlock46Value1).
    recoveredBlock46Value3 := (recoveredBlock46Value0) add: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2038a530; bytecode file offset 0xc86e2c"
!ASDProjectOptions methodsFor: 'recovered'!
readSettingsFromProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) target: (recoveredStack1).
            recoveredPC := 10.
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
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetOptions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) targetSettings: (recoveredStack1).
            recoveredPC := 18.
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
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) generatorSettings: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asam2MCOptions.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeDictionary.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) asam2MCSettings: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForTarget: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) osDefaultSettings.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) osSettings: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) osConfigSettings.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) osSettings: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a7328; bytecode file offset 0xca3c30"
!ASDProjectOptions methodsFor: 'recovered'!
initializeCodeGenMessageOption
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CodeGenMessageConfiguration'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'CodeGenMessageConfigurationButton'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasButtonOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Configure Code Generation Messages'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Change the type and visibility of Code Generation messages'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Configure Code Generation Messages'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := 'Build'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'CODE'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 recoveredBlock45Value4 |
    recoveredBlock45Value0 := ASDCodeGenMessageConfigurationDialog.
    recoveredBlock45Value1 := (recoveredBlock45Value0) new.
    recoveredBlock45Value2 := (self) project.
    recoveredBlock45Value3 := (recoveredBlock45Value1) project: (recoveredBlock45Value2).
    recoveredBlock45Value4 := (recoveredBlock45Value3) prompt.
    recoveredBlock45Value4
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack5) action: (recoveredStack6).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) hyperlink: (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 'FILE'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ab634; bytecode file offset 0xca7f20"
!ASDProjectOptions methodsFor: 'recovered'!
getDefaultOSToolType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExperimentalTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) matchingOSTools.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280f5448Arg1 | 
    | block280f5448Value0 block280f5448Value1 |
    block280f5448Value0 := block280f5448Arg1.
    block280f5448Value1 := (block280f5448Value0) identifier.
    block280f5448Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDGenericComponentFactory.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredGenericComponentList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredLocal1.
    recoveredBlock36Value2 := (self) project.
    recoveredBlock36Value3 := (recoveredBlock36Value0) selectDefaultOSToolTypes: (recoveredBlock36Value1) project: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOSType.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b8e70; bytecode file offset 0xcb5754"
!ASDProjectOptions methodsFor: 'recovered'!
initializeExperimentCodeOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) generatorSettings.
    recoveredValue3 := (recoveredValue2) changeableOptionsExperimentalCode.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal2.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (self) createOptionForKey: (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value0) add: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) generatorSettings.
    recoveredValue6 := (recoveredValue5) class.
    recoveredValue7 := (recoveredValue6) keyCacheLocking.
    recoveredValue8 := (self) createOptionForKey: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := (self) generatorSettings.
    recoveredValue12 := (recoveredValue11) changeableOptionsExperimentalCodeCaching.
    recoveredValue13 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 |
    recoveredBlock54Value0 := recoveredLocal3.
    recoveredBlock54Value1 := (recoveredBlock54Value0) optionClass.
    recoveredBlock54Value2 := (recoveredBlock54Value1) options.
    recoveredBlock54Value3 := recoveredBlock54Arg1.
    recoveredBlock54Value4 := (self) createOptionForKey: (recoveredBlock54Value3).
    recoveredBlock54Value5 := (recoveredBlock54Value2) add: (recoveredBlock54Value4).
    recoveredBlock54Value5
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x203bb7d4; bytecode file offset 0xcb80c8"
!ASDProjectOptions methodsFor: 'recovered'!
availableCodeGenPathLabelsBasic
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsPhysicalExperimentGenerator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPhysicalExperimentPathName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsQuantizedExperimentGenerator.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenQuantizedExperimentPathName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsImplementationExperimentGenerator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenImplementationExperimentPathName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsPhysicalControllerGenerator.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPhysicalControllerPathName.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsImplementationControllerGenerator.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := SGMdSettings.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenImplementationControllerPathName.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d0f3c; bytecode file offset 0xccd858"
!ASDProjectOptions methodsFor: 'recovered'!
initializeCodeStorageOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := EtasXMLProjectOptionEntry.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlBuildCategory.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) keyCodeStorageRootPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := EtasPathOption.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := 'Code Storage Root Path'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack7 := 'Root path for the external code storage.<br/>
					External code storage is a feature for migration from the ASCET binary database to an XML and file based workspace. If external code storage is activated, then the generated code is stored in a large file on disk instead of using the ASCET database. The code on disk is encrypted and cannot be used for external make tool chains.
					This has nothing to do with the code files in the CGEN directory.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack8 := 'Code storage root path template'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := project.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) specification.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack9 := (recoveredStack9) storageOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack10 := 'storagePath'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack11 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := (self) generatorSettings.
    recoveredBlock32Value1 := (recoveredBlock32Value0) templateCodeStorageRootPath.
    recoveredBlock32Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := (recoveredStack9) at: (recoveredStack10) ifAbsent: (recoveredStack11).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack10 := (recoveredStack10) generatorSettings.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := (recoveredStack10) templateCodeStorageRootPath.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack11 := (recoveredStack11) optionGroupCodeStorage.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack13 := [
    | block280f762cValue0 block280f762cValue1 block280f762cValue2 |
    block280f762cValue0 := ASDGeneralOptions.
    block280f762cValue1 := (block280f762cValue0) instance.
    block280f762cValue2 := (block280f762cValue1) optionExternalCodeStorage.
    block280f762cValue2
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack14 := 'CODE'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack15 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlCategory: (recoveredStack3) attributeName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'FILE'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCategory: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203fe0a0; bytecode file offset 0xcfa984"
!ASDProjectOptions methodsFor: 'recovered'!
initializeOptionsFromDictionaries
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) generatorSettings.
    recoveredValue3 := (recoveredValue2) changeableOptionsCodeGeneration.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (self) createOptionForKey: (recoveredBlock12Value1).
    recoveredBlock12Value3 := (recoveredBlock12Value0) add: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) initializeIntegerArithmeticOptions.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) initializeExperimentCodeOptions.
    (recoveredValue7) addAll: (recoveredValue8).
    recoveredValue9 := (self) generatorSettings.
    recoveredValue10 := (recoveredValue9) changeableOptionsProductionCode.
    recoveredValue11 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (self) createOptionForKey: (recoveredBlock50Value1).
    recoveredBlock50Value3 := (recoveredBlock50Value0) add: (recoveredBlock50Value2).
    recoveredBlock50Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := (self) generatorSettings.
    recoveredValue13 := (recoveredValue12) changeableOptionsOptimization.
    recoveredValue14 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 |
    recoveredBlock72Value0 := recoveredLocal1.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (self) createOptionForKey: (recoveredBlock72Value1).
    recoveredBlock72Value3 := (recoveredBlock72Value0) add: (recoveredBlock72Value2).
    recoveredBlock72Value3
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x20414f50; bytecode file offset 0xd11844"
!ASDProjectOptions methodsFor: 'recovered'!
optionUpdateFieldForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) optionsDeclaration.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) attributeName.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) generatorSettings.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) class.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) keyCacheLocking.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 46].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := [:recoveredBlock12Block30Arg1 | 
    | recoveredBlock12Block30Value0 recoveredBlock12Block30Value1 recoveredBlock12Block30Value2 recoveredBlock12Block30Value3 |
    recoveredBlock12Block30Value0 := recoveredBlock12Block30Arg1.
    recoveredBlock12Block30Value1 := (self) target.
    recoveredBlock12Block30Value2 := (recoveredBlock12Block30Value1) supportsCacheLocking.
    recoveredBlock12Block30Value3 := (recoveredBlock12Block30Value0) default: (recoveredBlock12Block30Value2).
    recoveredBlock12Block30Value3
].
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) attributeName.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) generatorSettings.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) class.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) keyMessageUsageVariant.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) = (recoveredBlock12Stack2).
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 58] ifFalse: [recoveredBlock12PC := 93].
        ].
        recoveredBlock12Step = 58 ifTrue: [
            recoveredBlock12Stack1 := [:recoveredBlock12Block58Arg1 | 
    | recoveredBlock12Block58Value0 recoveredBlock12Block58Value1 recoveredBlock12Block58Value2 recoveredBlock12Block58Value3 recoveredBlock12Block58Value4 recoveredBlock12Block58Value5 recoveredBlock12Block58Value6 recoveredBlock12Block58Value7 recoveredBlock12Block58Value8 recoveredBlock12Block58Value9 |
    recoveredBlock12Block58Value0 := recoveredBlock12Block58Arg1.
    recoveredBlock12Block58Value1 := recoveredArg1.
    recoveredBlock12Block58Value2 := (self) optionStringCollectionForKey: (recoveredBlock12Block58Value1).
    (recoveredBlock12Block58Value0) stringCollection: (recoveredBlock12Block58Value2).
    recoveredBlock12Block58Value3 := recoveredBlock12Block58Arg1.
    recoveredBlock12Block58Value4 := recoveredArg1.
    recoveredBlock12Block58Value5 := (self) optionValueCollectionForKey: (recoveredBlock12Block58Value4).
    (recoveredBlock12Block58Value3) valueCollection: (recoveredBlock12Block58Value5).
    recoveredBlock12Block58Value6 := recoveredBlock12Block58Arg1.
    recoveredBlock12Block58Value7 := recoveredArg1.
    recoveredBlock12Block58Value8 := (self) optionDefaultOptionDialogForKey: (recoveredBlock12Block58Value7).
    recoveredBlock12Block58Value9 := (recoveredBlock12Block58Value6) default: (recoveredBlock12Block58Value8).
    recoveredBlock12Block58Value9
].
            recoveredBlock12PC := 92.
        ].
        recoveredBlock12Step = 92 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 93 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 94.
        ].
        recoveredBlock12Step = 94 ifTrue: [
            ^recoveredBlock12Stack1
        ].
    ].
    recoveredBlock12Result
].
    recoveredValue6 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4) ifPresent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x204868a8; bytecode file offset 0xd831c4"
!ASDProjectOptions methodsFor: 'recovered'!
editTargetSpecificOptionsFirstSelection: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := ASDXMLTargetDeclaration.
    recoveredValue1 := SGPrjContext.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) platform.
    (recoveredValue3) platform: (recoveredValue4).
    recoveredValue5 := (self) generatorSettings.
    recoveredValue6 := (recoveredValue2) generationSettings: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createForProjContext: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := ASDOptionDialog.
    recoveredValue9 := (recoveredValue8) create.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) platform.
    recoveredValue12 := (recoveredValue11) target.
    recoveredValue13 := (recoveredValue12) targetLabel.
    recoveredValue14 := ('Options related to target ') , (recoveredValue13).
    (recoveredValue10) title: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 |
    recoveredBlock53Value0 := recoveredLocal2.
    recoveredBlock53Value1 := (recoveredBlock53Value0) rootNodeName.
    recoveredBlock53Value2 := (recoveredBlock53Value1) , ('\').
    recoveredBlock53Value3 := recoveredLocal3.
    recoveredBlock53Value4 := recoveredBlock53Arg1.
    recoveredBlock53Value5 := (recoveredBlock53Value3) optionSubGroup: (recoveredBlock53Value4).
    recoveredBlock53Value6 := (recoveredBlock53Value2) , (recoveredBlock53Value5).
    recoveredBlock53Value7 := recoveredBlock53Value6.
    recoveredLocal1 := recoveredBlock53Value7.
    recoveredBlock53Value6
].
    (recoveredValue15) ifNotNil: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := (recoveredValue20) toolOptions.
    (recoveredValue19) options: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := recoveredLocal1.
    (recoveredValue22) firstSelection: (recoveredValue23).
    recoveredValue24 := recoveredValue18.
    (recoveredValue24) expandRecursive: (true).
    (recoveredValue18) readOnly: (false).
    recoveredValue25 := recoveredLocal2.
    recoveredValue26 := (recoveredValue25) prompt.
    recoveredValue27 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 |
    recoveredBlock113Value0 := recoveredLocal3.
    recoveredBlock113Value1 := (recoveredBlock113Value0) writeOptionsToXMLFiles.
    recoveredBlock113Value1
].
    (recoveredValue26) ifNotNil: (recoveredValue27).
    ^self
! !

"ASDBase.ic method 0x204aa2f0; bytecode file offset 0xda6c40"
!ASDProjectOptions methodsFor: 'recovered'!
writeSettingsToProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) targetSettings: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) generatorSettings: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asam2MCSettings.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) asam2MCOptionsBasic: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) target: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Call_82214'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateOSLogic: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSettings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalTo: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSettings.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) osConfigSettings: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) storageOptions.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'storagePath'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) options.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [:block28105154Arg1 | 
    | block28105154Value0 block28105154Value1 block28105154Value2 |
    block28105154Value0 := block28105154Arg1.
    block28105154Value1 := (block28105154Value0) attributeName.
    block28105154Value2 := (block28105154Value1) equals: ('CodeStorageRootPath').
    block28105154Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) hookedProjectOptionsCallback.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'Call_89107'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectManager.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) defaultProjectModified: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) changedPersistent.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e6a20; bytecode file offset 0xde3318"
!ASDProjectOptions methodsFor: 'recovered'!
editProjectOptions: recoveredArg1 optionGroupPathname: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) widget.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) widgetOptionLabel.
    recoveredBlock8Value2 := (recoveredBlock8Value1) getUserInterface.
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredLocal3 := recoveredBlock8Value3.
    recoveredBlock8Value4 := [
    | recoveredBlock8Block23Value0 recoveredBlock8Block23Value1 recoveredBlock8Block23Value2 recoveredBlock8Block23Value3 recoveredBlock8Block23Value4 recoveredBlock8Block23Value5 recoveredBlock8Block23Value6 recoveredBlock8Block23Value7 recoveredBlock8Block23Value8 recoveredBlock8Block23Value9 recoveredBlock8Block23Value10 |
    recoveredBlock8Block23Value0 := recoveredArg2.
    recoveredBlock8Block23Value1 := (recoveredBlock8Block23Value0) asArrayOfSubstringsSeparatedBy: ('\').
    recoveredLocal2 := recoveredBlock8Block23Value1.
    recoveredBlock8Block23Value2 := recoveredLocal3.
    recoveredBlock8Block23Value3 := (recoveredBlock8Block23Value2) widgetOptionsTree.
    (recoveredBlock8Block23Value3) expandPos: (1) notify: (true).
    recoveredBlock8Block23Value4 := recoveredLocal3.
    recoveredBlock8Block23Value5 := (recoveredBlock8Block23Value4) optionTree.
    recoveredLocal1 := recoveredBlock8Block23Value5.
    recoveredBlock8Block23Value6 := recoveredLocal2.
    recoveredBlock8Block23Value7 := [:recoveredBlock8Block23Block61Arg1 | 
    | recoveredBlock8Block23Block61Stack0 recoveredBlock8Block23Block61Stack1 recoveredBlock8Block23Block61Stack2 recoveredBlock8Block23Block61Stack3 recoveredBlock8Block23Block61Stack4 recoveredBlock8Block23Block61Stack5 recoveredBlock8Block23Block61PC recoveredBlock8Block23Block61Step recoveredBlock8Block23Block61Done recoveredBlock8Block23Block61Result |
    recoveredBlock8Block23Block61Stack0 := self.
    recoveredBlock8Block23Block61PC := 68.
    recoveredBlock8Block23Block61Done := false.
    [recoveredBlock8Block23Block61Done not] whileTrue: [
        recoveredBlock8Block23Block61Step := recoveredBlock8Block23Block61PC.
        recoveredBlock8Block23Block61Step = 68 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := recoveredLocal1.
            recoveredBlock8Block23Block61PC := 71.
        ].
        recoveredBlock8Block23Block61Step = 71 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) nodeLabel.
            recoveredBlock8Block23Block61PC := 73.
        ].
        recoveredBlock8Block23Block61Step = 73 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := recoveredBlock8Block23Block61Arg1.
            recoveredBlock8Block23Block61PC := 76.
        ].
        recoveredBlock8Block23Block61Step = 76 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) equals: (recoveredBlock8Block23Block61Stack2).
            recoveredBlock8Block23Block61PC := 78.
        ].
        recoveredBlock8Block23Block61Step = 78 ifTrue: [
            (recoveredBlock8Block23Block61Stack1) ifTrue: [recoveredBlock8Block23Block61PC := 117] ifFalse: [recoveredBlock8Block23Block61PC := 82].
        ].
        recoveredBlock8Block23Block61Step = 82 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := recoveredLocal1.
            recoveredBlock8Block23Block61PC := 85.
        ].
        recoveredBlock8Block23Block61Step = 85 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) structureNodes.
            recoveredBlock8Block23Block61PC := 87.
        ].
        recoveredBlock8Block23Block61Step = 87 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := [:recoveredBlock8Block23Block61Block87Arg1 | 
    | recoveredBlock8Block23Block61Block87Value0 recoveredBlock8Block23Block61Block87Value1 recoveredBlock8Block23Block61Block87Value2 recoveredBlock8Block23Block61Block87Value3 |
    recoveredBlock8Block23Block61Block87Value0 := recoveredBlock8Block23Block61Block87Arg1.
    recoveredBlock8Block23Block61Block87Value1 := (recoveredBlock8Block23Block61Block87Value0) nodeLabel.
    recoveredBlock8Block23Block61Block87Value2 := recoveredBlock8Block23Block61Arg1.
    recoveredBlock8Block23Block61Block87Value3 := (recoveredBlock8Block23Block61Block87Value1) = (recoveredBlock8Block23Block61Block87Value2).
    recoveredBlock8Block23Block61Block87Value3
].
            recoveredBlock8Block23Block61PC := 102.
        ].
        recoveredBlock8Block23Block61Step = 102 ifTrue: [
            recoveredBlock8Block23Block61Stack3 := [
    | recoveredBlock8Block23Block61Block102Value0 |
    recoveredBlock8Block23Block61Block102Value0 := recoveredLocal1.
    recoveredBlock8Block23Block61Block102Value0
].
            recoveredBlock8Block23Block61PC := 112.
        ].
        recoveredBlock8Block23Block61Step = 112 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) detect: (recoveredBlock8Block23Block61Stack2) ifNone: (recoveredBlock8Block23Block61Stack3).
            recoveredBlock8Block23Block61PC := 114.
        ].
        recoveredBlock8Block23Block61Step = 114 ifTrue: [
            recoveredLocal1 := recoveredBlock8Block23Block61Stack1.
            recoveredBlock8Block23Block61PC := 117.
        ].
        recoveredBlock8Block23Block61Step = 117 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := recoveredLocal3.
            recoveredBlock8Block23Block61PC := 120.
        ].
        recoveredBlock8Block23Block61Step = 120 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) widgetOptionsTree.
            recoveredBlock8Block23Block61PC := 122.
        ].
        recoveredBlock8Block23Block61Step = 122 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := recoveredLocal3.
            recoveredBlock8Block23Block61PC := 125.
        ].
        recoveredBlock8Block23Block61Step = 125 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := (recoveredBlock8Block23Block61Stack2) widgetOptionsTree.
            recoveredBlock8Block23Block61PC := 127.
        ].
        recoveredBlock8Block23Block61Step = 127 ifTrue: [
            recoveredBlock8Block23Block61Stack3 := recoveredLocal1.
            recoveredBlock8Block23Block61PC := 130.
        ].
        recoveredBlock8Block23Block61Step = 130 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := (recoveredBlock8Block23Block61Stack2) getMatchPos: (recoveredBlock8Block23Block61Stack3).
            recoveredBlock8Block23Block61PC := 132.
        ].
        recoveredBlock8Block23Block61Step = 132 ifTrue: [
            recoveredBlock8Block23Block61Stack3 := 1.
            recoveredBlock8Block23Block61PC := 134.
        ].
        recoveredBlock8Block23Block61Step = 134 ifTrue: [
            recoveredBlock8Block23Block61Stack4 := [
    ^self
].
            recoveredBlock8Block23Block61PC := 141.
        ].
        recoveredBlock8Block23Block61Step = 141 ifTrue: [
            recoveredBlock8Block23Block61Stack2 := (recoveredBlock8Block23Block61Stack2) at: (recoveredBlock8Block23Block61Stack3) ifAbsent: (recoveredBlock8Block23Block61Stack4).
            recoveredBlock8Block23Block61PC := 143.
        ].
        recoveredBlock8Block23Block61Step = 143 ifTrue: [
            recoveredBlock8Block23Block61Stack3 := true.
            recoveredBlock8Block23Block61PC := 144.
        ].
        recoveredBlock8Block23Block61Step = 144 ifTrue: [
            recoveredBlock8Block23Block61Stack1 := (recoveredBlock8Block23Block61Stack1) expandPos: (recoveredBlock8Block23Block61Stack2) notify: (recoveredBlock8Block23Block61Stack3).
            recoveredBlock8Block23Block61PC := 146.
        ].
        recoveredBlock8Block23Block61Step = 146 ifTrue: [
            recoveredBlock8Block23Block61Result := recoveredBlock8Block23Block61Stack1.
            recoveredBlock8Block23Block61Done := true.
        ].
    ].
    recoveredBlock8Block23Block61Result
].
    (recoveredBlock8Block23Value6) do: (recoveredBlock8Block23Value7).
    recoveredBlock8Block23Value8 := recoveredLocal3.
    recoveredBlock8Block23Value9 := recoveredLocal1.
    recoveredBlock8Block23Value10 := (recoveredBlock8Block23Value8) selectOptionNode: (recoveredBlock8Block23Value9).
    recoveredBlock8Block23Value10
].
    recoveredBlock8Value5 := (recoveredBlock8Value2) notNil: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    (recoveredValue1) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x204e709c; bytecode file offset 0xde39e8"
!ASDProjectOptions methodsFor: 'recovered'!
editOptionsFor: recoveredArg1 firstSelection: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) readSettingsFromProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) readValuesFromDictionaries.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := EtasXMLDefinedOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28108cf4Arg1 | 
    | block28108cf4Value0 block28108cf4Value1 block28108cf4Value2 |
    block28108cf4Value0 := block28108cf4Arg1.
    block28108cf4Value1 := (block28108cf4Value0) optionCategory.
    block28108cf4Value2 := (block28108cf4Value1) = ('PROJECT').
    block28108cf4Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:block28108d18Arg1 | 
    | block28108d18Value0 block28108d18Value1 block28108d18Value2 block28108d18Value3 |
    block28108d18Value0 := block28108d18Arg1.
    block28108d18Value1 := (block28108d18Value0) optionClass.
    block28108d18Value2 := (block28108d18Value1) group.
    block28108d18Value3 := (block28108d18Value2) includesSubstring: ('Build\').
    block28108d18Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := ASDOptionDialog.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'Project Properties'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) rootNodeName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) holdCopy: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) restrictedImport: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) restrictedExport: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) rootNodeName.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) firstSelection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) expandRecursive: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) options.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) options: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) notifyOptionClasses: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) readOnly: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) readSettingsFromProject.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) readValuesFromDictionaries.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) codeGenMessagesFromOptions: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) writeBackOptionsToProject.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := EtasXMLDefinedOptions.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20516bf4; bytecode file offset 0xe13530"
!ASDProjectOptions methodsFor: 'recovered'!
editARXMLConfigurationOptions: recoveredArg1 firstSelection: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetSpecificPathTokens.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'ARXML'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) removeInstance.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) osTool.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) arxmlConfigurationDeclFilename.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) importOptionsFromXMLFile: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := recoveredLocal5.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (recoveredBlock58Value1) xmlCategory.
    recoveredBlock58Value3 := (recoveredBlock58Value0) match: (recoveredBlock58Value2).
    recoveredBlock58Value3
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) group.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := ASDOptionDialog.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 'ARXML Configuration Settings'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) rootNodeName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) expandRecursive: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack2) options: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNodeName.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := '\'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) firstSelection: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) readOnly: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) exportOptionsToXMLFile: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052557c; bytecode file offset 0xe21ee0"
!ASDProjectOptions methodsFor: 'recovered'!
createOptionForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionKeys.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 8.
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
            recoveredStack0 := (recoveredStack0) optionClassForKey: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionLabelForKey: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDescriptionForKey: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionToolTipForKey: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionValueOptionDialogForKey: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) optionDefaultOptionDialogForKey: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := (recoveredStack6) optionGroupForKey: (recoveredStack7).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionVisibleBlockForKey: (recoveredStack8).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionSensitiveBlockForKey: (recoveredStack9).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionTypeForKey: (recoveredStack10).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack11 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionUserFieldForKey: (recoveredStack11).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) label: (recoveredStack1) description: (recoveredStack2) toolTip: (recoveredStack3) value: (recoveredStack4) default: (recoveredStack5) group: (recoveredStack6) visible: (recoveredStack7) sensitive: (recoveredStack8) type: (recoveredStack9) userField: (recoveredStack10).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := EtasBooleanOption.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMemberOf: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUpdateFieldForKey: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) updateField: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := EtasContainerOption.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMemberOf: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUpdateFieldForKey: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) updateField: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionChangeableForKey: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) changeable: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := EtasMultiSelectEnumerationOption.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMemberOf: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionStringCollectionForKey: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) stringCollection: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringCollection.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) lines: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := EtasEnumerationOption.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMemberOf: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionUpdateFieldForKey: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) updateField: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionStringCollectionForKey: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) stringCollection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueCollectionForKey: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) valueCollection: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlConversionBlockForKey: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) xmlConversionBlock: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := EtasNumericOption.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMemberOf: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionMinForKey: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionMaxForKey: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := EtasXMLProjectOptionEntry.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategoryForKey: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlAttributeNameForKey: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionFileForKey: (recoveredStack5).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategory: (recoveredStack1) attributeName: (recoveredStack2) optionClass: (recoveredStack3) optionFile: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'FILE'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionCategory: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054fd0c; bytecode file offset 0xe4c648"
!ASDProjectOptions methodsFor: 'recovered'!
optionsDialogConfirmed
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) keyCodeStorageRootPath.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 221] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalValue.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 213] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Do you want to move the necessary files from the current code storage\'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := '\to the new code storage\'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := ' ?'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'ASDMoveCodeStorage'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'YESNO'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalIdString.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) mkdir: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := '.storage_index'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := '.storage_index'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) moveFile: (recoveredStack1) lpszNew: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := '.storage_data'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := '.storage_data'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) moveFile: (recoveredStack1) lpszNew: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20581b54; bytecode file offset 0xe7e498"
!ASDProjectOptions methodsFor: 'recovered'!
setTarget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetTypeForLabel: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTarget: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) cpuType: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) setTargetType: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) osType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultOSToolType: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) osType: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingSystemClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTool: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMissingTool.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectAvailableOSToolTypes: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) osType: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) matchingCompilerTools.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 |
    recoveredBlock107Value0 := recoveredBlock107Arg1.
    recoveredBlock107Value1 := (recoveredBlock107Value0) compilerToolType.
    recoveredBlock107Value2 := (self) targetSettings.
    recoveredBlock107Value3 := (recoveredBlock107Value2) compilerToolType.
    recoveredBlock107Value4 := (recoveredBlock107Value1) = (recoveredBlock107Value3).
    recoveredBlock107Value4
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock124Stack0 recoveredBlock124Stack1 recoveredBlock124Stack2 recoveredBlock124PC recoveredBlock124Step recoveredBlock124Done recoveredBlock124Result |
    recoveredBlock124Stack0 := self.
    recoveredBlock124PC := 130.
    recoveredBlock124Done := false.
    [recoveredBlock124Done not] whileTrue: [
        recoveredBlock124Step := recoveredBlock124PC.
        recoveredBlock124Step = 130 ifTrue: [
            recoveredBlock124Stack0 := (recoveredBlock124Stack0) targetSettings.
            recoveredBlock124PC := 132.
        ].
        recoveredBlock124Step = 132 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 135.
        ].
        recoveredBlock124Step = 135 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) matchingCompilerTools.
            recoveredBlock124PC := 137.
        ].
        recoveredBlock124Step = 137 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) isEmpty.
            recoveredBlock124PC := 139.
        ].
        recoveredBlock124Step = 139 ifTrue: [
            (recoveredBlock124Stack1) ifTrue: [recoveredBlock124PC := 142] ifFalse: [recoveredBlock124PC := 166].
        ].
        recoveredBlock124Step = 142 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 145.
        ].
        recoveredBlock124Step = 145 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) supportsCompiling.
            recoveredBlock124PC := 147.
        ].
        recoveredBlock124Step = 147 ifTrue: [
            (recoveredBlock124Stack1) ifTrue: [recoveredBlock124PC := 150] ifFalse: [recoveredBlock124PC := 160].
        ].
        recoveredBlock124Step = 150 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 153.
        ].
        recoveredBlock124Step = 153 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) compilerToolTypes.
            recoveredBlock124PC := 155.
        ].
        recoveredBlock124Step = 155 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) first.
            recoveredBlock124PC := 157.
        ].
        recoveredBlock124Step = 157 ifTrue: [
            recoveredBlock124PC := 162.
        ].
        recoveredBlock124Step = 160 ifTrue: [
            recoveredBlock124Stack1 := 'none'.
            recoveredBlock124PC := 162.
        ].
        recoveredBlock124Step = 162 ifTrue: [
            recoveredBlock124PC := 175.
        ].
        recoveredBlock124Step = 166 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal3.
            recoveredBlock124PC := 169.
        ].
        recoveredBlock124Step = 169 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) matchingCompilerTools.
            recoveredBlock124PC := 171.
        ].
        recoveredBlock124Step = 171 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) someElement.
            recoveredBlock124PC := 173.
        ].
        recoveredBlock124Step = 173 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) compilerToolType.
            recoveredBlock124PC := 175.
        ].
        recoveredBlock124Step = 175 ifTrue: [
            recoveredBlock124Stack0 := (recoveredBlock124Stack0) compilerToolType: (recoveredBlock124Stack1).
            recoveredBlock124PC := 177.
        ].
        recoveredBlock124Step = 177 ifTrue: [
            recoveredBlock124Result := recoveredBlock124Stack0.
            recoveredBlock124Done := true.
        ].
    ].
    recoveredBlock124Result
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerTarget.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEHooksTarget.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPathPhysicalExperiment.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) setPathPhysicalController.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) setPathObjectBasedController.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 225.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) setPathObjectBasedController.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerPath.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalControllerVariant.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) setPathPhysicalExperiment.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) setPathImplementationExperiment.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) resetTarget.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20583d98; bytecode file offset 0xe806f4"
!ASDProjectOptions methodsFor: 'recovered'!
initializeIntegerArithmeticOptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) generatorSettings.
    recoveredValue3 := (recoveredValue2) iaSettingsCreateIfAbsent.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) keyArithmeticServiceSet.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := EtasXMLProjectOptionEntry.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) xmlCategoryForKey: (recoveredValue9).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) xmlAttributeNameForKey: (recoveredValue11).
    recoveredValue13 := EtasEditableEnumerationOption.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) optionLabelForKey: (recoveredValue14).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) optionDescriptionForKey: (recoveredValue16).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) optionToolTipForKey: (recoveredValue18).
    recoveredValue20 := (self) getServiceSetLabel.
    recoveredValue21 := (self) getServiceSetLabel.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (self) optionGroupForKey: (recoveredValue22).
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (self) optionVisibleBlockForKey: (recoveredValue24).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (self) optionSensitiveBlockForKey: (recoveredValue26).
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (self) optionTypeForKey: (recoveredValue28).
    recoveredValue30 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 recoveredBlock87Value3 |
    recoveredBlock87Value0 := recoveredBlock87Arg1.
    recoveredBlock87Value1 := (recoveredBlock87Value0) value.
    recoveredBlock87Value2 := [
    | recoveredBlock87Block99Value0 recoveredBlock87Block99Value1 recoveredBlock87Block99Value2 recoveredBlock87Block99Value3 recoveredBlock87Block99Value4 recoveredBlock87Block99Value5 recoveredBlock87Block99Value6 recoveredBlock87Block99Value7 |
    recoveredBlock87Block99Value0 := (self) generatorSettings.
    recoveredBlock87Block99Value1 := (recoveredBlock87Block99Value0) iaSettingsCreateIfAbsent.
    recoveredBlock87Block99Value2 := recoveredBlock87Arg1.
    recoveredBlock87Block99Value3 := (recoveredBlock87Block99Value2) value.
    (recoveredBlock87Block99Value1) arithmeticServiceSet: (recoveredBlock87Block99Value3).
    recoveredBlock87Block99Value4 := recoveredBlock87Arg1.
    recoveredBlock87Block99Value5 := recoveredBlock87Arg1.
    recoveredBlock87Block99Value6 := (recoveredBlock87Block99Value5) value.
    recoveredBlock87Block99Value7 := (recoveredBlock87Block99Value4) default: (recoveredBlock87Block99Value6).
    recoveredBlock87Block99Value7
].
    recoveredBlock87Value3 := (recoveredBlock87Value1) notNil: (recoveredBlock87Value2).
    recoveredBlock87Value3
].
    recoveredValue31 := (recoveredValue13) label: (recoveredValue15) description: (recoveredValue17) toolTip: (recoveredValue19) value: (recoveredValue20) default: (recoveredValue21) group: (recoveredValue23) visible: (recoveredValue25) sensitive: (recoveredValue27) type: (recoveredValue29) userField: (recoveredValue30).
    recoveredValue32 := recoveredValue31.
    recoveredValue33 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Local1 recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 |
    recoveredBlock133Value0 := (self) getServiceSetLabel.
    recoveredBlock133Local1 := recoveredBlock133Value0.
    recoveredBlock133Value1 := recoveredBlock133Arg1.
    recoveredBlock133Value2 := recoveredBlock133Local1.
    (recoveredBlock133Value1) default: (recoveredBlock133Value2).
    recoveredBlock133Value3 := recoveredBlock133Arg1.
    recoveredBlock133Value4 := (self) availableServiceSetLabels.
    (recoveredBlock133Value3) stringCollection: (recoveredBlock133Value4).
    recoveredBlock133Value5 := recoveredBlock133Arg1.
    recoveredBlock133Value6 := (self) availableServiceSetLabels.
    (recoveredBlock133Value5) valueCollection: (recoveredBlock133Value6).
    recoveredBlock133Value7 := recoveredBlock133Arg1.
    recoveredBlock133Value8 := recoveredBlock133Local1.
    recoveredBlock133Value9 := (recoveredBlock133Value7) value: (recoveredBlock133Value8).
    recoveredBlock133Value9
].
    (recoveredValue32) updateField: (recoveredValue33).
    recoveredValue34 := recoveredValue31.
    (recoveredValue34) editable: (true).
    recoveredValue35 := recoveredValue31.
    recoveredValue36 := (self) availableServiceSetLabels.
    (recoveredValue35) stringCollection: (recoveredValue36).
    recoveredValue37 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 |
    recoveredBlock176Value0 := (self) generatorSettings.
    recoveredBlock176Value1 := (recoveredBlock176Value0) iaSettingsCreateIfAbsent.
    recoveredBlock176Value2 := (recoveredBlock176Value1) class.
    recoveredBlock176Value3 := (self) target.
    recoveredBlock176Value4 := recoveredBlock176Arg1.
    recoveredBlock176Value5 := (recoveredBlock176Value2) openArithmeticServiceEditorForTarget: (recoveredBlock176Value3) selectedSet: (recoveredBlock176Value4).
    recoveredBlock176Value5
].
    recoveredValue38 := (recoveredValue31) action: (recoveredValue37).
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (self) optionFileForKey: (recoveredValue39).
    recoveredValue41 := (recoveredValue8) xmlCategory: (recoveredValue10) attributeName: (recoveredValue12) optionClass: (recoveredValue38) optionFile: (recoveredValue40).
    recoveredValue42 := (recoveredValue41) optionCategory: ('FILE').
    (recoveredValue7) add: (recoveredValue42).
    recoveredValue43 := recoveredValue6.
    recoveredValue44 := (self) generatorSettings.
    recoveredValue45 := (recoveredValue44) iaSettingsCreateIfAbsent.
    recoveredValue46 := (recoveredValue45) class.
    recoveredValue47 := (recoveredValue46) keyResultOnDivisionByZero.
    recoveredValue48 := (self) createOptionForKey: (recoveredValue47).
    (recoveredValue43) add: (recoveredValue48).
    recoveredValue49 := recoveredValue6.
    recoveredValue50 := (self) generatorSettings.
    recoveredValue51 := (recoveredValue50) iaSettingsCreateIfAbsent.
    recoveredValue52 := (recoveredValue51) class.
    recoveredValue53 := (recoveredValue52) keyRepresentableBits.
    recoveredValue54 := (self) createOptionForKey: (recoveredValue53).
    (recoveredValue49) add: (recoveredValue54).
    recoveredValue55 := (self) generatorSettings.
    recoveredValue56 := (recoveredValue55) iaSettingsCreateIfAbsent.
    recoveredValue57 := (recoveredValue56) changeableBoolOptions.
    recoveredValue58 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 recoveredBlock242Value3 |
    recoveredBlock242Value0 := recoveredLocal2.
    recoveredBlock242Value1 := recoveredBlock242Arg1.
    recoveredBlock242Value2 := (self) createOptionForKey: (recoveredBlock242Value1).
    recoveredBlock242Value3 := (recoveredBlock242Value0) add: (recoveredBlock242Value2).
    recoveredBlock242Value3
].
    (recoveredValue57) do: (recoveredValue58).
    recoveredValue59 := recoveredLocal2.
    ^recoveredValue59
! !

"ASDBase.ic method 0x205c2fe4; bytecode file offset 0xebf910"
!ASDProjectOptions methodsFor: 'recovered'!
optionSensitiveBlockForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsDeclaration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 |
    recoveredBlock10Value0 := (self) generatorSettings.
    recoveredBlock10Value1 := (recoveredBlock10Value0) iaSettingsCreateIfAbsent.
    recoveredBlock10Value2 := (recoveredBlock10Value1) class.
    recoveredBlock10Value3 := (recoveredBlock10Value2) optionsDeclaration.
    recoveredBlock10Value4 := recoveredArg1.
    recoveredBlock10Value5 := [
    | recoveredBlock10Block23Stack0 recoveredBlock10Block23Stack1 recoveredBlock10Block23Stack2 recoveredBlock10Block23PC recoveredBlock10Block23Step recoveredBlock10Block23Done recoveredBlock10Block23Result |
    recoveredBlock10Block23Stack0 := self.
    recoveredBlock10Block23PC := 30.
    recoveredBlock10Block23Done := false.
    [recoveredBlock10Block23Done not] whileTrue: [
        recoveredBlock10Block23Step := recoveredBlock10Block23PC.
        recoveredBlock10Block23Step = 30 ifTrue: [
            recoveredBlock10Block23Stack1 := [
    true
].
            recoveredBlock10Block23PC := 32.
        ].
        recoveredBlock10Block23Step = 32 ifTrue: [
            recoveredBlock10Block23PC := 38.
        ].
        recoveredBlock10Block23Step = 38 ifTrue: [
            ^recoveredBlock10Block23Stack1
        ].
    ].
    recoveredBlock10Block23Result
].
    recoveredBlock10Value6 := [:recoveredBlock10Block39Arg1 | 
    | recoveredBlock10Block39Stack0 recoveredBlock10Block39Stack1 recoveredBlock10Block39Stack2 recoveredBlock10Block39Stack3 recoveredBlock10Block39Stack4 recoveredBlock10Block39PC recoveredBlock10Block39Step recoveredBlock10Block39Done recoveredBlock10Block39Result |
    recoveredBlock10Block39Stack0 := self.
    recoveredBlock10Block39PC := 46.
    recoveredBlock10Block39Done := false.
    [recoveredBlock10Block39Done not] whileTrue: [
        recoveredBlock10Block39Step := recoveredBlock10Block39PC.
        recoveredBlock10Block39Step = 46 ifTrue: [
            recoveredBlock10Block39Stack1 := nil.
            recoveredBlock10Block39PC := 47.
        ].
        recoveredBlock10Block39Step = 47 ifTrue: [
            recoveredBlock10Block39Stack2 := recoveredBlock10Block39Arg1.
            recoveredBlock10Block39PC := 48.
        ].
        recoveredBlock10Block39Step = 48 ifTrue: [
            recoveredBlock10Block39Stack2 := (recoveredBlock10Block39Stack2) optionClass.
            recoveredBlock10Block39PC := 50.
        ].
        recoveredBlock10Block39Step = 50 ifTrue: [
            recoveredBlock10Block39Stack2 := (recoveredBlock10Block39Stack2) group.
            recoveredBlock10Block39PC := 52.
        ].
        recoveredBlock10Block39Step = 52 ifTrue: [
            recoveredBlock10Block39Stack3 := self.
            recoveredBlock10Block39PC := 53.
        ].
        recoveredBlock10Block39Step = 53 ifTrue: [
            recoveredBlock10Block39Stack3 := (recoveredBlock10Block39Stack3) generatorSettings.
            recoveredBlock10Block39PC := 54.
        ].
        recoveredBlock10Block39Step = 54 ifTrue: [
            recoveredBlock10Block39Stack3 := (recoveredBlock10Block39Stack3) iaSettingsCreateIfAbsent.
            recoveredBlock10Block39PC := 55.
        ].
        recoveredBlock10Block39Step = 55 ifTrue: [
            recoveredBlock10Block39Stack3 := (recoveredBlock10Block39Stack3) class.
            recoveredBlock10Block39PC := 56.
        ].
        recoveredBlock10Block39Step = 56 ifTrue: [
            recoveredBlock10Block39Stack3 := (recoveredBlock10Block39Stack3) optionGroupIntegerArithmetic.
            recoveredBlock10Block39PC := 58.
        ].
        recoveredBlock10Block39Step = 58 ifTrue: [
            recoveredBlock10Block39Stack2 := (recoveredBlock10Block39Stack2) equals: (recoveredBlock10Block39Stack3).
            recoveredBlock10Block39PC := 60.
        ].
        recoveredBlock10Block39Step = 60 ifTrue: [
            (recoveredBlock10Block39Stack2) ifTrue: [recoveredBlock10Block39PC := 64] ifFalse: [recoveredBlock10Block39PC := 76].
        ].
        recoveredBlock10Block39Step = 64 ifTrue: [
            recoveredBlock10Block39PC := 65.
        ].
        recoveredBlock10Block39Step = 65 ifTrue: [
            recoveredBlock10Block39Stack1 := [
    | recoveredBlock10Block39Block65Value0 |
    recoveredBlock10Block39Block65Value0 := (self) isFixPointOptionsEnabled.
    recoveredBlock10Block39Block65Value0
].
            recoveredBlock10Block39PC := 75.
        ].
        recoveredBlock10Block39Step = 75 ifTrue: [
            ^recoveredBlock10Block39Stack1
        ].
        recoveredBlock10Block39Step = 76 ifTrue: [
            recoveredBlock10Block39Result := recoveredBlock10Block39Stack1.
            recoveredBlock10Block39Done := true.
        ].
    ].
    recoveredBlock10Block39Result
].
    recoveredBlock10Value7 := (recoveredBlock10Value3) at: (recoveredBlock10Value4) ifAbsent: (recoveredBlock10Value5) ifPresent: (recoveredBlock10Value6).
    recoveredBlock10Value7
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
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
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) attributeName.
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 92.
        ].
        recoveredBlock81Step = 92 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) generatorSettings.
            recoveredBlock81PC := 93.
        ].
        recoveredBlock81Step = 93 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) class.
            recoveredBlock81PC := 94.
        ].
        recoveredBlock81Step = 94 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) keyCacheLocking.
            recoveredBlock81PC := 96.
        ].
        recoveredBlock81Step = 96 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) equals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 98.
        ].
        recoveredBlock81Step = 98 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 102] ifFalse: [recoveredBlock81PC := 126].
        ].
        recoveredBlock81Step = 102 ifTrue: [
            recoveredBlock81Stack1 := [
    | recoveredBlock81Block102Stack0 recoveredBlock81Block102Stack1 recoveredBlock81Block102Stack2 recoveredBlock81Block102Stack3 recoveredBlock81Block102PC recoveredBlock81Block102Step recoveredBlock81Block102Done recoveredBlock81Block102Result |
    recoveredBlock81Block102Stack0 := self.
    recoveredBlock81Block102PC := 108.
    recoveredBlock81Block102Done := false.
    [recoveredBlock81Block102Done not] whileTrue: [
        recoveredBlock81Block102Step := recoveredBlock81Block102PC.
        recoveredBlock81Block102Step = 108 ifTrue: [
            recoveredBlock81Block102Stack1 := false.
            recoveredBlock81Block102PC := 109.
        ].
        recoveredBlock81Block102Step = 109 ifTrue: [
            recoveredBlock81Block102Stack2 := self.
            recoveredBlock81Block102PC := 110.
        ].
        recoveredBlock81Block102Step = 110 ifTrue: [
            recoveredBlock81Block102Stack2 := (recoveredBlock81Block102Stack2) target.
            recoveredBlock81Block102PC := 112.
        ].
        recoveredBlock81Block102Step = 112 ifTrue: [
            recoveredBlock81Block102Stack2 := (recoveredBlock81Block102Stack2) isExperimentalTarget.
            recoveredBlock81Block102PC := 114.
        ].
        recoveredBlock81Block102Step = 114 ifTrue: [
            (recoveredBlock81Block102Stack2) ifTrue: [recoveredBlock81Block102PC := 118] ifFalse: [recoveredBlock81Block102PC := 124].
        ].
        recoveredBlock81Block102Step = 118 ifTrue: [
            recoveredBlock81Block102PC := 119.
        ].
        recoveredBlock81Block102Step = 119 ifTrue: [
            recoveredBlock81Block102Stack1 := self.
            recoveredBlock81Block102PC := 120.
        ].
        recoveredBlock81Block102Step = 120 ifTrue: [
            recoveredBlock81Block102Stack1 := (recoveredBlock81Block102Stack1) target.
            recoveredBlock81Block102PC := 122.
        ].
        recoveredBlock81Block102Step = 122 ifTrue: [
            recoveredBlock81Block102Stack1 := (recoveredBlock81Block102Stack1) supportsCacheLocking.
            recoveredBlock81Block102PC := 124.
        ].
        recoveredBlock81Block102Step = 124 ifTrue: [
            recoveredBlock81Block102Result := recoveredBlock81Block102Stack1.
            recoveredBlock81Block102Done := true.
        ].
    ].
    recoveredBlock81Block102Result
].
            recoveredBlock81PC := 125.
        ].
        recoveredBlock81Step = 125 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 126 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 127.
        ].
        recoveredBlock81Step = 127 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) attributeName.
            recoveredBlock81PC := 129.
        ].
        recoveredBlock81Step = 129 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 130.
        ].
        recoveredBlock81Step = 130 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) generatorSettings.
            recoveredBlock81PC := 131.
        ].
        recoveredBlock81Step = 131 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) class.
            recoveredBlock81PC := 132.
        ].
        recoveredBlock81Step = 132 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) keyGenOSConfiguration.
            recoveredBlock81PC := 134.
        ].
        recoveredBlock81Step = 134 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) equals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 136.
        ].
        recoveredBlock81Step = 136 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 140] ifFalse: [recoveredBlock81PC := 152].
        ].
        recoveredBlock81Step = 140 ifTrue: [
            recoveredBlock81Stack1 := [
    | recoveredBlock81Block140Value0 recoveredBlock81Block140Value1 |
    recoveredBlock81Block140Value0 := (self) target.
    recoveredBlock81Block140Value1 := (recoveredBlock81Block140Value0) supportsOSConfigGeneration.
    recoveredBlock81Block140Value1
].
            recoveredBlock81PC := 151.
        ].
        recoveredBlock81Step = 151 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 152 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 153.
        ].
        recoveredBlock81Step = 153 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) attributeName.
            recoveredBlock81PC := 155.
        ].
        recoveredBlock81Step = 155 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 156.
        ].
        recoveredBlock81Step = 156 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) generatorSettings.
            recoveredBlock81PC := 157.
        ].
        recoveredBlock81Step = 157 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) class.
            recoveredBlock81PC := 158.
        ].
        recoveredBlock81Step = 158 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) keyGenerateMapFile.
            recoveredBlock81PC := 160.
        ].
        recoveredBlock81Step = 160 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) equals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 162.
        ].
        recoveredBlock81Step = 162 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 166] ifFalse: [recoveredBlock81PC := 178].
        ].
        recoveredBlock81Step = 166 ifTrue: [
            recoveredBlock81Stack1 := [
    | recoveredBlock81Block166Value0 recoveredBlock81Block166Value1 |
    recoveredBlock81Block166Value0 := (self) target.
    recoveredBlock81Block166Value1 := (recoveredBlock81Block166Value0) supportsMapFileGeneration.
    recoveredBlock81Block166Value1
].
            recoveredBlock81PC := 177.
        ].
        recoveredBlock81Step = 177 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 178 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 179.
        ].
        recoveredBlock81Step = 179 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) attributeName.
            recoveredBlock81PC := 181.
        ].
        recoveredBlock81Step = 181 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 182.
        ].
        recoveredBlock81Step = 182 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) generatorSettings.
            recoveredBlock81PC := 183.
        ].
        recoveredBlock81Step = 183 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) class.
            recoveredBlock81PC := 184.
        ].
        recoveredBlock81Step = 184 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) keyDT.
            recoveredBlock81PC := 186.
        ].
        recoveredBlock81Step = 186 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) equals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 188.
        ].
        recoveredBlock81Step = 188 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 192] ifFalse: [recoveredBlock81PC := 216].
        ].
        recoveredBlock81Step = 192 ifTrue: [
            recoveredBlock81Stack1 := [
    | recoveredBlock81Block192Stack0 recoveredBlock81Block192Stack1 recoveredBlock81Block192Stack2 recoveredBlock81Block192Stack3 recoveredBlock81Block192PC recoveredBlock81Block192Step recoveredBlock81Block192Done recoveredBlock81Block192Result |
    recoveredBlock81Block192Stack0 := self.
    recoveredBlock81Block192PC := 198.
    recoveredBlock81Block192Done := false.
    [recoveredBlock81Block192Done not] whileTrue: [
        recoveredBlock81Block192Step := recoveredBlock81Block192PC.
        recoveredBlock81Block192Step = 198 ifTrue: [
            recoveredBlock81Block192Stack1 := false.
            recoveredBlock81Block192PC := 199.
        ].
        recoveredBlock81Block192Step = 199 ifTrue: [
            recoveredBlock81Block192Stack2 := self.
            recoveredBlock81Block192PC := 200.
        ].
        recoveredBlock81Block192Step = 200 ifTrue: [
            recoveredBlock81Block192Stack2 := (recoveredBlock81Block192Stack2) target.
            recoveredBlock81Block192PC := 202.
        ].
        recoveredBlock81Block192Step = 202 ifTrue: [
            recoveredBlock81Block192Stack2 := (recoveredBlock81Block192Stack2) isControllerTarget.
            recoveredBlock81Block192PC := 204.
        ].
        recoveredBlock81Block192Step = 204 ifTrue: [
            (recoveredBlock81Block192Stack2) ifTrue: [recoveredBlock81Block192PC := 208] ifFalse: [recoveredBlock81Block192PC := 214].
        ].
        recoveredBlock81Block192Step = 208 ifTrue: [
            recoveredBlock81Block192PC := 209.
        ].
        recoveredBlock81Block192Step = 209 ifTrue: [
            recoveredBlock81Block192Stack1 := self.
            recoveredBlock81Block192PC := 210.
        ].
        recoveredBlock81Block192Step = 210 ifTrue: [
            recoveredBlock81Block192Stack1 := (recoveredBlock81Block192Stack1) target.
            recoveredBlock81Block192PC := 212.
        ].
        recoveredBlock81Block192Step = 212 ifTrue: [
            recoveredBlock81Block192Stack1 := (recoveredBlock81Block192Stack1) supportsDtMethodsGeneration.
            recoveredBlock81Block192PC := 214.
        ].
        recoveredBlock81Block192Step = 214 ifTrue: [
            recoveredBlock81Block192Result := recoveredBlock81Block192Stack1.
            recoveredBlock81Block192Done := true.
        ].
    ].
    recoveredBlock81Block192Result
].
            recoveredBlock81PC := 215.
        ].
        recoveredBlock81Step = 215 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 216 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) generatorSettings.
            recoveredBlock81PC := 217.
        ].
        recoveredBlock81Step = 217 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) changeableOptionsExperimentalCodeCaching.
            recoveredBlock81PC := 219.
        ].
        recoveredBlock81Step = 219 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 220.
        ].
        recoveredBlock81Step = 220 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) attributeName.
            recoveredBlock81PC := 222.
        ].
        recoveredBlock81Step = 222 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) includes: (recoveredBlock81Stack1).
            recoveredBlock81PC := 224.
        ].
        recoveredBlock81Step = 224 ifTrue: [
            (recoveredBlock81Stack0) ifTrue: [recoveredBlock81PC := 228] ifFalse: [recoveredBlock81PC := 261].
        ].
        recoveredBlock81Step = 228 ifTrue: [
            recoveredBlock81Stack0 := [
    | recoveredBlock81Block228Stack0 recoveredBlock81Block228Stack1 recoveredBlock81Block228Stack2 recoveredBlock81Block228Stack3 recoveredBlock81Block228PC recoveredBlock81Block228Step recoveredBlock81Block228Done recoveredBlock81Block228Result |
    recoveredBlock81Block228Stack0 := self.
    recoveredBlock81Block228PC := 234.
    recoveredBlock81Block228Done := false.
    [recoveredBlock81Block228Done not] whileTrue: [
        recoveredBlock81Block228Step := recoveredBlock81Block228PC.
        recoveredBlock81Block228Step = 234 ifTrue: [
            recoveredBlock81Block228Stack1 := false.
            recoveredBlock81Block228PC := 235.
        ].
        recoveredBlock81Block228Step = 235 ifTrue: [
            recoveredBlock81Block228Stack2 := self.
            recoveredBlock81Block228PC := 236.
        ].
        recoveredBlock81Block228Step = 236 ifTrue: [
            recoveredBlock81Block228Stack2 := (recoveredBlock81Block228Stack2) isCachingEnabled.
            recoveredBlock81Block228PC := 238.
        ].
        recoveredBlock81Block228Step = 238 ifTrue: [
            (recoveredBlock81Block228Stack2) ifTrue: [recoveredBlock81Block228PC := 242] ifFalse: [recoveredBlock81Block228PC := 259].
        ].
        recoveredBlock81Block228Step = 242 ifTrue: [
            recoveredBlock81Block228PC := 243.
        ].
        recoveredBlock81Block228Step = 243 ifTrue: [
            recoveredBlock81Block228Stack1 := false.
            recoveredBlock81Block228PC := 244.
        ].
        recoveredBlock81Block228Step = 244 ifTrue: [
            recoveredBlock81Block228Stack2 := self.
            recoveredBlock81Block228PC := 245.
        ].
        recoveredBlock81Block228Step = 245 ifTrue: [
            recoveredBlock81Block228Stack2 := (recoveredBlock81Block228Stack2) target.
            recoveredBlock81Block228PC := 247.
        ].
        recoveredBlock81Block228Step = 247 ifTrue: [
            recoveredBlock81Block228Stack2 := (recoveredBlock81Block228Stack2) supportsCacheLocking.
            recoveredBlock81Block228PC := 249.
        ].
        recoveredBlock81Block228Step = 249 ifTrue: [
            (recoveredBlock81Block228Stack2) ifTrue: [recoveredBlock81Block228PC := 252] ifFalse: [recoveredBlock81Block228PC := 259].
        ].
        recoveredBlock81Block228Step = 252 ifTrue: [
            recoveredBlock81Block228PC := 253.
        ].
        recoveredBlock81Block228Step = 253 ifTrue: [
            recoveredBlock81Block228Stack1 := self.
            recoveredBlock81Block228PC := 254.
        ].
        recoveredBlock81Block228Step = 254 ifTrue: [
            recoveredBlock81Block228Stack1 := (recoveredBlock81Block228Stack1) target.
            recoveredBlock81Block228PC := 256.
        ].
        recoveredBlock81Block228Step = 256 ifTrue: [
            recoveredBlock81Block228Stack1 := (recoveredBlock81Block228Stack1) isPrototypingTarget.
            recoveredBlock81Block228PC := 258.
        ].
        recoveredBlock81Block228Step = 258 ifTrue: [
            recoveredBlock81Block228Stack1 := (recoveredBlock81Block228Stack1) not.
            recoveredBlock81Block228PC := 259.
        ].
        recoveredBlock81Block228Step = 259 ifTrue: [
            recoveredBlock81Block228Result := recoveredBlock81Block228Stack1.
            recoveredBlock81Block228Done := true.
        ].
    ].
    recoveredBlock81Block228Result
].
            recoveredBlock81PC := 260.
        ].
        recoveredBlock81Step = 260 ifTrue: [
            ^recoveredBlock81Stack0
        ].
        recoveredBlock81Step = 261 ifTrue: [
            recoveredBlock81Stack0 := recoveredBlock81Arg1.
            recoveredBlock81PC := 262.
        ].
        recoveredBlock81Step = 262 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) optionClass.
            recoveredBlock81PC := 264.
        ].
        recoveredBlock81Step = 264 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) group.
            recoveredBlock81PC := 266.
        ].
        recoveredBlock81Step = 266 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 267.
        ].
        recoveredBlock81Step = 267 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) generatorSettings.
            recoveredBlock81PC := 268.
        ].
        recoveredBlock81Step = 268 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) class.
            recoveredBlock81PC := 269.
        ].
        recoveredBlock81Step = 269 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) optionGroupExperimentCode.
            recoveredBlock81PC := 271.
        ].
        recoveredBlock81Step = 271 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) equals: (recoveredBlock81Stack1).
            recoveredBlock81PC := 273.
        ].
        recoveredBlock81Step = 273 ifTrue: [
            (recoveredBlock81Stack0) ifTrue: [recoveredBlock81PC := 276] ifFalse: [recoveredBlock81PC := 288].
        ].
        recoveredBlock81Step = 276 ifTrue: [
            recoveredBlock81Stack0 := [
    | recoveredBlock81Block276Value0 recoveredBlock81Block276Value1 |
    recoveredBlock81Block276Value0 := (self) target.
    recoveredBlock81Block276Value1 := (recoveredBlock81Block276Value0) isExperimentalTarget.
    recoveredBlock81Block276Value1
].
            recoveredBlock81PC := 287.
        ].
        recoveredBlock81Step = 287 ifTrue: [
            ^recoveredBlock81Stack0
        ].
        recoveredBlock81Step = 288 ifTrue: [
            recoveredBlock81Stack0 := nil.
            recoveredBlock81PC := 289.
        ].
        recoveredBlock81Step = 289 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 290.
        ].
        recoveredBlock81Step = 290 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) optionClass.
            recoveredBlock81PC := 292.
        ].
        recoveredBlock81Step = 292 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) group.
            recoveredBlock81PC := 294.
        ].
        recoveredBlock81Step = 294 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 295.
        ].
        recoveredBlock81Step = 295 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) generatorSettings.
            recoveredBlock81PC := 296.
        ].
        recoveredBlock81Step = 296 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) class.
            recoveredBlock81PC := 297.
        ].
        recoveredBlock81Step = 297 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) optionGroupProductionCode.
            recoveredBlock81PC := 299.
        ].
        recoveredBlock81Step = 299 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) equals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 301.
        ].
        recoveredBlock81Step = 301 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 304] ifFalse: [recoveredBlock81PC := 318].
        ].
        recoveredBlock81Step = 304 ifTrue: [
            recoveredBlock81PC := 305.
        ].
        recoveredBlock81Step = 305 ifTrue: [
            recoveredBlock81Stack0 := [
    | recoveredBlock81Block305Value0 recoveredBlock81Block305Value1 |
    recoveredBlock81Block305Value0 := (self) target.
    recoveredBlock81Block305Value1 := (recoveredBlock81Block305Value0) isControllerTarget.
    recoveredBlock81Block305Value1
].
            recoveredBlock81PC := 317.
        ].
        recoveredBlock81Step = 317 ifTrue: [
            ^recoveredBlock81Stack0
        ].
        recoveredBlock81Step = 318 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack0.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := [
    true
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ff408; bytecode file offset 0xefbda8"
!ASDProjectOptions methodsFor: 'recovered'!
initializeAsam2MCOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 'ETargetHexCodeIncludesROMCode'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := 'ROM Code'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := 'E-Target HEX code includes ROM code'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := 'HEX code includes ROM code'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := 'ETargetHexCodeIncludesROMCode'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := 'Formulawithunit'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack7 := 'Formulas with Unit'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack8 := 'Create formulas containing the unit of the labels'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack9 := 'Formulas with Unit'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack11 := 'Formulawithunit'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := 'Suppressexportswithinasap2'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack7 := 'Suppress exported Parameters'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack8 := 'Exported parameters of components (not of project) are ignored during ASAM-2MC file generation'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack9 := 'Ignore exported parameters during ASAM-2MC file generation'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack11 := 'Suppressexportswithinasap2'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack5 := 'Suppressexportsprototypewithinasap2'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack7 := 'Suppress exported Elements'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack8 := 'Exported elements of classes (not of project and not of modules) are ignored during ASAM-2MC file generation'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack9 := 'Ignore exported elements during ASAM-2MC file generation'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack11 := 'Suppressexportsprototypewithinasap2'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack5 := 'SuppressGroupInformationInAsap2'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack7 := 'Suppress grouping Information'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack8 := 'Do not generate the Additional Group Information for the project in ASAM-2MC file'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack9 := 'Do not generate Group Information in ASAM-2MC file'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack11 := 'SuppressGroupInformationInAsap2'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack5 := 'SuppressFunctionInformationInAsap2'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack6 := EtasBooleanOption.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack7 := 'Suppress function Information'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack8 := 'Do not generate the Additional Function Information for the project in ASAM-2MC file'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack9 := 'Do not generate Function Information in ASAM-2MC file'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack10 := (recoveredStack10) asam2MCSettings.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack11 := 'SuppressFunctionInformationInAsap2'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack12 := [
    false
].
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack10 := (recoveredStack10) at: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack10 := (recoveredStack10) asBoolean.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack11 := false.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupASAM2MC.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := [:recoveredBlock418Arg1 | 
    | recoveredBlock418Value0 recoveredBlock418Value1 recoveredBlock418Value2 recoveredBlock418Value3 |
    recoveredBlock418Value0 := (self) optionKeys.
    recoveredBlock418Value1 := recoveredBlock418Arg1.
    recoveredBlock418Value2 := (recoveredBlock418Value1) attributeName.
    recoveredBlock418Value3 := (recoveredBlock418Value0) add: (recoveredBlock418Value2).
    recoveredBlock418Value3
].
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20639f5c; bytecode file offset 0xf368f4"
!ASDProjectOptions methodsFor: 'recovered'!
initializeOSConfigToolOptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 'IncludePaths'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := EtasStringOption.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := 'IncludePaths'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionLabelForKey: (recoveredStack8).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := 'IncludePaths'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionDescriptionForKey: (recoveredStack9).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack10 := 'IncludePaths'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionToolTipForKey: (recoveredStack10).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack10 := (recoveredStack10) includePath.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack11 := (recoveredStack11) includePath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock54Value0 |
    recoveredBlock54Value0 := (self) allowConfigToolOptions.
    recoveredBlock54Value0
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack16 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := (self) osSettings.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value1) value.
    recoveredBlock65Value3 := (recoveredBlock65Value0) includePath: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack7 := [:recoveredBlock83Arg1 | 
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
            recoveredBlock83PC := 92.
        ].
        recoveredBlock83Step = 92 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) value.
            recoveredBlock83PC := 94.
        ].
        recoveredBlock83Step = 94 ifTrue: [
            recoveredBlock83Stack3 := self.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) osSettings.
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) includePath.
            recoveredBlock83PC := 99.
        ].
        recoveredBlock83Step = 99 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) = (recoveredBlock83Stack3).
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 121] ifFalse: [recoveredBlock83PC := 104].
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83PC := 105.
        ].
        recoveredBlock83Step = 105 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 106.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 107 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) osDefaultSettings.
            recoveredBlock83PC := 109.
        ].
        recoveredBlock83Step = 109 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) includePath.
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            (recoveredBlock83Stack1) default: (recoveredBlock83Stack2).
            recoveredBlock83PC := 113.
        ].
        recoveredBlock83Step = 113 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 115.
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) osSettings.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) includePath.
            recoveredBlock83PC := 119.
        ].
        recoveredBlock83Step = 119 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) value: (recoveredBlock83Stack2).
            recoveredBlock83PC := 121.
        ].
        recoveredBlock83Step = 121 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := 'LibraryPaths'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := EtasStringOption.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack8 := 'LibraryPaths'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionLabelForKey: (recoveredStack8).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack9 := 'LibraryPaths'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionDescriptionForKey: (recoveredStack9).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack10 := 'LibraryPaths'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionToolTipForKey: (recoveredStack10).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack10 := (recoveredStack10) libraryPath.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack11 := (recoveredStack11) libraryPath.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock178Value0 |
    recoveredBlock178Value0 := (self) allowConfigToolOptions.
    recoveredBlock178Value0
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack16 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Value0 recoveredBlock189Value1 recoveredBlock189Value2 recoveredBlock189Value3 |
    recoveredBlock189Value0 := (self) osSettings.
    recoveredBlock189Value1 := recoveredBlock189Arg1.
    recoveredBlock189Value2 := (recoveredBlock189Value1) value.
    recoveredBlock189Value3 := (recoveredBlock189Value0) libraryPath: (recoveredBlock189Value2).
    recoveredBlock189Value3
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack7 := [:recoveredBlock207Arg1 | 
    | recoveredBlock207Stack0 recoveredBlock207Stack1 recoveredBlock207Stack2 recoveredBlock207Stack3 recoveredBlock207Stack4 recoveredBlock207PC recoveredBlock207Step recoveredBlock207Done recoveredBlock207Result |
    recoveredBlock207Stack0 := self.
    recoveredBlock207PC := 214.
    recoveredBlock207Done := false.
    [recoveredBlock207Done not] whileTrue: [
        recoveredBlock207Step := recoveredBlock207PC.
        recoveredBlock207Step = 214 ifTrue: [
            recoveredBlock207Stack1 := nil.
            recoveredBlock207PC := 215.
        ].
        recoveredBlock207Step = 215 ifTrue: [
            recoveredBlock207Stack2 := recoveredBlock207Arg1.
            recoveredBlock207PC := 216.
        ].
        recoveredBlock207Step = 216 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) value.
            recoveredBlock207PC := 218.
        ].
        recoveredBlock207Step = 218 ifTrue: [
            recoveredBlock207Stack3 := self.
            recoveredBlock207PC := 219.
        ].
        recoveredBlock207Step = 219 ifTrue: [
            recoveredBlock207Stack3 := (recoveredBlock207Stack3) osSettings.
            recoveredBlock207PC := 221.
        ].
        recoveredBlock207Step = 221 ifTrue: [
            recoveredBlock207Stack3 := (recoveredBlock207Stack3) libraryPath.
            recoveredBlock207PC := 223.
        ].
        recoveredBlock207Step = 223 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) = (recoveredBlock207Stack3).
            recoveredBlock207PC := 224.
        ].
        recoveredBlock207Step = 224 ifTrue: [
            (recoveredBlock207Stack2) ifTrue: [recoveredBlock207PC := 245] ifFalse: [recoveredBlock207PC := 228].
        ].
        recoveredBlock207Step = 228 ifTrue: [
            recoveredBlock207PC := 229.
        ].
        recoveredBlock207Step = 229 ifTrue: [
            recoveredBlock207Stack1 := recoveredBlock207Arg1.
            recoveredBlock207PC := 230.
        ].
        recoveredBlock207Step = 230 ifTrue: [
            recoveredBlock207Stack2 := self.
            recoveredBlock207PC := 231.
        ].
        recoveredBlock207Step = 231 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) osDefaultSettings.
            recoveredBlock207PC := 233.
        ].
        recoveredBlock207Step = 233 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) libraryPath.
            recoveredBlock207PC := 235.
        ].
        recoveredBlock207Step = 235 ifTrue: [
            (recoveredBlock207Stack1) default: (recoveredBlock207Stack2).
            recoveredBlock207PC := 237.
        ].
        recoveredBlock207Step = 237 ifTrue: [
            recoveredBlock207Stack1 := recoveredBlock207Arg1.
            recoveredBlock207PC := 238.
        ].
        recoveredBlock207Step = 238 ifTrue: [
            recoveredBlock207Stack2 := self.
            recoveredBlock207PC := 239.
        ].
        recoveredBlock207Step = 239 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) osSettings.
            recoveredBlock207PC := 241.
        ].
        recoveredBlock207Step = 241 ifTrue: [
            recoveredBlock207Stack2 := (recoveredBlock207Stack2) libraryPath.
            recoveredBlock207PC := 243.
        ].
        recoveredBlock207Step = 243 ifTrue: [
            recoveredBlock207Stack1 := (recoveredBlock207Stack1) value: (recoveredBlock207Stack2).
            recoveredBlock207PC := 245.
        ].
        recoveredBlock207Step = 245 ifTrue: [
            recoveredBlock207Result := recoveredBlock207Stack1.
            recoveredBlock207Done := true.
        ].
    ].
    recoveredBlock207Result
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := 'Libraries'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack6 := EtasStringOption.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack8 := 'Libraries'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionLabelForKey: (recoveredStack8).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack9 := 'Libraries'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionDescriptionForKey: (recoveredStack9).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack10 := 'Libraries'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionToolTipForKey: (recoveredStack10).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack10 := (recoveredStack10) libraries.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack11 := (recoveredStack11) libraries.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock302Value0 |
    recoveredBlock302Value0 := (self) allowConfigToolOptions.
    recoveredBlock302Value0
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack16 := [:recoveredBlock313Arg1 | 
    | recoveredBlock313Value0 recoveredBlock313Value1 recoveredBlock313Value2 recoveredBlock313Value3 |
    recoveredBlock313Value0 := (self) osSettings.
    recoveredBlock313Value1 := recoveredBlock313Arg1.
    recoveredBlock313Value2 := (recoveredBlock313Value1) value.
    recoveredBlock313Value3 := (recoveredBlock313Value0) libraries: (recoveredBlock313Value2).
    recoveredBlock313Value3
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack7 := [:recoveredBlock331Arg1 | 
    | recoveredBlock331Stack0 recoveredBlock331Stack1 recoveredBlock331Stack2 recoveredBlock331Stack3 recoveredBlock331Stack4 recoveredBlock331PC recoveredBlock331Step recoveredBlock331Done recoveredBlock331Result |
    recoveredBlock331Stack0 := self.
    recoveredBlock331PC := 338.
    recoveredBlock331Done := false.
    [recoveredBlock331Done not] whileTrue: [
        recoveredBlock331Step := recoveredBlock331PC.
        recoveredBlock331Step = 338 ifTrue: [
            recoveredBlock331Stack1 := nil.
            recoveredBlock331PC := 339.
        ].
        recoveredBlock331Step = 339 ifTrue: [
            recoveredBlock331Stack2 := recoveredBlock331Arg1.
            recoveredBlock331PC := 340.
        ].
        recoveredBlock331Step = 340 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) value.
            recoveredBlock331PC := 342.
        ].
        recoveredBlock331Step = 342 ifTrue: [
            recoveredBlock331Stack3 := self.
            recoveredBlock331PC := 343.
        ].
        recoveredBlock331Step = 343 ifTrue: [
            recoveredBlock331Stack3 := (recoveredBlock331Stack3) osSettings.
            recoveredBlock331PC := 345.
        ].
        recoveredBlock331Step = 345 ifTrue: [
            recoveredBlock331Stack3 := (recoveredBlock331Stack3) libraries.
            recoveredBlock331PC := 347.
        ].
        recoveredBlock331Step = 347 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) = (recoveredBlock331Stack3).
            recoveredBlock331PC := 348.
        ].
        recoveredBlock331Step = 348 ifTrue: [
            (recoveredBlock331Stack2) ifTrue: [recoveredBlock331PC := 369] ifFalse: [recoveredBlock331PC := 352].
        ].
        recoveredBlock331Step = 352 ifTrue: [
            recoveredBlock331PC := 353.
        ].
        recoveredBlock331Step = 353 ifTrue: [
            recoveredBlock331Stack1 := recoveredBlock331Arg1.
            recoveredBlock331PC := 354.
        ].
        recoveredBlock331Step = 354 ifTrue: [
            recoveredBlock331Stack2 := self.
            recoveredBlock331PC := 355.
        ].
        recoveredBlock331Step = 355 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) osDefaultSettings.
            recoveredBlock331PC := 357.
        ].
        recoveredBlock331Step = 357 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) libraries.
            recoveredBlock331PC := 359.
        ].
        recoveredBlock331Step = 359 ifTrue: [
            (recoveredBlock331Stack1) default: (recoveredBlock331Stack2).
            recoveredBlock331PC := 361.
        ].
        recoveredBlock331Step = 361 ifTrue: [
            recoveredBlock331Stack1 := recoveredBlock331Arg1.
            recoveredBlock331PC := 362.
        ].
        recoveredBlock331Step = 362 ifTrue: [
            recoveredBlock331Stack2 := self.
            recoveredBlock331PC := 363.
        ].
        recoveredBlock331Step = 363 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) osSettings.
            recoveredBlock331PC := 365.
        ].
        recoveredBlock331Step = 365 ifTrue: [
            recoveredBlock331Stack2 := (recoveredBlock331Stack2) libraries.
            recoveredBlock331PC := 367.
        ].
        recoveredBlock331Step = 367 ifTrue: [
            recoveredBlock331Stack1 := (recoveredBlock331Stack1) value: (recoveredBlock331Stack2).
            recoveredBlock331PC := 369.
        ].
        recoveredBlock331Step = 369 ifTrue: [
            recoveredBlock331Result := recoveredBlock331Stack1.
            recoveredBlock331Done := true.
        ].
    ].
    recoveredBlock331Result
].
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack5 := 'OSConfigurationToolOptions'.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack6 := EtasStringOption.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack8 := 'OSConfigurationToolOptions'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionLabelForKey: (recoveredStack8).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack9 := 'OSConfigurationToolOptions'.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionDescriptionForKey: (recoveredStack9).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack10 := 'OSConfigurationToolOptions'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionToolTipForKey: (recoveredStack10).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack10 := (recoveredStack10) configToolOptions.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack11 := (recoveredStack11) configToolOptions.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock426Value0 |
    recoveredBlock426Value0 := (self) allowConfigToolOptions.
    recoveredBlock426Value0
].
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack16 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Value0 recoveredBlock437Value1 recoveredBlock437Value2 recoveredBlock437Value3 |
    recoveredBlock437Value0 := (self) osSettings.
    recoveredBlock437Value1 := recoveredBlock437Arg1.
    recoveredBlock437Value2 := (recoveredBlock437Value1) value.
    recoveredBlock437Value3 := (recoveredBlock437Value0) configToolOptions: (recoveredBlock437Value2).
    recoveredBlock437Value3
].
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack7 := [:recoveredBlock455Arg1 | 
    | recoveredBlock455Stack0 recoveredBlock455Stack1 recoveredBlock455Stack2 recoveredBlock455Stack3 recoveredBlock455Stack4 recoveredBlock455PC recoveredBlock455Step recoveredBlock455Done recoveredBlock455Result |
    recoveredBlock455Stack0 := self.
    recoveredBlock455PC := 462.
    recoveredBlock455Done := false.
    [recoveredBlock455Done not] whileTrue: [
        recoveredBlock455Step := recoveredBlock455PC.
        recoveredBlock455Step = 462 ifTrue: [
            recoveredBlock455Stack1 := nil.
            recoveredBlock455PC := 463.
        ].
        recoveredBlock455Step = 463 ifTrue: [
            recoveredBlock455Stack2 := recoveredBlock455Arg1.
            recoveredBlock455PC := 464.
        ].
        recoveredBlock455Step = 464 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) value.
            recoveredBlock455PC := 466.
        ].
        recoveredBlock455Step = 466 ifTrue: [
            recoveredBlock455Stack3 := self.
            recoveredBlock455PC := 467.
        ].
        recoveredBlock455Step = 467 ifTrue: [
            recoveredBlock455Stack3 := (recoveredBlock455Stack3) osSettings.
            recoveredBlock455PC := 469.
        ].
        recoveredBlock455Step = 469 ifTrue: [
            recoveredBlock455Stack3 := (recoveredBlock455Stack3) configToolOptions.
            recoveredBlock455PC := 471.
        ].
        recoveredBlock455Step = 471 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) = (recoveredBlock455Stack3).
            recoveredBlock455PC := 472.
        ].
        recoveredBlock455Step = 472 ifTrue: [
            (recoveredBlock455Stack2) ifTrue: [recoveredBlock455PC := 493] ifFalse: [recoveredBlock455PC := 476].
        ].
        recoveredBlock455Step = 476 ifTrue: [
            recoveredBlock455PC := 477.
        ].
        recoveredBlock455Step = 477 ifTrue: [
            recoveredBlock455Stack1 := recoveredBlock455Arg1.
            recoveredBlock455PC := 478.
        ].
        recoveredBlock455Step = 478 ifTrue: [
            recoveredBlock455Stack2 := self.
            recoveredBlock455PC := 479.
        ].
        recoveredBlock455Step = 479 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) osDefaultSettings.
            recoveredBlock455PC := 481.
        ].
        recoveredBlock455Step = 481 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) configToolOptions.
            recoveredBlock455PC := 483.
        ].
        recoveredBlock455Step = 483 ifTrue: [
            (recoveredBlock455Stack1) default: (recoveredBlock455Stack2).
            recoveredBlock455PC := 485.
        ].
        recoveredBlock455Step = 485 ifTrue: [
            recoveredBlock455Stack1 := recoveredBlock455Arg1.
            recoveredBlock455PC := 486.
        ].
        recoveredBlock455Step = 486 ifTrue: [
            recoveredBlock455Stack2 := self.
            recoveredBlock455PC := 487.
        ].
        recoveredBlock455Step = 487 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) osSettings.
            recoveredBlock455PC := 489.
        ].
        recoveredBlock455Step = 489 ifTrue: [
            recoveredBlock455Stack2 := (recoveredBlock455Stack2) configToolOptions.
            recoveredBlock455PC := 491.
        ].
        recoveredBlock455Step = 491 ifTrue: [
            recoveredBlock455Stack1 := (recoveredBlock455Stack1) value: (recoveredBlock455Stack2).
            recoveredBlock455PC := 493.
        ].
        recoveredBlock455Step = 493 ifTrue: [
            recoveredBlock455Result := recoveredBlock455Stack1.
            recoveredBlock455Done := true.
        ].
    ].
    recoveredBlock455Result
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack5 := 'OILFile'.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack6 := EtasFileOption.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack8 := 'OILFile'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack7 := (recoveredStack7) optionLabelForKey: (recoveredStack8).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack9 := 'OILFile'.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionDescriptionForKey: (recoveredStack9).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack10 := 'OILFile'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack9 := (recoveredStack9) optionToolTipForKey: (recoveredStack10).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack10 := (recoveredStack10) oilFile.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack11 := (recoveredStack11) oilFile.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock550Value0 |
    recoveredBlock550Value0 := (self) allowConfigToolOptions.
    recoveredBlock550Value0
].
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack16 := [:recoveredBlock561Arg1 | 
    | recoveredBlock561Value0 recoveredBlock561Value1 recoveredBlock561Value2 recoveredBlock561Value3 |
    recoveredBlock561Value0 := (self) osSettings.
    recoveredBlock561Value1 := recoveredBlock561Arg1.
    recoveredBlock561Value2 := (recoveredBlock561Value1) value.
    recoveredBlock561Value3 := (recoveredBlock561Value0) oilFile: (recoveredBlock561Value2).
    recoveredBlock561Value3
].
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack10 := '*.oil'.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack11 := 'OIL Files'.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredStack9 := recoveredStack8.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack10 := '*.*'.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack11 := 'All Files'.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack7) filterDictionary: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack8 := 'Select OIL File'.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack7) dialogTitle: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack8 := EtasGeneralDllApi.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack8 := (recoveredStack8) getAppProgramPath.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack8 := (recoveredStack8) asPathname.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack7) searchPath: (recoveredStack8).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack7 := [:recoveredBlock613Arg1 | 
    | recoveredBlock613Stack0 recoveredBlock613Stack1 recoveredBlock613Stack2 recoveredBlock613Stack3 recoveredBlock613Stack4 recoveredBlock613PC recoveredBlock613Step recoveredBlock613Done recoveredBlock613Result |
    recoveredBlock613Stack0 := self.
    recoveredBlock613PC := 620.
    recoveredBlock613Done := false.
    [recoveredBlock613Done not] whileTrue: [
        recoveredBlock613Step := recoveredBlock613PC.
        recoveredBlock613Step = 620 ifTrue: [
            recoveredBlock613Stack1 := nil.
            recoveredBlock613PC := 621.
        ].
        recoveredBlock613Step = 621 ifTrue: [
            recoveredBlock613Stack2 := recoveredBlock613Arg1.
            recoveredBlock613PC := 622.
        ].
        recoveredBlock613Step = 622 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) value.
            recoveredBlock613PC := 624.
        ].
        recoveredBlock613Step = 624 ifTrue: [
            recoveredBlock613Stack3 := self.
            recoveredBlock613PC := 625.
        ].
        recoveredBlock613Step = 625 ifTrue: [
            recoveredBlock613Stack3 := (recoveredBlock613Stack3) osSettings.
            recoveredBlock613PC := 627.
        ].
        recoveredBlock613Step = 627 ifTrue: [
            recoveredBlock613Stack3 := (recoveredBlock613Stack3) oilFile.
            recoveredBlock613PC := 629.
        ].
        recoveredBlock613Step = 629 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) = (recoveredBlock613Stack3).
            recoveredBlock613PC := 630.
        ].
        recoveredBlock613Step = 630 ifTrue: [
            (recoveredBlock613Stack2) ifTrue: [recoveredBlock613PC := 651] ifFalse: [recoveredBlock613PC := 634].
        ].
        recoveredBlock613Step = 634 ifTrue: [
            recoveredBlock613PC := 635.
        ].
        recoveredBlock613Step = 635 ifTrue: [
            recoveredBlock613Stack1 := recoveredBlock613Arg1.
            recoveredBlock613PC := 636.
        ].
        recoveredBlock613Step = 636 ifTrue: [
            recoveredBlock613Stack2 := self.
            recoveredBlock613PC := 637.
        ].
        recoveredBlock613Step = 637 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) osDefaultSettings.
            recoveredBlock613PC := 639.
        ].
        recoveredBlock613Step = 639 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) oilFile.
            recoveredBlock613PC := 641.
        ].
        recoveredBlock613Step = 641 ifTrue: [
            (recoveredBlock613Stack1) default: (recoveredBlock613Stack2).
            recoveredBlock613PC := 643.
        ].
        recoveredBlock613Step = 643 ifTrue: [
            recoveredBlock613Stack1 := recoveredBlock613Arg1.
            recoveredBlock613PC := 644.
        ].
        recoveredBlock613Step = 644 ifTrue: [
            recoveredBlock613Stack2 := self.
            recoveredBlock613PC := 645.
        ].
        recoveredBlock613Step = 645 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) osSettings.
            recoveredBlock613PC := 647.
        ].
        recoveredBlock613Step = 647 ifTrue: [
            recoveredBlock613Stack2 := (recoveredBlock613Stack2) oilFile.
            recoveredBlock613PC := 649.
        ].
        recoveredBlock613Step = 649 ifTrue: [
            recoveredBlock613Stack1 := (recoveredBlock613Stack1) value: (recoveredBlock613Stack2).
            recoveredBlock613PC := 651.
        ].
        recoveredBlock613Step = 651 ifTrue: [
            recoveredBlock613Result := recoveredBlock613Stack1.
            recoveredBlock613Done := true.
        ].
    ].
    recoveredBlock613Result
].
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206671f8; bytecode file offset 0xf63c40"
!ASDProjectOptions methodsFor: 'recovered'!
initializeOSOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EtasXMLProjectOptionEntry.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlBuildCategory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'EnableOSConfig'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := 'Enable OS Configuration'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := 'Allow for external processing of operating system specification by external configuration tools'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack7 := 'Enable Operating System Configuration'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack8 := (recoveredStack8) osSettings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack8 := (recoveredStack8) enableOSConfig.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack9 := (recoveredStack9) osDefaultSettings.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack9 := (recoveredStack9) enableOSConfig.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionGroupOS.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack12 := [
    | recoveredBlock42Value0 |
    recoveredBlock42Value0 := (self) allowConfigToolContainerOption.
    recoveredBlock42Value0
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack13 := 'CODE'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack14 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 |
    recoveredBlock53Value0 := (self) osSettings.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    recoveredBlock53Value2 := (recoveredBlock53Value1) value.
    recoveredBlock53Value3 := (recoveredBlock53Value0) enableOSConfig: (recoveredBlock53Value2).
    recoveredBlock53Value3
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack5) changeable: (recoveredStack6).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) value.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack3 := self.
            recoveredBlock75PC := 87.
        ].
        recoveredBlock75Step = 87 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) osSettings.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) enableOSConfig.
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) = (recoveredBlock75Stack3).
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 96] ifFalse: [recoveredBlock75PC := 108].
        ].
        recoveredBlock75Step = 96 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) default.
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack3 := self.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) osDefaultSettings.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) enableOSConfig.
            recoveredBlock75PC := 104.
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) = (recoveredBlock75Stack3).
            recoveredBlock75PC := 105.
        ].
        recoveredBlock75Step = 105 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 125] ifFalse: [recoveredBlock75PC := 108].
        ].
        recoveredBlock75Step = 108 ifTrue: [
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 110.
        ].
        recoveredBlock75Step = 110 ifTrue: [
            recoveredBlock75Stack2 := self.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) osDefaultSettings.
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) enableOSConfig.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            (recoveredBlock75Stack1) default: (recoveredBlock75Stack2).
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75Stack2 := self.
            recoveredBlock75PC := 119.
        ].
        recoveredBlock75Step = 119 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) osSettings.
            recoveredBlock75PC := 121.
        ].
        recoveredBlock75Step = 121 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) enableOSConfig.
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 123 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) value: (recoveredBlock75Stack2).
            recoveredBlock75PC := 125.
        ].
        recoveredBlock75Step = 125 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) updateField: (recoveredStack5).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'PROJECT'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCategory: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeOSConfigToolOptions.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := 'OILTemplateFile'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := EtasFileOption.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack7 := 'OS Template File'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack8 := 'OS Template File used for external generation of OS related file'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack9 := 'OS Template File'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack10 := (recoveredStack10) osTemplateFile.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack11 := (recoveredStack11) osTemplateFile.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock186Value0 |
    recoveredBlock186Value0 := (self) allowOSTemplateFileOption.
    recoveredBlock186Value0
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack16 := [:recoveredBlock197Arg1 | 
    | recoveredBlock197Value0 recoveredBlock197Value1 recoveredBlock197Value2 recoveredBlock197Value3 |
    recoveredBlock197Value0 := (self) osSettings.
    recoveredBlock197Value1 := recoveredBlock197Arg1.
    recoveredBlock197Value2 := (recoveredBlock197Value1) value.
    recoveredBlock197Value3 := (recoveredBlock197Value0) osTemplateFile: (recoveredBlock197Value2).
    recoveredBlock197Value3
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack10 := '*.template'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack11 := 'OS Template Files'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredStack9 := recoveredStack8.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack10 := '*.*'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack11 := 'All Files'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack7) filterDictionary: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack8 := 'Select OS Template File'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack7) dialogTitle: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack8 := (recoveredStack8) target.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack8 := (recoveredStack8) getTargetSpecificPath.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack8 := (recoveredStack8) asPathname.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack7) searchPath: (recoveredStack8).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack7 := [:recoveredBlock250Arg1 | 
    | recoveredBlock250Stack0 recoveredBlock250Stack1 recoveredBlock250Stack2 recoveredBlock250Stack3 recoveredBlock250Stack4 recoveredBlock250PC recoveredBlock250Step recoveredBlock250Done recoveredBlock250Result |
    recoveredBlock250Stack0 := self.
    recoveredBlock250PC := 256.
    recoveredBlock250Done := false.
    [recoveredBlock250Done not] whileTrue: [
        recoveredBlock250Step := recoveredBlock250PC.
        recoveredBlock250Step = 256 ifTrue: [
            recoveredBlock250Stack1 := nil.
            recoveredBlock250PC := 257.
        ].
        recoveredBlock250Step = 257 ifTrue: [
            recoveredBlock250Stack2 := recoveredBlock250Arg1.
            recoveredBlock250PC := 258.
        ].
        recoveredBlock250Step = 258 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) value.
            recoveredBlock250PC := 260.
        ].
        recoveredBlock250Step = 260 ifTrue: [
            recoveredBlock250Stack3 := self.
            recoveredBlock250PC := 261.
        ].
        recoveredBlock250Step = 261 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) osSettings.
            recoveredBlock250PC := 263.
        ].
        recoveredBlock250Step = 263 ifTrue: [
            recoveredBlock250Stack3 := (recoveredBlock250Stack3) osTemplateFile.
            recoveredBlock250PC := 265.
        ].
        recoveredBlock250Step = 265 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) = (recoveredBlock250Stack3).
            recoveredBlock250PC := 266.
        ].
        recoveredBlock250Step = 266 ifTrue: [
            (recoveredBlock250Stack2) ifTrue: [recoveredBlock250PC := 287] ifFalse: [recoveredBlock250PC := 270].
        ].
        recoveredBlock250Step = 270 ifTrue: [
            recoveredBlock250PC := 271.
        ].
        recoveredBlock250Step = 271 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 272.
        ].
        recoveredBlock250Step = 272 ifTrue: [
            recoveredBlock250Stack2 := self.
            recoveredBlock250PC := 273.
        ].
        recoveredBlock250Step = 273 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) osDefaultSettings.
            recoveredBlock250PC := 275.
        ].
        recoveredBlock250Step = 275 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) osTemplateFile.
            recoveredBlock250PC := 277.
        ].
        recoveredBlock250Step = 277 ifTrue: [
            (recoveredBlock250Stack1) default: (recoveredBlock250Stack2).
            recoveredBlock250PC := 279.
        ].
        recoveredBlock250Step = 279 ifTrue: [
            recoveredBlock250Stack1 := recoveredBlock250Arg1.
            recoveredBlock250PC := 280.
        ].
        recoveredBlock250Step = 280 ifTrue: [
            recoveredBlock250Stack2 := self.
            recoveredBlock250PC := 281.
        ].
        recoveredBlock250Step = 281 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) osSettings.
            recoveredBlock250PC := 283.
        ].
        recoveredBlock250Step = 283 ifTrue: [
            recoveredBlock250Stack2 := (recoveredBlock250Stack2) osTemplateFile.
            recoveredBlock250PC := 285.
        ].
        recoveredBlock250Step = 285 ifTrue: [
            recoveredBlock250Stack1 := (recoveredBlock250Stack1) value: (recoveredBlock250Stack2).
            recoveredBlock250PC := 287.
        ].
        recoveredBlock250Step = 287 ifTrue: [
            recoveredBlock250Result := recoveredBlock250Stack1.
            recoveredBlock250Done := true.
        ].
    ].
    recoveredBlock250Result
].
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack6 := (recoveredStack6) updateField: (recoveredStack7).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack5 := 'InterpolationMapping'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack6 := EtasPathTokenFileOption.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack7 := 'Interpolation Alias Mapping'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack8 := 'Defines the mapping of alias interpolation routines to concrete interpolation routines.'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack9 := 'Interpolation Alias Mapping'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack10 := (recoveredStack10) interpolationMapping.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack11 := (recoveredStack11) interpolationMapping.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack16 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 recoveredBlock360Value2 recoveredBlock360Value3 |
    recoveredBlock360Value0 := (self) osSettings.
    recoveredBlock360Value1 := recoveredBlock360Arg1.
    recoveredBlock360Value2 := (recoveredBlock360Value1) value.
    recoveredBlock360Value3 := (recoveredBlock360Value0) interpolationMapping: (recoveredBlock360Value2).
    recoveredBlock360Value3
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock380Value0 |
    recoveredBlock380Value0 := (self) targetSpecificPathTokens.
    recoveredBlock380Value0
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack7) pathTokenField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack10 := '*.ini'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack11 := 'INI Files'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredStack9 := recoveredStack8.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack10 := '*.*'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack11 := 'All Files'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack7) filterDictionary: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack8 := 'Select Interpolation Alias Mapping File'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack7) dialogTitle: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack8 := (recoveredStack8) target.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack8 := (recoveredStack8) getTargetSpecificPath.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack8 := (recoveredStack8) asPathname.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack7) searchPath: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack8 := [:recoveredBlock437Arg1 | 
    | recoveredBlock437Stack0 recoveredBlock437Stack1 recoveredBlock437Stack2 recoveredBlock437Stack3 recoveredBlock437Stack4 recoveredBlock437PC recoveredBlock437Step recoveredBlock437Done recoveredBlock437Result |
    recoveredBlock437Stack0 := self.
    recoveredBlock437PC := 444.
    recoveredBlock437Done := false.
    [recoveredBlock437Done not] whileTrue: [
        recoveredBlock437Step := recoveredBlock437PC.
        recoveredBlock437Step = 444 ifTrue: [
            recoveredBlock437Stack1 := nil.
            recoveredBlock437PC := 445.
        ].
        recoveredBlock437Step = 445 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Arg1.
            recoveredBlock437PC := 446.
        ].
        recoveredBlock437Step = 446 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) value.
            recoveredBlock437PC := 448.
        ].
        recoveredBlock437Step = 448 ifTrue: [
            recoveredBlock437Stack3 := self.
            recoveredBlock437PC := 449.
        ].
        recoveredBlock437Step = 449 ifTrue: [
            recoveredBlock437Stack3 := (recoveredBlock437Stack3) osSettings.
            recoveredBlock437PC := 451.
        ].
        recoveredBlock437Step = 451 ifTrue: [
            recoveredBlock437Stack3 := (recoveredBlock437Stack3) interpolationMapping.
            recoveredBlock437PC := 455.
        ].
        recoveredBlock437Step = 455 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) = (recoveredBlock437Stack3).
            recoveredBlock437PC := 456.
        ].
        recoveredBlock437Step = 456 ifTrue: [
            (recoveredBlock437Stack2) ifTrue: [recoveredBlock437PC := 481] ifFalse: [recoveredBlock437PC := 460].
        ].
        recoveredBlock437Step = 460 ifTrue: [
            recoveredBlock437PC := 461.
        ].
        recoveredBlock437Step = 461 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Arg1.
            recoveredBlock437PC := 462.
        ].
        recoveredBlock437Step = 462 ifTrue: [
            recoveredBlock437Stack2 := self.
            recoveredBlock437PC := 463.
        ].
        recoveredBlock437Step = 463 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) osDefaultSettings.
            recoveredBlock437PC := 465.
        ].
        recoveredBlock437Step = 465 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) interpolationMapping.
            recoveredBlock437PC := 469.
        ].
        recoveredBlock437Step = 469 ifTrue: [
            (recoveredBlock437Stack1) default: (recoveredBlock437Stack2).
            recoveredBlock437PC := 471.
        ].
        recoveredBlock437Step = 471 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Arg1.
            recoveredBlock437PC := 472.
        ].
        recoveredBlock437Step = 472 ifTrue: [
            recoveredBlock437Stack2 := self.
            recoveredBlock437PC := 473.
        ].
        recoveredBlock437Step = 473 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) osSettings.
            recoveredBlock437PC := 475.
        ].
        recoveredBlock437Step = 475 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) interpolationMapping.
            recoveredBlock437PC := 479.
        ].
        recoveredBlock437Step = 479 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) value: (recoveredBlock437Stack2).
            recoveredBlock437PC := 481.
        ].
        recoveredBlock437Step = 481 ifTrue: [
            recoveredBlock437Result := recoveredBlock437Stack1.
            recoveredBlock437Done := true.
        ].
    ].
    recoveredBlock437Result
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack6 := (recoveredStack6) requiredFile: (recoveredStack7).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack5 := 'ARXMLConfigFile'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack6 := EtasEditableXMLFileOption.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack7 := 'AUTOSAR XML Configuration File'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack8 := 'AUTOSAR XML Configuration Option File'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack9 := 'AUTOSAR XML Configuration Option File'.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack10 := (recoveredStack10) arXmlConfigurationFile.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack11 := (recoveredStack11) arXmlConfigurationFile.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock552Value0 |
    recoveredBlock552Value0 := (self) allowARXmlConfigOptions.
    recoveredBlock552Value0
].
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack16 := [:recoveredBlock566Arg1 | 
    | recoveredBlock566Value0 recoveredBlock566Value1 recoveredBlock566Value2 recoveredBlock566Value3 |
    recoveredBlock566Value0 := (self) osSettings.
    recoveredBlock566Value1 := recoveredBlock566Arg1.
    recoveredBlock566Value2 := (recoveredBlock566Value1) value.
    recoveredBlock566Value3 := (recoveredBlock566Value0) arXmlConfigurationFile: (recoveredBlock566Value2).
    recoveredBlock566Value3
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock586Value0 |
    recoveredBlock586Value0 := (self) targetSpecificPathTokens.
    recoveredBlock586Value0
].
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack7) pathTokenField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack10 := '*.xml'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack11 := 'xml Files '.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredStack9 := recoveredStack8.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack10 := '*.*'.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack11 := 'All Files '.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack7) filterDictionary: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack8 := '*.xml'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack7) searchMask: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack8 := 'Select AUTOSAR XML Configuration File'.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack7) dialogTitle: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack8 := (recoveredStack8) target.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack8 := (recoveredStack8) getTargetSpecificPath.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack7) searchPath: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack8 := [:recoveredBlock649Arg1 | 
    | recoveredBlock649Stack0 recoveredBlock649Stack1 recoveredBlock649Stack2 recoveredBlock649Stack3 recoveredBlock649Stack4 recoveredBlock649PC recoveredBlock649Step recoveredBlock649Done recoveredBlock649Result |
    recoveredBlock649Stack0 := self.
    recoveredBlock649PC := 656.
    recoveredBlock649Done := false.
    [recoveredBlock649Done not] whileTrue: [
        recoveredBlock649Step := recoveredBlock649PC.
        recoveredBlock649Step = 656 ifTrue: [
            recoveredBlock649Stack1 := nil.
            recoveredBlock649PC := 657.
        ].
        recoveredBlock649Step = 657 ifTrue: [
            recoveredBlock649Stack2 := recoveredBlock649Arg1.
            recoveredBlock649PC := 658.
        ].
        recoveredBlock649Step = 658 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) value.
            recoveredBlock649PC := 660.
        ].
        recoveredBlock649Step = 660 ifTrue: [
            recoveredBlock649Stack3 := self.
            recoveredBlock649PC := 661.
        ].
        recoveredBlock649Step = 661 ifTrue: [
            recoveredBlock649Stack3 := (recoveredBlock649Stack3) osSettings.
            recoveredBlock649PC := 663.
        ].
        recoveredBlock649Step = 663 ifTrue: [
            recoveredBlock649Stack3 := (recoveredBlock649Stack3) arXmlConfigurationFile.
            recoveredBlock649PC := 667.
        ].
        recoveredBlock649Step = 667 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) = (recoveredBlock649Stack3).
            recoveredBlock649PC := 668.
        ].
        recoveredBlock649Step = 668 ifTrue: [
            (recoveredBlock649Stack2) ifTrue: [recoveredBlock649PC := 693] ifFalse: [recoveredBlock649PC := 672].
        ].
        recoveredBlock649Step = 672 ifTrue: [
            recoveredBlock649PC := 673.
        ].
        recoveredBlock649Step = 673 ifTrue: [
            recoveredBlock649Stack1 := recoveredBlock649Arg1.
            recoveredBlock649PC := 674.
        ].
        recoveredBlock649Step = 674 ifTrue: [
            recoveredBlock649Stack2 := self.
            recoveredBlock649PC := 675.
        ].
        recoveredBlock649Step = 675 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) osDefaultSettings.
            recoveredBlock649PC := 677.
        ].
        recoveredBlock649Step = 677 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) arXmlConfigurationFile.
            recoveredBlock649PC := 681.
        ].
        recoveredBlock649Step = 681 ifTrue: [
            (recoveredBlock649Stack1) default: (recoveredBlock649Stack2).
            recoveredBlock649PC := 683.
        ].
        recoveredBlock649Step = 683 ifTrue: [
            recoveredBlock649Stack1 := recoveredBlock649Arg1.
            recoveredBlock649PC := 684.
        ].
        recoveredBlock649Step = 684 ifTrue: [
            recoveredBlock649Stack2 := self.
            recoveredBlock649PC := 685.
        ].
        recoveredBlock649Step = 685 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) osSettings.
            recoveredBlock649PC := 687.
        ].
        recoveredBlock649Step = 687 ifTrue: [
            recoveredBlock649Stack2 := (recoveredBlock649Stack2) arXmlConfigurationFile.
            recoveredBlock649PC := 691.
        ].
        recoveredBlock649Step = 691 ifTrue: [
            recoveredBlock649Stack1 := (recoveredBlock649Stack1) value: (recoveredBlock649Stack2).
            recoveredBlock649PC := 693.
        ].
        recoveredBlock649Step = 693 ifTrue: [
            recoveredBlock649Result := recoveredBlock649Stack1.
            recoveredBlock649Done := true.
        ].
    ].
    recoveredBlock649Result
].
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack7) requiredFile: (recoveredStack8).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack7 := [:recoveredBlock703Arg1 | 
    | recoveredBlock703Value0 recoveredBlock703Value1 recoveredBlock703Value2 |
    recoveredBlock703Value0 := recoveredBlock703Arg1.
    recoveredBlock703Value1 := (recoveredBlock703Value0) getString.
    recoveredBlock703Value2 := (self) editARXMLConfigurationOptions: (recoveredBlock703Value1).
    recoveredBlock703Value2
].
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack6 := (recoveredStack6) action: (recoveredStack7).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack5 := 'memSecConfigFile'.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack6 := EtasPathTokenFileOption.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack7 := (recoveredStack7) osSettings.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack7 := (recoveredStack7) memSectionFileOptionLabel.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack8 := 'Memory Sections Configuration Option File'.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack9 := 'Memory Sections Configuration Option File'.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack10 := (recoveredStack10) osSettings.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack10 := (recoveredStack10) memorySectionsFile.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack11 := (recoveredStack11) osDefaultSettings.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack11 := (recoveredStack11) memorySectionsFile.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupOS.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock788Value0 |
    recoveredBlock788Value0 := (self) allowMemorySectionsFile.
    recoveredBlock788Value0
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack16 := [:recoveredBlock802Arg1 | 
    | recoveredBlock802Value0 recoveredBlock802Value1 recoveredBlock802Value2 recoveredBlock802Value3 |
    recoveredBlock802Value0 := (self) osSettings.
    recoveredBlock802Value1 := recoveredBlock802Arg1.
    recoveredBlock802Value2 := (recoveredBlock802Value1) value.
    recoveredBlock802Value3 := (recoveredBlock802Value0) memorySectionsFile: (recoveredBlock802Value2).
    recoveredBlock802Value3
].
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack8 := [
    | recoveredBlock822Value0 |
    recoveredBlock822Value0 := (self) targetSpecificPathTokens.
    recoveredBlock822Value0
].
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack7) pathTokenField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack8 := Dictionary.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack10 := '*.xml'.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack11 := 'xml Files '.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredStack9 := recoveredStack8.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack10 := '*.*'.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack11 := 'All Files '.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack9) at: (recoveredStack10) put: (recoveredStack11).
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack7) filterDictionary: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack8 := '*.xml'.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            (recoveredStack7) searchMask: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack8 := 'Select Memory Sections Configuration File'.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            (recoveredStack7) dialogTitle: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack8 := (recoveredStack8) target.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack8 := (recoveredStack8) getTargetSpecificPath.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack8 := (recoveredStack8) asPathname.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            (recoveredStack7) searchPath: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack8 := [:recoveredBlock887Arg1 | 
    | recoveredBlock887Stack0 recoveredBlock887Stack1 recoveredBlock887Stack2 recoveredBlock887Stack3 recoveredBlock887Stack4 recoveredBlock887PC recoveredBlock887Step recoveredBlock887Done recoveredBlock887Result |
    recoveredBlock887Stack0 := self.
    recoveredBlock887PC := 894.
    recoveredBlock887Done := false.
    [recoveredBlock887Done not] whileTrue: [
        recoveredBlock887Step := recoveredBlock887PC.
        recoveredBlock887Step = 894 ifTrue: [
            recoveredBlock887Stack1 := nil.
            recoveredBlock887PC := 895.
        ].
        recoveredBlock887Step = 895 ifTrue: [
            recoveredBlock887Stack2 := recoveredBlock887Arg1.
            recoveredBlock887PC := 896.
        ].
        recoveredBlock887Step = 896 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) value.
            recoveredBlock887PC := 898.
        ].
        recoveredBlock887Step = 898 ifTrue: [
            recoveredBlock887Stack3 := self.
            recoveredBlock887PC := 899.
        ].
        recoveredBlock887Step = 899 ifTrue: [
            recoveredBlock887Stack3 := (recoveredBlock887Stack3) osSettings.
            recoveredBlock887PC := 901.
        ].
        recoveredBlock887Step = 901 ifTrue: [
            recoveredBlock887Stack3 := (recoveredBlock887Stack3) memorySectionsFile.
            recoveredBlock887PC := 905.
        ].
        recoveredBlock887Step = 905 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) = (recoveredBlock887Stack3).
            recoveredBlock887PC := 906.
        ].
        recoveredBlock887Step = 906 ifTrue: [
            (recoveredBlock887Stack2) ifTrue: [recoveredBlock887PC := 931] ifFalse: [recoveredBlock887PC := 910].
        ].
        recoveredBlock887Step = 910 ifTrue: [
            recoveredBlock887PC := 911.
        ].
        recoveredBlock887Step = 911 ifTrue: [
            recoveredBlock887Stack1 := recoveredBlock887Arg1.
            recoveredBlock887PC := 912.
        ].
        recoveredBlock887Step = 912 ifTrue: [
            recoveredBlock887Stack2 := self.
            recoveredBlock887PC := 913.
        ].
        recoveredBlock887Step = 913 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) osDefaultSettings.
            recoveredBlock887PC := 915.
        ].
        recoveredBlock887Step = 915 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) memorySectionsFile.
            recoveredBlock887PC := 919.
        ].
        recoveredBlock887Step = 919 ifTrue: [
            (recoveredBlock887Stack1) default: (recoveredBlock887Stack2).
            recoveredBlock887PC := 921.
        ].
        recoveredBlock887Step = 921 ifTrue: [
            recoveredBlock887Stack1 := recoveredBlock887Arg1.
            recoveredBlock887PC := 922.
        ].
        recoveredBlock887Step = 922 ifTrue: [
            recoveredBlock887Stack2 := self.
            recoveredBlock887PC := 923.
        ].
        recoveredBlock887Step = 923 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) osSettings.
            recoveredBlock887PC := 925.
        ].
        recoveredBlock887Step = 925 ifTrue: [
            recoveredBlock887Stack2 := (recoveredBlock887Stack2) memorySectionsFile.
            recoveredBlock887PC := 929.
        ].
        recoveredBlock887Step = 929 ifTrue: [
            recoveredBlock887Stack1 := (recoveredBlock887Stack1) value: (recoveredBlock887Stack2).
            recoveredBlock887PC := 931.
        ].
        recoveredBlock887Step = 931 ifTrue: [
            recoveredBlock887Result := recoveredBlock887Stack1.
            recoveredBlock887Done := true.
        ].
    ].
    recoveredBlock887Result
].
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack6 := (recoveredStack6) requiredFile: (recoveredStack7).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack4 := 'PROJECT'.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack2 := EtasXMLProjectOptionEntry.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlBuildCategory.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack4 := 'OSSettingsHyperlink'.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack5 := EtasButtonOption.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack6 := 'Edit Operating System Tool Settings'.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack7 := 'Go to the Tools Options dialog to edit operating system specific options'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack8 := 'edit settings for selected operating system'.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack11 := (recoveredStack11) optionGroupOS.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack13 := [
    | recoveredBlock986Value0 |
    recoveredBlock986Value0 := (self) allowConfigToolOptions.
    recoveredBlock986Value0
].
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack14 := 'PROJECT'.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack15 := nil.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack7 := [:recoveredBlock1005Arg1 | 
    | recoveredBlock1005Value0 |
    recoveredBlock1005Value0 := (self) editOperatingSystemOptions.
    recoveredBlock1005Value0
].
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            (recoveredStack6) action: (recoveredStack7).
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack5 := (recoveredStack5) hyperlink: (recoveredStack6).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlCategory: (recoveredStack3) attributeName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack3 := 'PROJECT'.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCategory: (recoveredStack3).
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2066d648; bytecode file offset 0xf6a0bc"
!ASDProjectOptions methodsFor: 'recovered'!
initializeBuildConfigOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Target to be used for Code Generation'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := 'Target'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := EtasEnumerationOption.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := 'Target'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := 'Target for Code Generation'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack10 := (recoveredStack10) target.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack10 := (recoveredStack10) targetLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack11 := (recoveredStack11) target.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack11 := (recoveredStack11) targetLabel.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack16 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 recoveredBlock66Value8 recoveredBlock66Value9 recoveredBlock66Value10 recoveredBlock66Value11 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) value.
    (self) setTarget: (recoveredBlock66Value1).
    recoveredBlock66Value2 := recoveredBlock66Arg1.
    recoveredBlock66Value3 := recoveredBlock66Arg1.
    recoveredBlock66Value4 := (recoveredBlock66Value3) value.
    (recoveredBlock66Value2) default: (recoveredBlock66Value4).
    recoveredBlock66Value5 := recoveredBlock66Arg1.
    recoveredBlock66Value6 := recoveredLocal1.
    recoveredBlock66Value7 := (recoveredBlock66Value6) , ('\').
    recoveredBlock66Value8 := (self) target.
    recoveredBlock66Value9 := (recoveredBlock66Value8) getDescription.
    recoveredBlock66Value10 := (recoveredBlock66Value7) , (recoveredBlock66Value9).
    recoveredBlock66Value11 := (recoveredBlock66Value5) description: (recoveredBlock66Value10).
    recoveredBlock66Value11
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack7 := (recoveredStack7) availableTargetLabels.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack6 := (recoveredStack6) stringCollection: (recoveredStack7).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := 'TargetSettingsHyperlink'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack6 := EtasButtonOption.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack7 := 'Edit Target Settings'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack8 := 'Go to Target Settings page to edit target specific options'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack9 := 'Edit specific settings for selected target'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack15 := 'PROJECT'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack8 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 recoveredBlock163Value1 |
    recoveredBlock163Value0 := (self) optionGroupBuild.
    recoveredBlock163Value1 := (self) editTargetSpecificOptionsFirstSelection: (recoveredBlock163Value0).
    recoveredBlock163Value1
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack7) action: (recoveredStack8).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack6 := (recoveredStack6) hyperlink: (recoveredStack7).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack5 := 'CodeGenerator'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack6 := EtasEnumerationOption.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack7 := 'Code Generator'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack8 := 'Code Generator to be used for Code Generation'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack9 := 'Code Generator for Code Generation'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack10 := (recoveredStack10) getCodeGenPathLabel.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack11 := (recoveredStack11) getCodeGenPathDefaultLabel.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack14 := [
    true
].
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack16 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Value0 recoveredBlock234Value1 recoveredBlock234Value2 recoveredBlock234Value3 |
    recoveredBlock234Value0 := recoveredBlock234Arg1.
    recoveredBlock234Value1 := (recoveredBlock234Value0) value.
    recoveredBlock234Value2 := [
    | recoveredBlock234Block245Value0 recoveredBlock234Block245Value1 recoveredBlock234Block245Value2 recoveredBlock234Block245Value3 |
    recoveredBlock234Block245Value0 := (self) generatorSettings.
    recoveredBlock234Block245Value1 := recoveredBlock234Arg1.
    recoveredBlock234Block245Value2 := (recoveredBlock234Block245Value1) value.
    recoveredBlock234Block245Value3 := (recoveredBlock234Block245Value0) setCodeGenPath: (recoveredBlock234Block245Value2).
    recoveredBlock234Block245Value3
].
    recoveredBlock234Value3 := (recoveredBlock234Value1) notNil: (recoveredBlock234Value2).
    recoveredBlock234Value3
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack8 := [:recoveredBlock269Arg1 | 
    | recoveredBlock269Value0 recoveredBlock269Value1 recoveredBlock269Value2 recoveredBlock269Value3 recoveredBlock269Value4 recoveredBlock269Value5 recoveredBlock269Value6 recoveredBlock269Value7 |
    recoveredBlock269Value0 := recoveredBlock269Arg1.
    recoveredBlock269Value1 := (self) availableCodeGenPathDefaultLabel.
    (recoveredBlock269Value0) default: (recoveredBlock269Value1).
    recoveredBlock269Value2 := recoveredBlock269Arg1.
    recoveredBlock269Value3 := (self) availableCodeGenPathLabels.
    (recoveredBlock269Value2) stringCollection: (recoveredBlock269Value3).
    recoveredBlock269Value4 := recoveredBlock269Arg1.
    (recoveredBlock269Value4) valueCollection: (nil).
    recoveredBlock269Value5 := recoveredBlock269Arg1.
    recoveredBlock269Value6 := (self) getCodeGenPathLabel.
    recoveredBlock269Value7 := (recoveredBlock269Value5) value: (recoveredBlock269Value6).
    recoveredBlock269Value7
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack7 := (recoveredStack7) availableCodeGenPathLabels.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack6 := (recoveredStack6) stringCollection: (recoveredStack7).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack5 := 'CodeGeneratorSettingsHyperlink'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack6 := EtasButtonOption.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack7 := 'Edit Code Generation Settings'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack8 := 'Go to Code Generation Settings page to edit target specific code generation options'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack9 := 'edit code generation settings for selected target'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock350Value0 |
    recoveredBlock350Value0 := (self) allowCodeGenerationSystemHyperlink.
    recoveredBlock350Value0
].
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack15 := 'PROJECT'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack8 := [:recoveredBlock369Arg1 | 
    | recoveredBlock369Value0 recoveredBlock369Value1 |
    recoveredBlock369Value0 := recoveredBlock369Arg1.
    recoveredBlock369Value1 := (self) editSpecificCodeGenerationOptions: (recoveredBlock369Value0).
    recoveredBlock369Value1
].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack7) action: (recoveredStack8).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack6 := (recoveredStack6) hyperlink: (recoveredStack7).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack5 := (recoveredStack5) compilerOptionName.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack6 := EtasEnumerationOption.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack7 := (recoveredStack7) compilerOptionName.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack8 := 'Compiler to be used for Code Generation'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack9 := 'Compiler for Code Generation'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack10 := (recoveredStack10) getCompilerToolId.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack11 := (recoveredStack11) getDefaultCompilerToolId.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock448Value0 |
    recoveredBlock448Value0 := (self) allowCompilerOption.
    recoveredBlock448Value0
].
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack16 := [:recoveredBlock462Arg1 | 
    | recoveredBlock462Value0 recoveredBlock462Value1 recoveredBlock462Value2 recoveredBlock462Value3 |
    recoveredBlock462Value0 := recoveredBlock462Arg1.
    recoveredBlock462Value1 := (recoveredBlock462Value0) value.
    recoveredBlock462Value2 := [
    | recoveredBlock462Block473Value0 recoveredBlock462Block473Value1 recoveredBlock462Block473Value2 |
    recoveredBlock462Block473Value0 := recoveredBlock462Arg1.
    recoveredBlock462Block473Value1 := (recoveredBlock462Block473Value0) value.
    recoveredBlock462Block473Value2 := (self) setCompilerWithId: (recoveredBlock462Block473Value1).
    recoveredBlock462Block473Value2
].
    recoveredBlock462Value3 := (recoveredBlock462Value1) notNil: (recoveredBlock462Value2).
    recoveredBlock462Value3
].
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack8 := [:recoveredBlock497Arg1 | 
    | recoveredBlock497Value0 recoveredBlock497Value1 recoveredBlock497Value2 recoveredBlock497Value3 recoveredBlock497Value4 recoveredBlock497Value5 recoveredBlock497Value6 recoveredBlock497Value7 recoveredBlock497Value8 |
    recoveredBlock497Value0 := recoveredBlock497Arg1.
    recoveredBlock497Value1 := (self) availableCompilerToolLabels.
    (recoveredBlock497Value0) stringCollection: (recoveredBlock497Value1).
    recoveredBlock497Value2 := recoveredBlock497Arg1.
    recoveredBlock497Value3 := (self) availableCompilerToolTypes.
    (recoveredBlock497Value2) valueCollection: (recoveredBlock497Value3).
    recoveredBlock497Value4 := recoveredBlock497Arg1.
    recoveredBlock497Value5 := (self) getDefaultCompilerToolId.
    (recoveredBlock497Value4) default: (recoveredBlock497Value5).
    recoveredBlock497Value6 := recoveredBlock497Arg1.
    recoveredBlock497Value7 := (self) getCompilerToolLabel.
    recoveredBlock497Value8 := (recoveredBlock497Value6) value: (recoveredBlock497Value7).
    recoveredBlock497Value8
].
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack8 := (recoveredStack8) availableCompilerToolLabels.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            (recoveredStack7) stringCollection: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack8 := (recoveredStack8) availableCompilerToolTypes.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack7) valueCollection: (recoveredStack8).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack7 := [:recoveredBlock557Arg1 | 
    | recoveredBlock557Local1 recoveredBlock557Local2 recoveredBlock557Stack0 recoveredBlock557Stack1 recoveredBlock557Stack2 recoveredBlock557Stack3 recoveredBlock557PC recoveredBlock557Step recoveredBlock557Done recoveredBlock557Result |
    recoveredBlock557Stack0 := self.
    recoveredBlock557PC := 564.
    recoveredBlock557Done := false.
    [recoveredBlock557Done not] whileTrue: [
        recoveredBlock557Step := recoveredBlock557PC.
        recoveredBlock557Step = 564 ifTrue: [
            recoveredBlock557Stack1 := recoveredBlock557Arg1.
            recoveredBlock557PC := 567.
        ].
        recoveredBlock557Step = 567 ifTrue: [
            recoveredBlock557Local2 := recoveredBlock557Stack1.
            recoveredBlock557PC := 570.
        ].
        recoveredBlock557Step = 570 ifTrue: [
            recoveredBlock557Stack0 := (recoveredBlock557Stack0) availableCompilerToolTypes.
            recoveredBlock557PC := 575.
        ].
        recoveredBlock557Step = 575 ifTrue: [
            recoveredBlock557Stack1 := recoveredBlock557Stack0.
            recoveredBlock557PC := 576.
        ].
        recoveredBlock557Step = 576 ifTrue: [
            recoveredBlock557Local1 := recoveredBlock557Stack1.
            recoveredBlock557PC := 579.
        ].
        recoveredBlock557Step = 579 ifTrue: [
            recoveredBlock557Stack1 := recoveredBlock557Arg1.
            recoveredBlock557PC := 582.
        ].
        recoveredBlock557Step = 582 ifTrue: [
            recoveredBlock557Stack0 := (recoveredBlock557Stack0) includes: (recoveredBlock557Stack1).
            recoveredBlock557PC := 587.
        ].
        recoveredBlock557Step = 587 ifTrue: [
            (recoveredBlock557Stack0) ifTrue: [recoveredBlock557PC := 626] ifFalse: [recoveredBlock557PC := 590].
        ].
        recoveredBlock557Step = 590 ifTrue: [
            recoveredBlock557Stack0 := recoveredBlock557Local1.
            recoveredBlock557PC := 593.
        ].
        recoveredBlock557Step = 593 ifTrue: [
            recoveredBlock557Stack1 := self.
            recoveredBlock557PC := 594.
        ].
        recoveredBlock557Step = 594 ifTrue: [
            recoveredBlock557Stack1 := (recoveredBlock557Stack1) availableCompilerToolLabels.
            recoveredBlock557PC := 599.
        ].
        recoveredBlock557Step = 599 ifTrue: [
            recoveredBlock557Stack2 := recoveredBlock557Arg1.
            recoveredBlock557PC := 602.
        ].
        recoveredBlock557Step = 602 ifTrue: [
            recoveredBlock557Stack1 := (recoveredBlock557Stack1) indexOf: (recoveredBlock557Stack2).
            recoveredBlock557PC := 607.
        ].
        recoveredBlock557Step = 607 ifTrue: [
            recoveredBlock557Stack2 := [
    | recoveredBlock557Block607Value0 |
    recoveredBlock557Block607Value0 := recoveredBlock557Arg1.
    recoveredBlock557Block607Value0
].
            recoveredBlock557PC := 618.
        ].
        recoveredBlock557Step = 618 ifTrue: [
            recoveredBlock557Stack0 := (recoveredBlock557Stack0) at: (recoveredBlock557Stack1) ifAbsent: (recoveredBlock557Stack2).
            recoveredBlock557PC := 623.
        ].
        recoveredBlock557Step = 623 ifTrue: [
            recoveredBlock557Local2 := recoveredBlock557Stack0.
            recoveredBlock557PC := 626.
        ].
        recoveredBlock557Step = 626 ifTrue: [
            recoveredBlock557Stack0 := recoveredBlock557Local2.
            recoveredBlock557PC := 629.
        ].
        recoveredBlock557Step = 629 ifTrue: [
            recoveredBlock557Result := recoveredBlock557Stack0.
            recoveredBlock557Done := true.
        ].
    ].
    recoveredBlock557Result
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack6 := (recoveredStack6) xmlConversionBlock: (recoveredStack7).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack5 := 'CompilerSettingsHyperlink'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack6 := EtasButtonOption.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack7 := 'Edit Compiler Settings'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack8 := 'Go to the Tools Options dialog to edit compiler specific options'.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack9 := 'edit settings for selected compiler'.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock682Value0 |
    recoveredBlock682Value0 := (self) allowCompilerHyperlink.
    recoveredBlock682Value0
].
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack15 := 'PROJECT'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack8 := [:recoveredBlock701Arg1 | 
    | recoveredBlock701Value0 |
    recoveredBlock701Value0 := (self) editCompilerOptions.
    recoveredBlock701Value0
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack7) action: (recoveredStack8).
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack6 := (recoveredStack6) hyperlink: (recoveredStack7).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack5 := (recoveredStack5) operatingSystemOptionAttributeName.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack6 := EtasEnumerationOption.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack7 := (recoveredStack7) operatingSystemOptionName.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack8 := 'Operating System to be used for Code Generation'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack9 := 'Operating System for Code Generation'.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack10 := (recoveredStack10) getOperatingSystemId.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack11 := (recoveredStack11) getDefaultOSToolType.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock780Value0 |
    recoveredBlock780Value0 := (self) allowOperatingSystemOption.
    recoveredBlock780Value0
].
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack15 := 'CODE'.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack16 := [:recoveredBlock794Arg1 | 
    | recoveredBlock794Value0 recoveredBlock794Value1 recoveredBlock794Value2 recoveredBlock794Value3 |
    recoveredBlock794Value0 := recoveredBlock794Arg1.
    recoveredBlock794Value1 := (recoveredBlock794Value0) value.
    recoveredBlock794Value2 := [
    | recoveredBlock794Block805Value0 recoveredBlock794Block805Value1 recoveredBlock794Block805Value2 |
    recoveredBlock794Block805Value0 := recoveredBlock794Arg1.
    recoveredBlock794Block805Value1 := (recoveredBlock794Block805Value0) value.
    recoveredBlock794Block805Value2 := (self) setOSToolWithId: (recoveredBlock794Block805Value1).
    recoveredBlock794Block805Value2
].
    recoveredBlock794Value3 := (recoveredBlock794Value1) notNil: (recoveredBlock794Value2).
    recoveredBlock794Value3
].
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack8 := [:recoveredBlock829Arg1 | 
    | recoveredBlock829Value0 recoveredBlock829Value1 recoveredBlock829Value2 recoveredBlock829Value3 recoveredBlock829Value4 recoveredBlock829Value5 recoveredBlock829Value6 recoveredBlock829Value7 recoveredBlock829Value8 |
    recoveredBlock829Value0 := recoveredBlock829Arg1.
    recoveredBlock829Value1 := (self) availableOSToolLabels.
    (recoveredBlock829Value0) stringCollection: (recoveredBlock829Value1).
    recoveredBlock829Value2 := recoveredBlock829Arg1.
    recoveredBlock829Value3 := (self) availableOSToolTypes.
    (recoveredBlock829Value2) valueCollection: (recoveredBlock829Value3).
    recoveredBlock829Value4 := recoveredBlock829Arg1.
    recoveredBlock829Value5 := (self) getDefaultOSToolType.
    (recoveredBlock829Value4) default: (recoveredBlock829Value5).
    recoveredBlock829Value6 := recoveredBlock829Arg1.
    recoveredBlock829Value7 := (self) getOperatingSystemLabel.
    recoveredBlock829Value8 := (recoveredBlock829Value6) value: (recoveredBlock829Value7).
    recoveredBlock829Value8
].
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack7) updateField: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack8 := (recoveredStack8) availableOSToolLabels.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            (recoveredStack7) stringCollection: (recoveredStack8).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack8 := (recoveredStack8) availableOSToolTypes.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            (recoveredStack7) valueCollection: (recoveredStack8).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack7 := [:recoveredBlock889Arg1 | 
    | recoveredBlock889Local1 recoveredBlock889Local2 recoveredBlock889Local3 recoveredBlock889Stack0 recoveredBlock889Stack1 recoveredBlock889Stack2 recoveredBlock889PC recoveredBlock889Step recoveredBlock889Done recoveredBlock889Result |
    recoveredBlock889Stack0 := self.
    recoveredBlock889PC := 896.
    recoveredBlock889Done := false.
    [recoveredBlock889Done not] whileTrue: [
        recoveredBlock889Step := recoveredBlock889PC.
        recoveredBlock889Step = 896 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Arg1.
            recoveredBlock889PC := 897.
        ].
        recoveredBlock889Step = 897 ifTrue: [
            recoveredBlock889Local3 := recoveredBlock889Stack1.
            recoveredBlock889PC := 898.
        ].
        recoveredBlock889Step = 898 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) availableOSToolTypes.
            recoveredBlock889PC := 903.
        ].
        recoveredBlock889Step = 903 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Stack0.
            recoveredBlock889PC := 904.
        ].
        recoveredBlock889Step = 904 ifTrue: [
            recoveredBlock889Local2 := recoveredBlock889Stack1.
            recoveredBlock889PC := 905.
        ].
        recoveredBlock889Step = 905 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Arg1.
            recoveredBlock889PC := 906.
        ].
        recoveredBlock889Step = 906 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) includes: (recoveredBlock889Stack1).
            recoveredBlock889PC := 911.
        ].
        recoveredBlock889Step = 911 ifTrue: [
            (recoveredBlock889Stack0) ifTrue: [recoveredBlock889PC := 962] ifFalse: [recoveredBlock889PC := 914].
        ].
        recoveredBlock889Step = 914 ifTrue: [
            recoveredBlock889Stack0 := self.
            recoveredBlock889PC := 915.
        ].
        recoveredBlock889Step = 915 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) availableOSToolLabels.
            recoveredBlock889PC := 919.
        ].
        recoveredBlock889Step = 919 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Arg1.
            recoveredBlock889PC := 920.
        ].
        recoveredBlock889Step = 920 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) indexOf: (recoveredBlock889Stack1).
            recoveredBlock889PC := 925.
        ].
        recoveredBlock889Step = 925 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Stack0.
            recoveredBlock889PC := 926.
        ].
        recoveredBlock889Step = 926 ifTrue: [
            recoveredBlock889Local1 := recoveredBlock889Stack1.
            recoveredBlock889PC := 927.
        ].
        recoveredBlock889Step = 927 ifTrue: [
            recoveredBlock889Stack1 := 0.
            recoveredBlock889PC := 929.
        ].
        recoveredBlock889Step = 929 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) ~= (recoveredBlock889Stack1).
            recoveredBlock889PC := 930.
        ].
        recoveredBlock889Step = 930 ifTrue: [
            (recoveredBlock889Stack0) ifTrue: [recoveredBlock889PC := 934] ifFalse: [recoveredBlock889PC := 958].
        ].
        recoveredBlock889Step = 934 ifTrue: [
            recoveredBlock889Stack0 := recoveredBlock889Local1.
            recoveredBlock889PC := 935.
        ].
        recoveredBlock889Step = 935 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Local2.
            recoveredBlock889PC := 936.
        ].
        recoveredBlock889Step = 936 ifTrue: [
            recoveredBlock889Stack1 := (recoveredBlock889Stack1) size.
            recoveredBlock889PC := 941.
        ].
        recoveredBlock889Step = 941 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) <= (recoveredBlock889Stack1).
            recoveredBlock889PC := 942.
        ].
        recoveredBlock889Step = 942 ifTrue: [
            (recoveredBlock889Stack0) ifTrue: [recoveredBlock889PC := 946] ifFalse: [recoveredBlock889PC := 958].
        ].
        recoveredBlock889Step = 946 ifTrue: [
            recoveredBlock889Stack0 := recoveredBlock889Local2.
            recoveredBlock889PC := 947.
        ].
        recoveredBlock889Step = 947 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Local1.
            recoveredBlock889PC := 948.
        ].
        recoveredBlock889Step = 948 ifTrue: [
            recoveredBlock889Stack0 := (recoveredBlock889Stack0) at: (recoveredBlock889Stack1).
            recoveredBlock889PC := 953.
        ].
        recoveredBlock889Step = 953 ifTrue: [
            recoveredBlock889Stack1 := recoveredBlock889Stack0.
            recoveredBlock889PC := 954.
        ].
        recoveredBlock889Step = 954 ifTrue: [
            recoveredBlock889Local3 := recoveredBlock889Stack1.
            recoveredBlock889PC := 955.
        ].
        recoveredBlock889Step = 955 ifTrue: [
            recoveredBlock889PC := 959.
        ].
        recoveredBlock889Step = 958 ifTrue: [
            recoveredBlock889Stack0 := recoveredBlock889Arg1.
            recoveredBlock889PC := 959.
        ].
        recoveredBlock889Step = 959 ifTrue: [
            recoveredBlock889Local3 := recoveredBlock889Stack0.
            recoveredBlock889PC := 960.
        ].
        recoveredBlock889Step = 960 ifTrue: [
            recoveredBlock889Stack0 := nil.
            recoveredBlock889PC := 961.
        ].
        recoveredBlock889Step = 961 ifTrue: [
            recoveredBlock889Local1 := recoveredBlock889Stack0.
            recoveredBlock889PC := 962.
        ].
        recoveredBlock889Step = 962 ifTrue: [
            recoveredBlock889Stack0 := recoveredBlock889Local3.
            recoveredBlock889PC := 963.
        ].
        recoveredBlock889Step = 963 ifTrue: [
            recoveredBlock889Result := recoveredBlock889Stack0.
            recoveredBlock889Done := true.
        ].
    ].
    recoveredBlock889Result
].
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack6 := (recoveredStack6) xmlConversionBlock: (recoveredStack7).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack3 := EtasXMLProjectOptionEntry.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack4 := (recoveredStack4) xmlBuildCategory.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack5 := 'OSSettingsHyperlink'.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack6 := EtasButtonOption.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack7 := 'Edit '.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack8 := (recoveredStack8) optionGroupOS.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack9 := '\'.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack8 := (recoveredStack8) asArrayOfSubstringsSeparatedBy: (recoveredStack9).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack8 := (recoveredStack8) last.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack8 := 'Go to the OS Settings page to edit project specific operating system options'.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack9 := 'edit project specific settings for selected operating system'.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack11 := nil.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack12 := self.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack12 := (recoveredStack12) optionGroupBuild.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock1032Value0 |
    recoveredBlock1032Value0 := (self) allowOperatingSystemHyperlink.
    recoveredBlock1032Value0
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack15 := 'PROJECT'.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack16 := nil.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack6 := (recoveredStack6) label: (recoveredStack7) description: (recoveredStack8) toolTip: (recoveredStack9) value: (recoveredStack10) default: (recoveredStack11) group: (recoveredStack12) visible: (recoveredStack13) sensitive: (recoveredStack14) type: (recoveredStack15) userField: (recoveredStack16).
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack8 := [:recoveredBlock1051Arg1 | 
    | recoveredBlock1051Value0 recoveredBlock1051Value1 |
    recoveredBlock1051Value0 := recoveredBlock1051Arg1.
    recoveredBlock1051Value1 := (self) editProjectSpecificOSOptions: (recoveredBlock1051Value0).
    recoveredBlock1051Value1
].
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            (recoveredStack7) action: (recoveredStack8).
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack6 := (recoveredStack6) hyperlink: (recoveredStack7).
            recoveredPC := 1069.
        ].
        recoveredStep = 1069 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack3 := (recoveredStack3) xmlCategory: (recoveredStack4) attributeName: (recoveredStack5) optionClass: (recoveredStack6) optionFile: (recoveredStack7).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack4 := 'FILE'.
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionCategory: (recoveredStack4).
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionGroupBuild.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack3 := (recoveredStack3) createSeparatorOptionForGroup: (recoveredStack4).
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeableOptionsMake.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack1 := [:recoveredBlock1099Arg1 | 
    | recoveredBlock1099Value0 recoveredBlock1099Value1 recoveredBlock1099Value2 recoveredBlock1099Value3 |
    recoveredBlock1099Value0 := recoveredLocal2.
    recoveredBlock1099Value1 := recoveredBlock1099Arg1.
    recoveredBlock1099Value2 := (self) createOptionForKey: (recoveredBlock1099Value1).
    recoveredBlock1099Value3 := (recoveredBlock1099Value0) add: (recoveredBlock1099Value2).
    recoveredBlock1099Value3
].
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

