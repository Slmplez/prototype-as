"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007be0; bytecode file offset 0x908be4"
!TGPlatform methodsFor: 'recovered'!
requiresMessageCopyGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) supportsMessageCopyGeneration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200084e0; bytecode file offset 0x908be4"
!TGPlatform methodsFor: 'recovered'!
permitsMessageCopyGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) supportsMessageCopyGeneration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a55c; bytecode file offset 0x908be4"
!TGPlatform methodsFor: 'recovered'!
permitsAccessMacroGeneration
    | recoveredValue0 |
    recoveredValue0 := (self) supportsAccessMacroGeneration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016070; bytecode file offset 0x92209c"
!TGPlatform methodsFor: 'recovered'!
systemDefaultEnableARXmlConfig
    ^'FALSE'
! !

"ASDBase.ic method 0x20028034; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
osCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) osCategory.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a1c4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
requiresScoopixGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) requiresScoopixGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a244; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
targetSpecificOptionsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := (recoveredValue0) checksum.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aff4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memoryClassesVariableGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memoryClassesVariableGUI.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b9b4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsPhysicalExperimentGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isExperimentalTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bad4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsAccessMacroGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsAccessMacroGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cc04; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
osIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) identifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d4d4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memClassDeclarationsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) checksum.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e0a4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memoryClassesConstDataGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memoryClassesConstDataGUI.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e364; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
targetIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) targetType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ea84; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memoryClassesCharacteristicGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memoryClassesCharacteristicGUI.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002eb14; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsImplementationControllerGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isControllerTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f1c4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsCompiling
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compilerTool.
    recoveredValue1 := (recoveredValue0) supportsCompiling.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fc14; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
targetSpecificOptionsDeclarationInstanceIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) targetType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002feb4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
validValuesResolveSystemConstants
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) validValuesResolveSystemConstants.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030444; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
defaultBuildToolId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) defaultBuildToolId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200308a4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsMessageCopyVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsMessageCopyVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031604; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
permitsExternalBuildTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsExternalBuildTool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032404; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsExternalBuildTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsExternalBuildTool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032484; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memoryClassesCodeGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memoryClassesCodeGUI.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032b34; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
requiresExternalBuildTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsExternalBuildTool.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033ad4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
memoryClassesDistSearchResultGUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memoryClassesDistSearchResultGUI.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034274; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
targetDeclarationInstanceIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) targetType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200359f4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
isOSCategoryAUTOSAR
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) isOSCategoryAUTOSAR.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035ff4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
isOSCategoryLegacy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOSCategoryLegacy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200368f4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsScoopixGeneration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) supportsScoopixGeneration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036eb4; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsOSConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) supportsOSConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037c24; bytecode file offset 0x934580"
!TGPlatform methodsFor: 'recovered'!
supportsImplementationExperimentGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isExperimentalTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f6d8; bytecode file offset 0x93bf94"
!TGPlatform methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049034; bytecode file offset 0x9458f0"
!TGPlatform methodsFor: 'recovered'!
removeTargetSpecificOptionsDeclaration
    targetSpecificOptions := nil.
    ^self
! !

"ASDBase.ic method 0x2004906c; bytecode file offset 0x945920"
!TGPlatform methodsFor: 'recovered'!
resetBuildTool
    buildTool := nil.
    ^self
! !

"ASDBase.ic method 0x20058988; bytecode file offset 0x956284"
!TGPlatform methodsFor: 'recovered'!
checkGeneralRestrictions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkGeneralRestrictions: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066a64; bytecode file offset 0x963428"
!TGPlatform methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069a90; bytecode file offset 0x966bdc"
!TGPlatform methodsFor: 'recovered'!
osLogicKey
    | recoveredValue0 |
    recoveredValue0 := osLogicKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006afd4; bytecode file offset 0x967a18"
!TGPlatform methodsFor: 'recovered'!
osSettings
    | recoveredValue0 |
    recoveredValue0 := osSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c914; bytecode file offset 0x9692b0"
