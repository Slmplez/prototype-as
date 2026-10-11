"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004b08; bytecode file offset 0x90206c"
!SGBuildCache methodsFor: 'recovered'!
writeGeneralGenerateOptionsOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20008228; bytecode file offset 0x908be4"
!SGBuildCache methodsFor: 'recovered'!
codeStorageSettings
    | recoveredValue0 |
    recoveredValue0 := (self) generationOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008edc; bytecode file offset 0x908be4"
!SGBuildCache methodsFor: 'recovered'!
codeGenerationOptions
    | recoveredValue0 |
    recoveredValue0 := (self) generationOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a634; bytecode file offset 0x908be4"
!SGBuildCache methodsFor: 'recovered'!
makeSettings
    | recoveredValue0 |
    recoveredValue0 := (self) generationOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c0c8; bytecode file offset 0x908be4"
!SGBuildCache methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 |
    recoveredValue0 := (self) generationOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024f50; bytecode file offset 0x92209c"
!SGBuildCache methodsFor: 'recovered'!
arArrayBaseTypePassingDefine
    ^'RTE_PTR2ARRAYBASETYPE_PASSING'
! !

"ASDBase.ic method 0x20027168; bytecode file offset 0x923a44"
!SGBuildCache methodsFor: 'recovered'!
projectOptionSource
    | recoveredValue0 |
    recoveredValue0 := (self) createOptionSource: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200273ec; bytecode file offset 0x923d40"
!SGBuildCache methodsFor: 'recovered'!
stationOptionSource
    | recoveredValue0 |
    recoveredValue0 := (self) createOptionSource: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027cd4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isOSCategoryAUTOSAR
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOSCategoryAUTOSAR.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028744; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
swComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) swComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028b44; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isIntegerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isIntegerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200292a4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isPhysicalControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isPhysicalControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029ed4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isIntegerExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isIntegerExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002be54; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
platform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) currentPlatform.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d3e4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageIncludeRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageIncludeRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d434; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isQuantFloatExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isQuantFloatExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d7c4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
ehooksSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) ehooksSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dc64; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
arXmlConfigurationCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarSettings.
    recoveredValue1 := (recoveredValue0) arXmlConfigurationCRCValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e104; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
useLongFileNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isUseLongNamesValid.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e124; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
cCodeSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) cCodeSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e294; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageRootPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageRootPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ef84; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
requiresEHSingleInstanceClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksSettings.
    recoveredValue1 := (recoveredValue0) requiresSingleInstanceClasses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f984; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fba4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageLibraryRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageLibraryRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fe14; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
scoopixSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) scoopixSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fee4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
autosarSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) autosarSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030084; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageObjectCodeRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageObjectCodeRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200307b4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isExperimentMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isExperimentalTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200310d4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageAdditionalFilesRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageAdditionalFilesRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031b24; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
supportsRTA
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsRTA.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200328b4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isExperimentalMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isExperimentalTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032b84; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
currentPlatform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) currentPlatform.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032bd4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
engineeringSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) engineeringSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033674; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
isIntegerControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := (recoveredValue0) isIntegerControllerVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033704; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
generationSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) genContext.
    recoveredValue1 := (recoveredValue0) generationSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033754; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageVariantRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageVariantRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036b54; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
templateCodeStorageSourceCodeRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeStorageSettings.
    recoveredValue1 := (recoveredValue0) templateCodeStorageSourceCodeRelPath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200370f4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
memClassDeclarationsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) memClassDeclarationsCRC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037134; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
targetSpecificOptionsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) targetSpecificOptionsCRC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200372e4; bytecode file offset 0x934580"
!SGBuildCache methodsFor: 'recovered'!
supportsARProcessRteInGenerate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarSettings.
    recoveredValue1 := (recoveredValue0) supportsARProcessRteInGenerate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ca18; bytecode file offset 0x93bf94"
!SGBuildCache methodsFor: 'recovered'!
optimizeFixedCharTableKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) optimizeFixedCharTableKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e618; bytecode file offset 0x93bf94"
!SGBuildCache methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a00c; bytecode file offset 0x947128"
!SGBuildCache methodsFor: 'recovered'!
codeVariantRelPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) templateCodeStorageVariantRelPath.
    recoveredValue1 := (self) resolveCodeVariantPath: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a6bc; bytecode file offset 0x947128"
!SGBuildCache methodsFor: 'recovered'!
codeStorageRootPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) templateCodeStorageRootPath.
    recoveredValue1 := (self) resolveCodeVariantPath: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cce4; bytecode file offset 0x959680"
!SGBuildCache methodsFor: 'recovered'!
isFileBasedCodeStorage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDGeneralOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionExternalCodeStorage.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005df2c; bytecode file offset 0x95a7e0"
!SGBuildCache methodsFor: 'recovered'!
hasGenContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := genContext.
    recoveredValue1 := (recoveredValue0) isNil.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060498; bytecode file offset 0x95cf04"
!SGBuildCache methodsFor: 'recovered'!
projectOptionTargetSettingsSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectOptionSource.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setTargetSpecificOptionSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200605b8; bytecode file offset 0x95cf04"
!SGBuildCache methodsFor: 'recovered'!
projectOptionARXmlConfigSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectOptionSource.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setARXmlConfigOptionSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200676b4; bytecode file offset 0x9646f8"
!SGBuildCache methodsFor: 'recovered'!
variantKey
    | recoveredValue0 |
    recoveredValue0 := variantKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068364; bytecode file offset 0x965b90"
!SGBuildCache methodsFor: 'recovered'!
targetOptions
    | recoveredValue0 |
    recoveredValue0 := targetOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069698; bytecode file offset 0x966bdc"
!SGBuildCache methodsFor: 'recovered'!
compileOptionsCRC
    | recoveredValue0 |
    recoveredValue0 := compileOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a724; bytecode file offset 0x967a18"
!SGBuildCache methodsFor: 'recovered'!
generationOptionsCRC
    | recoveredValue0 |
    recoveredValue0 := generationOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b6a8; bytecode file offset 0x96873c"
!SGBuildCache methodsFor: 'recovered'!
linkingOptionsCRC
    | recoveredValue0 |
    recoveredValue0 := linkingOptionsCRC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc60; bytecode file offset 0x969c04"
!SGBuildCache methodsFor: 'recovered'!
customBuildOptions
    | recoveredValue0 |
    recoveredValue0 := customBuildOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200898b4; bytecode file offset 0x986180"
!SGBuildCache methodsFor: 'recovered'!
resetClassInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    mdlClassInterfaces := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20089900; bytecode file offset 0x9861bc"
!SGBuildCache methodsFor: 'recovered'!
updateCustomBuildOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    customBuildOptions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008f8ec; bytecode file offset 0x98c228"
!SGBuildCache methodsFor: 'recovered'!
codegenIniCRC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := (self) target.
    recoveredValue2 := (recoveredValue1) codegenIniFile.
    recoveredValue3 := (recoveredValue0) calculateChecksumForFilename: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009b374; bytecode file offset 0x997c40"
!SGBuildCache methodsFor: 'recovered'!
generalGenerateOptionsTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e1b4; bytecode file offset 0x99aa68"
!SGBuildCache methodsFor: 'recovered'!
resetCodeGenIniOptions
    codeGenIniOptions := nil.
    genContext := nil.
    ^self
! !

"ASDBase.ic method 0x2009eea8; bytecode file offset 0x99b784"
!SGBuildCache methodsFor: 'recovered'!
codeStorageVariantPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) templateCodeStorageRootPath.
    recoveredValue1 := (self) codeVariantRelPath.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) resolveCodeVariantPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a09e0; bytecode file offset 0x99d3ac"
!SGBuildCache methodsFor: 'recovered'!
updateEngineeringSettings
    (self) updateEngineeringNameOptions.
    (self) updateEngineeringFilenameOptions.
    ^self
! !

"ASDBase.ic method 0x200a14a0; bytecode file offset 0x99dfb8"
!SGBuildCache methodsFor: 'recovered'!
checkGeneralRestrictions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (self) createGeneralTextFileSource.
    (recoveredValue0) checkGeneralRestrictions: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aaf10; bytecode file offset 0x9a7960"
!SGBuildCache methodsFor: 'recovered'!
customBuildOptionGenerateScoopIx: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) customBuildOptions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('generateScoopIx') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac9e8; bytecode file offset 0x9a92a0"
!SGBuildCache methodsFor: 'recovered'!
storeMdlClassInterface: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := mdlClassInterfaces.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ad588; bytecode file offset 0x9a9f0c"
!SGBuildCache methodsFor: 'recovered'!
invalidTemplate: recoveredArg1 targetSpecificOption: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) invalidTemplate: (recoveredValue0) targetSpecificOption: (recoveredValue1) source: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ca9c8; bytecode file offset 0x9c7288"
!SGBuildCache methodsFor: 'recovered'!
createCCodeSettings
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgCCodeSettings.
    recoveredValue1 := (self) buildEnvironmentInfo.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d670c; bytecode file offset 0x9d3134"
!SGBuildCache methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetClassInterfaces.
    ^self
! !

"ASDBase.ic method 0x200e2ab4; bytecode file offset 0x9df430"
!SGBuildCache methodsFor: 'recovered'!
needsIntegerOptions
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
            recoveredStack2 := (recoveredStack2) isIntegerExperimentVariant.
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
            recoveredStack1 := (recoveredStack1) isIntegerControllerVariant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200edaac; bytecode file offset 0x9ea394"
!SGBuildCache methodsFor: 'recovered'!
errorNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f9568; bytecode file offset 0x9f5e24"
!SGBuildCache methodsFor: 'recovered'!
updateCompileLinkOptionsCache
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetOptions.
    recoveredValue1 := (recoveredValue0) getCompilerToolType.
    compileOptionsCRC := recoveredValue1.
    recoveredValue2 := (self) targetOptions.
    recoveredValue3 := (recoveredValue2) getCompilerToolType.
    linkingOptionsCRC := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201163ec; bytecode file offset 0xa12ca4"
!SGBuildCache methodsFor: 'recovered'!
genContext
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := genContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGenerationContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            genContext := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := genContext.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a2ac; bytecode file offset 0xa16bd0"
!SGBuildCache methodsFor: 'recovered'!
customBuildOptionGenerateScoopIx
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customBuildOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'generateScoopIx'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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

"ASDBase.ic method 0x2011b0a4; bytecode file offset 0xa17968"
!SGBuildCache methodsFor: 'recovered'!
batchBuildWarning
    | recoveredValue0 |
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) warningNo: (30) args: (#()) category: ('Make') source: (nil).
    ^self
! !

"ASDBase.ic method 0x20123270; bytecode file offset 0xa1fb38"
!SGBuildCache methodsFor: 'recovered'!
makeWarningNo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue3) category: ('Make') source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201246ec; bytecode file offset 0xa20fd0"
!SGBuildCache methodsFor: 'recovered'!
createEngineeringSettings
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGCgEngineeringSettings.
    recoveredValue1 := (self) buildEnvironmentInfo.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) readMacroIniFile.
    (recoveredValue3) codeGenIniOptions: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20129ebc; bytecode file offset 0xa2677c"
!SGBuildCache methodsFor: 'recovered'!
updateClassInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mdlClassInterfaces.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c96d8Arg1 | 
    | block280c96d8Value0 block280c96d8Value1 |
    block280c96d8Value0 := block280c96d8Arg1.
    block280c96d8Value1 := (block280c96d8Value0) resetInternalCache.
    block280c96d8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133d08; bytecode file offset 0xa305e4"
!SGBuildCache methodsFor: 'recovered'!
getStringCodegenIniMacro: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readMacroIniFile.
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

"ASDBase.ic method 0x20141688; bytecode file offset 0xa3df70"
!SGBuildCache methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) target.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2014fc4c; bytecode file offset 0xa4c510"
!SGBuildCache methodsFor: 'recovered'!
requiresAUTOSARPtr2ArrayBaseTypePassingMacro
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
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
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsPtr2ArrayBaseTypePassingMacro.
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

"ASDBase.ic method 0x2014ff98; bytecode file offset 0xa4c858"
!SGBuildCache methodsFor: 'recovered'!
requiresExternalOSCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsRTA.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) requiresOILTemplateGeneration.
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

"ASDBase.ic method 0x201526ac; bytecode file offset 0xa4ef6c"
!SGBuildCache methodsFor: 'recovered'!
ehooksConfigurationSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksMappingSource: ('').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    ^recoveredBlock7Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20152774; bytecode file offset 0xa4f098"
!SGBuildCache methodsFor: 'recovered'!
isPhysicalVariant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) variantKey.
    recoveredValue3 := (recoveredValue2) isPhysicalVariant.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015279c; bytecode file offset 0xa4f098"
!SGBuildCache methodsFor: 'recovered'!
isAnyPhysicalVariant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) variantKey.
    recoveredValue3 := (recoveredValue2) isAnyPhysicalVariant.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201527d8; bytecode file offset 0xa4f098"
!SGBuildCache methodsFor: 'recovered'!
isPhysicalExperimentVariant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) variantKey.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) variantKey.
    recoveredValue3 := (recoveredValue2) isPhysicalExperimentVariant.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015ecc0; bytecode file offset 0xa5b580"
!SGBuildCache methodsFor: 'recovered'!
isContImplOverride
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
            recoveredStack2 := (recoveredStack2) isAnyPhysicalVariant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isControllerVariant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015f738; bytecode file offset 0xa5c004"
!SGBuildCache methodsFor: 'recovered'!
updateCCodeSettings
    | recoveredValue0 recoveredValue1 |
    (self) updateCCodeNameOptions.
    (self) updateCCodeFilenameOptions.
    (self) updateCCodeTypeOptions.
    recoveredValue0 := (self) cCodeSettings.
    recoveredValue1 := (self) projectOptionTargetSettingsSource.
    (recoveredValue0) targetSpecificOptionSource: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20163834; bytecode file offset 0xa60128"
!SGBuildCache methodsFor: 'recovered'!
arExternalMappingCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) swComponent.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) allExternallyMappedVariablesDictionary.
    recoveredBlock5Value2 := (self) arMappingCRC: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

"ASDBase.ic method 0x2016384c; bytecode file offset 0xa60128"
!SGBuildCache methodsFor: 'recovered'!
arInternalMappingCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) swComponent.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) allInternallyMappedVariablesDictionary.
    recoveredBlock5Value2 := (self) arMappingCRC: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

"ASDBase.ic method 0x20163864; bytecode file offset 0xa60128"
!SGBuildCache methodsFor: 'recovered'!
arParameterMappingCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) swComponent.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) allMappedParameterDictionary.
    recoveredBlock5Value2 := (self) arMappingCRC: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

"ASDBase.ic method 0x2016d2cc; bytecode file offset 0xa69b98"
!SGBuildCache methodsFor: 'recovered'!
invalidTemplate: recoveredArg1 key: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := (recoveredValue1) makeConfig.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) , (' in codegen.ini').
    recoveredValue6 := (recoveredValue2) makeErrNo: (90) with: (recoveredValue3) with: (recoveredValue5) source: (nil).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20178e78; bytecode file offset 0xa75748"
!SGBuildCache methodsFor: 'recovered'!
invalidTemplate: recoveredArg1 codeGenOption: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := (recoveredValue1) makeConfig.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue5) , (' (defined in codegen.ini)').
    recoveredValue7 := (recoveredValue2) makeErrNo: (90) with: (recoveredValue3) with: (recoveredValue6) source: (nil).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20179a98; bytecode file offset 0xa76368"
