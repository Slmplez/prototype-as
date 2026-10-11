"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007604; bytecode file offset 0x908be4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARXmlSenderComSpec
    | recoveredValue0 |
    recoveredValue0 := (self) supportsARComSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008ab0; bytecode file offset 0x908be4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARXmlCalPrmComSpec
    | recoveredValue0 |
    recoveredValue0 := (self) supportsARComSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000abe0; bytecode file offset 0x908be4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARXmlReceiverComSpec
    | recoveredValue0 |
    recoveredValue0 := (self) supportsARComSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018794; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPrefixShortName
    ^'SHORTNAME'
! !

"ASDBase.ic method 0x200193b8; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPrefixPackage
    ^'package'
! !

"ASDBase.ic method 0x2001c154; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPrefixTemplate
    ^'template'
! !

"ASDBase.ic method 0x2001d630; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPrefixFilename
    ^'filename'
! !

"ASDBase.ic method 0x2001efc8; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPrefixSetting
    ^'setting'
! !

"ASDBase.ic method 0x20022a54; bytecode file offset 0x92209c"
!SGCgAutosarSettings methodsFor: 'recovered'!
relPathAUTOSAR
    ^'AUTOSAR'
! !

"ASDBase.ic method 0x2002cfd4; bytecode file offset 0x934580"
!SGCgAutosarSettings methodsFor: 'recovered'!
arNamespaceSeparator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arNamespaceSeparator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200338d4; bytecode file offset 0x934580"
!SGCgAutosarSettings methodsFor: 'recovered'!
swComponentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) swComponentType.
    recoveredValue1 := (recoveredValue0) componentInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038d0c; bytecode file offset 0x935c54"
!SGCgAutosarSettings methodsFor: 'recovered'!
encodePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asCIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a160; bytecode file offset 0x938608"
!SGCgAutosarSettings methodsFor: 'recovered'!
packageName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bbdc; bytecode file offset 0x938608"
!SGCgAutosarSettings methodsFor: 'recovered'!
shortNamePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encodePhysicalUnit: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200465cc; bytecode file offset 0x9451f8"
!SGCgAutosarSettings methodsFor: 'recovered'!
mustPerformAutosarGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolean: ('mustPerformAutosarGeneration').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004933c; bytecode file offset 0x947128"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPatternMiscBoolean
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionPrefixSetting.
    recoveredValue1 := (self) optionPattern: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004957c; bytecode file offset 0x947128"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPatternMiscTemplate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionPrefixTemplate.
    recoveredValue1 := (self) optionPattern: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004958c; bytecode file offset 0x947128"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPatternShortName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionPrefixShortName.
    recoveredValue1 := (self) optionPattern: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004971c; bytecode file offset 0x947128"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPatternFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionPrefixFilename.
    recoveredValue1 := (self) optionPattern: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004984c; bytecode file offset 0x947128"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPatternPackage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionPrefixPackage.
    recoveredValue1 := (self) optionPattern: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005efdc; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARGenerateStaticMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arSupportsStaticMemoryKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f1a8; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSettingArrayReferencePassing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryArrayReferencePassing.
    recoveredValue2 := (self) arSetting: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f270; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateRunnableSymbol
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryRunnableSymbol.
    recoveredValue2 := (self) arTemplate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f338; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARComSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arSupportsComSpecKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f360; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSettingDtSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDtSupport.
    recoveredValue2 := (self) arSetting: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f680; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSettingGenerateApplicationInitValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) settingsKeyAppInitValue.
    recoveredValue2 := (self) arSetting: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f6d0; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlConfigurationCRCValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arXmlCrcValueKey.
    recoveredValue2 := (self) getString: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f6e4; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSettingElementDescriptionSupport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryElementDescriptionSupport.
    recoveredValue2 := (self) arSetting: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f7e8; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARGenerateConstantMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arSupportsConstantMemoryKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f914; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSettingRestrictToPlatformTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) settingsKeyPlatformTypes.
    recoveredValue2 := (self) arSetting: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f9f0; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsARProcessRteInGenerate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arSupportsProcessRteInGenerateKey.
    recoveredValue2 := (self) getBoolean: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fa2c; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateArtificialType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryArtificialType.
    recoveredValue2 := (self) arTemplate: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fc34; bytecode file offset 0x95c4f4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arFilenameSwComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categorySwComponent.
    recoveredValue2 := (self) arFilename: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20061528; bytecode file offset 0x95e838"