!TGPlatform methodsFor: 'recovered'!
targetSpecificOptions
    | recoveredValue0 |
    recoveredValue0 := targetSpecificOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e3a4; bytecode file offset 0x97c330"
!TGPlatform methodsFor: 'recovered'!
requiresAccessMacroGeneration
    ^false
! !

"ASDBase.ic method 0x200883dc; bytecode file offset 0x984cf8"
!TGPlatform methodsFor: 'recovered'!
readTargetSpecificOptions
    | recoveredValue0 |
    recoveredValue0 := ASDTargetSpecificOptionsDeclaration.
    (recoveredValue0) createForPlatform: (self).
    ^self
! !

"ASDBase.ic method 0x2008c140; bytecode file offset 0x988b68"
!TGPlatform methodsFor: 'recovered'!
isOSGenericOSEK
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osIdentifier.
    recoveredValue1 := ('GENERIC*') match: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008d264; bytecode file offset 0x989db0"
!TGPlatform methodsFor: 'recovered'!
readMemoryClassDeclarationFile
    | recoveredValue0 |
    recoveredValue0 := (self) memClassDeclarationFilename.
    (self) readMemoryDeclarationFile: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008e81c; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
matrixOrientation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) matrixOrientationKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e834; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
nameForMessageMemcpy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) nameForMessageMemcpyKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e87c; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
resolveSystemConstants
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) resolveSystemConstantsKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e8f4; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
arrayReferenceStructOnStack4Variables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) arrayReferenceStructOnStack4VariablesKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e93c; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
arrayReferenceStructOnStack4Parameters
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) arrayReferenceStructOnStack4ParametersKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e954; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
matrixDimensions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) matrixDimensionsKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e96c; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
bypassFunctionUseCriticalSection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) bypassFunctionUseCriticalSectionKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008ea44; bytecode file offset 0x98b308"
!TGPlatform methodsFor: 'recovered'!
externalBuildToolOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) externalBuildToolOptionsKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f7fc; bytecode file offset 0x98c228"
!TGPlatform methodsFor: 'recovered'!
targetOptionsDeclarationFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) target.
    recoveredValue2 := (recoveredValue1) getTargetSpecificPath.
    recoveredValue3 := (recoveredValue0) targetOptionsDeclarationFile: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2900; bytecode file offset 0x99f1bc"
!TGPlatform methodsFor: 'recovered'!
readMemoryDeclarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLMemoryClassDeclaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    memClassDeclaration := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200be5dc; bytecode file offset 0x9bb178"
!TGPlatform methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    target := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf7c8; bytecode file offset 0x9bc0b4"
!TGPlatform methodsFor: 'recovered'!
osTool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osTool := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c001c; bytecode file offset 0x9bd228"
!TGPlatform methodsFor: 'recovered'!
compilerTool: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compilerTool := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ce8; bytecode file offset 0x9bdf14"
!TGPlatform methodsFor: 'recovered'!
osLogicKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osLogicKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1ce4; bytecode file offset 0x9beac8"
!TGPlatform methodsFor: 'recovered'!
osSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c304c; bytecode file offset 0x9bfde0"
!TGPlatform methodsFor: 'recovered'!
targetSpecificOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetSpecificOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f24f4; bytecode file offset 0x9eedc0"
!TGPlatform methodsFor: 'recovered'!
permitsScoopixGeneration
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
            recoveredStack2 := (recoveredStack2) supportsScoopixGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOSCategoryAUTOSAR.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201088c8; bytecode file offset 0xa05194"
!TGPlatform methodsFor: 'recovered'!
isContImplementationTypeSingle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) targetSpecificOptions.
    recoveredValue1 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue2 := (recoveredValue1) contImplementationTypeKey.
    recoveredValue3 := (recoveredValue0) valueForKey: (recoveredValue2).
    recoveredValue4 := ASDTargetSpecificOptionsDeclaration.
    recoveredValue5 := (recoveredValue4) contImplementationTypeSingle.
    recoveredValue6 := (recoveredValue3) equals: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010a5c8; bytecode file offset 0xa06e8c"
