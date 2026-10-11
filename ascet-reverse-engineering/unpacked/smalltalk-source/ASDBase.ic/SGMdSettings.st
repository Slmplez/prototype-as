"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007c34; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathController
    | recoveredValue0 |
    recoveredValue0 := (self) isControllerPathExact.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200080f0; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
eHooksProjectFile
    | recoveredValue0 |
    recoveredValue0 := (self) eHooksASDProjectSpecificationFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a22c; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathPhysicalExperiment
    | recoveredValue0 |
    recoveredValue0 := (self) isPhysicalExperimentVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a5b0; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isOOControllerPath
    | recoveredValue0 |
    recoveredValue0 := (self) isIntegerControllerVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a82c; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPhysicalVariant
    | recoveredValue0 |
    recoveredValue0 := (self) isPhysicalExperimentVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aa90; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isQuantFloatPath
    | recoveredValue0 |
    recoveredValue0 := (self) isQuantFloatExperimentVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ad24; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathObjectBasedController
    | recoveredValue0 |
    recoveredValue0 := (self) isOOControllerPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ae98; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathWithIaSettings
    | recoveredValue0 |
    recoveredValue0 := (self) isIntegerVariant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b258; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathImplementationExperiment
    | recoveredValue0 |
    recoveredValue0 := (self) isIntegerPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b468; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
isPathQuantizedExperiment
    | recoveredValue0 |
    recoveredValue0 := (self) isQuantFloatPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b63c; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
setPathController
    | recoveredValue0 |
    recoveredValue0 := (self) setPathObjectBasedController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c29c; bytecode file offset 0x908be4"
!SGMdSettings methodsFor: 'recovered'!
groupLabel
    | recoveredValue0 |
    recoveredValue0 := (self) groupCodeLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014bb0; bytecode file offset 0x912098"
!SGMdSettings methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPICodeGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200160b8; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageAdditionalFilesRelPath
    ^'%COMPONENT.ID%'
! !

"ASDBase.ic method 0x20016a60; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageIncludeRelPath
    ^'%COMPONENT.ID%'
! !

"ASDBase.ic method 0x200170a8; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
architectureLabel
    ^'Expander'
! !

"ASDBase.ic method 0x200184e8; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsCoverage
    ^#()
! !

"ASDBase.ic method 0x20019814; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageVariantRelPath
    ^'%PROJECT.IMPL.ID%\%TARGET.ID%_%OS.ID%_%GENERATOR.NAME%'
! !

"ASDBase.ic method 0x20019a54; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageObjectCodeRelPath
    ^'%COMPONENT.ID%'
! !

"ASDBase.ic method 0x2001a690; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
enumOptionsProduction
    ^#()
! !

"ASDBase.ic method 0x2001da74; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageRootPath
    ^'%DATABASE.LOCATION%\.code\'
! !

"ASDBase.ic method 0x2001dcf0; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageSourceCodeRelPath
    ^'%COMPONENT.ID%'
! !

"ASDBase.ic method 0x20023408; bytecode file offset 0x92209c"
!SGMdSettings methodsFor: 'recovered'!
templateCodeStorageLibraryRelPath
    ^'%COMPONENT.ID%'
! !

"ASDBase.ic method 0x20028404; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsExperimentalCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) changeableOptionsExperimentalCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028f24; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
codeGenLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGeneratorLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029b14; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableBoolOptionsGeneral
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) boolOptionsGeneral.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029b44; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsTargetSpecificCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) changeableOptionsTargetSpecificCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c2a4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
multipleLevelDirectAccessLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeOptimizationSettingsCreateIfAbsent.
    recoveredValue1 := (recoveredValue0) multipleLevelDirectAccessLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c3b4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableBoolOptionsMake
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) boolOptionsMake.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c484; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsOptimization
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeOptimizationSettingsCreateIfAbsent.
    recoveredValue1 := (recoveredValue0) changeableBoolOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c4d4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsExperimentalCodeCaching
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) changeableOptionsExperimentalCodeCaching.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c614; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableStringOptionsGeneral
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) stringOptionsGeneral.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d6b4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsMake
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) makeOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d894; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
optimizeMultipleLevelDirectAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeOptimizationSettingsCreateIfAbsent.
    recoveredValue1 := (recoveredValue0) optimizeMultipleLevelDirectAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dba4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
generationRelevantOptionsExperimentalCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) generationRelevantOptionsExperimentalCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f084; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
optimizeOneLevelDirectAccessLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeOptimizationSettingsCreateIfAbsent.
    recoveredValue1 := (recoveredValue0) optimizeOneLevelDirectAccessLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200353c4; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsProductionCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) changeableOptionsProductionCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037a44; bytecode file offset 0x934580"
!SGMdSettings methodsFor: 'recovered'!
changeableBoolOptionsCodeAppearance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) boolOptionsAppearance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037d4c; bytecode file offset 0x934768"
!SGMdSettings methodsFor: 'recovered'!
optimizeOneLevelDirectAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeOptimizationSettingsCreateIfAbsent.
    recoveredValue1 := (recoveredValue0) optimizeOneLevelDirectAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039a1c; bytecode file offset 0x938608"
!SGMdSettings methodsFor: 'recovered'!
equalToOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) equalToCodeRelevantOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005efb4; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
protectVecIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectVecIndex.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005efc8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
maxLockedWaysString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMaxLockedWays.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005eff0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
optimizeMultipleLevelDirectAccessV42
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMultipleLevelDirectAccess.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f018; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
generateDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateDataStructures.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f07c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
commentGenerationInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentGenerationInfo.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f0a4; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
dataLogging
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDataLogging.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f0b8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
ignoreInternalMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyIgnoreInternalMessages.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f144; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
eHooksConfigurationFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eHooksConfigurationFileKey.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f180; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
allowReferencesWithoutInitValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyAllowReferencesWithoutInitValue.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f25c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
genDependencyFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenDependencyFiles.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f2ac; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
generateMethodsDT
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDT.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f2c0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
commentSpecificationSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentSpecificationSource.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f3c4; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
projectCBannerTemplates
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProjectCBannerTemplates.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f3ec; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
stackVarAnalysis
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaDebuggingSupport.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f400; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
commentFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentFormula.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f48c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
cacheLocking
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLocking.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f4c8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
castStrategy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCastStrategy.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f720; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
genOSConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenOSConfiguration.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f734; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
eHooksASDProjectSpecificationFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eHooksProjectFileKey.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f75c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
parenthesizeForReadability
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyParenthesizeForReadability.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f784; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
exportHeaderStructure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyHeaderStructure.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f7c0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
mcaDebuggingSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaDebuggingSupport.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f874; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
messageUsageVariant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMessageUsageVariant.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f8b0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
useGlobalId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyUseGlobalId.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f8d8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
projectHBannerTemplates
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProjectHBannerTemplates.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f900; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
commentElementDeclSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentElementDeclSource.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f928; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
forceParenthesisLogicalBinOp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyForceParenthesisLogicalOp.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f964; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
definesForEnumValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDefinesForEnumValues.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f98c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
cacheLockKindData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLockKindData.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f9a0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
protectDivSignedOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectDivSignedOverflow.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f9c8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
protectDiv
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectDiv.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f9dc; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
prefixComponentName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyPrefixComponentName.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fa7c; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
optimizeOneLevelDirectAccess42
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyOneLevelDirectAccess.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005facc; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
considerDepParams
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyConsiderDepParams.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fae0; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
cacheLockKindCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLockKindCode.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fb94; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
generateMapFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateMapFile.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fba8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
redundantDataStorage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRedundantDataStorage.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fbf8; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
maxLoopIterate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMaxLoopIterate.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fc20; bytecode file offset 0x95c4f4"
!SGMdSettings methodsFor: 'recovered'!
codeSyntax
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCodeSyntax.
    recoveredValue2 := (self) getOption: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006285c; bytecode file offset 0x95f8b0"
!SGMdSettings methodsFor: 'recovered'!
codeGenPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) codeGenPath.
    recoveredValue2 := (recoveredValue0) codeGenPathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062fdc; bytecode file offset 0x95f8b0"
!SGMdSettings methodsFor: 'recovered'!
changeableBoolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) changeableBoolOptionsCode.
    recoveredValue1 := (self) changeableBoolOptionsMake.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063204; bytecode file offset 0x95fb04"