!SGBuildCache methodsFor: 'recovered'!
invalidTemplate: recoveredArg1 targetSpecificOption: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := (recoveredValue1) makeConfig.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue5) , (' (defined in targetOptions.aod.xml)').
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue2) makeErrNo: (90) with: (recoveredValue3) with: (recoveredValue6) source: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017e43c; bytecode file offset 0xa7ad28"
!SGBuildCache methodsFor: 'recovered'!
updateSettings
    (self) updateEngineeringSettings.
    (self) updateGenerationSettings.
    (self) updateCCodeSettings.
    (self) updateEHooksSettings.
    (self) updateScoopixSettings.
    (self) updateAutosarSettings.
    ^self
! !

"ASDBase.ic method 0x201836e0; bytecode file offset 0xa7ffa4"
!SGBuildCache methodsFor: 'recovered'!
ehooksOpenSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksMappingSource: ('').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    (recoveredBlock7Value1) setEhooksButton.
    ^recoveredBlock7Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201860d8; bytecode file offset 0xa829a4"
!SGBuildCache methodsFor: 'recovered'!
checkControllerVariantIfFail: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptionsCRC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenPathName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018efd0; bytecode file offset 0xa8b898"
!SGBuildCache methodsFor: 'recovered'!
requiresImplementationSet
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
            recoveredStack2 := (recoveredStack2) isPhysicalVariant.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) platform.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPCTarget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20198748; bytecode file offset 0xa95048"
!SGBuildCache methodsFor: 'recovered'!
makeWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 source: recoveredArg6
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

"ASDBase.ic method 0x201a5d5c; bytecode file offset 0xaa2628"
!SGBuildCache methodsFor: 'recovered'!
writeGeneralCompileOptionsOn: recoveredArg1
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
            (recoveredStack0) writeGeneralGenerateOptionsOn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'EHOOKS_TOOL_OPT'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehooksSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) externalToolBuildCommands.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) varNamed: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201acd38; bytecode file offset 0xaa95fc"
!SGBuildCache methodsFor: 'recovered'!
updateTemplate: recoveredArg1 key: recoveredArg2 generalArguments: recoveredArg3
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
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) allowUppercase: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Possible mismatch of % character'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) invalidTemplate: (recoveredStack2) key: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b54e4; bytecode file offset 0xab1dac"
!SGBuildCache methodsFor: 'recovered'!
targetSpecificOptionSourceForOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := (self) projectOptionTargetSettingsSource.
    recoveredBlock7Value1 := (recoveredBlock7Value0) copy.
    recoveredBlock7Value2 := recoveredBlock7Value1.
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) group.
    (recoveredBlock7Value2) optionGroup: (recoveredBlock7Value4).
    ^recoveredBlock7Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201b788c; bytecode file offset 0xab415c"
!SGBuildCache methodsFor: 'recovered'!
codeRelevantStationOptionsDocumentation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ASDDataTypeNameMappingOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCustomizedDataTypes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280d4418Arg1 | 
    | block280d4418Value0 block280d4418Value1 |
    block280d4418Value0 := block280d4418Arg1.
    block280d4418Value1 := (block280d4418Value0) isNil.
    block280d4418Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b796c; bytecode file offset 0xab4238"
!SGBuildCache methodsFor: 'recovered'!
createAutosarSettings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildEnvironmentInfo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) isControllerVariant.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) isOSCategoryAUTOSAR.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) mustPerformAutosarGeneration: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cc65c; bytecode file offset 0xac8f28"
!SGBuildCache methodsFor: 'recovered'!
writeGeneralCompilePathsOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) writeGeneralGeneratePathsOn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'EHOOKS_TOOL_DRIVER'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehooksSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolChainDriver.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) toolNamed: (recoveredStack1) valueAsUnixStyle: (recoveredStack2) escapeBlanks: (recoveredStack3).
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

"ASDBase.ic method 0x201d26ac; bytecode file offset 0xacef7c"
!SGBuildCache methodsFor: 'recovered'!
checkToolEHooksTemplateExistency: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'FileMissing'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'File must be available.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d3b5c; bytecode file offset 0xad0428"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlTemplateOption: recoveredArg1 generalArguments: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) allowUppercase: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Possible mismatch of % character'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) invalidTemplate: (recoveredStack2) option: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d70cc; bytecode file offset 0xad399c"
!SGBuildCache methodsFor: 'recovered'!
requiresOILTemplateGeneration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsRTA.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) osTool.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'ERCOSEK/ERCOSEK-43'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsRTA.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9a58; bytecode file offset 0xaf6334"
!SGBuildCache methodsFor: 'recovered'!
resolveFileName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) target.
    recoveredValue5 := (recoveredValue4) getTargetSpecificPath.
    recoveredValue6 := (recoveredValue5) asPathname.
    (recoveredValue3) at: ('TARGET') put: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) bindWithGeneralArguments: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) asFilename.
    recoveredValue11 := (recoveredValue10) removeAllDoubleBackslashes.
    ^recoveredValue11
! !

"ASDBase.ic method 0x201faa68; bytecode file offset 0xaf7328"
!SGBuildCache methodsFor: 'recovered'!
projectOptionSource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) projectOptionSource.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredLocal1.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) optionGroup: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (recoveredValue0) notNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202047f8; bytecode file offset 0xb010c0"
!SGBuildCache methodsFor: 'recovered'!
supportsExternalOSGeneration: recoveredArg1 isInGeneratePhase: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isOSCategoryLegacy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARProcessRteInGenerate.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20209a3c; bytecode file offset 0xb0630c"
!SGBuildCache methodsFor: 'recovered'!
checkARXmlTemplateOption: recoveredArg1 generalArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) optionClass.
    recoveredValue6 := (recoveredValue5) value.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) bindWithGeneralArguments: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := (recoveredValue9) bindWithGeneralArguments: (recoveredValue10) ifAbsentContinue: (true) unknownArguments: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2020b414; bytecode file offset 0xb07ce0"
!SGBuildCache methodsFor: 'recovered'!
genOSConfiguration
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsOSConfiguration.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeSettings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) genOSConfiguration.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20250060; bytecode file offset 0xb4c93c"
!SGBuildCache methodsFor: 'recovered'!
checkToolEHooksDriverExistency: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolChainDriver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'FileMissing'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'Check if tool chain driver is defined in config file "'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) ehooksSettings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) ehConfigFilename.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '" as Hardware identifier.'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028293c; bytecode file offset 0xb7f220"
!SGBuildCache methodsFor: 'recovered'!
updateOSEnvironmentInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) platform.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) osCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) osCategory: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) osIdentifier: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportedAUTOSARVersion.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) autosarVersion: (recoveredStack1).
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

"ASDBase.ic method 0x2028ee60; bytecode file offset 0xb8b73c"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlMiscBoolOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) autosarSettings.
    recoveredValue1 := SGCgAutosarSettings.
    recoveredValue2 := (recoveredValue1) settingsKeyAppInitValue.
    recoveredValue3 := (recoveredValue2) asString.
    (recoveredValue0) arSetting: (recoveredValue3) value: (false).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := (self) autosarSettings.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) attributeName.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value3) optionClass.
    recoveredBlock13Value5 := (recoveredBlock13Value4) value.
    recoveredBlock13Value6 := (recoveredBlock13Value0) arSetting: (recoveredBlock13Value2) value: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) autosarSettings.
    (recoveredValue6) arSetting: ('SettingELEMENTDESCSupport') value: (true).
    ^self
! !

"ASDBase.ic method 0x20296bac; bytecode file offset 0xb9348c"
!SGBuildCache methodsFor: 'recovered'!
updateScoopixSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scoopixSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformScoopixGeneration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) scoopixSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) scoopixSchemaVersion.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) versionString: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateScoopixFilenameOptions.
            recoveredPC := 22.
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
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionScoopixSchemaVersion.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) platform.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) scoopixSchemaVersion.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) platform.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) valueCollectionScoopixVersion.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) checkTargetSpecificEnumOptions: (recoveredStack1) value: (recoveredStack2) availableValues: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) updateScoopixModelLinkBase.
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

"ASDBase.ic method 0x202ab2a4; bytecode file offset 0xba7b88"
!SGBuildCache methodsFor: 'recovered'!
ehooksMappingSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 recoveredBlock6Value13 |
    recoveredBlock6Value0 := SGEHooksElementMappingSource.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    recoveredBlock6Value3 := recoveredArg1.
    (recoveredBlock6Value2) displayName: (recoveredBlock6Value3).
    recoveredBlock6Value4 := recoveredBlock6Value1.
    recoveredBlock6Value5 := recoveredBlock6Arg1.
    recoveredBlock6Value6 := (recoveredBlock6Value5) makeConfig.
    recoveredBlock6Value7 := (recoveredBlock6Value6) data.
    (recoveredBlock6Value4) valueConfig: (recoveredBlock6Value7).
    recoveredBlock6Value8 := recoveredBlock6Value1.
    recoveredBlock6Value9 := recoveredBlock6Arg1.
    recoveredBlock6Value10 := (recoveredBlock6Value9) makeConfig.
    recoveredBlock6Value11 := (recoveredBlock6Value10) implementation.
    (recoveredBlock6Value8) implConfig: (recoveredBlock6Value11).
    recoveredBlock6Value12 := recoveredBlock6Value1.
    recoveredBlock6Value13 := recoveredBlock6Arg1.
    (recoveredBlock6Value12) context: (recoveredBlock6Value13).
    ^recoveredBlock6Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x202b2244; bytecode file offset 0xbaeb34"
!SGBuildCache methodsFor: 'recovered'!
updateScoopixModelLinkBase
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) project.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) buildFolderPathNameForDefaultProject.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) target.
    recoveredValue6 := (recoveredValue5) createWriteStream.
    recoveredValue7 := (recoveredValue6) asExternalMakeStream.
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('asd://{{modelDir}}?').
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (recoveredValue10) , ('\').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) target.
    recoveredValue14 := (recoveredValue13) externalMakeToolRequiresEscapedBlanks.
    (recoveredValue8) nextPutPathUnixStyle: (recoveredValue11) escapeBlanks: (recoveredValue14) removePathSeparatorAtEnd: (false).
    recoveredValue15 := (self) scoopixSettings.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) contents.
    (recoveredValue15) modelLinkBase: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x202b7354; bytecode file offset 0xbb3c2c"
!SGBuildCache methodsFor: 'recovered'!
createGeneralTextFileSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) scopeCache.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := SGTextFileSource.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) file: (nil).
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) lineNumber: (1).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) columnNumber: (1).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := (self) scopeCache.
    recoveredValue10 := (recoveredValue9) context.
    (recoveredValue8) context: (recoveredValue10).
    recoveredLocal1 := recoveredValue4.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202cae1c; bytecode file offset 0xbc7704"
!SGBuildCache methodsFor: 'recovered'!
invalidTemplate: recoveredArg1 option: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) projectOptionARXmlConfigSource.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) optionClass.
    recoveredValue4 := (recoveredValue3) group.
    recoveredValue5 := (recoveredValue4) allSubStrings: ($\).
    recoveredValue6 := (recoveredValue5) last.
    (recoveredValue1) optionGroup: (recoveredValue6).
    recoveredValue7 := (self) scopeCache.
    recoveredValue8 := (recoveredValue7) context.
    recoveredValue9 := (recoveredValue8) makeConfig.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) optionClass.
    recoveredValue13 := (recoveredValue12) group.
    recoveredValue14 := (recoveredValue13) , ('\').
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) label.
    recoveredValue17 := (recoveredValue14) , (recoveredValue16).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue9) makeErrNo: (90) with: (recoveredValue10) with: (recoveredValue17) source: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x202dc368; bytecode file offset 0xbd8c4c"
!SGBuildCache methodsFor: 'recovered'!
formulasCRC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SGBasicTempWriteStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reserveTempStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    recoveredBlock24Value3 := (recoveredBlock24Value2) printFormula.
    (recoveredBlock24Value1) nextPutAll: (recoveredBlock24Value3).
    recoveredBlock24Value4 := (recoveredBlock24Value0) cr.
    recoveredBlock24Value4
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e8c18; bytecode file offset 0xbe54ec"
!SGBuildCache methodsFor: 'recovered'!
retrieveMdlClassInterface: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := mdlClassInterfaces.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) componentKey.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := ('Rl') == ('Call_2008402547').
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) optimizations.
    recoveredValue8 := (recoveredValue7) componentInfo.
    recoveredValue9 := recoveredValue8.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) sgClass.
    (recoveredValue8) updateSCMInformation: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202ed570; bytecode file offset 0xbe9e50"
!SGBuildCache methodsFor: 'recovered'!
createScoopixSettings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgScoopixSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildEnvironmentInfo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) platform.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) isEnabledScoopixGeneration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) isControllerVariant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) scopeCache.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) isOnlineINTECRIO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) scopeCache.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) isOnlineLABCAR.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) mustPerformScoopixGeneration: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202fc990; bytecode file offset 0xbf927c"
!SGBuildCache methodsFor: 'recovered'!
writeGeneralGeneratePathsOn: recoveredArg1
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
            recoveredStack2 := 'MEM_SECTIONS_XML'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) platform.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) memClassDeclarationFilename.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) toolNamed: (recoveredStack2) valueAsUnixStyle: (recoveredStack3) escapeBlanks: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'EHOOKS_PROJECT'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehooksSettings.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehConfigFilename.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) toolNamed: (recoveredStack1) valueAsUnixStyle: (recoveredStack2) escapeBlanks: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'PROJECT_SCOOPIX'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) scopeCache.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := '.six'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) toolNamed: (recoveredStack1) valueAsUnixStyle: (recoveredStack2) escapeBlanks: (recoveredStack3).
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

"ASDBase.ic method 0x202ff460; bytecode file offset 0xbfbd44"
!SGBuildCache methodsFor: 'recovered'!
generatorCID
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetVersion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280e95bcArg1 :block280e95bcArg2 | 
    | block280e95bcStack0 block280e95bcStack1 block280e95bcStack2 block280e95bcStack3 block280e95bcPC block280e95bcStep block280e95bcDone block280e95bcResult |
    block280e95bcStack0 := self.
    block280e95bcPC := 4.
    block280e95bcDone := false.
    [block280e95bcDone not] whileTrue: [
        block280e95bcStep := block280e95bcPC.
        block280e95bcStep = 4 ifTrue: [
            block280e95bcStack1 := block280e95bcArg2.
            block280e95bcPC := 5.
        ].
        block280e95bcStep = 5 ifTrue: [
            block280e95bcStack1 := (block280e95bcStack1) isDigit.
            block280e95bcPC := 7.
        ].
        block280e95bcStep = 7 ifTrue: [
            (block280e95bcStack1) ifTrue: [block280e95bcPC := 10] ifFalse: [block280e95bcPC := 20].
        ].
        block280e95bcStep = 10 ifTrue: [
            block280e95bcStack1 := block280e95bcArg1.
            block280e95bcPC := 11.
        ].
        block280e95bcStep = 11 ifTrue: [
            block280e95bcStack2 := block280e95bcArg2.
            block280e95bcPC := 12.
        ].
        block280e95bcStep = 12 ifTrue: [
            block280e95bcStack2 := (block280e95bcStack2) asString.
            block280e95bcPC := 14.
        ].
        block280e95bcStep = 14 ifTrue: [
            block280e95bcStack1 := (block280e95bcStack1) , (block280e95bcStack2).
            block280e95bcPC := 16.
        ].
        block280e95bcStep = 16 ifTrue: [
            block280e95bcPC := 21.
        ].
        block280e95bcStep = 20 ifTrue: [
            block280e95bcStack1 := block280e95bcArg1.
            block280e95bcPC := 21.
        ].
        block280e95bcStep = 21 ifTrue: [
            block280e95bcResult := block280e95bcStack1.
            block280e95bcDone := true.
        ].
    ].
    block280e95bcResult
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a5f0; bytecode file offset 0xc06ec0"
!SGBuildCache methodsFor: 'recovered'!
updateEngineeringTemplateOption: recoveredArg1 generalArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) engineeringSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) settings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithGeneralArguments: (recoveredStack1) allowUppercase: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'Possible mismatch of % character'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) invalidTemplate: (recoveredStack1) codeGenOption: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203117d8; bytecode file offset 0xc0e0c0"
!SGBuildCache methodsFor: 'recovered'!
createEHooksSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := SGCgEHooksSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildEnvironmentInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildTool.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) buildTool: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnabledExternalBuildTool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 48].
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
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) checkTargetSpecificEHooksOptions: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildTool.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExistingTool.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) mustPerformExternalBuildTool: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalBuildToolOptions.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) externalToolBuildCommands: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032d114; bytecode file offset 0xc29a20"
!SGBuildCache methodsFor: 'recovered'!
updateFilenameTemplateOption: recoveredArg1 generalArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) targetSpecificOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) valueForKey: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (recoveredBlock10Value0) bindWithGeneralArguments: (recoveredBlock10Value1) allowUppercase: (true).
    recoveredBlock10Value3 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Value0 |
    recoveredBlock10Block23Value0 := recoveredBlock10Block23Arg1.
    ^recoveredBlock10Block23Value0
].
    (recoveredBlock10Value2) ifNotNil: (recoveredBlock10Value3).
    recoveredBlock10Value4 := recoveredArg1.
    recoveredBlock10Value5 := (self) platform.
    recoveredBlock10Value6 := (recoveredBlock10Value5) targetSpecificOptions.
    recoveredBlock10Value7 := recoveredArg1.
    recoveredBlock10Value8 := (recoveredBlock10Value6) getOptionClassForKey: (recoveredBlock10Value7).
    recoveredBlock10Value9 := (self) targetSpecificOptionSourceForOption: (recoveredBlock10Value8).
    (self) invalidTemplate: ('Possible mismatch of % character') targetSpecificOption: (recoveredBlock10Value4) source: (recoveredBlock10Value9).
    ^nil
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^''
! !