!SGCgAutosarSettings methodsFor: 'recovered'!
supportsPtr2ArrayBaseTypePassingMacro
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionString.
    recoveredValue1 := (recoveredValue0) startsWith: ('3').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061f00; bytecode file offset 0x95e838"
!SGCgAutosarSettings methodsFor: 'recovered'!
isAutosar4OrNewer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionString.
    recoveredValue1 := (recoveredValue0) startsWith: ('4').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d89c; bytecode file offset 0x96a390"
!SGCgAutosarSettings methodsFor: 'recovered'!
swComponentType
    | recoveredValue0 |
    recoveredValue0 := swComponentType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200835a8; bytecode file offset 0x97fe64"
!SGCgAutosarSettings methodsFor: 'recovered'!
optionPattern: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('*').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083ed0; bytecode file offset 0x9807dc"
!SGCgAutosarSettings methodsFor: 'recovered'!
arNamespaceFromPackage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arNamespaceSeparator.
    recoveredValue2 := (recoveredValue0) upToLast: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008d510; bytecode file offset 0x989dec"
!SGCgAutosarSettings methodsFor: 'recovered'!
shortNameLength
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) shortNameLengthKey.
    recoveredValue2 := (self) getString: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093544; bytecode file offset 0x98fed0"
!SGCgAutosarSettings methodsFor: 'recovered'!
mustPerformAutosarGeneration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) set: ('mustPerformAutosarGeneration') boolOption: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20095864; bytecode file offset 0x992138"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameFromPackage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arNamespaceSeparator.
    recoveredValue2 := (recoveredValue0) subStrings: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) last.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200998b8; bytecode file offset 0x9961d0"
!SGCgAutosarSettings methodsFor: 'recovered'!
template: recoveredArg1 putName: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) setting: (recoveredValue0) putString: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a168; bytecode file offset 0x997194"
!SGCgAutosarSettings methodsFor: 'recovered'!
template: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5608; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageApplicationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a566c; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameDataReceivePoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDataReceivePoint.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5680; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameImplTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryApplicationDataType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a56a8; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryRecordLayout.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a56f8; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageScalarType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryScalarType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a575c; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameArrayElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryArrayElement.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5784; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageInternalBehavior: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryInternalBehavior.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a57c0; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageImplementationDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryImplementationDataType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a57d4; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackagePhysicalUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryPhysicalUnit.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a57e8; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameExclusiveArea: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryExclusiveArea.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5888; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameIRVWriteAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryIRVWriteAccess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a58c4; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameDataReadAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDataReadAccess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a59a0; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageCustomDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryCustomType.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arPackageKey: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a59dc; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameOperationArgument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryOperationArgument.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5a04; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameSynchServerCallPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categorySynchServerCallPoint.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5a68; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameIRVReadAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryIRVReadAccess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5af4; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameDataWriteAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDataWriteAccess.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5b1c; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNamePort: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryPort.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a5b30; bytecode file offset 0x9a23f0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameDataSendPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDataSendPoint.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200acdf0; bytecode file offset 0x9a96dc"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageKey: recoveredArg1 binding: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arPackage: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arPackageTemplate: (recoveredValue1) binding: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ace00; bytecode file offset 0x9a96dc"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageKey: recoveredArg1 typeName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arPackage: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arTemplate: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ace20; bytecode file offset 0x9a96dc"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameKey: recoveredArg1 typeName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arShortName: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arTemplate: (recoveredValue1) typeName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2c1c; bytecode file offset 0x9af4f8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageNameSwComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categorySwComponent.
    recoveredValue2 := (self) swComponentInfo.
    recoveredValue3 := (self) arPackageCategory: (recoveredValue1) componentInfo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b9f18; bytecode file offset 0x9b6c88"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlConfigurationCRCValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) arXmlCrcValueKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba0e4; bytecode file offset 0x9b6c88"