!TGPlatform methodsFor: 'recovered'!
getCompilerToolType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := TGCCompilerTool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultCompilerToolType.
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
            recoveredStack0 := (recoveredStack0) compilerTool.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) compilerToolType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201126cc; bytecode file offset 0xa0ef90"
!TGPlatform methodsFor: 'recovered'!
validScoopixSchemaVersions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsScoopixGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) validScoopixSchemaVersions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20117ef0; bytecode file offset 0xa14800"
!TGPlatform methodsFor: 'recovered'!
supportsPhysicalControllerGenerator
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
            recoveredStack2 := (recoveredStack2) isControllerTarget.
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
            recoveredStack1 := (recoveredStack1) isOSCategoryAUTOSAR.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117f04; bytecode file offset 0xa14800"
!TGPlatform methodsFor: 'recovered'!
permitsMessageCopy
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
            recoveredStack2 := (recoveredStack2) supportsMessageCopyVariant.
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
            recoveredStack1 := (recoveredStack1) isOSCategoryAUTOSAR.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117f18; bytecode file offset 0xa14800"
!TGPlatform methodsFor: 'recovered'!
supportsMessageCopyGeneration
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
            recoveredStack2 := (recoveredStack2) supportsMessageCopyGeneration.
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
            recoveredStack1 := (recoveredStack1) isOSCategoryAUTOSAR.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117f2c; bytecode file offset 0xa14800"
!TGPlatform methodsFor: 'recovered'!
systemDefaultEnableOSConfig
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
            recoveredStack2 := (recoveredStack2) isOSCategoryOSEK.
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
            recoveredStack1 := (recoveredStack1) isOSGenericOSEK.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118a68; bytecode file offset 0xa15328"
!TGPlatform methodsFor: 'recovered'!
permitsContImplementationType
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
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isControllerTarget.
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
            recoveredStack1 := (recoveredStack1) isEHooksTarget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012bb88; bytecode file offset 0xa28470"
!TGPlatform methodsFor: 'recovered'!
requiresMessageCopy
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
            recoveredStack2 := (recoveredStack2) supportsMessageCopyVariant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            recoveredStack1 := (recoveredStack1) isEHooksTarget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012bb9c; bytecode file offset 0xa28470"
!TGPlatform methodsFor: 'recovered'!
supportsQuantizedExperimentGenerator
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
            recoveredStack2 := (recoveredStack2) isExperimentalTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            recoveredStack1 := (recoveredStack1) isPrototypingTarget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012eda0; bytecode file offset 0xa2b664"
!TGPlatform methodsFor: 'recovered'!
valueCollectionScoopixVersion
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExistingTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) validScoopixSchemaVersions.
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
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) validScoopixSchemaVersions.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b0f8; bytecode file offset 0xa379b4"
!TGPlatform methodsFor: 'recovered'!
memClassDeclaration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := memClassDeclaration.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) readMemoryClassDeclarationFile.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := memClassDeclaration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20141430; bytecode file offset 0xa3ddcc"
!TGPlatform methodsFor: 'recovered'!
supportsCompilerInlining
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compilerTool.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) supportsInlining.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20152354; bytecode file offset 0xa4ec14"
!TGPlatform methodsFor: 'recovered'!
compilerTool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := compilerTool.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) target.
    recoveredBlock6Value1 := (recoveredBlock6Value0) compilerTool.
    ^recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := compilerTool.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015ff68; bytecode file offset 0xa5c838"
!TGPlatform methodsFor: 'recovered'!
messageCopyVariant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := TGTarget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageUsageVariantNoCopy.
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
            recoveredStack0 := (recoveredStack0) targetSpecificOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageCopyVariantKey.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueForKey: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016196c; bytecode file offset 0xa5e2a4"