"ASDBase.ic method 0x2032d144; bytecode file offset 0xc29a20"
!SGBuildCache methodsFor: 'recovered'!
updateNameTemplateOption: recoveredArg1 generalArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) targetSpecificOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) valueForKey: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (recoveredBlock10Value0) bindWithGeneralArguments: (recoveredBlock10Value1) allowUppercase: (true).
    recoveredBlock10Value3 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Value0 |
    recoveredBlock10Block23Value0 := recoveredBlock10Block23Arg1.
    ^recoveredBlock10Block23Value0
].
    (recoveredBlock10Value2) ifNotNil: (recoveredBlock10Value3).
    recoveredBlock10Value4 := recoveredArg1.
    recoveredBlock10Value5 := (self) platform.
    recoveredBlock10Value6 := (recoveredBlock10Value5) targetSpecificOptions.
    recoveredBlock10Value7 := recoveredArg1.
    recoveredBlock10Value8 := (recoveredBlock10Value6) getOptionClassForKey: (recoveredBlock10Value7).
    recoveredBlock10Value9 := (self) targetSpecificOptionSourceForOption: (recoveredBlock10Value8).
    (self) invalidTemplate: ('Possible mismatch of % character') targetSpecificOption: (recoveredBlock10Value4) source: (recoveredBlock10Value9).
    ^nil
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^''
! !

"ASDBase.ic method 0x203460d0; bytecode file offset 0xc429dc"
!SGBuildCache methodsFor: 'recovered'!
createGenerationSettings
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := SGCgGenerationSettings.
    recoveredValue1 := (self) buildEnvironmentInfo.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) codeGenerationOptions.
    (recoveredValue3) codeGenerationOptions: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) scopeCache.
    recoveredValue7 := (recoveredValue6) isCTProject.
    (recoveredValue5) isCTProject: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := ASDDataTypeNameMappingOptions.
    recoveredValue10 := (recoveredValue9) instance.
    recoveredValue11 := (recoveredValue10) optionCustomizedDataTypesActive.
    (recoveredValue8) isCustomizedDataTypesActive: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := ASDPathOptions.
    recoveredValue14 := (recoveredValue13) instance.
    recoveredValue15 := (recoveredValue14) optionCodeGenerationPathUnresolved.
    recoveredValue16 := (recoveredValue15) asPathname.
    (recoveredValue12) stationSettingsWorkingPath: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (self) codeRelevantStationOptionsDocumentation.
    (recoveredValue17) stationOptionsDocumentation: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) projectOptionSource.
    (recoveredValue19) projectOptionSource: (recoveredValue20).
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (self) stationOptionSource.
    (recoveredValue21) stationOptionSource: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    ^recoveredValue23
! !

"ASDBase.ic method 0x20354900; bytecode file offset 0xc51208"
!SGBuildCache methodsFor: 'recovered'!
createGenerationContext
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) currentPlatform.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := SGCgGenerationContext.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) currentPlatform.
    (recoveredValue3) platform: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createGenerationSettings.
    (recoveredValue5) generationSettings: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) createEngineeringSettings.
    (recoveredValue7) engineeringSettings: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := (self) createCCodeSettings.
    (recoveredValue9) cCodeSettings: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := (self) createAutosarSettings.
    (recoveredValue11) autosarSettings: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := (self) createScoopixSettings.
    (recoveredValue13) scoopixSettings: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := (self) createEHooksSettings.
    (recoveredValue15) ehooksSettings: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := (self) scopeCache.
    recoveredValue19 := (recoveredValue18) asam2MCOptions.
    (recoveredValue17) asammcdSettings: (recoveredValue19).
    recoveredValue20 := recoveredValue2.
    recoveredValue21 := (self) errorHandler.
    (recoveredValue20) errorHandler: (recoveredValue21).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2035d8dc; bytecode file offset 0xc5a1e0"
!SGBuildCache methodsFor: 'recovered'!
resolveCodeVariantPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) buildEnvironmentInfo.
    recoveredValue1 := (recoveredValue0) bannerInfos.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) target.
    recoveredValue6 := (recoveredValue5) targetType.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue4) at: ('TARGET.ID') put: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := (self) buildEnvironmentInfo.
    recoveredValue10 := (recoveredValue9) osCategory.
    (recoveredValue8) at: ('OS.CATEGORY') put: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    recoveredValue12 := (self) buildEnvironmentInfo.
    recoveredValue13 := (recoveredValue12) osIdentifier.
    recoveredValue14 := (recoveredValue13) asValidFileName.
    (recoveredValue11) at: ('OS.ID') put: (recoveredValue14).
    recoveredValue15 := recoveredValue3.
    recoveredValue16 := (self) generationOptionsCRC.
    recoveredValue17 := (recoveredValue16) codeGenShortPathName.
    (recoveredValue15) at: ('GENERATOR.NAME') put: (recoveredValue17).
    recoveredValue18 := recoveredValue3.
    (recoveredValue18) at: ('COMPILER.ID') put: ('').
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue19) bindWithGeneralArguments: (recoveredValue20).
    recoveredValue22 := (recoveredValue21) asPathname.
    ^recoveredValue22
! !

"ASDBase.ic method 0x20367204; bytecode file offset 0xc63b08"
!SGBuildCache methodsFor: 'recovered'!
checkTemplate: recoveredArg1 key: recoveredArg2 validArguments: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := ('Parameter "') , (recoveredBlock41Value0).
    recoveredBlock41Value2 := (recoveredBlock41Value1) , ('" not defined').
    recoveredBlock41Value3 := recoveredArg2.
    recoveredBlock41Value4 := (self) invalidTemplate: (recoveredBlock41Value2) key: (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20367230; bytecode file offset 0xc63b08"
!SGBuildCache methodsFor: 'recovered'!
checkARXmlTemplate: recoveredArg1 option: recoveredArg2 validArguments: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := ('Parameter "') , (recoveredBlock41Value0).
    recoveredBlock41Value2 := (recoveredBlock41Value1) , ('" not defined').
    recoveredBlock41Value3 := recoveredArg2.
    recoveredBlock41Value4 := (self) invalidTemplate: (recoveredBlock41Value2) option: (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20374db8; bytecode file offset 0xc71694"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlMiscOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) autosarSettings.
    recoveredValue1 := (recoveredValue0) arXmlValidMiscTemplateParameter.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) autosarSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal2.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) updateARXmlTemplateOption: (recoveredBlock18Stack1) generalArguments: (recoveredBlock18Stack2).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack0.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal3.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) checkARXmlTemplate: (recoveredBlock18Stack1) option: (recoveredBlock18Stack2) validArguments: (recoveredBlock18Stack3).
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := [:block280f1db8Arg1 | 
    nil
].
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            (recoveredBlock18Stack0) ifNotNil: (recoveredBlock18Stack1).
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) autosarSettings.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) attributeName.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) arTemplate: (recoveredBlock18Stack1) value: (recoveredBlock18Stack2).
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack0.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2038df3c; bytecode file offset 0xc8a824"
!SGBuildCache methodsFor: 'recovered'!
checkTargetSpecificEnumOptions: recoveredArg1 value: recoveredArg2 availableValues: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'Missing Target Specific Option'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalMessage: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 611.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) target.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetLabel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) label.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) asString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetSpecificOptionSourceForOption: (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) errorNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20397938; bytecode file offset 0xc9421c"
!SGBuildCache methodsFor: 'recovered'!
createOptionSource: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [
    ^nil
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
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGProjectOptionSource.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) scopeCache.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) context.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeConfig.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) valueConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) scopeCache.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) context.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeConfig.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) implementation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) implConfig: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) scopeCache.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) context: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) setStationOptionSource.
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

"ASDBase.ic method 0x203a02fc; bytecode file offset 0xc9cbd4"
!SGBuildCache methodsFor: 'recovered'!
updateCCodeTypeOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) cCodeSettings.
    recoveredValue1 := (recoveredValue0) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) cCodeSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) cCodeSettings.
    recoveredValue5 := (recoveredValue4) cTypeTemplateKeys.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredLocal1.
    recoveredBlock18Value2 := (self) updateCTypeTemplateOption: (recoveredBlock18Value0) generalArguments: (recoveredBlock18Value1).
    recoveredBlock18Value3 := [:recoveredBlock18Block32Arg1 | 
    | recoveredBlock18Block32Value0 recoveredBlock18Block32Value1 recoveredBlock18Block32Value2 recoveredBlock18Block32Value3 recoveredBlock18Block32Value4 recoveredBlock18Block32Value5 |
    recoveredBlock18Block32Value0 := recoveredBlock18Block32Arg1.
    recoveredBlock18Block32Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block32Value2 := recoveredLocal2.
    recoveredBlock18Block32Value3 := (self) checkTargetSpecificNameTemplate: (recoveredBlock18Block32Value0) option: (recoveredBlock18Block32Value1) validArguments: (recoveredBlock18Block32Value2).
    recoveredBlock18Block32Value4 := [:recoveredBlock18Block32Block50Arg1 | 
    | recoveredBlock18Block32Block50Value0 recoveredBlock18Block32Block50Value1 recoveredBlock18Block32Block50Value2 recoveredBlock18Block32Block50Value3 |
    recoveredBlock18Block32Block50Value0 := (self) cCodeSettings.
    recoveredBlock18Block32Block50Value1 := recoveredBlock18Block32Arg1.
    recoveredBlock18Block32Block50Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block32Block50Value3 := (recoveredBlock18Block32Block50Value0) addTemplate: (recoveredBlock18Block32Block50Value1) key: (recoveredBlock18Block32Block50Value2).
    recoveredBlock18Block32Block50Value3
].
    recoveredBlock18Block32Value5 := (recoveredBlock18Block32Value3) ifNotNil: (recoveredBlock18Block32Value4).
    recoveredBlock18Block32Value5
].
    recoveredBlock18Value4 := (recoveredBlock18Value2) ifNotNil: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203be1a0; bytecode file offset 0xcbaaac"
!SGBuildCache methodsFor: 'recovered'!
updateEngineeringNameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) engineeringSettings.
    recoveredValue1 := (recoveredValue0) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) engineeringSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) engineeringSettings.
    recoveredValue5 := (recoveredValue4) nameTemplateKeys.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
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
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack4 := recoveredLocal1.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) updateEngineeringTemplateOption: (recoveredBlock18Stack3) generalArguments: (recoveredBlock18Stack4).
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack3.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isEmpty.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 76] ifFalse: [recoveredBlock18PC := 44].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack4 := recoveredLocal2.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) checkEngineeringNameTemplate: (recoveredBlock18Stack2) option: (recoveredBlock18Stack3) validArguments: (recoveredBlock18Stack4).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block58Arg1 | 
    | recoveredBlock18Block58Value0 recoveredBlock18Block58Value1 recoveredBlock18Block58Value2 recoveredBlock18Block58Value3 |
    recoveredBlock18Block58Value0 := (self) engineeringSettings.
    recoveredBlock18Block58Value1 := recoveredLocal3.
    recoveredBlock18Block58Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block58Value3 := (recoveredBlock18Block58Value0) addTemplate: (recoveredBlock18Block58Value1) key: (recoveredBlock18Block58Value2).
    recoveredBlock18Block58Value3
].
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ifNotNil: (recoveredBlock18Stack2).
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203be1d0; bytecode file offset 0xcbaaac"
!SGBuildCache methodsFor: 'recovered'!
updateEngineeringFilenameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) engineeringSettings.
    recoveredValue1 := (recoveredValue0) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) engineeringSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) engineeringSettings.
    recoveredValue5 := (recoveredValue4) filenameTemplateKeys.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
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
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack4 := recoveredLocal1.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) updateEngineeringTemplateOption: (recoveredBlock18Stack3) generalArguments: (recoveredBlock18Stack4).
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack3.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isEmpty.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 76] ifFalse: [recoveredBlock18PC := 44].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack4 := recoveredLocal2.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) checkEngineeringNameTemplate: (recoveredBlock18Stack2) option: (recoveredBlock18Stack3) validArguments: (recoveredBlock18Stack4).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block58Arg1 | 
    | recoveredBlock18Block58Value0 recoveredBlock18Block58Value1 recoveredBlock18Block58Value2 recoveredBlock18Block58Value3 |
    recoveredBlock18Block58Value0 := (self) engineeringSettings.
    recoveredBlock18Block58Value1 := recoveredLocal3.
    recoveredBlock18Block58Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block58Value3 := (recoveredBlock18Block58Value0) addTemplate: (recoveredBlock18Block58Value1) key: (recoveredBlock18Block58Value2).
    recoveredBlock18Block58Value3
].
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ifNotNil: (recoveredBlock18Stack2).
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203de148; bytecode file offset 0xcdaa28"
!SGBuildCache methodsFor: 'recovered'!
checkEngineeringNameTemplate: recoveredArg1 option: recoveredArg2 validArguments: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'must be valid identifier'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) invalidTemplate: (recoveredStack2) codeGenOption: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := ('Parameter "') , (recoveredBlock61Value0).
    recoveredBlock61Value2 := (recoveredBlock61Value1) , ('" not defined').
    recoveredBlock61Value3 := recoveredArg2.
    recoveredBlock61Value4 := (self) invalidTemplate: (recoveredBlock61Value2) codeGenOption: (recoveredBlock61Value3).
    recoveredBlock61Value4
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20407f34; bytecode file offset 0xd04834"
!SGBuildCache methodsFor: 'recovered'!
environmentGenOptionsCRC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASDDataTypeNameMappingOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCustomizedDataTypesActive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ASDDataTypeNameMappingOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDataTypeMappingOptions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:block280fa8a8Arg1 :block280fa8a8Arg2 | 
    | block280fa8a8Value0 block280fa8a8Value1 block280fa8a8Value2 block280fa8a8Value3 block280fa8a8Value4 |
    block280fa8a8Value0 := block280fa8a8Arg1.
    block280fa8a8Value1 := (block280fa8a8Value0) attributeName.
    block280fa8a8Value2 := block280fa8a8Arg2.
    block280fa8a8Value3 := (block280fa8a8Value2) attributeName.
    block280fa8a8Value4 := (block280fa8a8Value1) < (block280fa8a8Value3).
    block280fa8a8Value4
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Value0.
    recoveredBlock44Value2 := recoveredBlock44Arg1.
    recoveredBlock44Value3 := (recoveredBlock44Value2) optionClass.
    recoveredBlock44Value4 := (recoveredBlock44Value3) value.
    (recoveredBlock44Value1) nextPutAll: (recoveredBlock44Value4).
    recoveredBlock44Value5 := (recoveredBlock44Value0) cr.
    recoveredBlock44Value5
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedErrors.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 |
    recoveredBlock70Value0 := recoveredLocal1.
    recoveredBlock70Value1 := recoveredBlock70Value0.
    (recoveredBlock70Value1) cr.
    recoveredBlock70Value2 := recoveredBlock70Arg1.
    recoveredBlock70Value3 := (recoveredBlock70Value2) asString.
    recoveredBlock70Value4 := (recoveredBlock70Value0) nextPutAll: (recoveredBlock70Value3).
    recoveredBlock70Value4
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040edc4; bytecode file offset 0xd0b6a4"
!SGBuildCache methodsFor: 'recovered'!
updateScoopixFilenameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) scoopixSettings.
    recoveredValue1 := (recoveredValue0) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) scoopixSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) scoopixSettings.
    recoveredValue5 := (recoveredValue4) filenameTemplateKeys.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) updateFilenameTemplateOption: (recoveredBlock18Stack1) generalArguments: (recoveredBlock18Stack2).
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Stack0.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) isEmpty.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 42] ifFalse: [recoveredBlock18PC := 60].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack0 := recoveredLocal3.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) isEmpty.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 50] ifFalse: [recoveredBlock18PC := 60].
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) scoopixSettings.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) defaultFilenameTemplate: (recoveredBlock18Stack1).
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack0.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal2.
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) checkTargetSpecificNameTemplate: (recoveredBlock18Stack1) option: (recoveredBlock18Stack2) validArguments: (recoveredBlock18Stack3).
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack1 := [:recoveredBlock18Block73Arg1 | 
    | recoveredBlock18Block73Value0 recoveredBlock18Block73Value1 recoveredBlock18Block73Value2 recoveredBlock18Block73Value3 |
    recoveredBlock18Block73Value0 := (self) scoopixSettings.
    recoveredBlock18Block73Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block73Value2 := recoveredLocal3.
    recoveredBlock18Block73Value3 := (recoveredBlock18Block73Value0) baseFilename: (recoveredBlock18Block73Value1) value: (recoveredBlock18Block73Value2).
    recoveredBlock18Block73Value3
].
            recoveredBlock18PC := 90.
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) ifNotNil: (recoveredBlock18Stack1).
            recoveredBlock18PC := 92.
        ].
        recoveredBlock18Step = 92 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack0.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20415f6c; bytecode file offset 0xd1285c"