!SGMdSettings methodsFor: 'recovered'!
isPhysicalExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063240; bytecode file offset 0x95fb04"
!SGMdSettings methodsFor: 'recovered'!
isFloatPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063330; bytecode file offset 0x95fbf4"
!SGMdSettings methodsFor: 'recovered'!
isQuantFloatExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063418; bytecode file offset 0x95fcd0"
!SGMdSettings methodsFor: 'recovered'!
isControllerPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) > (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063430; bytecode file offset 0x95fcf4"
!SGMdSettings methodsFor: 'recovered'!
isIntegerPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006343c; bytecode file offset 0x95fcf4"
!SGMdSettings methodsFor: 'recovered'!
isIntegerExperimentVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200634f8; bytecode file offset 0x95fdb0"
!SGMdSettings methodsFor: 'recovered'!
isPhysicalControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063510; bytecode file offset 0x95fdc8"
!SGMdSettings methodsFor: 'recovered'!
isControllerPathExact
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) == (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200635a4; bytecode file offset 0x95fe5c"
!SGMdSettings methodsFor: 'recovered'!
isIntegerControllerVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenPath.
    recoveredValue1 := (recoveredValue0) = (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b0cc; bytecode file offset 0x967a18"
!SGMdSettings methodsFor: 'recovered'!
codeGenPath
    | recoveredValue0 |
    recoveredValue0 := codeGenPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006be40; bytecode file offset 0x96873c"
!SGMdSettings methodsFor: 'recovered'!
iaSettings
    | recoveredValue0 |
    recoveredValue0 := iaSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bffc; bytecode file offset 0x9692b0"
!SGMdSettings methodsFor: 'recovered'!
codeOptimizationSettings
    | recoveredValue0 |
    recoveredValue0 := codeOptimizationSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007725c; bytecode file offset 0x9757c8"
!SGMdSettings methodsFor: 'recovered'!
usePMI
    ^true
! !

"ASDBase.ic method 0x20077394; bytecode file offset 0x9757c8"
!SGMdSettings methodsFor: 'recovered'!
oneHeaderOnly
    ^true
! !

"ASDBase.ic method 0x200775e4; bytecode file offset 0x9757c8"
!SGMdSettings methodsFor: 'recovered'!
generateDtMacro
    ^true
! !

"ASDBase.ic method 0x20087fcc; bytecode file offset 0x984bc0"
!SGMdSettings methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('targetSettings').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008d528; bytecode file offset 0x989dec"
!SGMdSettings methodsFor: 'recovered'!
exportHeaderStructureDefaultValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyHeaderStructure.
    recoveredValue2 := (self) optionStringCollectionForKey: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) first.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008ef6c; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
definesForEnumValuesLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyDefinesForEnumValues.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008ef80; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
useGlobalIdLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyUseGlobalId.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008efbc; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
eHooksProjectFileDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) eHooksProjectFileKey.
    recoveredValue3 := (recoveredValue0) optionDefaultForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008efe4; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
protectVecIndexLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyProtectVecIndex.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f020; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
generateMethodsDTLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyDT.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f070; bytecode file offset 0x98b944"
!SGMdSettings methodsFor: 'recovered'!
prefixComponentNameLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyPrefixComponentName.
    recoveredValue3 := (recoveredValue0) optionLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009fd38; bytecode file offset 0x99c9e0"
!SGMdSettings methodsFor: 'recovered'!
codeGenPathDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPathDefault.
    (self) codeGenPath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a55a4; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
memClassDeclarationsCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMemClassDeclarationsCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a55b8; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
definesForEnumValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDefinesForEnumValues.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a55f4; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
formulasCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyFormulasCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5630; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
generatorCID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGeneratorCID.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5748; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
equalToMdlInterfaceRelevantOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) mdlInterfaceRelevantOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) equal: (recoveredValue1) toOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5860; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
prefixComponentName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyPrefixComponentName.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a58b0; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
osToolGenerationOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyOSToolGenerationOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a58ec; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
environmentGenOptionsCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyEnvironmentGenOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a598c; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
arInternalMappingCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyARInternalMappingCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a59b4; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
targetSpecificOptionsCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyTargetSpecificOptionsCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a59f0; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
arXmlConfigurationCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyARXmlConfigurationCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5a18; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
arExternalMappingCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyARExternalMappingCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5a40; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
codegenIniCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCodegenIniCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5a54; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
compilerPhrases: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCompilerPhrases.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5ab8; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
equalToCodeRelevantOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeOptions.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) equal: (recoveredValue1) toOption: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5ae0; bytecode file offset 0x9a23f0"
!SGMdSettings methodsFor: 'recovered'!
arParameterMappingCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyARParameterMappingCRC.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2ca0; bytecode file offset 0x9af564"
!SGMdSettings methodsFor: 'recovered'!
setPathPhysicalExperiment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPaths.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := (self) setCodeGenPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2cc4; bytecode file offset 0x9af588"
!SGMdSettings methodsFor: 'recovered'!
setPathQuantizedExperiment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPaths.
    recoveredValue2 := (recoveredValue1) at: (2).
    recoveredValue3 := (self) setCodeGenPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2ce8; bytecode file offset 0x9af5ac"