!SGCgAutosarSettings methodsFor: 'recovered'!
shortNameLength: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) shortNameLengthKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ba1e8; bytecode file offset 0x9b6c88"
!SGCgAutosarSettings methodsFor: 'recovered'!
schemaURL: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) schemaURLKey.
    recoveredValue2 := recoveredArg1.
    (self) setting: (recoveredValue1) putString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c424c; bytecode file offset 0x9c0bf0"
!SGCgAutosarSettings methodsFor: 'recovered'!
swComponentType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swComponentType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c80e4; bytecode file offset 0x9c49a0"
!SGCgAutosarSettings methodsFor: 'recovered'!
symbolRunnable: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) arTemplateRunnableSymbol.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arTemplate: (recoveredValue0) elementName: (recoveredValue1) componentInfo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c81e4; bytecode file offset 0x9c4aa4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortName: recoveredArg1 package: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) arNamespaceSeparator.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200c8894; bytecode file offset 0x9c5154"
!SGCgAutosarSettings methodsFor: 'recovered'!
arNamespace: recoveredArg1 withShortName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arNamespaceSeparator.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200c8a44; bytecode file offset 0x9c5380"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageTemplate: recoveredArg1 binding: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (self) template: (recoveredValue0) binding: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7a70; bytecode file offset 0x9d4344"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameParameterAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) template: ('parmAccess%INDEX%') binding: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dc5f4; bytecode file offset 0x9d8f04"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 physicalUnit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) unitNameKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc608; bytecode file offset 0x9d8f04"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 direction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) operationArgumentDirectionKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc61c; bytecode file offset 0x9d8f04"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 methodName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) methodNameKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc630; bytecode file offset 0x9d8f04"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 elementName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) elementNameKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dc644; bytecode file offset 0x9d8f04"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 portAccess: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) portAccessKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ea0d0; bytecode file offset 0x9e6998"
!SGCgAutosarSettings methodsFor: 'recovered'!
nameIRVCopyForIRVWriteRefMacro: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) portName.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) runnableEntity.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    recoveredValue6 := (recoveredValue5) asString.
    recoveredValue7 := (self) nameIRVCopyElementName: (recoveredValue2) methodName: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x200eb5d4; bytecode file offset 0x9e7ee4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arFilenameCategory: recoveredArg1 binding: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arFilename: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) template: (recoveredValue1) binding: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eb624; bytecode file offset 0x9e7ee4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameKey: recoveredArg1 binding: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arShortName: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [].
    recoveredValue4 := (self) template: (recoveredValue1) binding: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ebaa4; bytecode file offset 0x9e8368"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 index: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) indexKey.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ec9dc; bytecode file offset 0x9e929c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameComplexTypeKey: recoveredArg1 baseType: recoveredArg2 maxSize: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arShortName: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (self) arTemplate: (recoveredValue1) typeName: (recoveredValue2) maxSize: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100318; bytecode file offset 0x9fcc3c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateDtVariable: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryDtVariable.
    recoveredValue2 := (self) arTemplate: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) arTemplate: (recoveredValue2) elementName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100330; bytecode file offset 0x9fcc3c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameEvent: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryEvent.
    recoveredValue2 := (self) arShortName: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) arTemplate: (recoveredValue2) elementName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100348; bytecode file offset 0x9fcc3c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameOperation: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryOperation.
    recoveredValue2 := (self) arShortName: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) arTemplate: (recoveredValue2) elementName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100360; bytecode file offset 0x9fcc3c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameIRV: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryIRV.
    recoveredValue2 := (self) arShortName: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) arTemplate: (recoveredValue2) elementName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100378; bytecode file offset 0x9fcc3c"