!SGBuildCache methodsFor: 'recovered'!
arMappingCRC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := [:recoveredBlock16Block23Arg1 | 
    | recoveredBlock16Block23Value0 recoveredBlock16Block23Value1 recoveredBlock16Block23Value2 recoveredBlock16Block23Value3 recoveredBlock16Block23Value4 recoveredBlock16Block23Value5 recoveredBlock16Block23Value6 recoveredBlock16Block23Value7 recoveredBlock16Block23Value8 recoveredBlock16Block23Value9 recoveredBlock16Block23Value10 recoveredBlock16Block23Value11 recoveredBlock16Block23Value12 recoveredBlock16Block23Value13 recoveredBlock16Block23Value14 recoveredBlock16Block23Value15 recoveredBlock16Block23Value16 recoveredBlock16Block23Value17 recoveredBlock16Block23Value18 recoveredBlock16Block23Value19 recoveredBlock16Block23Value20 recoveredBlock16Block23Value21 |
    recoveredBlock16Block23Value0 := recoveredLocal1.
    recoveredBlock16Block23Value1 := recoveredBlock16Block23Value0.
    recoveredBlock16Block23Value2 := recoveredBlock16Block23Arg1.
    recoveredBlock16Block23Value3 := (recoveredBlock16Block23Value2) sourceObject.
    recoveredBlock16Block23Value4 := (recoveredBlock16Block23Value3) displayName.
    (recoveredBlock16Block23Value1) nextPutAll: (recoveredBlock16Block23Value4).
    recoveredBlock16Block23Value5 := recoveredBlock16Block23Value0.
    (recoveredBlock16Block23Value5) nextPutAll: ('[').
    recoveredBlock16Block23Value6 := recoveredBlock16Block23Value0.
    recoveredBlock16Block23Value7 := recoveredBlock16Block23Arg1.
    recoveredBlock16Block23Value8 := (recoveredBlock16Block23Value7) sourceObject.
    recoveredBlock16Block23Value9 := (recoveredBlock16Block23Value8) modelType.
    (recoveredBlock16Block23Value6) nextPutAll: (recoveredBlock16Block23Value9).
    recoveredBlock16Block23Value10 := recoveredBlock16Block23Value0.
    (recoveredBlock16Block23Value10) nextPutAll: (']-').
    recoveredBlock16Block23Value11 := recoveredBlock16Block23Value0.
    recoveredBlock16Block23Value12 := recoveredBlock16Block23Arg1.
    recoveredBlock16Block23Value13 := (recoveredBlock16Block23Value12) targetObject.
    recoveredBlock16Block23Value14 := (recoveredBlock16Block23Value13) displayName.
    (recoveredBlock16Block23Value11) nextPutAll: (recoveredBlock16Block23Value14).
    recoveredBlock16Block23Value15 := recoveredBlock16Block23Value0.
    (recoveredBlock16Block23Value15) nextPutAll: ('[').
    recoveredBlock16Block23Value16 := recoveredBlock16Block23Value0.
    recoveredBlock16Block23Value17 := recoveredBlock16Block23Arg1.
    recoveredBlock16Block23Value18 := (recoveredBlock16Block23Value17) sourceObject.
    recoveredBlock16Block23Value19 := (recoveredBlock16Block23Value18) modelType.
    (recoveredBlock16Block23Value16) nextPutAll: (recoveredBlock16Block23Value19).
    recoveredBlock16Block23Value20 := recoveredBlock16Block23Value0.
    (recoveredBlock16Block23Value20) nextPutAll: (']').
    recoveredBlock16Block23Value21 := (recoveredBlock16Block23Value0) cr.
    recoveredBlock16Block23Value21
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20417990; bytecode file offset 0xd14278"
!SGBuildCache methodsFor: 'recovered'!
updateCCodeFilenameOptionsDict: recoveredArg1 generalArguments: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cCodeSettings.
    recoveredValue1 := (recoveredValue0) cCodeValidFilenameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 |
    recoveredBlock12Value0 := recoveredBlock12Arg2.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (self) updateTemplate: (recoveredBlock12Value0) key: (recoveredBlock12Value1) generalArguments: (recoveredBlock12Value2).
    recoveredLocal3 := recoveredBlock12Value3.
    recoveredBlock12Value4 := recoveredLocal3.
    recoveredBlock12Value5 := recoveredBlock12Arg1.
    recoveredBlock12Value6 := recoveredLocal2.
    recoveredBlock12Value7 := (self) checkTemplate: (recoveredBlock12Value4) key: (recoveredBlock12Value5) validArguments: (recoveredBlock12Value6).
    recoveredBlock12Value8 := [:recoveredBlock12Block46Arg1 | 
    | recoveredBlock12Block46Stack0 recoveredBlock12Block46Stack1 recoveredBlock12Block46Stack2 recoveredBlock12Block46Stack3 recoveredBlock12Block46Stack4 recoveredBlock12Block46PC recoveredBlock12Block46Step recoveredBlock12Block46Done recoveredBlock12Block46Result |
    recoveredBlock12Block46Stack0 := self.
    recoveredBlock12Block46PC := 52.
    recoveredBlock12Block46Done := false.
    [recoveredBlock12Block46Done not] whileTrue: [
        recoveredBlock12Block46Step := recoveredBlock12Block46PC.
        recoveredBlock12Block46Step = 52 ifTrue: [
            recoveredBlock12Block46Stack1 := nil.
            recoveredBlock12Block46PC := 53.
        ].
        recoveredBlock12Block46Step = 53 ifTrue: [
            recoveredBlock12Block46Stack2 := recoveredBlock12Block46Arg1.
            recoveredBlock12Block46PC := 54.
        ].
        recoveredBlock12Block46Step = 54 ifTrue: [
            recoveredBlock12Block46Stack3 := CfsDirectoryDescriptor.
            recoveredBlock12Block46PC := 56.
        ].
        recoveredBlock12Block46Step = 56 ifTrue: [
            recoveredBlock12Block46Stack3 := (recoveredBlock12Block46Stack3) pathSeparator.
            recoveredBlock12Block46PC := 58.
        ].
        recoveredBlock12Block46Step = 58 ifTrue: [
            recoveredBlock12Block46Stack2 := (recoveredBlock12Block46Stack2) includes: (recoveredBlock12Block46Stack3).
            recoveredBlock12Block46PC := 60.
        ].
        recoveredBlock12Block46Step = 60 ifTrue: [
            (recoveredBlock12Block46Stack2) ifTrue: [recoveredBlock12Block46PC := 81] ifFalse: [recoveredBlock12Block46PC := 64].
        ].
        recoveredBlock12Block46Step = 64 ifTrue: [
            recoveredBlock12Block46PC := 65.
        ].
        recoveredBlock12Block46Step = 65 ifTrue: [
            recoveredBlock12Block46Stack1 := nil.
            recoveredBlock12Block46PC := 66.
        ].
        recoveredBlock12Block46Step = 66 ifTrue: [
            recoveredBlock12Block46Stack2 := recoveredBlock12Block46Arg1.
            recoveredBlock12Block46PC := 67.
        ].
        recoveredBlock12Block46Step = 67 ifTrue: [
            recoveredBlock12Block46Stack2 := (recoveredBlock12Block46Stack2) isValidANSICIdentifier.
            recoveredBlock12Block46PC := 69.
        ].
        recoveredBlock12Block46Step = 69 ifTrue: [
            (recoveredBlock12Block46Stack2) ifTrue: [recoveredBlock12Block46PC := 81] ifFalse: [recoveredBlock12Block46PC := 72].
        ].
        recoveredBlock12Block46Step = 72 ifTrue: [
            recoveredBlock12Block46PC := 73.
        ].
        recoveredBlock12Block46Step = 73 ifTrue: [
            recoveredBlock12Block46Stack1 := self.
            recoveredBlock12Block46PC := 74.
        ].
        recoveredBlock12Block46Step = 74 ifTrue: [
            recoveredBlock12Block46Stack2 := 'Filename does not  match specification'.
            recoveredBlock12Block46PC := 76.
        ].
        recoveredBlock12Block46Step = 76 ifTrue: [
            recoveredBlock12Block46Stack3 := recoveredBlock12Arg1.
            recoveredBlock12Block46PC := 79.
        ].
        recoveredBlock12Block46Step = 79 ifTrue: [
            recoveredBlock12Block46Stack1 := (recoveredBlock12Block46Stack1) invalidTemplate: (recoveredBlock12Block46Stack2) key: (recoveredBlock12Block46Stack3).
            recoveredBlock12Block46PC := 81.
        ].
        recoveredBlock12Block46Step = 81 ifTrue: [
            recoveredBlock12Block46Result := recoveredBlock12Block46Stack1.
            recoveredBlock12Block46Done := true.
        ].
    ].
    recoveredBlock12Block46Result
].
    (recoveredBlock12Value7) ifNotNil: (recoveredBlock12Value8).
    recoveredBlock12Value9 := (self) cCodeSettings.
    recoveredBlock12Value10 := recoveredBlock12Arg1.
    recoveredBlock12Value11 := recoveredLocal3.
    recoveredBlock12Value12 := (recoveredBlock12Value9) baseFilename: (recoveredBlock12Value10) value: (recoveredBlock12Value11).
    recoveredBlock12Value12
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204386d4; bytecode file offset 0xd34fcc"
!SGBuildCache methodsFor: 'recovered'!
cacheLockingFunctionDeclarationMacro
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '/* Declaration of functions that should be located into the fast code section */
#ifdef FAST_CODE_PRAGMA
	#pragma use_section FAST_CODE %1
#else
	FAST_CODE_FUNC_NAME(%1)
#endif
FAST_CODE_FUNC_DECL(%2);
'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCacheLocking.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTargetSpecificPath.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'cacheLockingFunctionDeclMacro.template.c'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLocaleFileString: (recoveredStack1) onError: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := (self) target.
    recoveredBlock64Value1 := recoveredLocal2.
    recoveredBlock64Value2 := recoveredLocal3.
    recoveredBlock64Value3 := (recoveredBlock64Value0) putCodeIntoFile: (recoveredBlock64Value1) code: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalException.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := [:block280fdf48Arg1 | 
    | block280fdf48Value0 block280fdf48Value1 |
    block280fdf48Value0 := block280fdf48Arg1.
    block280fdf48Value1 := (block280fdf48Value0) exitWith: (nil).
    block280fdf48Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) cacheLockingFunctionDeclarationMacro: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20451648; bytecode file offset 0xd4df2c"
!SGBuildCache methodsFor: 'recovered'!
updateCTypeTemplateOption: recoveredArg1 generalArguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) platform.
    recoveredValue1 := (recoveredValue0) targetSpecificOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) valueForKey: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg2.
    recoveredBlock10Value2 := (recoveredBlock10Value0) bindWithGeneralArguments: (recoveredBlock10Value1) allowUppercase: (true).
    recoveredBlock10Value3 := [:recoveredBlock10Block23Arg1 | 
    | recoveredBlock10Block23Value0 |
    recoveredBlock10Block23Value0 := recoveredBlock10Block23Arg1.
    ^recoveredBlock10Block23Value0
].
    (recoveredBlock10Value2) ifNotNil: (recoveredBlock10Value3).
    recoveredBlock10Value4 := recoveredArg1.
    recoveredBlock10Value5 := (self) platform.
    recoveredBlock10Value6 := (recoveredBlock10Value5) targetSpecificOptions.
    recoveredBlock10Value7 := recoveredArg1.
    recoveredBlock10Value8 := (recoveredBlock10Value6) getOptionClassForKey: (recoveredBlock10Value7).
    recoveredBlock10Value9 := (self) targetSpecificOptionSourceForOption: (recoveredBlock10Value8).
    (self) invalidTemplate: ('Possible mismatch of % character') targetSpecificOption: (recoveredBlock10Value4) source: (recoveredBlock10Value9).
    ^nil
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) systemDefaultCTypeTemplate: (recoveredValue6).
    recoveredValue8 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 recoveredBlock64Value8 recoveredBlock64Value9 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredArg2.
    recoveredBlock64Value2 := (recoveredBlock64Value0) bindWithGeneralArguments: (recoveredBlock64Value1) allowUppercase: (true).
    recoveredBlock64Value3 := [:recoveredBlock64Block77Arg1 | 
    | recoveredBlock64Block77Value0 |
    recoveredBlock64Block77Value0 := recoveredBlock64Block77Arg1.
    ^recoveredBlock64Block77Value0
].
    (recoveredBlock64Value2) ifNotNil: (recoveredBlock64Value3).
    recoveredBlock64Value4 := recoveredArg1.
    recoveredBlock64Value5 := (self) platform.
    recoveredBlock64Value6 := (recoveredBlock64Value5) targetSpecificOptions.
    recoveredBlock64Value7 := recoveredArg1.
    recoveredBlock64Value8 := (recoveredBlock64Value6) getOptionClassForKey: (recoveredBlock64Value7).
    recoveredBlock64Value9 := (self) targetSpecificOptionSourceForOption: (recoveredBlock64Value8).
    (self) invalidTemplate: ('Possible mismatch of % character') targetSpecificOption: (recoveredBlock64Value4) source: (recoveredBlock64Value9).
    ^nil
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    ^''
! !