!SGMdSettings methodsFor: 'recovered'!
setPathImplementationExperiment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPaths.
    recoveredValue2 := (recoveredValue1) at: (3).
    recoveredValue3 := (self) setCodeGenPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2d2c; bytecode file offset 0x9af5f0"
!SGMdSettings methodsFor: 'recovered'!
setPathPhysicalController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPaths.
    recoveredValue2 := (recoveredValue1) at: (4).
    recoveredValue3 := (self) setCodeGenPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2d50; bytecode file offset 0x9af614"
!SGMdSettings methodsFor: 'recovered'!
setPathObjectBasedController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenPaths.
    recoveredValue2 := (recoveredValue1) at: (5).
    recoveredValue3 := (self) setCodeGenPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b46c4; bytecode file offset 0x9b0f88"
!SGMdSettings methodsFor: 'recovered'!
changeableOptionsCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) changeableBoolOptionsGeneral.
    recoveredValue1 := (self) changeableBoolOptionsCodeAppearance.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) changeableStringOptionsGeneral.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b9c20; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
commentFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentFormula.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9c70; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
genDependencyFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenDependencyFiles.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ce8; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
mcaDebuggingSupport: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaDebuggingSupport.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9d10; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
ignoreInternalMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyIgnoreInternalMessages.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9d38; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
protectDivSignedOverflow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectDivSignedOverflow.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9d4c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
eHooksProjectFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eHooksProjectFileKey.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9d88; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
castStrategy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCastStrategy.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9d9c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
genOSConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenOSConfiguration.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9e28; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
parenthesizeForReadability: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyParenthesizeForReadability.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9e3c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
generateMapFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateMapFile.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9e64; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
stackVarAnalysis: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaDebuggingSupport.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9e8c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
projectCBannerTemplates: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProjectCBannerTemplates.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9eb4; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
forceParenthesisLogicalBinOp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyForceParenthesisLogicalOp.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ef0; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
generateDtMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateDtMacro.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f40; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
generateDataStructures: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyGenerateDataStructures.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f54; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
considerDepParams: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyConsiderDepParams.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f7c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
cacheLocking: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLocking.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9f90; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
commentElementDeclSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentElementDeclSource.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9fa4; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
maxLoopIterate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMaxLoopIterate.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9fcc; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
messageUsageVariant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMessageUsageVariant.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ff4; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
valueRangeAnalysis: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaValueRangeAnalysis.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba01c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
cacheLockKindCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLockKindCode.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba080; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
exportHeaderStructure: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyHeaderStructure.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba094; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
codeCoverage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMcaCoverageAnalysis.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba0bc; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
allowReferencesWithoutInitValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyAllowReferencesWithoutInitValue.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba0f8; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
dataLogging: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDataLogging.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba10c; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
eHooksConfigurationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eHooksConfigurationFileKey.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba120; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
protectVecIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectVecIndex.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba134; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
codeSyntax: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCodeSyntax.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba148; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
cacheLockKindData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCacheLockKindData.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba198; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
projectHBannerTemplates: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProjectHBannerTemplates.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba1ac; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
commentGenerationInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentGenerationInfo.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba1d4; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
redundantDataStorage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRedundantDataStorage.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba2ec; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
generateMethodsDT: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyDT.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba350; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
usePMI: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyUsePMI.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba364; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
protectDiv: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyProtectDiv.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba378; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
commentSpecificationSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyCommentSpecificationSource.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba3c8; bytecode file offset 0x9b6c88"
!SGMdSettings methodsFor: 'recovered'!
useGlobalId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyUseGlobalId.
    recoveredValue2 := recoveredArg1.
    (self) setOption: (recoveredValue1) to: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c2144; bytecode file offset 0x9beac8"