!TGPlatform methodsFor: 'recovered'!
defaultMatrixDimensions
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
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) matrixDimension2D.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) matrixDimension1D.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161988; bytecode file offset 0xa5e2a4"
!TGPlatform methodsFor: 'recovered'!
defaultContImplementationType
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
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) contImplementationTypeDouble.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) contImplementationTypeSingle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201619c0; bytecode file offset 0xa5e2a4"
!TGPlatform methodsFor: 'recovered'!
defaultMatrixOrientation
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
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) matrixOrientationRowMajor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) matrixOrientationColumnMajor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017efa8; bytecode file offset 0xa7b868"
!TGPlatform methodsFor: 'recovered'!
osTool
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osTool.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) target.
    recoveredBlock6Value1 := (recoveredBlock6Value0) osTool.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    osTool := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := osTool.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201895ec; bytecode file offset 0xa85ebc"
!TGPlatform methodsFor: 'recovered'!
targetSpecificPathTokens
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) pathTokens.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) target.
    recoveredValue6 := (recoveredValue5) getTargetSpecificPath.
    (recoveredValue4) at: ('TARGET') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201a2a7c; bytecode file offset 0xa9f34c"
!TGPlatform methodsFor: 'recovered'!
scoopixSchemaVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExistingTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildTool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) scoopixSchemaVersion.
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
            recoveredStack0 := (recoveredStack0) targetSpecificOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) scoopixSchemaVersionKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueForKey: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aaa74; bytecode file offset 0xaa7344"
!TGPlatform methodsFor: 'recovered'!
cCodeConfigurationDeclFilename
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
            recoveredStack0 := (recoveredStack0) getTargetSpecificPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := '\Formats\cCodeConfiguration.aod.xml'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistency: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := '%TARGETROOT%\Formats\cCodeConfiguration.aod.xml'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae850; bytecode file offset 0xaab11c"
!TGPlatform methodsFor: 'recovered'!
buildTool
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buildTool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := TGAbstractBuildToolDeclaration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetSpecificOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) externalBuildToolIdKey.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) valueForKey: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolForType: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            buildTool := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := buildTool.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d62c0; bytecode file offset 0xad2b8c"
!TGPlatform methodsFor: 'recovered'!
isEnabledMessageCopyGeneration
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
            recoveredStack2 := (recoveredStack2) supportsMessageCopyGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) permitsMessageCopyGeneration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageCopyGenerationKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueForKey: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20226764; bytecode file offset 0xb23034"
!TGPlatform methodsFor: 'recovered'!
defaultResolveSystemConstants
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
            recoveredStack0 := (recoveredStack0) isControllerTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) validValuesResolveSystemConstants.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    ^recoveredBlock18Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) validValuesResolveSystemConstants.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20231648; bytecode file offset 0xb2df1c"
!TGPlatform methodsFor: 'recovered'!
memorySegments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) memClassDeclaration.
    recoveredValue1 := (recoveredValue0) memorySegments.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) memorySegmentIDAutomatic.
    recoveredValue5 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 |
    recoveredBlock10Value0 := ASDMemorySegment.
    recoveredBlock10Value1 := (self) class.
    recoveredBlock10Value2 := (recoveredBlock10Value1) memorySegmentIDAutomatic.
    recoveredBlock10Value3 := (self) class.
    recoveredBlock10Value4 := (recoveredBlock10Value3) memorySegmentIDAutomatic.
    recoveredBlock10Value5 := (recoveredBlock10Value0) createId: (recoveredBlock10Value2) label: (recoveredBlock10Value4).
    recoveredBlock10Value6 := recoveredBlock10Value5.
    (recoveredBlock10Value6) priority: (0).
    recoveredBlock10Value5
].
    (recoveredValue2) at: (recoveredValue4) ifAbsentPut: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2023bab4; bytecode file offset 0xb383a8"
!TGPlatform methodsFor: 'recovered'!
isEnabledAccessMacroGeneration
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
            recoveredStack2 := (recoveredStack2) supportsAccessMacroGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) permitsAccessMacroGeneration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) requiresAccessMacroGeneration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessMacroGenerationKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueForKey: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023bad8; bytecode file offset 0xb383a8"