"ASDBase.ic method 0x2045a6f8; bytecode file offset 0xd5702c"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlPackageOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlValidPackageTemplateParameter.
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
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) validGeneralNameTemplateParameter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 recoveredBlock18Value12 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredLocal2.
    recoveredBlock18Value2 := (self) updateARXmlTemplateOption: (recoveredBlock18Value0) generalArguments: (recoveredBlock18Value1).
    recoveredLocal1 := recoveredBlock18Value2.
    recoveredBlock18Value3 := recoveredLocal1.
    recoveredBlock18Value4 := recoveredBlock18Arg1.
    recoveredBlock18Value5 := recoveredLocal3.
    recoveredBlock18Value6 := (self) checkARXmlTemplate: (recoveredBlock18Value3) option: (recoveredBlock18Value4) validArguments: (recoveredBlock18Value5).
    recoveredBlock18Value7 := [:recoveredBlock18Block48Arg1 | 
    | recoveredBlock18Block48Stack0 recoveredBlock18Block48Stack1 recoveredBlock18Block48Stack2 recoveredBlock18Block48Stack3 recoveredBlock18Block48Stack4 recoveredBlock18Block48PC recoveredBlock18Block48Step recoveredBlock18Block48Done recoveredBlock18Block48Result |
    recoveredBlock18Block48Stack0 := self.
    recoveredBlock18Block48PC := 54.
    recoveredBlock18Block48Done := false.
    [recoveredBlock18Block48Done not] whileTrue: [
        recoveredBlock18Block48Step := recoveredBlock18Block48PC.
        recoveredBlock18Block48Step = 54 ifTrue: [
            recoveredBlock18Block48Stack1 := nil.
            recoveredBlock18Block48PC := 55.
        ].
        recoveredBlock18Block48Step = 55 ifTrue: [
            recoveredBlock18Block48Stack2 := recoveredBlock18Block48Arg1.
            recoveredBlock18Block48PC := 56.
        ].
        recoveredBlock18Block48Step = 56 ifTrue: [
            recoveredBlock18Block48Stack2 := (recoveredBlock18Block48Stack2) notEmpty.
            recoveredBlock18Block48PC := 58.
        ].
        recoveredBlock18Block48Step = 58 ifTrue: [
            (recoveredBlock18Block48Stack2) ifTrue: [recoveredBlock18Block48PC := 62] ifFalse: [recoveredBlock18Block48PC := 81].
        ].
        recoveredBlock18Block48Step = 62 ifTrue: [
            recoveredBlock18Block48PC := 63.
        ].
        recoveredBlock18Block48Step = 63 ifTrue: [
            recoveredBlock18Block48Stack1 := self.
            recoveredBlock18Block48PC := 64.
        ].
        recoveredBlock18Block48Step = 64 ifTrue: [
            recoveredBlock18Block48Stack1 := (recoveredBlock18Block48Stack1) autosarSettings.
            recoveredBlock18Block48PC := 65.
        ].
        recoveredBlock18Block48Step = 65 ifTrue: [
            recoveredBlock18Block48Stack2 := recoveredBlock18Block48Arg1.
            recoveredBlock18Block48PC := 66.
        ].
        recoveredBlock18Block48Step = 66 ifTrue: [
            recoveredBlock18Block48Stack3 := [:recoveredBlock18Block48Block66Arg1 | 
    | recoveredBlock18Block48Block66Value0 recoveredBlock18Block48Block66Value1 recoveredBlock18Block48Block66Value2 |
    recoveredBlock18Block48Block66Value0 := recoveredBlock18Block48Block66Arg1.
    recoveredBlock18Block48Block66Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block48Block66Value2 := (self) invalidTemplate: (recoveredBlock18Block48Block66Value0) option: (recoveredBlock18Block48Block66Value1).
    recoveredBlock18Block48Block66Value2
].
            recoveredBlock18Block48PC := 79.
        ].
        recoveredBlock18Block48Step = 79 ifTrue: [
            recoveredBlock18Block48Stack1 := (recoveredBlock18Block48Stack1) checkARXmlPackageName: (recoveredBlock18Block48Stack2) ifFail: (recoveredBlock18Block48Stack3).
            recoveredBlock18Block48PC := 81.
        ].
        recoveredBlock18Block48Step = 81 ifTrue: [
            recoveredBlock18Block48Result := recoveredBlock18Block48Stack1.
            recoveredBlock18Block48Done := true.
        ].
    ].
    recoveredBlock18Block48Result
].
    (recoveredBlock18Value6) ifNotNil: (recoveredBlock18Value7).
    recoveredBlock18Value8 := (self) autosarSettings.
    recoveredBlock18Value9 := recoveredBlock18Arg1.
    recoveredBlock18Value10 := (recoveredBlock18Value9) attributeName.
    recoveredBlock18Value11 := recoveredLocal1.
    recoveredBlock18Value12 := (recoveredBlock18Value8) arPackage: (recoveredBlock18Value10) value: (recoveredBlock18Value11).
    recoveredBlock18Value12
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARGenerateConstantMemory.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'packageRecordLayout'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := '/ASCET_Types/RecordLayouts/rl%TYPE.NAME%'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) arPackage: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045a73c; bytecode file offset 0xd5702c"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlShortNameOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlValidShortNameTemplateParameter.
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
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) validGeneralNameTemplateParameter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 recoveredBlock18Value12 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredLocal2.
    recoveredBlock18Value2 := (self) updateARXmlTemplateOption: (recoveredBlock18Value0) generalArguments: (recoveredBlock18Value1).
    recoveredLocal1 := recoveredBlock18Value2.
    recoveredBlock18Value3 := recoveredLocal1.
    recoveredBlock18Value4 := recoveredBlock18Arg1.
    recoveredBlock18Value5 := recoveredLocal3.
    recoveredBlock18Value6 := (self) checkARXmlTemplate: (recoveredBlock18Value3) option: (recoveredBlock18Value4) validArguments: (recoveredBlock18Value5).
    recoveredBlock18Value7 := [:recoveredBlock18Block48Arg1 | 
    | recoveredBlock18Block48Stack0 recoveredBlock18Block48Stack1 recoveredBlock18Block48Stack2 recoveredBlock18Block48Stack3 recoveredBlock18Block48Stack4 recoveredBlock18Block48PC recoveredBlock18Block48Step recoveredBlock18Block48Done recoveredBlock18Block48Result |
    recoveredBlock18Block48Stack0 := self.
    recoveredBlock18Block48PC := 54.
    recoveredBlock18Block48Done := false.
    [recoveredBlock18Block48Done not] whileTrue: [
        recoveredBlock18Block48Step := recoveredBlock18Block48PC.
        recoveredBlock18Block48Step = 54 ifTrue: [
            recoveredBlock18Block48Stack1 := nil.
            recoveredBlock18Block48PC := 55.
        ].
        recoveredBlock18Block48Step = 55 ifTrue: [
            recoveredBlock18Block48Stack2 := recoveredBlock18Block48Arg1.
            recoveredBlock18Block48PC := 56.
        ].
        recoveredBlock18Block48Step = 56 ifTrue: [
            recoveredBlock18Block48Stack2 := (recoveredBlock18Block48Stack2) notEmpty.
            recoveredBlock18Block48PC := 58.
        ].
        recoveredBlock18Block48Step = 58 ifTrue: [
            (recoveredBlock18Block48Stack2) ifTrue: [recoveredBlock18Block48PC := 62] ifFalse: [recoveredBlock18Block48PC := 81].
        ].
        recoveredBlock18Block48Step = 62 ifTrue: [
            recoveredBlock18Block48PC := 63.
        ].
        recoveredBlock18Block48Step = 63 ifTrue: [
            recoveredBlock18Block48Stack1 := self.
            recoveredBlock18Block48PC := 64.
        ].
        recoveredBlock18Block48Step = 64 ifTrue: [
            recoveredBlock18Block48Stack1 := (recoveredBlock18Block48Stack1) autosarSettings.
            recoveredBlock18Block48PC := 65.
        ].
        recoveredBlock18Block48Step = 65 ifTrue: [
            recoveredBlock18Block48Stack2 := recoveredBlock18Block48Arg1.
            recoveredBlock18Block48PC := 66.
        ].
        recoveredBlock18Block48Step = 66 ifTrue: [
            recoveredBlock18Block48Stack3 := [:recoveredBlock18Block48Block66Arg1 | 
    | recoveredBlock18Block48Block66Value0 recoveredBlock18Block48Block66Value1 recoveredBlock18Block48Block66Value2 |
    recoveredBlock18Block48Block66Value0 := recoveredBlock18Block48Block66Arg1.
    recoveredBlock18Block48Block66Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block48Block66Value2 := (self) invalidTemplate: (recoveredBlock18Block48Block66Value0) option: (recoveredBlock18Block48Block66Value1).
    recoveredBlock18Block48Block66Value2
].
            recoveredBlock18Block48PC := 79.
        ].
        recoveredBlock18Block48Step = 79 ifTrue: [
            recoveredBlock18Block48Stack1 := (recoveredBlock18Block48Stack1) checkARXmlShortName: (recoveredBlock18Block48Stack2) ifFail: (recoveredBlock18Block48Stack3).
            recoveredBlock18Block48PC := 81.
        ].
        recoveredBlock18Block48Step = 81 ifTrue: [
            recoveredBlock18Block48Result := recoveredBlock18Block48Stack1.
            recoveredBlock18Block48Done := true.
        ].
    ].
    recoveredBlock18Block48Result
].
    (recoveredBlock18Value6) ifNotNil: (recoveredBlock18Value7).
    recoveredBlock18Value8 := (self) autosarSettings.
    recoveredBlock18Value9 := recoveredBlock18Arg1.
    recoveredBlock18Value10 := (recoveredBlock18Value9) attributeName.
    recoveredBlock18Value11 := recoveredLocal1.
    recoveredBlock18Value12 := (recoveredBlock18Value8) arShortName: (recoveredBlock18Value10) value: (recoveredBlock18Value11).
    recoveredBlock18Value12
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARGenerateConstantMemory.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'shortNameDistribType'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'Distrib_%TYPE.BASETYPE.NAME%_%TYPE.MAXSIZE%'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) arShortName: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045dda4; bytecode file offset 0xd5a698"
!SGBuildCache methodsFor: 'recovered'!
checkTargetSpecificNameTemplate: recoveredArg1 option: recoveredArg2 validArguments: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWithGeneralArguments: (recoveredStack2) ifAbsentContinue: (recoveredStack3) allowUppercase: (recoveredStack4) unknownArguments: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := SGCgAbstractSettings.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWithReservedName: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := ('uses reserved keyword "') , (recoveredBlock53Value0).
    recoveredBlock53Value2 := (recoveredBlock53Value1) , ('"').
    recoveredBlock53Value3 := recoveredArg2.
    recoveredBlock53Value4 := (self) invalidTemplate: (recoveredBlock53Value2) targetSpecificOption: (recoveredBlock53Value3).
    ^recoveredBlock53Value4
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'must be valid identifier'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) invalidTemplate: (recoveredStack2) targetSpecificOption: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := ('Parameter "') , (recoveredBlock91Value0).
    recoveredBlock91Value2 := (recoveredBlock91Value1) , ('" not defined').
    recoveredBlock91Value3 := recoveredArg2.
    recoveredBlock91Value4 := (self) invalidTemplate: (recoveredBlock91Value2) targetSpecificOption: (recoveredBlock91Value3).
    recoveredBlock91Value4
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045e248; bytecode file offset 0xd5ab38"
!SGBuildCache methodsFor: 'recovered'!
updateCCodeFilenameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) cCodeSettings.
    recoveredValue1 := (recoveredValue0) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) cCodeSettings.
    recoveredValue3 := (recoveredValue2) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) cCodeSettings.
    recoveredValue5 := (recoveredValue4) filenameTemplateKeys.
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) updateFilenameTemplateOption: (recoveredBlock18Stack1) generalArguments: (recoveredBlock18Stack2).
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Stack0.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) isEmpty.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 42] ifFalse: [recoveredBlock18PC := 80].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack0 := recoveredBlock18Arg1.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) cCodeSettings.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) filenameOperatingSystemKey.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) equals: (recoveredBlock18Stack1).
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 62] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) engineeringSettings.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) fileBasenameTemplate.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack0.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack0 := recoveredLocal3.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) isEmpty.
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            (recoveredBlock18Stack0) ifTrue: [recoveredBlock18PC := 70] ifFalse: [recoveredBlock18PC := 80].
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) cCodeSettings.
            recoveredBlock18PC := 72.
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 75.
        ].
        recoveredBlock18Step = 75 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) defaultFilenameTemplate: (recoveredBlock18Stack1).
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack0.
            recoveredBlock18PC := 80.
        ].
        recoveredBlock18Step = 80 ifTrue: [
            recoveredBlock18Stack0 := self.
            recoveredBlock18PC := 81.
        ].
        recoveredBlock18Step = 81 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 87.
        ].
        recoveredBlock18Step = 87 ifTrue: [
            recoveredBlock18Stack3 := recoveredLocal2.
            recoveredBlock18PC := 90.
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) checkTargetSpecificNameTemplate: (recoveredBlock18Stack1) option: (recoveredBlock18Stack2) validArguments: (recoveredBlock18Stack3).
            recoveredBlock18PC := 93.
        ].
        recoveredBlock18Step = 93 ifTrue: [
            recoveredBlock18Stack1 := [:recoveredBlock18Block93Arg1 | 
    | recoveredBlock18Block93Value0 recoveredBlock18Block93Value1 recoveredBlock18Block93Value2 recoveredBlock18Block93Value3 |
    recoveredBlock18Block93Value0 := (self) cCodeSettings.
    recoveredBlock18Block93Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block93Value2 := recoveredLocal3.
    recoveredBlock18Block93Value3 := (recoveredBlock18Block93Value0) baseFilename: (recoveredBlock18Block93Value1) value: (recoveredBlock18Block93Value2).
    recoveredBlock18Block93Value3
].
            recoveredBlock18PC := 110.
        ].
        recoveredBlock18Step = 110 ifTrue: [
            recoveredBlock18Stack0 := (recoveredBlock18Stack0) ifNotNil: (recoveredBlock18Stack1).
            recoveredBlock18PC := 112.
        ].
        recoveredBlock18Step = 112 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack0.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2047a318; bytecode file offset 0xd76c0c"