!SGMdSettings methodsFor: 'recovered'!
codeGenPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGenPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d4604; bytecode file offset 0x9d0ec8"
!SGMdSettings methodsFor: 'recovered'!
generateDataStructuresUsingLocalSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generateDataStructures.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) valuesGenerateDataStructures.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := (recoveredValue0) = (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d4664; bytecode file offset 0x9d0f28"
!SGMdSettings methodsFor: 'recovered'!
generateDataStructuresForAllComponents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generateDataStructures.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) valuesGenerateDataStructures.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := (recoveredValue0) = (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d468c; bytecode file offset 0x9d0f50"
!SGMdSettings methodsFor: 'recovered'!
generateDataStructuresForNoComponents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generateDataStructures.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) valuesGenerateDataStructures.
    recoveredValue3 := (recoveredValue2) at: (3).
    recoveredValue4 := (recoveredValue0) = (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d65cc; bytecode file offset 0x9d3134"
!SGMdSettings methodsFor: 'recovered'!
initialize
    super initialize.
    (self) codeGenPathDefault.
    ^self
! !

"ASDBase.ic method 0x200e29a4; bytecode file offset 0x9df430"
!SGMdSettings methodsFor: 'recovered'!
isAnyPhysicalVariant
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
            recoveredStack2 := (recoveredStack2) isPhysicalExperimentVariant.
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
            recoveredStack1 := (recoveredStack1) isPhysicalControllerVariant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2aa4; bytecode file offset 0x9df430"
!SGMdSettings methodsFor: 'recovered'!
isIntegerVariant
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

"ASDBase.ic method 0x200fc12c; bytecode file offset 0x9f89ec"
!SGMdSettings methodsFor: 'recovered'!
equalToVariant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_64423').
    recoveredValue1 := (self) codeGenPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) codeGenPath.
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20118880; bytecode file offset 0xa15148"
!SGMdSettings methodsFor: 'recovered'!
maxLockedWays
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMaxLockedWays.
    recoveredValue2 := (self) optionStringCollectionForKey: (recoveredValue1).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) keyMaxLockedWays.
    recoveredValue5 := (self) getOption: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) indexOf: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) + (-1).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20128c20; bytecode file offset 0xa25504"
!SGMdSettings methodsFor: 'recovered'!
valueRangeAnalysis
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEtasInternalMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyMcaValueRangeAnalysis.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128c3c; bytecode file offset 0xa25504"
!SGMdSettings methodsFor: 'recovered'!
codeCoverage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEtasInternalMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyMcaCoverageAnalysis.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201436a8; bytecode file offset 0xa3ff64"
!SGMdSettings methodsFor: 'recovered'!
iaSettings: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            iaSettings := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := iaSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201436cc; bytecode file offset 0xa3ff88"
!SGMdSettings methodsFor: 'recovered'!
codeOptimizationSettings: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            codeOptimizationSettings := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := codeOptimizationSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201439b4; bytecode file offset 0xa40280"
!SGMdSettings methodsFor: 'recovered'!
checkOptionsOnMismatchDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) keyCastStrategy.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyGenerateDataStructures.
    recoveredValue6 := (recoveredValue1) with: (recoveredValue3) with: (recoveredValue5).
    (self) checkOptionsOnMismatchDo: (recoveredValue0) enumOptions: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201501bc; bytecode file offset 0xa4caf4"
!SGMdSettings methodsFor: 'recovered'!
arExternalMappingCRC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyARExternalMappingCRC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201501d8; bytecode file offset 0xa4caf4"
!SGMdSettings methodsFor: 'recovered'!
environmentGenOptionsCRC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyEnvironmentGenOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201501f4; bytecode file offset 0xa4caf4"
!SGMdSettings methodsFor: 'recovered'!
targetSpecificOptionsCRC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyTargetSpecificOptionsCRC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20150210; bytecode file offset 0xa4caf4"
!SGMdSettings methodsFor: 'recovered'!
arInternalMappingCRC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyARInternalMappingCRC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015022c; bytecode file offset 0xa4caf4"
!SGMdSettings methodsFor: 'recovered'!
arParameterMappingCRC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyARParameterMappingCRC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015141c; bytecode file offset 0xa4dce0"
!SGMdSettings methodsFor: 'recovered'!
changeableBoolOptionsCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) boolOptionsCode.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) class.
    recoveredBlock6Value2 := (recoveredBlock6Value1) keyUsePMI.
    recoveredBlock6Value3 := (recoveredBlock6Value0) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := (recoveredValue1) reject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016c070; bytecode file offset 0xa68938"