!SGCgAutosarSettings methodsFor: 'recovered'!
shortNameRunnable: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryRunnable.
    recoveredValue2 := (self) arShortName: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) arTemplate: (recoveredValue2) elementName: (recoveredValue3) componentInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201003dc; bytecode file offset 0x9fcca0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageCategory: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) arPackage: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) bannerInfos.
    recoveredValue4 := [].
    recoveredValue5 := (self) template: (recoveredValue1) binding: (recoveredValue3) ifFail: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010d594; bytecode file offset 0xa09e5c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameScalarType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryScalarType.
    recoveredValue2 := (self) arShortName: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := (self) template: (recoveredValue2) binding: (recoveredValue3) ifFail: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010dba0; bytecode file offset 0xa0a474"
!SGCgAutosarSettings methodsFor: 'recovered'!
template: recoveredArg1
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
            recoveredStack2 := [
    ''
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20121ff0; bytecode file offset 0xa1e8b8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortNameConstant: recoveredArg1 typeName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) categoryConstant.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) arShortNameKey: (recoveredValue1) typeName: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) arTemplate: (recoveredValue3) constantValue: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) buildValidANSICIdentifier.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20122020; bytecode file offset 0xa1e8e8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageConstant: recoveredArg1 typeName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) arShortNameConstant: (recoveredValue0) typeName: (recoveredValue1).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) categoryConstant.
    recoveredValue5 := (self) arNamespace: (recoveredValue4).
    recoveredValue6 := (self) arShortName: (recoveredValue2) package: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20129818; bytecode file offset 0xa261a4"
!SGCgAutosarSettings methodsFor: 'recovered'!
shortNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shortNames.
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
            shortNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := shortNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129b9c; bytecode file offset 0xa26468"
!SGCgAutosarSettings methodsFor: 'recovered'!
packageNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := packageNames.
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
            packageNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := packageNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129d78; bytecode file offset 0xa26694"
!SGCgAutosarSettings methodsFor: 'recovered'!
fileNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileNames.
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
            fileNames := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fileNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129f7c; bytecode file offset 0xa26878"
!SGCgAutosarSettings methodsFor: 'recovered'!
namespaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := namespaces.
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
            namespaces := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := namespaces.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a0bc; bytecode file offset 0xa269a8"
!SGCgAutosarSettings methodsFor: 'recovered'!
miscellaneous
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := miscellaneous.
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
            miscellaneous := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := miscellaneous.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014b328; bytecode file offset 0xa47bf4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortName: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (self) optionPrefixShortName.
    recoveredValue3 := (recoveredValue1) removeSubstring: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asAtom.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) shortNames.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20156b14; bytecode file offset 0xa533e0"
!SGCgAutosarSettings methodsFor: 'recovered'!
nameIRVCopyElementName: recoveredArg1 methodName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) irvCopyInstanceTemplate.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) nameTemplateElement: (recoveredValue2) method: (recoveredValue3).
    recoveredValue5 := LookupTable.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (self) template: (recoveredValue1) specialArgs: (recoveredValue4) generalArgs: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20156dec; bytecode file offset 0xa536b0"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 portName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) portNameKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) elementNameKey.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2015aff8; bytecode file offset 0xa57904"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSetting: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (self) optionPrefixSetting.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := (recoveredValue1) removeSubstring: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asAtom.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) settings.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2015b018; bytecode file offset 0xa57904"
!SGCgAutosarSettings methodsFor: 'recovered'!
arFilename: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (self) optionPrefixFilename.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := (recoveredValue1) removeSubstring: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asAtom.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) fileNames.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2015b038; bytecode file offset 0xa57904"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (self) optionPrefixTemplate.
    recoveredValue3 := (recoveredValue2) asUppercase.
    recoveredValue4 := (recoveredValue1) removeSubstring: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asAtom.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) miscellaneous.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2015fd94; bytecode file offset 0xa5c65c"