!SGBuildCache methodsFor: 'recovered'!
updateEHooksNameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) cCodeSettings.
    recoveredValue1 := (recoveredValue0) globalNamePrefix.
    recoveredValue2 := recoveredValue1.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 31].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := 'must be valid identifier'.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack3 := ASDTargetSpecificOptionsDeclaration.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) globalNamePrefixKey.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            (recoveredBlock10Stack1) invalidTemplate: (recoveredBlock10Stack2) targetSpecificOption: (recoveredBlock10Stack3).
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) ehooksSettings.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) globalNamePrefixKey.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) addTemplate: (recoveredBlock10Stack1) key: (recoveredBlock10Stack2).
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) ehooksSettings.
    recoveredValue5 := (recoveredValue4) validNameTemplateParameter.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := (self) ehooksSettings.
    recoveredValue7 := (recoveredValue6) validGeneralNameTemplateParameter.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) ehooksSettings.
    recoveredValue9 := (recoveredValue8) nameTemplateKeys.
    recoveredValue10 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredLocal1.
    recoveredBlock66Value2 := (self) updateNameTemplateOption: (recoveredBlock66Value0) generalArguments: (recoveredBlock66Value1).
    recoveredBlock66Value3 := [:recoveredBlock66Block80Arg1 | 
    | recoveredBlock66Block80Value0 recoveredBlock66Block80Value1 recoveredBlock66Block80Value2 recoveredBlock66Block80Value3 recoveredBlock66Block80Value4 recoveredBlock66Block80Value5 |
    recoveredBlock66Block80Value0 := recoveredBlock66Block80Arg1.
    recoveredBlock66Block80Value1 := recoveredBlock66Arg1.
    recoveredBlock66Block80Value2 := recoveredLocal2.
    recoveredBlock66Block80Value3 := (self) checkTargetSpecificNameTemplate: (recoveredBlock66Block80Value0) option: (recoveredBlock66Block80Value1) validArguments: (recoveredBlock66Block80Value2).
    recoveredBlock66Block80Value4 := [:recoveredBlock66Block80Block98Arg1 | 
    | recoveredBlock66Block80Block98Value0 recoveredBlock66Block80Block98Value1 recoveredBlock66Block80Block98Value2 recoveredBlock66Block80Block98Value3 |
    recoveredBlock66Block80Block98Value0 := (self) ehooksSettings.
    recoveredBlock66Block80Block98Value1 := recoveredBlock66Block80Arg1.
    recoveredBlock66Block80Block98Value2 := recoveredBlock66Arg1.
    recoveredBlock66Block80Block98Value3 := (recoveredBlock66Block80Block98Value0) addTemplate: (recoveredBlock66Block80Block98Value1) key: (recoveredBlock66Block80Block98Value2).
    recoveredBlock66Block80Block98Value3
].
    recoveredBlock66Block80Value5 := (recoveredBlock66Block80Value3) ifNotNil: (recoveredBlock66Block80Value4).
    recoveredBlock66Block80Value5
].
    recoveredBlock66Value4 := (recoveredBlock66Value2) ifNotNil: (recoveredBlock66Value3).
    recoveredBlock66Value4
].
    (recoveredValue9) do: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x204a4c90; bytecode file offset 0xda15a4"
!SGBuildCache methodsFor: 'recovered'!
setEnvironmentGenOptionsCRC: recoveredArg1 previousGenOptionsCRC: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASDDataTypeNameMappingOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCustomizedDataTypesActive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ASDDataTypeNameMappingOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDataTypeMappingOptions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:block28104c68Arg1 :block28104c68Arg2 | 
    | block28104c68Value0 block28104c68Value1 block28104c68Value2 block28104c68Value3 block28104c68Value4 |
    block28104c68Value0 := block28104c68Arg1.
    block28104c68Value1 := (block28104c68Value0) attributeName.
    block28104c68Value2 := block28104c68Arg2.
    block28104c68Value3 := (block28104c68Value2) attributeName.
    block28104c68Value4 := (block28104c68Value1) < (block28104c68Value3).
    block28104c68Value4
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Value0.
    recoveredBlock44Value2 := recoveredBlock44Arg1.
    recoveredBlock44Value3 := (recoveredBlock44Value2) optionClass.
    recoveredBlock44Value4 := (recoveredBlock44Value3) value.
    (recoveredBlock44Value1) nextPutAll: (recoveredBlock44Value4).
    recoveredBlock44Value5 := (recoveredBlock44Value0) cr.
    recoveredBlock44Value5
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedErrors.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:block28104c8cArg1 :block28104c8cArg2 | 
    | block28104c8cValue0 block28104c8cValue1 block28104c8cValue2 |
    block28104c8cValue0 := block28104c8cArg1.
    block28104c8cValue1 := block28104c8cArg2.
    block28104c8cValue2 := (block28104c8cValue0) < (block28104c8cValue1).
    block28104c8cValue2
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 recoveredBlock82Value4 |
    recoveredBlock82Value0 := recoveredLocal1.
    recoveredBlock82Value1 := recoveredBlock82Value0.
    (recoveredBlock82Value1) cr.
    recoveredBlock82Value2 := recoveredBlock82Arg1.
    recoveredBlock82Value3 := (recoveredBlock82Value2) asString.
    recoveredBlock82Value4 := (recoveredBlock82Value0) nextPutAll: (recoveredBlock82Value3).
    recoveredBlock82Value4
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) environmentGenOptionsCRC: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentGenOptionsCRC.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentGenOptionsCRC.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) resetClassInterfaces.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a9d28; bytecode file offset 0xda6638"
!SGBuildCache methodsFor: 'recovered'!
checkGenerationSettingResolveSystemConstantsValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) resolveSystemConstantsRunTimeKey.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) resolveSystemConstantsCompileTimeKey.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtCompileTime: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := TGTarget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) resolveSystemConstantsGenerationTimeKey.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtGenerationTime: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSpecificOptions.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionResolveSystemConstants.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) label.
    recoveredBlock57Value2 := recoveredArg1.
    recoveredBlock57Value3 := (self) platform.
    recoveredBlock57Value4 := (recoveredBlock57Value3) defaultResolveSystemConstants.
    recoveredBlock57Value5 := recoveredBlock57Arg1.
    recoveredBlock57Value6 := (self) targetSpecificOptionSourceForOption: (recoveredBlock57Value5).
    recoveredBlock57Value7 := (self) makeWarningNo: (40) with: (recoveredBlock57Value1) with: (recoveredBlock57Value2) with: ('') with: (recoveredBlock57Value4) source: (recoveredBlock57Value6).
    recoveredBlock57Value7
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultResolveSystemConstants.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) checkGenerationSettingResolveSystemConstantsValue: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerPath.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSpecificOptions.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionResolveSystemConstants.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 |
    recoveredBlock121Value0 := recoveredBlock121Arg1.
    recoveredBlock121Value1 := (self) targetSpecificOptionSourceForOption: (recoveredBlock121Value0).
    recoveredBlock121Value2 := (self) makeWarningNo: (28) source: (recoveredBlock121Value1).
    recoveredBlock121Value2
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x204bdacc; bytecode file offset 0xdba3d4"
!SGBuildCache methodsFor: 'recovered'!
updateARXmlFilenameOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) validNameTemplateParameter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) validGeneralNameTemplateParameter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) addARXmlValidFilenameTemplateParameter: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredLocal3.
    recoveredBlock25Value2 := (self) updateARXmlTemplateOption: (recoveredBlock25Value0) generalArguments: (recoveredBlock25Value1).
    recoveredLocal2 := recoveredBlock25Value2.
    recoveredBlock25Value3 := recoveredLocal2.
    recoveredBlock25Value4 := recoveredBlock25Arg1.
    recoveredBlock25Value5 := recoveredLocal4.
    recoveredBlock25Value6 := (self) checkARXmlTemplate: (recoveredBlock25Value3) option: (recoveredBlock25Value4) validArguments: (recoveredBlock25Value5).
    recoveredBlock25Value7 := [:recoveredBlock25Block56Arg1 | 
    | recoveredBlock25Block56Stack0 recoveredBlock25Block56Stack1 recoveredBlock25Block56Stack2 recoveredBlock25Block56Stack3 recoveredBlock25Block56Stack4 recoveredBlock25Block56PC recoveredBlock25Block56Step recoveredBlock25Block56Done recoveredBlock25Block56Result |
    recoveredBlock25Block56Stack0 := self.
    recoveredBlock25Block56PC := 62.
    recoveredBlock25Block56Done := false.
    [recoveredBlock25Block56Done not] whileTrue: [
        recoveredBlock25Block56Step := recoveredBlock25Block56PC.
        recoveredBlock25Block56Step = 62 ifTrue: [
            recoveredBlock25Block56Stack1 := nil.
            recoveredBlock25Block56PC := 63.
        ].
        recoveredBlock25Block56Step = 63 ifTrue: [
            recoveredBlock25Block56Stack2 := recoveredBlock25Block56Arg1.
            recoveredBlock25Block56PC := 64.
        ].
        recoveredBlock25Block56Step = 64 ifTrue: [
            recoveredBlock25Block56Stack3 := CfsDirectoryDescriptor.
            recoveredBlock25Block56PC := 66.
        ].
        recoveredBlock25Block56Step = 66 ifTrue: [
            recoveredBlock25Block56Stack3 := (recoveredBlock25Block56Stack3) pathSeparator.
            recoveredBlock25Block56PC := 68.
        ].
        recoveredBlock25Block56Step = 68 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) includes: (recoveredBlock25Block56Stack3).
            recoveredBlock25Block56PC := 70.
        ].
        recoveredBlock25Block56Step = 70 ifTrue: [
            (recoveredBlock25Block56Stack2) ifTrue: [recoveredBlock25Block56PC := 91] ifFalse: [recoveredBlock25Block56PC := 74].
        ].
        recoveredBlock25Block56Step = 74 ifTrue: [
            recoveredBlock25Block56PC := 75.
        ].
        recoveredBlock25Block56Step = 75 ifTrue: [
            recoveredBlock25Block56Stack1 := nil.
            recoveredBlock25Block56PC := 76.
        ].
        recoveredBlock25Block56Step = 76 ifTrue: [
            recoveredBlock25Block56Stack2 := recoveredBlock25Block56Arg1.
            recoveredBlock25Block56PC := 77.
        ].
        recoveredBlock25Block56Step = 77 ifTrue: [
            recoveredBlock25Block56Stack2 := (recoveredBlock25Block56Stack2) isValidANSICIdentifier.
            recoveredBlock25Block56PC := 79.
        ].
        recoveredBlock25Block56Step = 79 ifTrue: [
            (recoveredBlock25Block56Stack2) ifTrue: [recoveredBlock25Block56PC := 91] ifFalse: [recoveredBlock25Block56PC := 82].
        ].
        recoveredBlock25Block56Step = 82 ifTrue: [
            recoveredBlock25Block56PC := 83.
        ].
        recoveredBlock25Block56Step = 83 ifTrue: [
            recoveredBlock25Block56Stack1 := self.
            recoveredBlock25Block56PC := 84.
        ].
        recoveredBlock25Block56Step = 84 ifTrue: [
            recoveredBlock25Block56Stack2 := 'Filename does not  match specification'.
            recoveredBlock25Block56PC := 86.
        ].
        recoveredBlock25Block56Step = 86 ifTrue: [
            recoveredBlock25Block56Stack3 := recoveredBlock25Arg1.
            recoveredBlock25Block56PC := 89.
        ].
        recoveredBlock25Block56Step = 89 ifTrue: [
            recoveredBlock25Block56Stack1 := (recoveredBlock25Block56Stack1) invalidTemplate: (recoveredBlock25Block56Stack2) option: (recoveredBlock25Block56Stack3).
            recoveredBlock25Block56PC := 91.
        ].
        recoveredBlock25Block56Step = 91 ifTrue: [
            recoveredBlock25Block56Result := recoveredBlock25Block56Stack1.
            recoveredBlock25Block56Done := true.
        ].
    ].
    recoveredBlock25Block56Result
].
    (recoveredBlock25Value6) ifNotNil: (recoveredBlock25Value7).
    recoveredBlock25Value8 := (self) autosarSettings.
    recoveredBlock25Value9 := recoveredBlock25Arg1.
    recoveredBlock25Value10 := (recoveredBlock25Value9) attributeName.
    recoveredBlock25Value11 := recoveredLocal2.
    recoveredBlock25Value12 := (recoveredBlock25Value8) arFilename: (recoveredBlock25Value10) value: (recoveredBlock25Value11).
    recoveredBlock25Value12
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsARGenerateConstantMemory.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := '%SWCOMPONENT.NAME%_recordLayout'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWithGeneralArguments: (recoveredStack1) ifAbsentContinue: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'filenameRecordLayout'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) arFilename: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050c414; bytecode file offset 0xe08d4c"
!SGBuildCache methodsFor: 'recovered'!
updateGenerationSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isAnyPhysicalVariant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) contImplOverride: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isContImplementationTypeSingle.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) contImplTypeOverrideSingle: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) matrixOrientation.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) matrixOrientation: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) matrixDimensions.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) matrixDimensions: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameForMessageMemcpy.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) nameForMessageMemcpy: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) arrayReferenceStructOnStack4Variables.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) arrayReferenceStructOnStack4Variables: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) arrayReferenceStructOnStack4Parameters.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) arrayReferenceStructOnStack4Parameters: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExperimentalTarget.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenerationOptions.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageUsageVariant.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageCopyVariant.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) messageCopyVariant: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnabledMessageCopyGeneration.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) mustPerformMessageAccessAnalysis: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnabledMessageCopyGeneration.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformMessageCopyGeneration: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEHooksTarget.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) mustPerformMessageAccessAnalysis: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageUsageVariantNoCopy.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) messageCopyVariant: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEnabledAccessMacroGeneration.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) mustPerformAccessMacroGeneration: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) generationSettings.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) isExperimentalTarget.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEHooksTarget.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) useMemoryClassDefault: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveSystemConstants.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) checkGenerationSettingResolveSystemConstantsValue: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20514394; bytecode file offset 0xe10ccc"
!SGBuildCache methodsFor: 'recovered'!
updateEHooksSettings
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) configId: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateEHooksNameOptions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) initEHooksConfigQuiet: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) missingFilenameString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) configFileName.
    recoveredBlock59Value2 := (recoveredBlock59Value1) asFilename.
    recoveredLocal3 := recoveredBlock59Value2.
    recoveredBlock59Value3 := recoveredLocal4.
    recoveredBlock59Value4 := recoveredBlock59Arg1.
    recoveredBlock59Value5 := (recoveredBlock59Value4) identifier.
    recoveredBlock59Value6 := (recoveredBlock59Value3) configId: (recoveredBlock59Value5).
    recoveredBlock59Value6
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := '<empty>'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'FileMissing'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := 'EHOOKS configuration file (*.ehcfg) must be available.'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) ehooksConfigurationSource.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ehConfigFilename: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'EH_ARG_PUT_%ECULABEL%(%VALUE%)'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) ehooksSetTemplateKey.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) addTemplate: (recoveredStack2) key: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'EH_ARG_GET_%ECULABEL%(EH_context)'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) ehooksGetTemplateKey.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctionUseCriticalSection.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) bypassFunctionUseCriticalSection: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20515ad8; bytecode file offset 0xe12408"
!SGBuildCache methodsFor: 'recovered'!
checkTargetSpecificEHooksOptions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueExternalBuildToolEnabled.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsExternalBuildTool.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExternalBuildTool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Missing Target Specific Option'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalMessage: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 610.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) target.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) label.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetSpecificOptionSourceForOption: (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) errorNo: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) externalBuildToolIdKey.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74Stack5 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredArg1.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) getOptionClassForKey: (recoveredBlock74Stack2).
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            recoveredBlock74Stack2 := recoveredArg1.
            recoveredBlock74PC := 89.
        ].
        recoveredBlock74Step = 89 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Arg1.
            recoveredBlock74PC := 90.
        ].
        recoveredBlock74Step = 90 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) valueForKey: (recoveredBlock74Stack3).
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            recoveredBlock74Stack3 := self.
            recoveredBlock74PC := 93.
        ].
        recoveredBlock74Step = 93 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) target.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) validBuildTools.
            recoveredBlock74PC := 96.
        ].
        recoveredBlock74Step = 96 ifTrue: [
            recoveredBlock74Stack4 := [:block2810b844Arg1 | 
    | block2810b844Value0 block2810b844Value1 |
    block2810b844Value0 := block2810b844Arg1.
    block2810b844Value1 := (block2810b844Value0) identifier.
    block2810b844Value1
].
            recoveredBlock74PC := 98.
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74PC := 106.
        ].
        recoveredBlock74Step = 106 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) collect: (recoveredBlock74Stack4).
            recoveredBlock74PC := 108.
        ].
        recoveredBlock74Step = 108 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) checkTargetSpecificEnumOptions: (recoveredBlock74Stack1) value: (recoveredBlock74Stack2) availableValues: (recoveredBlock74Stack3).
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack0.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalControllerVariant.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExistingTool.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsPhysicalController.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionExternalBuildTool.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 163] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 'Missing Target Specific Option'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalMessage: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 240.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetSpecificOptionSourceForOption: (recoveredStack4).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) errorNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasCurrentErrors.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20563034; bytecode file offset 0xe5f990"
!SGBuildCache methodsFor: 'recovered'!
readMacroIniFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := codeGenIniOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 233] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := SGCgEngineeringSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileBasedNameKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'ARARRAYBASETYPEPASSING'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            codeGenIniOptions := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := codeGenIniOptions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'KEYWORDS'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := SGCgEngineeringSettings.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) protDiv0MacroNameKey.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := SGCgEngineeringSettings.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) protDiv0MacroNameDefault.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControllerVariant.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 155].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := codeGenIniOptions.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := SGIlExpander.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) optimizeFixedCharTableKey.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 'TRUE'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := SGCgEngineeringSettings.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) extendedConditionalInputValuesKey.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := SGCgEngineeringSettings.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) conditionalInputValuesKey.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := SGCgEngineeringSettings.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) suppressCheckForUpperVariantBoundKey.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := SGIlExpander.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) conditionalDataStructureKey.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := SGCgEngineeringSettings.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileBasedNameKey.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := '%COMPONENT.NAME%'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'OSTOTALUSERSTACKSIZE'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := '128'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsComSpecKey.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := 'TRUE'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsProcessRteInGenerateKey.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsConstantMemoryKey.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsStaticMemoryKey.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 'FALSE'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) ifAbsentPut: (recoveredStack4).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) codegenIniFile.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMacroIniFile: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := [:recoveredBlock171Arg1 :recoveredBlock171Arg2 | 
    | recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171Stack4 recoveredBlock171Stack5 recoveredBlock171Stack6 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := codeGenIniOptions.
            recoveredBlock171PC := 180.
        ].
        recoveredBlock171Step = 180 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 181.
        ].
        recoveredBlock171Step = 181 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) includesKey: (recoveredBlock171Stack2).
            recoveredBlock171PC := 183.
        ].
        recoveredBlock171Step = 183 ifTrue: [
            (recoveredBlock171Stack1) ifTrue: [recoveredBlock171PC := 196] ifFalse: [recoveredBlock171PC := 186].
        ].
        recoveredBlock171Step = 186 ifTrue: [
            recoveredBlock171Stack1 := recoveredLocal1.
            recoveredBlock171PC := 189.
        ].
        recoveredBlock171Step = 189 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 190.
        ].
        recoveredBlock171Step = 190 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) includes: (recoveredBlock171Stack2).
            recoveredBlock171PC := 192.
        ].
        recoveredBlock171Step = 192 ifTrue: [
            (recoveredBlock171Stack1) ifTrue: [recoveredBlock171PC := 196] ifFalse: [recoveredBlock171PC := 206].
        ].
        recoveredBlock171Step = 196 ifTrue: [
            recoveredBlock171Stack1 := codeGenIniOptions.
            recoveredBlock171PC := 198.
        ].
        recoveredBlock171Step = 198 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 199.
        ].
        recoveredBlock171Step = 199 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Arg2.
            recoveredBlock171PC := 200.
        ].
        recoveredBlock171Step = 200 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) at: (recoveredBlock171Stack2) put: (recoveredBlock171Stack3).
            recoveredBlock171PC := 202.
        ].
        recoveredBlock171Step = 202 ifTrue: [
            recoveredBlock171PC := 222.
        ].
        recoveredBlock171Step = 206 ifTrue: [
            recoveredBlock171Stack1 := self.
            recoveredBlock171PC := 207.
        ].
        recoveredBlock171Step = 207 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) errorHandler.
            recoveredBlock171PC := 209.
        ].
        recoveredBlock171Step = 209 ifTrue: [
            recoveredBlock171Stack2 := 35.
            recoveredBlock171PC := 211.
        ].
        recoveredBlock171Step = 211 ifTrue: [
            recoveredBlock171Stack3 := Array.
            recoveredBlock171PC := 213.
        ].
        recoveredBlock171Step = 213 ifTrue: [
            recoveredBlock171Stack4 := recoveredBlock171Arg1.
            recoveredBlock171PC := 214.
        ].
        recoveredBlock171Step = 214 ifTrue: [
            recoveredBlock171Stack3 := (recoveredBlock171Stack3) with: (recoveredBlock171Stack4).
            recoveredBlock171PC := 216.
        ].
        recoveredBlock171Step = 216 ifTrue: [
            recoveredBlock171Stack4 := 'Ile'.
            recoveredBlock171PC := 218.
        ].
        recoveredBlock171Step = 218 ifTrue: [
            recoveredBlock171Stack5 := nil.
            recoveredBlock171PC := 219.
        ].
        recoveredBlock171Step = 219 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) warningNo: (recoveredBlock171Stack2) args: (recoveredBlock171Stack3) category: (recoveredBlock171Stack4) source: (recoveredBlock171Stack5).
            recoveredBlock171PC := 222.
        ].
        recoveredBlock171Step = 222 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := codeGenIniOptions.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2059ac64; bytecode file offset 0xe97608"