!SGMdSettings methodsFor: 'recovered'!
maxLockedWays: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyMaxLockedWays.
    recoveredValue2 := (self) optionStringCollectionForKey: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (recoveredValue2) at: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) keyMaxLockedWays.
    recoveredValue8 := recoveredLocal1.
    (self) setOption: (recoveredValue7) to: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2017a7f8; bytecode file offset 0xa770c0"
!SGMdSettings methodsFor: 'recovered'!
isEHooksImplementationOverride
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'eHooksBypassImplementation'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'SINGLE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'DOUBLE'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20183a4c; bytecode file offset 0xa80318"
!SGMdSettings methodsFor: 'recovered'!
codeGenShortPathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codeGenShortPaths.
    recoveredValue2 := (self) codeGenPath.
    recoveredValue3 := [
    | recoveredBlock8Value0 |
    (self) codeGenPathDefault.
    recoveredBlock8Value0 := (self) codeGenShortPathName.
    ^recoveredBlock8Value0
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201df59c; bytecode file offset 0xadbe5c"
!SGMdSettings methodsFor: 'recovered'!
xmlConversionBlockForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlConversionBlockForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlConversionBlockForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201edc68; bytecode file offset 0xaea52c"
!SGMdSettings methodsFor: 'recovered'!
optionStringCollectionForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fa800; bytecode file offset 0xaf70c4"
!SGMdSettings methodsFor: 'recovered'!
optionValueCollectionForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionValueCollectionForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionValueCollectionForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020700c; bytecode file offset 0xb038e0"
!SGMdSettings methodsFor: 'recovered'!
setCodeGenPath: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkCodeGenPath: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) codeGenPath: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGIaSettings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) iaSettings: (recoveredStack1).
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

"ASDBase.ic method 0x20239ed8; bytecode file offset 0xb367ac"
!SGMdSettings methodsFor: 'recovered'!
isHeaderStructureComponentBased
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyHeaderStructure.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyHeaderStructure.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportHeaderStructure.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024e314; bytecode file offset 0xb4abe8"
!SGMdSettings methodsFor: 'recovered'!
isHeaderStructureModuleBased
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyHeaderStructure.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportHeaderStructure.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024e364; bytecode file offset 0xb4ac38"
!SGMdSettings methodsFor: 'recovered'!
isHeaderStructureProjectBased
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyHeaderStructure.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportHeaderStructure.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202714b8; bytecode file offset 0xb6ddc4"
!SGMdSettings methodsFor: 'recovered'!
optionMinForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMinForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMinForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMinForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202714d0; bytecode file offset 0xb6ddc4"
!SGMdSettings methodsFor: 'recovered'!
optionFileForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionFileForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionFileForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionFileForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202714e8; bytecode file offset 0xb6ddc4"
!SGMdSettings methodsFor: 'recovered'!
optionClassForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClassForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClassForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClassForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271500; bytecode file offset 0xb6ddc4"
!SGMdSettings methodsFor: 'recovered'!
optionMaxForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMaxForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMaxForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionMaxForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b644; bytecode file offset 0xb77f44"
!SGMdSettings methodsFor: 'recovered'!
optionGroupForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGroupForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGroupForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGroupForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'UNDEFINED'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b660; bytecode file offset 0xb77f44"
!SGMdSettings methodsFor: 'recovered'!
xmlCategoryForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategoryForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategoryForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlCategoryForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'UNDEFINED'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b67c; bytecode file offset 0xb77f44"
!SGMdSettings methodsFor: 'recovered'!
optionTypeForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionTypeForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionTypeForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionTypeForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287ff8; bytecode file offset 0xb848c0"
!SGMdSettings methodsFor: 'recovered'!
xmlAttributeNameForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlAttributeNameForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlAttributeNameForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlAttributeNameForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202976b8; bytecode file offset 0xb93fa0"
!SGMdSettings methodsFor: 'recovered'!
convertCodeGenSettingsTo50ForProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62959'.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) optimizeMultipleLevelDirectAccessV42.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) optimizeMultipleLevelDirectAccess: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizeOneLevelDirectAccess42.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) optimizeOneLevelDirectAccess: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Call_63786'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGIaSettings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) arithmeticServicePossibleForProject: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) setDefaultArithmeticServiceSet: (recoveredStack1).
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