!SGCgAutosarSettings methodsFor: 'recovered'!
schemaLocation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := '4'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'http://autosar.org/schema/'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'http://autosar.org/'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20168aa8; bytecode file offset 0xa65370"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 maxSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGCgBaseClassType.
    recoveredValue2 := (recoveredValue1) typeMaxsizeKey.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue5) at: ('MAXSIZE') put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017aa48; bytecode file offset 0xa7730c"
!SGCgAutosarSettings methodsFor: 'recovered'!
versionSchemaString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := '4'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'r4.0'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018a8e4; bytecode file offset 0xa871b4"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackageDataTypeMappingSet: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) indexKey.
    recoveredValue5 := recoveredArg1.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) categoryDataTypeMappingSet.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) arPackageKey: (recoveredValue7) binding: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2018b84c; bytecode file offset 0xa8811c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 constantValue: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) constantValueKey.
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [].
    recoveredValue9 := (self) template: (recoveredValue6) binding: (recoveredValue7) ifFail: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a4948; bytecode file offset 0xaa1210"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlCategoryPhysicalUnit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) categoryPhysicalUnit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) arNamespace: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryPhysicalUnit.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoryExternal.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b5f24; bytecode file offset 0xab27ec"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplateParameter: recoveredArg1 typeName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := SGCgBaseClassType.
    recoveredValue2 := (recoveredValue1) typeNameKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := SGCgBaseClassType.
    recoveredValue6 := (recoveredValue5) typeBaseTypeNameKey.
    recoveredValue7 := recoveredArg2.
    (recoveredValue4) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) at: ('BASETYPE.NAME') put: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ceee4; bytecode file offset 0xacb7ac"
!SGCgAutosarSettings methodsFor: 'recovered'!
checkARXmlShortName: recoveredArg1 ifFail: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'AUTOSAR short name does not match specification'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d3fa8; bytecode file offset 0xad087c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 index: recoveredArg2 rteCall: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) indexKey.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [].
    recoveredValue11 := (self) template: (recoveredValue8) binding: (recoveredValue9) ifFail: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2020376c; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) namespaces.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for namespace (package) name').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020378c; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arFilename: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for file name').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202037ac; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arSetting: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for option').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202037cc; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) packageNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for package name').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202037ec; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) miscellaneous.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for template').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2020380c; bytecode file offset 0xb000d8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arShortName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) shortNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) asString.
    recoveredBlock8Value2 := (recoveredBlock8Value1) , (' for short name').
    recoveredBlock8Value3 := (self) fatalNo: (85) with: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022beb4; bytecode file offset 0xb28784"
!SGCgAutosarSettings methodsFor: 'recovered'!
schemaLocationFullFilename
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) rootPath.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) settings.
    recoveredValue2 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) , ('\').
    recoveredBlock12Value2 := (self) schemaLocationFilename.
    recoveredBlock12Value3 := (recoveredBlock12Value1) , (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    recoveredValue3 := (recoveredValue1) at: ('schemaLocationFullFilename') ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20239628; bytecode file offset 0xb35f00"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 typeName: recoveredArg2 maxSize: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SGCgBaseClassType.
    recoveredValue5 := (recoveredValue4) typeMaxsizeKey.
    recoveredValue6 := recoveredArg3.
    (recoveredValue3) at: (recoveredValue5) put: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) at: ('MAXSIZE') put: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) arTemplate: (recoveredValue9) typeName: (recoveredValue10).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := [].
    recoveredValue14 := (self) template: (recoveredValue11) binding: (recoveredValue12) ifFail: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2023c098; bytecode file offset 0xb38974"