!SGBuildCache methodsFor: 'recovered'!
update
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Date.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) today.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) generationDate: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) generationTime: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getVariantKey.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) variantKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalTo: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Call_79829'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            variantKey := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPhysicalVariant.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isQuantFloatExperimentVariant.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := true.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) isPhysicalVariant.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 78] ifFalse: [recoveredBlock60PC := 74].
        ].
        recoveredBlock60Step = 74 ifTrue: [
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60Stack1 := self.
            recoveredBlock60PC := 76.
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) isQuantFloatExperimentVariant.
            recoveredBlock60PC := 78.
        ].
        recoveredBlock60Step = 78 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) xor: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) resetClassInterfaces.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) updateClassInterfaces.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            variantKey := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            targetOptions := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) updateCompileLinkOptionsCache.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) updateOSEnvironmentInfo.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'Call_81643'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := generationOptionsCRC.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorVariant.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) duplicate.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            generationOptionsCRC := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := generationOptionsCRC.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) resetOptions.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptions.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) compilerPhrases: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationOptions.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) osToolGenerationOptions: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGenerationOptions.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) setEnvironmentGenOptionsCRC: (recoveredStack1) previousGenOptionsCRC: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorCID.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) generatorCID: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) memClassDeclarationsCRC.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) memClassDeclarationsCRC: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptionsCRC.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) targetSpecificOptionsCRC: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulasCRC.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) formulasCRC: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) codegenIniCRC.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) codegenIniCRC: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetOptions.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSettings.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalTo: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetSettings.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            targetOptions := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) updateCompileLinkOptionsCache.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) resetCodeGenIniOptions.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) cacheLockingFunctionDeclarationMacro.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) updateCustomBuildOptions.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 285].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) arXmlConfigurationCRC.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) arXmlConfigurationCRC: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) arInternalMappingCRC.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) arInternalMappingCRC: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) arExternalMappingCRC.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) arExternalMappingCRC: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) arParameterMappingCRC.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) arParameterMappingCRC: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a9480; bytecode file offset 0xea5dc4"