!TGPlatform methodsFor: 'recovered'!
isEnabledScoopixGeneration
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
            recoveredStack2 := (recoveredStack2) supportsScoopixGeneration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) permitsScoopixGeneration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) requiresScoopixGeneration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetSpecificOptions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ASDTargetSpecificOptionsDeclaration.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) scoopixGenerationKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueForKey: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20243348; bytecode file offset 0xb3fc18"
!TGPlatform methodsFor: 'recovered'!
memClassDeclarationFilename
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) osTool.
    recoveredValue1 := (recoveredValue0) getMemorySectionsFile.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) osSettings.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) memorySectionsFile.
    recoveredBlock11Value2 := recoveredBlock11Value1.
    recoveredLocal1 := recoveredBlock11Value2.
    recoveredBlock11Value1
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) targetSpecificPathTokens.
    recoveredValue6 := (recoveredValue4) asFilename: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x203b0778; bytecode file offset 0xcad06c"
!TGPlatform methodsFor: 'recovered'!
systemDefaultOSTemplateFile
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '%TARGET%\templates'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := '%TARGET%'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) osTool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryOSEK.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSGenericOSEK.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '\OS_Generic-OSEK.template'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
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
            recoveredStack1 := '\OS_RTA-OSEK_V50.template'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) osTool.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSCategoryAUTOSAR.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) osIdentifier.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) ercosek43Id.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := '\OS_ERCOSEK_V43.template'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20458cb0; bytecode file offset 0xd55590"