"ASDBase.ic method 0x202a4888; bytecode file offset 0xba115c"
!SGMdSettings methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super duplicate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) codeGenPath: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) iaSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaSettings.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) iaSettings: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettings.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) codeOptimizationSettings: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae04c; bytecode file offset 0xbaa964"
!SGMdSettings methodsFor: 'recovered'!
optionLabelForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionLabelForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionLabelForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionLabelForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'UNDEFINED -> '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae070; bytecode file offset 0xbaa964"
!SGMdSettings methodsFor: 'recovered'!
optionDescriptionForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDescriptionForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDescriptionForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDescriptionForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'UNDEFINED -> '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae094; bytecode file offset 0xbaa964"
!SGMdSettings methodsFor: 'recovered'!
optionToolTipForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionToolTipForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionToolTipForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionToolTipForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'UNDEFINED -> '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b8044; bytecode file offset 0xbb490c"
!SGMdSettings methodsFor: 'recovered'!
visibleBlockForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleBlockForKey: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleBlockForKey: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleBlockForKey: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := [
    true
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ea8d4; bytecode file offset 0xbe71ac"
!SGMdSettings methodsFor: 'recovered'!
iaSettingsCreateIfAbsent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettings.
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
            recoveredStack1 := SGIaSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) iaSettings: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGIaSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := (self) iaSettings.
    recoveredBlock18Value1 := (recoveredBlock18Value0) newOptions.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block30Value0 recoveredBlock18Block30Value1 recoveredBlock18Block30Value2 |
    recoveredBlock18Block30Value0 := SGIaSettings.
    recoveredBlock18Block30Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block30Value2 := (recoveredBlock18Block30Value0) optionDefaultForKey: (recoveredBlock18Block30Value1).
    recoveredBlock18Block30Value2
].
    recoveredBlock18Value4 := (recoveredBlock18Value1) at: (recoveredBlock18Value2) ifAbsentPut: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettings.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032b700; bytecode file offset 0xc27fd8"
!SGMdSettings methodsFor: 'recovered'!
codeOptimizationSettingsCreateIfAbsent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
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
            recoveredStack1 := SGCodeOptimizationSettings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) codeOptimizationSettings: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGCodeOptimizationSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := (self) codeOptimizationSettings.
    recoveredBlock18Value1 := (recoveredBlock18Value0) options.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block30Value0 recoveredBlock18Block30Value1 recoveredBlock18Block30Value2 recoveredBlock18Block30Value3 recoveredBlock18Block30Value4 recoveredBlock18Block30Value5 recoveredBlock18Block30Value6 |
    recoveredBlock18Block30Value0 := (self) codeOptimizationSettings.
    recoveredBlock18Block30Value1 := (recoveredBlock18Block30Value0) options.
    recoveredBlock18Block30Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block30Value3 := SGCodeOptimizationSettings.
    recoveredBlock18Block30Value4 := recoveredBlock18Arg1.
    recoveredBlock18Block30Value5 := (recoveredBlock18Block30Value3) optionDefaultForKey: (recoveredBlock18Block30Value4).
    recoveredBlock18Block30Value6 := (recoveredBlock18Block30Value1) at: (recoveredBlock18Block30Value2) put: (recoveredBlock18Block30Value5).
    recoveredBlock18Block30Value6
].
    recoveredBlock18Value4 := (recoveredBlock18Value1) at: (recoveredBlock18Value2) ifAbsent: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033699c; bytecode file offset 0xc33280"