!SGBuildCache methodsFor: 'recovered'!
updateCCodeNameOptions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamePrefixKey.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateNameTemplateOption: (recoveredStack1) generalArguments: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
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
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isEmpty.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 70] ifFalse: [recoveredBlock18PC := 34].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := 'asd_prefix_'.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack3 := ASDTargetSpecificOptionsDeclaration.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) globalNamePrefixKey.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack4 := LookupTable.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) new.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) checkTargetSpecificNameTemplate: (recoveredBlock18Stack2) option: (recoveredBlock18Stack3) validArguments: (recoveredBlock18Stack4).
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block54Arg1 | 
    | recoveredBlock18Block54Value0 recoveredBlock18Block54Value1 |
    recoveredBlock18Block54Value0 := recoveredBlock18Arg1.
    recoveredBlock18Block54Value1 := recoveredBlock18Block54Value0.
    recoveredLocal1 := recoveredBlock18Block54Value1.
    recoveredBlock18Block54Value0
].
            recoveredBlock18PC := 68.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ifNotNil: (recoveredBlock18Stack2).
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalNamePrefixKey.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerationOptions.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) prefixComponentName.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidANSICIdentifier.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeConfig.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 80.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) projectOptionSource.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) makeErrNo: (recoveredStack1) with: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) cCodeSettings.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectPropertiesComponentPrefixKey.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) validNameTemplateParameter.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) validGeneralNameTemplateParameter.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameTemplateKeys.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := [:recoveredBlock159Arg1 | 
    | recoveredBlock159Value0 recoveredBlock159Value1 recoveredBlock159Value2 recoveredBlock159Value3 recoveredBlock159Value4 |
    recoveredBlock159Value0 := recoveredBlock159Arg1.
    recoveredBlock159Value1 := recoveredLocal2.
    recoveredBlock159Value2 := (self) updateNameTemplateOption: (recoveredBlock159Value0) generalArguments: (recoveredBlock159Value1).
    recoveredBlock159Value3 := [:recoveredBlock159Block174Arg1 | 
    | recoveredBlock159Block174Value0 recoveredBlock159Block174Value1 recoveredBlock159Block174Value2 recoveredBlock159Block174Value3 recoveredBlock159Block174Value4 recoveredBlock159Block174Value5 |
    recoveredBlock159Block174Value0 := recoveredBlock159Block174Arg1.
    recoveredBlock159Block174Value1 := recoveredBlock159Arg1.
    recoveredBlock159Block174Value2 := recoveredLocal3.
    recoveredBlock159Block174Value3 := (self) checkTargetSpecificNameTemplate: (recoveredBlock159Block174Value0) option: (recoveredBlock159Block174Value1) validArguments: (recoveredBlock159Block174Value2).
    recoveredBlock159Block174Value4 := [:recoveredBlock159Block174Block192Arg1 | 
    | recoveredBlock159Block174Block192Value0 recoveredBlock159Block174Block192Value1 recoveredBlock159Block174Block192Value2 recoveredBlock159Block174Block192Value3 |
    recoveredBlock159Block174Block192Value0 := (self) cCodeSettings.
    recoveredBlock159Block174Block192Value1 := recoveredBlock159Block174Arg1.
    recoveredBlock159Block174Block192Value2 := recoveredBlock159Arg1.
    recoveredBlock159Block174Block192Value3 := (recoveredBlock159Block174Block192Value0) addTemplate: (recoveredBlock159Block174Block192Value1) key: (recoveredBlock159Block174Block192Value2).
    recoveredBlock159Block174Block192Value3
].
    recoveredBlock159Block174Value5 := (recoveredBlock159Block174Value3) ifNotNil: (recoveredBlock159Block174Value4).
    recoveredBlock159Block174Value5
].
    recoveredBlock159Value4 := (recoveredBlock159Value2) ifNotNil: (recoveredBlock159Value3).
    recoveredBlock159Value4
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) cCodeSettings.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := SGCgCCodeSettings.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) nameExportedElementKey.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) templateOrEmptyString: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedElementWithPrefixKey.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) cCodeSettings.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := SGCgCCodeSettings.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) nameExportedCharacteristicKey.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) templateOrEmptyString: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedCharacteristicWithPrefixKey.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := '%^COMPONENT.NAME^%%_?^COMPONENT.IMPL.NAME^?%_%METHOD.NAME%'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := (recoveredStack2) namePrototypeKey.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) asapNameTemplateKeys.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := [:recoveredBlock279Arg1 | 
    | recoveredBlock279Value0 recoveredBlock279Value1 recoveredBlock279Value2 recoveredBlock279Value3 recoveredBlock279Value4 recoveredBlock279Value5 |
    recoveredBlock279Value0 := (self) cCodeSettings.
    recoveredBlock279Value1 := (self) cCodeSettings.
    recoveredBlock279Value2 := recoveredBlock279Arg1.
    recoveredBlock279Value3 := (recoveredBlock279Value1) defaultASAPNameTemplate: (recoveredBlock279Value2).
    recoveredBlock279Value4 := recoveredBlock279Arg1.
    recoveredBlock279Value5 := (recoveredBlock279Value0) addTemplate: (recoveredBlock279Value3) key: (recoveredBlock279Value4).
    recoveredBlock279Value5
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ccddc; bytecode file offset 0xec97a0"
!SGBuildCache methodsFor: 'recovered'!
updateAutosarSettings
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformAutosarGeneration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportedAUTOSARVersion.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) versionString: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportedShortNameLength.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) shortNameLength: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) osTool.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) arxmlConfigurationDeclFilename.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) scopeCache.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlConfigurationFile.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) scopeCache.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificPathTokens.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) readARXmlConfigurationFile: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) arSupportsProcessRteInGenerateKey.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) engineeringSettings.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsProcessRteInGenerateKey.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) set: (recoveredStack1) boolOption: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) arSupportsComSpecKey.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) engineeringSettings.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsComSpecKey.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) set: (recoveredStack1) boolOption: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) arSupportsConstantMemoryKey.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) engineeringSettings.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsConstantMemoryKey.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) set: (recoveredStack1) boolOption: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := SGCgAutosarSettings.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) arSupportsStaticMemoryKey.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) engineeringSettings.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := SGCgAutosarSettings.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) arSupportsStaticMemoryKey.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBoolean: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) set: (recoveredStack1) boolOption: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) autosarSettings.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) content.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) arXmlConfigurationCRCValue: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := mdlClassInterfaces.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := [:block281190f8Arg1 | 
    | block281190f8Value0 block281190f8Value1 |
    block281190f8Value0 := block281190f8Arg1.
    block281190f8Value1 := (block281190f8Value0) isMdlSWComponent.
    block281190f8Value1
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 recoveredBlock162Value3 recoveredBlock162Value4 recoveredBlock162Value5 recoveredBlock162Value6 recoveredBlock162Value7 recoveredBlock162Value8 recoveredBlock162Value9 recoveredBlock162Value10 recoveredBlock162Value11 recoveredBlock162Value12 recoveredBlock162Value13 recoveredBlock162Value14 recoveredBlock162Value15 recoveredBlock162Value16 recoveredBlock162Value17 recoveredBlock162Value18 recoveredBlock162Value19 recoveredBlock162Value20 recoveredBlock162Value21 recoveredBlock162Value22 recoveredBlock162Value23 recoveredBlock162Value24 recoveredBlock162Value25 recoveredBlock162Value26 recoveredBlock162Value27 recoveredBlock162Value28 |
    recoveredBlock162Value0 := (self) autosarSettings.
    recoveredBlock162Value1 := recoveredBlock162Arg1.
    recoveredBlock162Value2 := (recoveredBlock162Value1) mdlClassType.
    (recoveredBlock162Value0) swComponentType: (recoveredBlock162Value2).
    recoveredBlock162Value3 := (self) autosarSettings.
    recoveredBlock162Value4 := (recoveredBlock162Value3) swComponentType.
    recoveredBlock162Value5 := (recoveredBlock162Value4) attributes.
    recoveredBlock162Value6 := recoveredBlock162Arg1.
    recoveredBlock162Value7 := (recoveredBlock162Value6) componentInfo.
    (recoveredBlock162Value5) componentInfo: (recoveredBlock162Value7).
    recoveredBlock162Value8 := ASDXMLARConfigurationOptionsDeclaration.
    recoveredBlock162Value9 := (recoveredBlock162Value8) instance.
    recoveredBlock162Value10 := (self) autosarSettings.
    recoveredBlock162Value11 := (recoveredBlock162Value10) optionPatternPackage.
    recoveredBlock162Value12 := (recoveredBlock162Value9) selectOptionsPattern: (recoveredBlock162Value11).
    (self) updateARXmlPackageOptions: (recoveredBlock162Value12).
    recoveredBlock162Value13 := ASDXMLARConfigurationOptionsDeclaration.
    recoveredBlock162Value14 := (recoveredBlock162Value13) instance.
    recoveredBlock162Value15 := (self) autosarSettings.
    recoveredBlock162Value16 := (recoveredBlock162Value15) optionPatternShortName.
    recoveredBlock162Value17 := (recoveredBlock162Value14) selectOptionsPattern: (recoveredBlock162Value16).
    (self) updateARXmlShortNameOptions: (recoveredBlock162Value17).
    recoveredBlock162Value18 := ASDXMLARConfigurationOptionsDeclaration.
    recoveredBlock162Value19 := (recoveredBlock162Value18) instance.
    recoveredBlock162Value20 := (self) autosarSettings.
    recoveredBlock162Value21 := (recoveredBlock162Value20) optionPatternFilename.
    recoveredBlock162Value22 := (recoveredBlock162Value19) selectOptionsPattern: (recoveredBlock162Value21).
    (self) updateARXmlFilenameOptions: (recoveredBlock162Value22).
    recoveredBlock162Value23 := ASDXMLARConfigurationOptionsDeclaration.
    recoveredBlock162Value24 := (recoveredBlock162Value23) instance.
    recoveredBlock162Value25 := (self) autosarSettings.
    recoveredBlock162Value26 := (recoveredBlock162Value25) optionPatternMiscTemplate.
    recoveredBlock162Value27 := (recoveredBlock162Value24) selectOptionsPattern: (recoveredBlock162Value26).
    recoveredBlock162Value28 := (self) updateARXmlMiscOptions: (recoveredBlock162Value27).
    recoveredBlock162Value28
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := ASDXMLARConfigurationOptionsDeclaration.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) autosarSettings.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionPatternMiscBoolean.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectOptionsPattern: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) updateARXmlMiscBoolOptions: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) cCodeSettings.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentPrefix.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) cCodeSettings.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectPropertiesGlobalElementPrefixKey.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) cCodeSettings.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedElementWithPrefixKey.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) template: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedElementKey.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeSettings.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) cCodeSettings.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedCharacteristicWithPrefixKey.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) template: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := SGCgCCodeSettings.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) nameExportedCharacteristicKey.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) addTemplate: (recoveredStack1) key: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := SGGeneratorFactory.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) activateAutosarXmlGenerationStrategy.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20606f24; bytecode file offset 0xf038b8"
!SGBuildCache methodsFor: 'recovered'!
updateEHooksApplicationServer: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustPerformExternalBuildTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationServerRunning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 460] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) startApplicationServer.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) applicationServerRunning: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildTool.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolChainDriverDummyRootPath.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildTool.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolChainDriverFilename.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) toolChainDriver: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScripting.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) platform.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) buildTool.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) supportsOptionsDialog.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 76] ifFalse: [recoveredBlock60PC := 86].
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60Stack0 := recoveredBlock60Arg1.
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) buildOptions.
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Stack0.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock60Stack1.
            recoveredBlock60PC := 83.
        ].
        recoveredBlock60Step = 83 ifTrue: [
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal9.
            recoveredBlock60PC := 89.
        ].
        recoveredBlock60Step = 89 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) externalToolBuildCommands.
            recoveredBlock60PC := 91.
        ].
        recoveredBlock60Step = 91 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Stack0.
            recoveredBlock60PC := 92.
        ].
        recoveredBlock60Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock60Stack1.
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 95 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack0.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102Stack4 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal9.
            recoveredBlock102PC := 111.
        ].
        recoveredBlock102Step = 111 ifTrue: [
            recoveredBlock102Stack2 := recoveredBlock102Arg1.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) backendLocation.
            recoveredBlock102PC := 114.
        ].
        recoveredBlock102Step = 114 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) asPathname.
            recoveredBlock102PC := 116.
        ].
        recoveredBlock102Step = 116 ifTrue: [
            recoveredBlock102Stack3 := recoveredLocal9.
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            recoveredBlock102Stack3 := (recoveredBlock102Stack3) buildTool.
            recoveredBlock102PC := 121.
        ].
        recoveredBlock102Step = 121 ifTrue: [
            recoveredBlock102Stack3 := (recoveredBlock102Stack3) toolChainDriverFilename.
            recoveredBlock102PC := 123.
        ].
        recoveredBlock102Step = 123 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) , (recoveredBlock102Stack3).
            recoveredBlock102PC := 125.
        ].
        recoveredBlock102Step = 125 ifTrue: [
            (recoveredBlock102Stack1) toolChainDriver: (recoveredBlock102Stack2).
            recoveredBlock102PC := 127.
        ].
        recoveredBlock102Step = 127 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal9.
            recoveredBlock102PC := 130.
        ].
        recoveredBlock102Step = 130 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) supportsPasswordPathname.
            recoveredBlock102PC := 132.
        ].
        recoveredBlock102Step = 132 ifTrue: [
            (recoveredBlock102Stack1) ifTrue: [recoveredBlock102PC := 136] ifFalse: [recoveredBlock102PC := 167].
        ].
        recoveredBlock102Step = 136 ifTrue: [
            recoveredBlock102Stack1 := recoveredBlock102Arg1.
            recoveredBlock102PC := 137.
        ].
        recoveredBlock102Step = 137 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) temporaryPasswordPath.
            recoveredBlock102PC := 139.
        ].
        recoveredBlock102Step = 139 ifTrue: [
            recoveredBlock102Stack2 := [:recoveredBlock102Block139Arg1 | 
    | recoveredBlock102Block139Value0 recoveredBlock102Block139Value1 recoveredBlock102Block139Value2 recoveredBlock102Block139Value3 recoveredBlock102Block139Value4 recoveredBlock102Block139Value5 |
    recoveredBlock102Block139Value0 := recoveredBlock102Block139Arg1.
    recoveredBlock102Block139Value1 := ('--passfile=""') , (recoveredBlock102Block139Value0).
    recoveredBlock102Block139Value2 := (recoveredBlock102Block139Value1) , ('"" ').
    recoveredBlock102Block139Value3 := recoveredLocal1.
    recoveredBlock102Block139Value4 := (recoveredBlock102Block139Value2) , (recoveredBlock102Block139Value3).
    recoveredBlock102Block139Value5 := recoveredBlock102Block139Value4.
    recoveredLocal1 := recoveredBlock102Block139Value5.
    recoveredBlock102Block139Value4
].
            recoveredBlock102PC := 165.
        ].
        recoveredBlock102Step = 165 ifTrue: [
            (recoveredBlock102Stack1) ifNotNil: (recoveredBlock102Stack2).
            recoveredBlock102PC := 167.
        ].
        recoveredBlock102Step = 167 ifTrue: [
            recoveredBlock102Stack1 := recoveredLocal9.
            recoveredBlock102PC := 170.
        ].
        recoveredBlock102Step = 170 ifTrue: [
            recoveredBlock102Stack2 := recoveredLocal1.
            recoveredBlock102PC := 173.
        ].
        recoveredBlock102Step = 173 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) externalToolBuildCommands: (recoveredBlock102Stack2).
            recoveredBlock102PC := 175.
        ].
        recoveredBlock102Step = 175 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := '%TARGET%'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'include'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := '%TARGET%'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 'intpol'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) platform.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerTool.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) includePaths.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 |
    recoveredBlock222Value0 := recoveredLocal9.
    recoveredBlock222Value1 := recoveredBlock222Arg1.
    recoveredBlock222Value2 := (recoveredBlock222Value1) asPathnameNoTrailingSeparator.
    recoveredBlock222Value3 := (recoveredBlock222Value0) filenameTemplate: (recoveredBlock222Value2).
    recoveredBlock222Value3
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := [:recoveredBlock244Arg1 | 
    | recoveredBlock244Value0 recoveredBlock244Value1 recoveredBlock244Value2 |
    recoveredBlock244Value0 := (self) hostAccess.
    recoveredBlock244Value1 := recoveredBlock244Arg1.
    recoveredBlock244Value2 := (recoveredBlock244Value0) checkExistency: (recoveredBlock244Value1).
    recoveredBlock244Value2
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := [:recoveredBlock268Arg1 | 
    | recoveredBlock268Local1 recoveredBlock268Stack0 recoveredBlock268Stack1 recoveredBlock268Stack2 recoveredBlock268Stack3 recoveredBlock268Stack4 recoveredBlock268PC recoveredBlock268Step recoveredBlock268Done recoveredBlock268Result |
    recoveredBlock268Stack0 := self.
    recoveredBlock268PC := 274.
    recoveredBlock268Done := false.
    [recoveredBlock268Done not] whileTrue: [
        recoveredBlock268Step := recoveredBlock268PC.
        recoveredBlock268Step = 274 ifTrue: [
            recoveredBlock268Stack1 := nil.
            recoveredBlock268PC := 275.
        ].
        recoveredBlock268Step = 275 ifTrue: [
            recoveredBlock268Stack2 := OSCall.
            recoveredBlock268PC := 277.
        ].
        recoveredBlock268Step = 277 ifTrue: [
            recoveredBlock268Stack2 := (recoveredBlock268Stack2) new.
            recoveredBlock268PC := 279.
        ].
        recoveredBlock268Step = 279 ifTrue: [
            recoveredBlock268Stack3 := recoveredBlock268Arg1.
            recoveredBlock268PC := 280.
        ].
        recoveredBlock268Step = 280 ifTrue: [
            recoveredBlock268Stack2 := (recoveredBlock268Stack2) getLongPathName: (recoveredBlock268Stack3).
            recoveredBlock268PC := 282.
        ].
        recoveredBlock268Step = 282 ifTrue: [
            recoveredBlock268Stack3 := recoveredBlock268Stack2.
            recoveredBlock268PC := 283.
        ].
        recoveredBlock268Step = 283 ifTrue: [
            recoveredBlock268Local1 := recoveredBlock268Stack3.
            recoveredBlock268PC := 284.
        ].
        recoveredBlock268Step = 284 ifTrue: [
            recoveredBlock268Stack2 := (recoveredBlock268Stack2) notEmpty.
            recoveredBlock268PC := 286.
        ].
        recoveredBlock268Step = 286 ifTrue: [
            (recoveredBlock268Stack2) ifTrue: [recoveredBlock268PC := 290] ifFalse: [recoveredBlock268PC := 297].
        ].
        recoveredBlock268Step = 290 ifTrue: [
            recoveredBlock268PC := 291.
        ].
        recoveredBlock268Step = 291 ifTrue: [
            recoveredBlock268Stack1 := recoveredLocal3.
            recoveredBlock268PC := 294.
        ].
        recoveredBlock268Step = 294 ifTrue: [
            recoveredBlock268Stack2 := recoveredBlock268Local1.
            recoveredBlock268PC := 295.
        ].
        recoveredBlock268Step = 295 ifTrue: [
            recoveredBlock268Stack1 := (recoveredBlock268Stack1) add: (recoveredBlock268Stack2).
            recoveredBlock268PC := 297.
        ].
        recoveredBlock268Step = 297 ifTrue: [
            recoveredBlock268Result := recoveredBlock268Stack1.
            recoveredBlock268Done := true.
        ].
    ].
    recoveredBlock268Result
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) includePaths: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := '%TARGET%'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := 'intpol\lib\'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryPaths.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := [:recoveredBlock338Arg1 | 
    | recoveredBlock338Value0 recoveredBlock338Value1 recoveredBlock338Value2 recoveredBlock338Value3 |
    recoveredBlock338Value0 := recoveredLocal9.
    recoveredBlock338Value1 := recoveredBlock338Arg1.
    recoveredBlock338Value2 := (recoveredBlock338Value1) asPathname.
    recoveredBlock338Value3 := (recoveredBlock338Value0) filenameTemplate: (recoveredBlock338Value2).
    recoveredBlock338Value3
].
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Value0 recoveredBlock360Value1 recoveredBlock360Value2 |
    recoveredBlock360Value0 := (self) hostAccess.
    recoveredBlock360Value1 := recoveredBlock360Arg1.
    recoveredBlock360Value2 := (recoveredBlock360Value0) checkExistency: (recoveredBlock360Value1).
    recoveredBlock360Value2
].
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := [:recoveredBlock382Arg1 | 
    | recoveredBlock382Value0 recoveredBlock382Value1 recoveredBlock382Value2 recoveredBlock382Value3 recoveredBlock382Value4 recoveredBlock382Value5 recoveredBlock382Value6 recoveredBlock382Value7 |
    recoveredBlock382Value0 := recoveredLocal6.
    recoveredBlock382Value1 := CfsDirectoryDescriptor.
    recoveredBlock382Value2 := recoveredLocal4.
    recoveredBlock382Value3 := (recoveredBlock382Value2) getLibraryExtension.
    recoveredBlock382Value4 := ('*') , (recoveredBlock382Value3).
    recoveredBlock382Value5 := recoveredBlock382Arg1.
    recoveredBlock382Value6 := (recoveredBlock382Value1) findFileNames: (recoveredBlock382Value4) in: (recoveredBlock382Value5).
    recoveredBlock382Value7 := (recoveredBlock382Value0) addAll: (recoveredBlock382Value6).
    recoveredBlock382Value7
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := [:recoveredBlock420Arg1 | 
    | recoveredBlock420Local1 recoveredBlock420Stack0 recoveredBlock420Stack1 recoveredBlock420Stack2 recoveredBlock420Stack3 recoveredBlock420Stack4 recoveredBlock420PC recoveredBlock420Step recoveredBlock420Done recoveredBlock420Result |
    recoveredBlock420Stack0 := self.
    recoveredBlock420PC := 426.
    recoveredBlock420Done := false.
    [recoveredBlock420Done not] whileTrue: [
        recoveredBlock420Step := recoveredBlock420PC.
        recoveredBlock420Step = 426 ifTrue: [
            recoveredBlock420Stack1 := nil.
            recoveredBlock420PC := 427.
        ].
        recoveredBlock420Step = 427 ifTrue: [
            recoveredBlock420Stack2 := OSCall.
            recoveredBlock420PC := 429.
        ].
        recoveredBlock420Step = 429 ifTrue: [
            recoveredBlock420Stack2 := (recoveredBlock420Stack2) new.
            recoveredBlock420PC := 431.
        ].
        recoveredBlock420Step = 431 ifTrue: [
            recoveredBlock420Stack3 := recoveredBlock420Arg1.
            recoveredBlock420PC := 432.
        ].
        recoveredBlock420Step = 432 ifTrue: [
            recoveredBlock420Stack2 := (recoveredBlock420Stack2) getLongPathName: (recoveredBlock420Stack3).
            recoveredBlock420PC := 434.
        ].
        recoveredBlock420Step = 434 ifTrue: [
            recoveredBlock420Stack3 := recoveredBlock420Stack2.
            recoveredBlock420PC := 435.
        ].
        recoveredBlock420Step = 435 ifTrue: [
            recoveredBlock420Local1 := recoveredBlock420Stack3.
            recoveredBlock420PC := 436.
        ].
        recoveredBlock420Step = 436 ifTrue: [
            recoveredBlock420Stack2 := (recoveredBlock420Stack2) notEmpty.
            recoveredBlock420PC := 438.
        ].
        recoveredBlock420Step = 438 ifTrue: [
            (recoveredBlock420Stack2) ifTrue: [recoveredBlock420PC := 442] ifFalse: [recoveredBlock420PC := 449].
        ].
        recoveredBlock420Step = 442 ifTrue: [
            recoveredBlock420PC := 443.
        ].
        recoveredBlock420Step = 443 ifTrue: [
            recoveredBlock420Stack1 := recoveredLocal2.
            recoveredBlock420PC := 446.
        ].
        recoveredBlock420Step = 446 ifTrue: [
            recoveredBlock420Stack2 := recoveredBlock420Local1.
            recoveredBlock420PC := 447.
        ].
        recoveredBlock420Step = 447 ifTrue: [
            recoveredBlock420Stack1 := (recoveredBlock420Stack1) add: (recoveredBlock420Stack2).
            recoveredBlock420PC := 449.
        ].
        recoveredBlock420Step = 449 ifTrue: [
            recoveredBlock420Result := recoveredBlock420Stack1.
            recoveredBlock420Done := true.
        ].
    ].
    recoveredBlock420Result
].
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) libraryFiles: (recoveredStack1).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