!SGCgAutosarSettings methodsFor: 'recovered'!
schemaLocationFilename
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := '4'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'AUTOSAR_'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := '.xsd'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'autosar.xsd'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023cba8; bytecode file offset 0xb3948c"
!SGCgAutosarSettings methodsFor: 'recovered'!
validGeneralNameTemplateParameter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super validGeneralNameTemplateParameter.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := SGCgComponentInfo.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) swComponentLibraryPathARPackageStyleKey.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) swComponentType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) bannerInfos.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := SGCgComponentInfo.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentLibraryPathARPackageStyleKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20250610; bytecode file offset 0xb4cee8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 typeName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGCgBaseClassType.
    recoveredValue4 := (recoveredValue3) typeNameKey.
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := SGCgBaseClassType.
    recoveredValue8 := (recoveredValue7) typeBaseTypeNameKey.
    recoveredValue9 := recoveredArg2.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) at: ('BASETYPE.NAME') put: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [].
    recoveredValue15 := (self) template: (recoveredValue12) binding: (recoveredValue13) ifFail: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x202644d8; bytecode file offset 0xb60db0"
!SGCgAutosarSettings methodsFor: 'recovered'!
schemaFileName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := '4'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) startsWith: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'autosar_'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := '.xsd'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'autosar.xsd'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282dac; bytecode file offset 0xb7f6c8"
!SGCgAutosarSettings methodsFor: 'recovered'!
rootPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) rootPathKey.
    recoveredValue3 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 recoveredBlock8Value7 recoveredBlock8Value8 recoveredBlock8Value9 recoveredBlock8Value10 |
    recoveredBlock8Value0 := (self) buildEnvironmentInfo.
    recoveredBlock8Value1 := (recoveredBlock8Value0) ascetPath.
    recoveredBlock8Value2 := (self) relPathFormats.
    recoveredBlock8Value3 := (recoveredBlock8Value2) asPathname.
    recoveredBlock8Value4 := (recoveredBlock8Value1) , (recoveredBlock8Value3).
    recoveredBlock8Value5 := (self) relPathAUTOSAR.
    recoveredBlock8Value6 := (recoveredBlock8Value5) asPathname.
    recoveredBlock8Value7 := (recoveredBlock8Value4) , (recoveredBlock8Value6).
    recoveredBlock8Value8 := (self) versionString.
    recoveredBlock8Value9 := (recoveredBlock8Value7) , (recoveredBlock8Value8).
    recoveredBlock8Value10 := (recoveredBlock8Value9) asPathNameBlanksAvoided.
    recoveredBlock8Value10
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2036d020; bytecode file offset 0xc69908"
!SGCgAutosarSettings methodsFor: 'recovered'!
externalFiles
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) schemaLocationFullFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryPlatformBaseType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNames.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryPlatformImplementationType.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20377fac; bytecode file offset 0xc74890"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlValidMiscTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) validNameTemplateParameter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) formulaNameKey.
    (recoveredValue1) at: (recoveredValue3) put: ('X').
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := SGCgBaseClassType.
    recoveredValue6 := (recoveredValue5) implZeroNotIncludedKey.
    (recoveredValue4) at: (recoveredValue6) put: ('X').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := SGCgBaseClassType.
    recoveredValue9 := (recoveredValue8) implIntervalRightKey.
    (recoveredValue7) at: (recoveredValue9) put: ('X').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := SGCgBaseClassType.
    recoveredValue12 := (recoveredValue11) implIntervalLeftKey.
    (recoveredValue10) at: (recoveredValue12) put: ('X').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := SGCgBaseClassType.
    recoveredValue15 := (recoveredValue14) implTypeNameKey.
    (recoveredValue13) at: (recoveredValue15) put: ('X').
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) class.
    recoveredValue18 := (recoveredValue17) methodNameKey.
    (recoveredValue16) at: (recoveredValue18) put: ('X').
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) class.
    recoveredValue21 := (recoveredValue20) elementNameKey.
    (recoveredValue19) at: (recoveredValue21) put: ('X').
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"ASDBase.ic method 0x20387f28; bytecode file offset 0xc8481c"
!SGCgAutosarSettings methodsFor: 'recovered'!
arPackage: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionPrefixPackage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeSubstring: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) categoryImplTemplateType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryApplicationDataType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) categoryApplicationDataType.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) packageNames.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaces.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) arNamespaceSeparator.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) upToLast: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) arNamespaceSeparator.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) arShortName: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1f64; bytecode file offset 0xcbe84c"
!SGCgAutosarSettings methodsFor: 'recovered'!
checkARXmlPackageName: recoveredArg1 ifFail: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) arNamespaceSeparator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'AUTOSAR package name must start with a "'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) arNamespaceSeparator.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) arNamespaceSeparator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'AUTOSAR package name must consist at least of subpackage and short name'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := recoveredArg2.
    recoveredBlock65Value2 := (self) checkARXmlShortName: (recoveredBlock65Value0) ifFail: (recoveredBlock65Value1).
    recoveredBlock65Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d65b0; bytecode file offset 0xdd2ec8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlValidPackageTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := (self) validNameTemplateParameter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) elementNameKey.
    recoveredValue4 := [].
    (recoveredValue1) removeKey: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) methodNameKey.
    recoveredValue8 := [].
    (recoveredValue5) removeKey: (recoveredValue7) ifAbsent: (recoveredValue8).
    recoveredValue9 := SGCgBaseClassType.
    recoveredValue10 := (recoveredValue9) typeKeys.
    recoveredValue11 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) at: (recoveredBlock33Value1) put: ('X').
    recoveredBlock33Value2
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := (self) class.
    recoveredValue15 := (recoveredValue14) constantValueKey.
    (recoveredValue13) at: (recoveredValue15) put: ('X').
    recoveredValue16 := recoveredValue12.
    recoveredValue17 := (self) class.
    recoveredValue18 := (recoveredValue17) unitNameKey.
    (recoveredValue16) at: (recoveredValue18) put: ('X').
    recoveredValue19 := recoveredValue12.
    recoveredValue20 := (self) class.
    recoveredValue21 := (recoveredValue20) formulaNameKey.
    (recoveredValue19) at: (recoveredValue21) put: ('X').
    recoveredValue22 := recoveredValue12.
    recoveredValue23 := (self) class.
    recoveredValue24 := (recoveredValue23) indexKey.
    (recoveredValue22) at: (recoveredValue24) put: ('X').
    recoveredValue25 := recoveredValue12.
    recoveredValue26 := SGCgVarAttributes.
    recoveredValue27 := (recoveredValue26) memorySectionNameKey.
    (recoveredValue25) at: (recoveredValue27) put: ('X').
    recoveredValue28 := recoveredValue12.
    recoveredValue29 := SGCgBaseClassType.
    recoveredValue30 := (recoveredValue29) implIntervalRightKey.
    (recoveredValue28) at: (recoveredValue30) put: ('X').
    recoveredValue31 := recoveredValue12.
    recoveredValue32 := SGCgBaseClassType.
    recoveredValue33 := (recoveredValue32) implIntervalLeftKey.
    (recoveredValue31) at: (recoveredValue33) put: ('X').
    recoveredValue34 := recoveredValue12.
    recoveredValue35 := SGCgBaseClassType.
    recoveredValue36 := (recoveredValue35) physIntervalRightKey.
    (recoveredValue34) at: (recoveredValue36) put: ('X').
    recoveredValue37 := recoveredValue12.
    recoveredValue38 := SGCgBaseClassType.
    recoveredValue39 := (recoveredValue38) physIntervalLeftKey.
    (recoveredValue37) at: (recoveredValue39) put: ('X').
    recoveredValue40 := recoveredValue12.
    recoveredValue41 := SGCgBaseClassType.
    recoveredValue42 := (recoveredValue41) implTypeNameKey.
    (recoveredValue40) at: (recoveredValue42) put: ('X').
    recoveredValue43 := recoveredValue12.
    recoveredValue44 := SGCgComponentInfo.
    recoveredValue45 := (recoveredValue44) componentLibraryPathARPackageStyleKey.
    (recoveredValue43) at: (recoveredValue45) put: ('/X').
    recoveredValue46 := recoveredLocal1.
    ^recoveredValue46