!SGMdSettings methodsFor: 'recovered'!
getOption: recoveredArg1
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
            recoveredStack0 := super getOption: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyCastStrategy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Classic'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'Legacy'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'MISRA'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyMcaCountingMode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := #('<undef>' 'boolean mode' '').
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035b3ac; bytecode file offset 0xc57c78"
!SGMdSettings methodsFor: 'recovered'!
equalToProjectCodeRelevantOption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) projectCodeOptions.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6Stack6 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) options.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack4 := [
    | recoveredBlock6Block18Value0 recoveredBlock6Block18Value1 recoveredBlock6Block18Value2 |
    recoveredBlock6Block18Value0 := (self) class.
    recoveredBlock6Block18Value1 := recoveredBlock6Arg1.
    recoveredBlock6Block18Value2 := (recoveredBlock6Block18Value0) optionDefaultForKey: (recoveredBlock6Block18Value1).
    recoveredBlock6Block18Value2
].
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) at: (recoveredBlock6Stack3) ifAbsent: (recoveredBlock6Stack4).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) options.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack5 := [
    | recoveredBlock6Block39Value0 recoveredBlock6Block39Value1 recoveredBlock6Block39Value2 |
    recoveredBlock6Block39Value0 := (self) class.
    recoveredBlock6Block39Value1 := recoveredBlock6Arg1.
    recoveredBlock6Block39Value2 := (recoveredBlock6Block39Value0) optionDefaultForKey: (recoveredBlock6Block39Value1).
    recoveredBlock6Block39Value2
].
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) at: (recoveredBlock6Stack4) ifAbsent: (recoveredBlock6Stack5).
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 61] ifFalse: [recoveredBlock6PC := 58].
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x203eb69c; bytecode file offset 0xce7f6c"
!SGMdSettings methodsFor: 'recovered'!
optionDefaultForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := recoveredLocal1.
    ^recoveredBlock13Value0
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
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
            recoveredStack1 := [
    | recoveredBlock37Value0 |
    recoveredBlock37Value0 := recoveredLocal1.
    ^recoveredBlock37Value0
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock62Value0 |
    recoveredBlock62Value0 := recoveredLocal1.
    ^recoveredBlock62Value0
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyIgnoreInternalMessages.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204151d4; bytecode file offset 0xd11aac"
!SGMdSettings methodsFor: 'recovered'!
equal: recoveredArg1 toOption: recoveredArg2
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
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) options.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack4 := [
    | recoveredBlock7Block20Value0 recoveredBlock7Block20Value1 recoveredBlock7Block20Value2 |
    recoveredBlock7Block20Value0 := (self) class.
    recoveredBlock7Block20Value1 := recoveredBlock7Arg1.
    recoveredBlock7Block20Value2 := (recoveredBlock7Block20Value0) optionDefaultForKey: (recoveredBlock7Block20Value1).
    recoveredBlock7Block20Value2
].
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3) ifAbsent: (recoveredBlock7Stack4).
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) options.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack5 := [
    | recoveredBlock7Block41Value0 recoveredBlock7Block41Value1 recoveredBlock7Block41Value2 |
    recoveredBlock7Block41Value0 := (self) class.
    recoveredBlock7Block41Value1 := recoveredBlock7Arg1.
    recoveredBlock7Block41Value2 := (recoveredBlock7Block41Value0) optionDefaultForKey: (recoveredBlock7Block41Value1).
    recoveredBlock7Block41Value2
].
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4) ifAbsent: (recoveredBlock7Stack5).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 63] ifFalse: [recoveredBlock7PC := 60].
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack1 := false.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaSettingsCreateIfAbsent.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalToOption: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalToOption: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f8d78; bytecode file offset 0xdf5670"
!SGMdSettings methodsFor: 'recovered'!
optionValue: recoveredArg1 forKey: recoveredArg2
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
            recoveredStack2 := 'Call_70905'.
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
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyOneLevelDirectAccess.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyMultipleLevelDirectAccess.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyNewCommonSubexpressionElimination.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyDisableBDETempVariables.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaSettingsCreateIfAbsent.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyRestrictedServiceUsage.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20599d54; bytecode file offset 0xe96674"
!SGMdSettings methodsFor: 'recovered'!
optionValueForKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeOptimizationSettingsCreateIfAbsent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    ^recoveredBlock13Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 237] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyHeaderStructure.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 'Class'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyCastStrategy.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'Classic'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'Legacy'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := 'MISRA'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyCastStrategy.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyGenerateDataStructures.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionValueCollectionForKey: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStringCollectionForKey: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 |
    recoveredBlock171Value0 := recoveredLocal1.
    recoveredBlock171Value1 := recoveredArg1.
    recoveredBlock171Value2 := (self) optionDefaultForKey: (recoveredBlock171Value1).
    recoveredBlock171Value3 := (recoveredBlock171Value0) indexOf: (recoveredBlock171Value2).
    recoveredBlock171Value3
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyMcaCountingMode.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := '<undef>'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 279] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaSettingsCreateIfAbsent.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyRestrictedServiceUsage.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 275].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultForKey: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