!TGPlatform methodsFor: 'recovered'!
memorySegmentsGUIIncludingUndefined: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) label.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) class.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) memorySegmentIDAutomatic.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) = (recoveredBlock6Stack2).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) label.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) class.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) memorySegmentIDAutomatic.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) = (recoveredBlock6Stack2).
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 36] ifFalse: [recoveredBlock6PC := 40].
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) label.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack2 := ASDDisplayStrings.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) undefinedDisplayString.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) includesSubstring: (recoveredBlock6Stack2).
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 52] ifFalse: [recoveredBlock6PC := 56].
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 53.
        ].
        recoveredBlock6Step = 53 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg2.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) label.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack2 := ASDDisplayStrings.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) undefinedDisplayString.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) includesSubstring: (recoveredBlock6Stack2).
            recoveredBlock6PC := 64.
        ].
        recoveredBlock6Step = 64 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 68] ifFalse: [recoveredBlock6PC := 72].
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) label.
            recoveredBlock6PC := 74.
        ].
        recoveredBlock6Step = 74 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg2.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) label.
            recoveredBlock6PC := 76.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) < (recoveredBlock6Stack2).
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 |
    recoveredBlock86Value0 := recoveredBlock86Arg1.
    recoveredBlock86Value1 := (recoveredBlock86Value0) label.
    recoveredBlock86Value2 := recoveredArg1.
    recoveredBlock86Value3 := (recoveredBlock86Value1) = (recoveredBlock86Value2).
    recoveredBlock86Value3
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20520748; bytecode file offset 0xe1d0a8"
!TGPlatform methodsFor: 'recovered'!
systemDefaultsOsSettings: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) osIdentifier.
    (recoveredValue0) operatingSystem: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) targetIdentifier.
    (recoveredValue2) target: (recoveredValue3).
    recoveredValue4 := WinProfile.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue5) initialize.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) operatingSystem.
    recoveredValue10 := (self) target.
    recoveredValue11 := (recoveredValue10) targetIniFile.
    recoveredValue12 := (recoveredValue7) getSectionEntries: (recoveredValue9) from: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) configToolOptionsKey.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (self) osTool.
    recoveredValue19 := (recoveredValue18) getConfigToolOptions.
    recoveredValue20 := (recoveredValue14) getOption: (recoveredValue16) from: (recoveredValue17) default: (recoveredValue19).
    (recoveredValue13) configToolOptions: (recoveredValue20).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) includePathKey.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue22) getOption: (recoveredValue24) from: (recoveredValue25) default: ('').
    (recoveredValue21) includePath: (recoveredValue26).
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) libraryPathKey.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue28) getOption: (recoveredValue30) from: (recoveredValue31) default: ('').
    (recoveredValue27) libraryPath: (recoveredValue32).
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := recoveredArg1.
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := (recoveredValue35) librariesKey.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (recoveredValue34) getOption: (recoveredValue36) from: (recoveredValue37) default: ('').
    (recoveredValue33) libraries: (recoveredValue38).
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := recoveredArg1.
    recoveredValue42 := (recoveredValue41) oilFileKey.
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := (recoveredValue40) getOption: (recoveredValue42) from: (recoveredValue43) default: ('').
    (recoveredValue39) oilFile: (recoveredValue44).
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := recoveredArg1.
    recoveredValue47 := recoveredArg1.
    recoveredValue48 := (recoveredValue47) enableOSConfigKey.
    recoveredValue49 := recoveredLocal1.
    recoveredValue50 := (self) systemDefaultEnableOSConfig.
    recoveredValue51 := (recoveredValue46) getOption: (recoveredValue48) from: (recoveredValue49) default: (recoveredValue50).
    (recoveredValue45) enableOSConfig: (recoveredValue51).
    recoveredValue52 := recoveredArg1.
    recoveredValue53 := recoveredArg1.
    recoveredValue54 := recoveredArg1.
    recoveredValue55 := (recoveredValue54) osTemplateFileKey.
    recoveredValue56 := recoveredLocal1.
    recoveredValue57 := (self) systemDefaultOSTemplateFile.
    recoveredValue58 := (recoveredValue53) getOption: (recoveredValue55) from: (recoveredValue56) default: (recoveredValue57).
    (recoveredValue52) osTemplateFile: (recoveredValue58).
    recoveredValue59 := recoveredArg1.
    recoveredValue60 := recoveredArg1.
    recoveredValue61 := recoveredArg1.
    recoveredValue62 := (recoveredValue61) interpolationMappingKey.
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (self) osTool.
    recoveredValue65 := (recoveredValue64) getInterpolationAliasMapping.
    recoveredValue66 := (recoveredValue60) getOption: (recoveredValue62) from: (recoveredValue63) default: (recoveredValue65).
    (recoveredValue59) interpolationMapping: (recoveredValue66).
    recoveredValue67 := recoveredArg1.
    recoveredValue68 := recoveredArg1.
    recoveredValue69 := recoveredArg1.
    recoveredValue70 := (recoveredValue69) arXmlConfigurationFileKey.
    recoveredValue71 := recoveredLocal1.
    recoveredValue72 := (self) osTool.
    recoveredValue73 := (recoveredValue72) getArXmlConfigurationFile.
    recoveredValue74 := (recoveredValue68) getOption: (recoveredValue70) from: (recoveredValue71) default: (recoveredValue73).
    (recoveredValue67) arXmlConfigurationFile: (recoveredValue74).
    recoveredValue75 := recoveredArg1.
    recoveredValue76 := recoveredArg1.
    recoveredValue77 := recoveredArg1.
    recoveredValue78 := (recoveredValue77) memorySectionsFileKey.
    recoveredValue79 := recoveredLocal1.
    recoveredValue80 := (self) osTool.
    recoveredValue81 := (recoveredValue80) systemDefaultMemorySectionsFile.
    recoveredValue82 := (recoveredValue76) getOption: (recoveredValue78) from: (recoveredValue79) default: (recoveredValue81).
    (recoveredValue75) memorySectionsFile: (recoveredValue82).
    recoveredValue83 := recoveredArg1.
    recoveredValue84 := recoveredArg1.
    recoveredValue85 := recoveredArg1.
    recoveredValue86 := (recoveredValue85) eccoOptionsFileKey.
    recoveredValue87 := recoveredLocal1.
    recoveredValue88 := (self) osTool.
    recoveredValue89 := (recoveredValue88) getEccoOptionsFile.
    recoveredValue90 := (recoveredValue84) getOption: (recoveredValue86) from: (recoveredValue87) default: (recoveredValue89).
    (recoveredValue83) eccoOptionsFile: (recoveredValue90).
    ^self
! !