! !

"ASDBase.ic method 0x20504608; bytecode file offset 0xe00ef8"
!SGCgAutosarSettings methodsFor: 'recovered'!
arTemplate: recoveredArg1 elementName: recoveredArg2 componentInfo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) bannerInfos.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) binding: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidANSICIdentifier.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := $_.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNameKey.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementNameKey.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithInvalidCharKey: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementNameKey.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithValidCharKey: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNameKey.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodNameKey.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithValidCharKey: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodNameKey.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithInvalidCharKey: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventNameKey.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) eventNameKey.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithValidCharKey: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) eventNameKey.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) nameStartsWithInvalidCharKey: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) template: (recoveredStack1) binding: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20549f34; bytecode file offset 0xe46828"
!SGCgAutosarSettings methodsFor: 'recovered'!
arXmlValidShortNameTemplateParameter
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := (self) validNameTemplateParameter.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := SGCgBaseClassType.
    recoveredValue2 := (recoveredValue1) typeKeys.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: ('X').
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) indexKey.
    (recoveredValue4) at: (recoveredValue6) put: ('X').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) elementNameKey.
    (recoveredValue7) at: (recoveredValue9) put: ('X').
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) class.
    recoveredValue12 := (self) class.
    recoveredValue13 := (recoveredValue12) elementNameKey.
    recoveredValue14 := (recoveredValue11) nameStartsWithValidCharKey: (recoveredValue13).
    (recoveredValue10) at: (recoveredValue14) put: ('X').
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (self) class.
    recoveredValue17 := (self) class.
    recoveredValue18 := (recoveredValue17) elementNameKey.
    recoveredValue19 := (recoveredValue16) nameStartsWithInvalidCharKey: (recoveredValue18).
    (recoveredValue15) at: (recoveredValue19) put: ('X').
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) class.
    recoveredValue22 := (recoveredValue21) operationArgumentDirectionKey.
    (recoveredValue20) at: (recoveredValue22) put: ('X').
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (self) class.
    recoveredValue25 := (recoveredValue24) methodNameKey.
    (recoveredValue23) at: (recoveredValue25) put: ('X').
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (self) class.
    recoveredValue28 := (self) class.
    recoveredValue29 := (recoveredValue28) methodNameKey.
    recoveredValue30 := (recoveredValue27) nameStartsWithValidCharKey: (recoveredValue29).
    (recoveredValue26) at: (recoveredValue30) put: ('X').
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (self) class.
    recoveredValue33 := (self) class.
    recoveredValue34 := (recoveredValue33) methodNameKey.
    recoveredValue35 := (recoveredValue32) nameStartsWithInvalidCharKey: (recoveredValue34).
    (recoveredValue31) at: (recoveredValue35) put: ('X').
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (self) class.
    recoveredValue38 := (recoveredValue37) portNameKey.
    (recoveredValue36) at: (recoveredValue38) put: ('X').
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := (self) class.
    recoveredValue41 := (recoveredValue40) portAccessKey.
    (recoveredValue39) at: (recoveredValue41) put: ('X').
    recoveredValue42 := recoveredLocal1.
    recoveredValue43 := (self) class.
    recoveredValue44 := (recoveredValue43) eventNameKey.
    (recoveredValue42) at: (recoveredValue44) put: ('X').
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := (self) class.
    recoveredValue47 := (self) class.
    recoveredValue48 := (recoveredValue47) eventNameKey.
    recoveredValue49 := (recoveredValue46) nameStartsWithValidCharKey: (recoveredValue48).
    (recoveredValue45) at: (recoveredValue49) put: ('X').
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (self) class.
    recoveredValue52 := (self) class.
    recoveredValue53 := (recoveredValue52) eventNameKey.
    recoveredValue54 := (recoveredValue51) nameStartsWithInvalidCharKey: (recoveredValue53).
    (recoveredValue50) at: (recoveredValue54) put: ('X').
    recoveredValue55 := recoveredLocal1.
    ^recoveredValue55
! !

