"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001348; bytecode file offset 0x8ffcfc"
!SGProject methodsFor: 'recovered'!
modPar
    ^self
! !

"ASDBase.ic method 0x20001430; bytecode file offset 0x8ffcfc"
!SGProject methodsFor: 'recovered'!
intCode
    ^self
! !

"ASDBase.ic method 0x200020f0; bytecode file offset 0x8ffcfc"
!SGProject methodsFor: 'recovered'!
modCommon
    ^self
! !

"ASDBase.ic method 0x20002690; bytecode file offset 0x8ffcfc"
!SGProject methodsFor: 'recovered'!
initGraphics
    ^self
! !

"ASDBase.ic method 0x200031c0; bytecode file offset 0x8ffcfc"
!SGProject methodsFor: 'recovered'!
getValidModule
    ^self
! !

"ASDBase.ic method 0x200042a0; bytecode file offset 0x90206c"
!SGProject methodsFor: 'recovered'!
intCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200046f8; bytecode file offset 0x90206c"
!SGProject methodsFor: 'recovered'!
createIntCodeEntryFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a78; bytecode file offset 0x90206c"
!SGProject methodsFor: 'recovered'!
memoryLayout: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20006064; bytecode file offset 0x902de8"
!SGProject methodsFor: 'recovered'!
writeXMLDefaultProjectToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006b0c; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
experimentMethods
    | recoveredValue0 |
    recoveredValue0 := (self) getAvailableTasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200073a0; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
widgetCachingKey
    | recoveredValue0 |
    recoveredValue0 := (self) standardWidgetCachingKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009c50; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
methods
    | recoveredValue0 |
    recoveredValue0 := (self) continuousTimeProcesses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a04c; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
isDefaultProject
    | recoveredValue0 |
    recoveredValue0 := (self) defaultProject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a574; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOnlineINCA
    | recoveredValue0 |
    recoveredValue0 := (self) supportsExperimentModeOfflineRP.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a994; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
itemTypeString
    | recoveredValue0 |
    recoveredValue0 := (self) targetLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b81c; bytecode file offset 0x908be4"
!SGProject methodsFor: 'recovered'!
itemTypeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) itemType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000cea4; bytecode file offset 0x909ab8"
!SGProject methodsFor: 'recovered'!
graphicObjectWithMissingPins: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20016f58; bytecode file offset 0x92209c"
!SGProject methodsFor: 'recovered'!
keyExportPath
    ^'intecrioExportPath'
! !

"ASDBase.ic method 0x200195ec; bytecode file offset 0x92209c"
!SGProject methodsFor: 'recovered'!
classType
    ^'Project'
! !

"ASDBase.ic method 0x2001bdf4; bytecode file offset 0x92209c"
!SGProject methodsFor: 'recovered'!
sourceModel
    ^'project'
! !

"ASDBase.ic method 0x2001ce98; bytecode file offset 0x92209c"
!SGProject methodsFor: 'recovered'!
possibleSignatureTypes
    ^#()
! !

"ASDBase.ic method 0x20026a04; bytecode file offset 0x923928"
!SGProject methodsFor: 'recovered'!
a2lFileName
    ^'dummy.a2l'
! !

"ASDBase.ic method 0x200270f0; bytecode file offset 0x923a44"
!SGProject methodsFor: 'recovered'!
initEHooksConfig
    | recoveredValue0 |
    recoveredValue0 := (self) initEHooksConfigQuiet: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027350; bytecode file offset 0x923d40"
!SGProject methodsFor: 'recovered'!
graphicObject
    | recoveredValue0 |
    recoveredValue0 := (self) graphicObjectWithMissingPins: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027630; bytecode file offset 0x924260"
!SGProject methodsFor: 'recovered'!
eHooksConfigIsValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksConfiguration.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200278e8; bytecode file offset 0x924260"
!SGProject methodsFor: 'recovered'!
containsEHooksData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getEHooksProjectFile.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200281f4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
checkTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) checkTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028254; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028314; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
targetTemporary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) targetTemporary.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200284f4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
implTypeNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) implTypeNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028b04; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
implTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) implTypeList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029934; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
eventMethodName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) eventMethodName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029c54; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
targetIntegrationOptionsForCurrentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) targetIntegrationOptionsForCurrentTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b154; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
platform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) platform.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c164; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
isPhysicalVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) isPhysicalVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c384; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
generatorSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c704; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
targetOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) targetSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cd34; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
osLogicForCurrentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) osLogicForCurrentTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dc94; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
simulateMethodName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) simulateMethodName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e7c4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
targetIsInUse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) targetIsInUse.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ee24; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
formulas
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) formulas.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030314; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
resetTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) resetTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200305a4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
isAutosarProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOSCategoryAUTOSAR.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030bc4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOfflinePC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOfflinePCTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030e54; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
asam2MCOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) asam2MCOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031134; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOnlinePC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) isOnlinePCTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032704; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
hiddenCodeGenMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) hiddenCodeGenMessages.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033c04; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
currentPlatform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) currentPlatform.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034014; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
globalFormulas
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) formulaList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034444; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
isCTProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctVariables.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034d74; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
projectFilesForCurrentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) projectFilesForCurrentTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035ac4; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
isQuantVariant
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) isQuantFloatExperimentVariant.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036324; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
ignoredCodeGenMessages
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) ignoredCodeGenMessages.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036374; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
targetEditSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) targetEditSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036944; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
formulaNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) formulaNames.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037674; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
experimentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) experimentTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037c34; bytecode file offset 0x934580"
!SGProject methodsFor: 'recovered'!
eHooksConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a70c; bytecode file offset 0x938608"
!SGProject methodsFor: 'recovered'!
reinitBuildSettingsFromXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readProjectOptionsFromXMLFile: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bf4c; bytecode file offset 0x938828"
!SGProject methodsFor: 'recovered'!
preGenerate: recoveredArg1 manager: recoveredArg2
    ^''
! !

"ASDBase.ic method 0x200429ec; bytecode file offset 0x9451f8"
!SGProject methodsFor: 'recovered'!
dbXmlDesc
    | recoveredValue0 |
    recoveredValue0 := (self) dbXmlDesc: ('project').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004923c; bytecode file offset 0x945af0"
!SGProject methodsFor: 'recovered'!
resetEHooksConfig
    eHooksConfig := nil.
    ^self
! !

"ASDBase.ic method 0x200495fc; bytecode file offset 0x947128"
!SGProject methodsFor: 'recovered'!
addGlobalDefaultLinearFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createDefaultLinearFormula.
    recoveredValue1 := (self) addGlobalFormula: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a10c; bytecode file offset 0x947128"
!SGProject methodsFor: 'recovered'!
addGlobalDefaultFormula
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createDefaultFormula.
    recoveredValue1 := (self) addGlobalFormula: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052e60; bytecode file offset 0x9505d0"
!SGProject methodsFor: 'recovered'!
eventAboutToCloseDataStorage: recoveredArg1
    (self) resetMappingCacheToNil.
    ^self
! !

"ASDBase.ic method 0x20053010; bytecode file offset 0x9505d0"
!SGProject methodsFor: 'recovered'!
eventCloseDataStorage: recoveredArg1
    (self) resetMappingCacheToNil.
    ^self
! !

"ASDBase.ic method 0x200571b8; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
cycleStartTimeVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) cycleStartTimeVariableNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057238; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
asam2MCOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asam2MCOptions: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057448; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
isMessagePromotedToWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMessagePromotedToWarning: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200579d8; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
isMessagePromotedLocal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMessagePromotedLocal: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057ee8; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
isMessagePromoted: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMessagePromoted: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058028; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
cycleTimeVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) cycleTimeVariableNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058578; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
updateProjectFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) updateProjectFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058758; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
addProjectFileForPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addProjectFileForPath: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058938; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
deleteProjectFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) deleteProjectFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058c78; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
deleteProjectFileNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) deleteProjectFileNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058d68; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
formulaNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) formulaNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200592f8; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
implTypeNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) implTypeNamed: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059368; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
findProjectFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) findProjectFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059468; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
isMessagePromotedGlobal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMessagePromotedGlobal: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059548; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
isMessagePromotedToError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isMessagePromotedToError: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059948; bytecode file offset 0x956284"
!SGProject methodsFor: 'recovered'!
dtVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dtVariableNameFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060324; bytecode file offset 0x95ccc0"
!SGProject methodsFor: 'recovered'!
modifiedPersistent
    | recoveredValue0 |
    (self) modifiedPersistentWithoutTimestamp.
    recoveredValue0 := (self) modified.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200603e4; bytecode file offset 0x95ccc0"
!SGProject methodsFor: 'recovered'!
changedPersistent
    | recoveredValue0 |
    (self) modifiedPersistentWithoutTimestamp.
    recoveredValue0 := (self) changed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063fc4; bytecode file offset 0x961970"
!SGProject methodsFor: 'recovered'!
convertImplTypes
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) convertImplTypes.
    ^self
! !

"ASDBase.ic method 0x20064174; bytecode file offset 0x961970"
!SGProject methodsFor: 'recovered'!
convertFormulaParameter
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) convertFormulaParameter.
    ^self
! !

"ASDBase.ic method 0x20064524; bytecode file offset 0x961970"
!SGProject methodsFor: 'recovered'!
modifyReferencedDBObjects
    | recoveredValue0 |
    recoveredValue0 := (self) osLogicForCurrentTarget.
    (recoveredValue0) modified.
    ^self
! !

"ASDBase.ic method 0x20064cc4; bytecode file offset 0x961970"
!SGProject methodsFor: 'recovered'!
convertFormulas
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) convertFormulas.
    ^self
! !

"ASDBase.ic method 0x200718ac; bytecode file offset 0x96e578"
!SGProject methodsFor: 'recovered'!
calibrationAddressOffset
    ^0
! !

"ASDBase.ic method 0x20073428; bytecode file offset 0x970b34"
!SGProject methodsFor: 'recovered'!
calibrationMethod
    ^nil
! !

"ASDBase.ic method 0x20073528; bytecode file offset 0x970b34"
!SGProject methodsFor: 'recovered'!
defaultProjectForItem
    ^nil
! !

"ASDBase.ic method 0x200739b0; bytecode file offset 0x970b34"
!SGProject methodsFor: 'recovered'!
memorySegment
    ^nil
! !

"ASDBase.ic method 0x20074098; bytecode file offset 0x970b34"
!SGProject methodsFor: 'recovered'!
defaultProjectKey
    ^nil
! !

"ASDBase.ic method 0x20076f74; bytecode file offset 0x9757c8"
!SGProject methodsFor: 'recovered'!
isProject
    ^true
! !

"ASDBase.ic method 0x20078564; bytecode file offset 0x9757c8"
!SGProject methodsFor: 'recovered'!
hasRealDefaultProject
    ^true
! !

"ASDBase.ic method 0x2007d42c; bytecode file offset 0x97c330"
!SGProject methodsFor: 'recovered'!
editLayoutAllowed
    ^false
! !

"ASDBase.ic method 0x2007d554; bytecode file offset 0x97c330"
!SGProject methodsFor: 'recovered'!
isSGClass
    ^false
! !

"ASDBase.ic method 0x2007dafc; bytecode file offset 0x97c330"
!SGProject methodsFor: 'recovered'!
hasEditableLayout
    ^false
! !

"ASDBase.ic method 0x2008148c; bytecode file offset 0x97dd48"
!SGProject methodsFor: 'recovered'!
createModelManagerSpecification: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGProjectManager.
    recoveredValue1 := (recoveredValue0) createForClass: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200834f8; bytecode file offset 0x97fe64"
!SGProject methodsFor: 'recovered'!
formulasFileOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('.project.formulas.').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083538; bytecode file offset 0x97fe64"
!SGProject methodsFor: 'recovered'!
implementationTypesFileOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('.project.implementationTypes.').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008499c; bytecode file offset 0x981ca4"
!SGProject methodsFor: 'recovered'!
ignoreGlobalPromotedMessage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addIgnoredCodeGenMessages: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087aa0; bytecode file offset 0x9845b8"
!SGProject methodsFor: 'recovered'!
possibleSpecifications
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := SGProjectSpecification.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089b24; bytecode file offset 0x9863e0"
!SGProject methodsFor: 'recovered'!
resetIntCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    intCode := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008e4a8; bytecode file offset 0x98ad7c"
!SGProject methodsFor: 'recovered'!
alignmentWord
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := ETASAlignmentWord.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008e4bc; bytecode file offset 0x98ad7c"
!SGProject methodsFor: 'recovered'!
alignmentByte
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := ETASAlignmentByte.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008e598; bytecode file offset 0x98aef8"
!SGProject methodsFor: 'recovered'!
getEHooksProjectFile
    | recoveredValue0 recoveredValue1 |
    (self) updateEHooksProjectFile.
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) eHooksProjectFile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20091640; bytecode file offset 0x98e0cc"
!SGProject methodsFor: 'recovered'!
deleteGeneratedCodeReferences
    super deleteGeneratedCodeReferences.
    ^self
! !

"ASDBase.ic method 0x20097fc4; bytecode file offset 0x995850"
!SGProject methodsFor: 'recovered'!
xmlPromotedCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) promotedCodeGenMessages: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200980f4; bytecode file offset 0x995850"
!SGProject methodsFor: 'recovered'!
xmlIgnoredCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) ignoredCodeGenMessages: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098e74; bytecode file offset 0x995850"
!SGProject methodsFor: 'recovered'!
xmlHiddenCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) hiddenCodeGenMessages: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a038; bytecode file offset 0x997194"
!SGProject methodsFor: 'recovered'!
getProjectFile: recoveredArg1 toPath: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) getProjectFile: (recoveredValue1) toPath: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009b384; bytecode file offset 0x997c40"
!SGProject methodsFor: 'recovered'!
allExternalCCs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009bbbc; bytecode file offset 0x998660"
!SGProject methodsFor: 'recovered'!
targetLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (self) targetOptions.
    recoveredValue2 := (recoveredValue1) getTargetType.
    recoveredValue3 := (recoveredValue0) targetLabelForType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c668; bytecode file offset 0x998fec"
!SGProject methodsFor: 'recovered'!
projectDatabasePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DBPath.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := (self) projectSubPath.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009dd18; bytecode file offset 0x99a5d4"
!SGProject methodsFor: 'recovered'!
eHooksConfig
    | recoveredValue0 |
    (self) error: ('do not use - use eHooksConfiguration instead').
    recoveredValue0 := eHooksConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a1ba0; bytecode file offset 0x99e474"
!SGProject methodsFor: 'recovered'!
modifiedPersistentWithoutTimestamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    recoveredValue1 := (recoveredValue0) defaultProjectManager.
    (recoveredValue1) makeRealDefaultProjectFor: (self).
    ^self
! !

"ASDBase.ic method 0x200a2d18; bytecode file offset 0x99f654"
!SGProject methodsFor: 'recovered'!
readImplTypesFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDXMLImplementationTypeImportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) init.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) importFromFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ab2fc; bytecode file offset 0x9a7bf8"
!SGProject methodsFor: 'recovered'!
setIntecrioExportPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expPrjTransInfo.
    recoveredValue1 := (self) keyExportPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac578; bytecode file offset 0x9a8ea4"
!SGProject methodsFor: 'recovered'!
createDefaultImplTypeForType: recoveredArg1 modelType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDImplType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) createDefaultForType: (recoveredValue1) modelType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b1d00; bytecode file offset 0x9ae66c"
!SGProject methodsFor: 'recovered'!
isVolatileDefaultProject
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('VolatileDefaultProjects').
    ^false
! !

"ASDBase.ic method 0x200b52f8; bytecode file offset 0x9b1ce4"
!SGProject methodsFor: 'recovered'!
resetPromotedMessages
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) resetHiddenCodeGenMessages.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200b530c; bytecode file offset 0x9b1ce4"
!SGProject methodsFor: 'recovered'!
deleteAllImplTypes
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) deleteAllImplTypes.
    (self) updateImplementationTypeTimeStamp.
    ^self
! !

"ASDBase.ic method 0x200b53d4; bytecode file offset 0x9b1ce4"
!SGProject methodsFor: 'recovered'!
resetHiddenCodeGenMessages
    | recoveredValue0 |
    recoveredValue0 := (self) specification.
    (recoveredValue0) resetHiddenCodeGenMessages.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200b55ac; bytecode file offset 0x9b1e74"
!SGProject methodsFor: 'recovered'!
optionMessageUsageVariantIsNonOptCopyTask
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generatorSettings.
    recoveredValue1 := (recoveredValue0) messageUsageVariant.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) messageUsageVariantNonOptCopyTask.
    recoveredValue4 := (recoveredValue1) equals: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b5a00; bytecode file offset 0x9b2324"
!SGProject methodsFor: 'recovered'!
mdlClassTypeAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super mdlClassTypeAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgOptProject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b7218; bytecode file offset 0x9b3adc"
!SGProject methodsFor: 'recovered'!
getOverallModificationTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super getOverallModificationTimeStamp.
    recoveredValue1 := (self) osTimeStamp.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bb99c; bytecode file offset 0x9b8278"
!SGProject methodsFor: 'recovered'!
addGlobalFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) addGlobalFormulaBasic: (recoveredValue0).
    (self) updateFormulaTimeStamp.
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c7928; bytecode file offset 0x9c420c"
!SGProject methodsFor: 'recovered'!
defaultProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultProject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ccec4; bytecode file offset 0x9c97c4"
!SGProject methodsFor: 'recovered'!
createDefaultFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBFormulaId.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := SGReservedNames.
    recoveredValue3 := (recoveredValue2) defaultFormulaName.
    recoveredValue4 := (recoveredValue1) name: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ccefc; bytecode file offset 0x9c97c4"
!SGProject methodsFor: 'recovered'!
createDefaultLinearFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBFormulaLinear.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := SGReservedNames.
    recoveredValue3 := (recoveredValue2) defaultFormulaName.
    recoveredValue4 := (recoveredValue1) name: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d06ec; bytecode file offset 0x9cd3a0"
!SGProject methodsFor: 'recovered'!
checkTargetIsValid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_85065').
    recoveredValue1 := (self) specification.
    recoveredValue2 := (recoveredValue1) checkTargetIsValid.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d0824; bytecode file offset 0x9cd3a0"
!SGProject methodsFor: 'recovered'!
supportsNVRAM
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62156').
    recoveredValue1 := (self) target.
    recoveredValue2 := (recoveredValue1) supportsNVRAM.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d6108; bytecode file offset 0x9d3134"
!SGProject methodsFor: 'recovered'!
resetAliasNameCache
    super resetAliasNameCache.
    (self) resetMappingCacheToNil.
    ^self
! !

"ASDBase.ic method 0x200d6360; bytecode file offset 0x9d3134"
!SGProject methodsFor: 'recovered'!
initCode
    super initCode.
    (self) resetIntCode.
    ^self
! !

"ASDBase.ic method 0x200da6a0; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
removeIgnoredCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ignoredCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeAll: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da768; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
removeHiddenCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hiddenCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeAll: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da77c; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
generatorSettings: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generatorSettings: (recoveredValue1).
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x200da790; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
promotedCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) promotedCodeGenMessages: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da7cc; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
addIgnoredCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ignoredCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da7e0; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
hiddenCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) hiddenCodeGenMessages: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da81c; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
addHiddenCodeGenMessages: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hiddenCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da830; bytecode file offset 0x9d7154"
!SGProject methodsFor: 'recovered'!
revokeMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) revokeMessage: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200da8b8; bytecode file offset 0x9d71a0"
!SGProject methodsFor: 'recovered'!
deleteGlobalFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteFormula: (recoveredValue1).
    (self) updateFormulaTimeStamp.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200da8cc; bytecode file offset 0x9d71a0"
!SGProject methodsFor: 'recovered'!
deleteImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteImplType: (recoveredValue1).
    (self) updateImplementationTypeTimeStamp.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200da8e0; bytecode file offset 0x9d71a0"
!SGProject methodsFor: 'recovered'!
deleteRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteRecordLayout: (recoveredValue1).
    (self) userModified.
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e3eec; bytecode file offset 0x9e07ec"
!SGProject methodsFor: 'recovered'!
projectSubPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) , ('_').
    recoveredValue2 := (self) dbObject.
    recoveredValue3 := (recoveredValue2) globalIdString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e7aa4; bytecode file offset 0x9e4364"
!SGProject methodsFor: 'recovered'!
usedFormulaNamesForImplementation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) usedFormulaNamesInProject: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ec52c; bytecode file offset 0x9e8e14"
!SGProject methodsFor: 'recovered'!
promoteMessage: recoveredArg1 toType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) promoteMessage: (recoveredValue1) toType: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200eeb0c; bytecode file offset 0x9eb3cc"
!SGProject methodsFor: 'recovered'!
writeProjectOptionsToXMLFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDProjectOptions.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) exportOptionsToXMLFile: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) notNil.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f1320; bytecode file offset 0x9edbd4"
!SGProject methodsFor: 'recovered'!
mappingCacheIsLoaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f1350; bytecode file offset 0x9edc04"
!SGProject methodsFor: 'recovered'!
defaultProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := defaultProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f2098; bytecode file offset 0x9ee95c"
!SGProject methodsFor: 'recovered'!
recalculateImplementationTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_68691').
    recoveredValue1 := (self) specification.
    (recoveredValue1) recalculateImplementationTypes.
    ^self
! !

"ASDBase.ic method 0x200f20c0; bytecode file offset 0x9ee9b4"
!SGProject methodsFor: 'recovered'!
allAvailablePartKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := super allAvailablePartKeys.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f2408; bytecode file offset 0x9eecc0"
!SGProject methodsFor: 'recovered'!
isPersistentDefaultProject
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
            recoveredStack2 := (recoveredStack2) isDefaultProject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f26d8; bytecode file offset 0x9eef90"
!SGProject methodsFor: 'recovered'!
isDefaultDefaultProject
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
            recoveredStack2 := (recoveredStack2) defaultProject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f287c; bytecode file offset 0x9ef148"
!SGProject methodsFor: 'recovered'!
hasEHooksTarget
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
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := (recoveredStack1) isEHooksTarget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f75cc; bytecode file offset 0x9f4e38"
!SGProject methodsFor: 'recovered'!
ctVariableNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c46b0Arg1 | 
    | block280c46b0Value0 block280c46b0Value1 |
    block280c46b0Value0 := block280c46b0Arg1.
    block280c46b0Value1 := (block280c46b0Value0) label.
    block280c46b0Value1
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

"ASDBase.ic method 0x200f7674; bytecode file offset 0x9f4e38"
!SGProject methodsFor: 'recovered'!
osLogic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c47acArg1 | 
    | block280c47acValue0 block280c47acValue1 |
    block280c47acValue0 := block280c47acArg1.
    block280c47acValue1 := (block280c47acValue0) osLogic.
    block280c47acValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8788; bytecode file offset 0x9f504c"
!SGProject methodsFor: 'recovered'!
pseudoAddressClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOnlineINTECRIO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasETPseudoAddress.
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
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) pseudoAddressClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fe82c; bytecode file offset 0x9fb100"
!SGProject methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super postLoad: (recoveredValue0).
    (self) mappingCache: (nil).
    ^self
! !

"ASDBase.ic method 0x200ff0c8; bytecode file offset 0x9fb9b0"
!SGProject methodsFor: 'recovered'!
setEHooksConfigurationFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigurationFile: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff0f0; bytecode file offset 0x9fb9b0"
!SGProject methodsFor: 'recovered'!
setEHooksProjectFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProjectFile: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20103ce8; bytecode file offset 0xa005b4"
!SGProject methodsFor: 'recovered'!
addImplTypeForType: recoveredArg1 modelType: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createDefaultImplTypeForType: (recoveredValue0) modelType: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addImplType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201076b4; bytecode file offset 0xa03f78"
!SGProject methodsFor: 'recovered'!
convertCodeGenSettingsTo50
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_62959').
    recoveredValue1 := (self) generatorSettings.
    (recoveredValue1) convertCodeGenSettingsTo50ForProject: (self).
    ^self
! !

"ASDBase.ic method 0x20108eac; bytecode file offset 0xa05848"
!SGProject methodsFor: 'recovered'!
getComponentType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'ASCET_DefaultProject'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'ASCET_Project'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010b478; bytecode file offset 0xa07d40"
!SGProject methodsFor: 'recovered'!
itemTypeLabelForStatusBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super itemTypeLabelForStatusBar.
    recoveredValue1 := (recoveredValue0) , (' ').
    recoveredValue2 := (self) targetLabel.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010fad0; bytecode file offset 0xa0c39c"
!SGProject methodsFor: 'recovered'!
exportMappingsIntoFileName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := -1.
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
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportMappingsIntoFileName: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010fae0; bytecode file offset 0xa0c39c"
!SGProject methodsFor: 'recovered'!
importMappingsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := -1.
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
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) importMappingsFrom: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201124e4; bytecode file offset 0xa0edb8"
!SGProject methodsFor: 'recovered'!
allValidProcessInstVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (self) collectProcessInstVarsTo: (recoveredValue2) visitColl: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201124f8; bytecode file offset 0xa0edb8"
!SGProject methodsFor: 'recovered'!
processInstVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (self) collectProcessInstVarsTo: (recoveredValue2) visitColl: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201129b8; bytecode file offset 0xa0f294"
!SGProject methodsFor: 'recovered'!
osTimeStamp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20114a28; bytecode file offset 0xa112e8"
!SGProject methodsFor: 'recovered'!
eHooksApplicationIsValidAndRunning
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280c6a20Arg1 :block280c6a20Arg2 | 
    nil
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksApplicationServerIsRunningForProject: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115070; bytecode file offset 0xa11938"
!SGProject methodsFor: 'recovered'!
createDefaultContext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGContext.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) project: (self).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) createDefaultMakeConfig.
    (recoveredValue3) makeConfig: (recoveredValue4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20117728; bytecode file offset 0xa13ff4"
!SGProject methodsFor: 'recovered'!
projectDatabaseCachePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Rnz') == ('EHI_80009').
    recoveredValue1 := (self) projectDatabasePath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('.cache').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20117d24; bytecode file offset 0xa145e8"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOfflineRP
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
            recoveredStack2 := (recoveredStack2) isOfflineRPTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProductActivationRPorRTS.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011aea4; bytecode file offset 0xa17764"
!SGProject methodsFor: 'recovered'!
convertToDefaultProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) defaultProject: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
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

"ASDBase.ic method 0x20124c3c; bytecode file offset 0xa21500"
!SGProject methodsFor: 'recovered'!
expPrjTransInfo
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) expPrjTransInfo.
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
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e2ec; bytecode file offset 0xa2abd4"
!SGProject methodsFor: 'recovered'!
checkSpecification
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SGProjectSpecification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) addSpecificationOfType: (recoveredStack1) public: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f398; bytecode file offset 0xa2bc5c"
!SGProject methodsFor: 'recovered'!
dependentVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) complexVariables.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) isOwnerOfDefaultProject: (self).
    recoveredBlock6Value1
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013368c; bytecode file offset 0xa2ff50"
!SGProject methodsFor: 'recovered'!
setEHooksConfigFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) cleanupEHooks.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setEHooksConfigFile: (recoveredStack1).
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

"ASDBase.ic method 0x2013f8b0; bytecode file offset 0xa3c174"
!SGProject methodsFor: 'recovered'!
initEHooksConfigWhenEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASDEHooksConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForProject: (recoveredStack1) configFile: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014034c; bytecode file offset 0xa3cc14"
!SGProject methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super nilVariables.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) add: ('mappingCache').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) add: ('eHooksConfig').
    ^recoveredValue0
! !

"ASDBase.ic method 0x201424a4; bytecode file offset 0xa3ed6c"
!SGProject methodsFor: 'recovered'!
addGlobalFormulas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) specification.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addFormulas: (recoveredValue2).
    (self) updateFormulaTimeStamp.
    ^self
! !

"ASDBase.ic method 0x20144c18; bytecode file offset 0xa414e4"
!SGProject methodsFor: 'recovered'!
addGlobalFormulaBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (self) formulaNames.
    recoveredValue4 := (recoveredValue2) uniqueStringCaseSensitiveFor: (recoveredValue3).
    (recoveredValue0) name: (recoveredValue4).
    recoveredValue5 := (self) specification.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) addFormula: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014acc4; bytecode file offset 0xa47584"
!SGProject methodsFor: 'recovered'!
usedFormulasForConfig: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) neededFormulaNamesForConfig: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) formulaNamed: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014ad9c; bytecode file offset 0xa4765c"
!SGProject methodsFor: 'recovered'!
expPrjTransInfo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) expPrjTransInfo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014c018; bytecode file offset 0xa488e8"
!SGProject methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := SGLibraryClass.
    recoveredValue2 := ARAtomicSoftwareComponent.
    recoveredValue3 := SGLibraryEnumeration.
    recoveredValue4 := ASDRecord.
    recoveredValue5 := ASDGenericComponent.
    recoveredValue6 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20158a2c; bytecode file offset 0xa552f4"
!SGProject methodsFor: 'recovered'!
initDTClassVar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGVariable.
    recoveredValue1 := (recoveredValue0) createDeltaT.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) setToExported.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) owner: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    (self) addVar: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20159978; bytecode file offset 0xa56238"
!SGProject methodsFor: 'recovered'!
getLastChangeForIntegerCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationTimeStamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := classImplementationConfig.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := classImplementationConfig.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationTimeStamp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015c0fc; bytecode file offset 0xa589cc"
!SGProject methodsFor: 'recovered'!
getVariantKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGCodeVariantKey.
    recoveredValue1 := (self) generatorSettings.
    recoveredValue2 := (recoveredValue1) duplicate.
    recoveredValue3 := (self) target.
    recoveredValue4 := (recoveredValue3) variantKey.
    recoveredValue5 := (self) targetOptions.
    recoveredValue6 := (recoveredValue5) duplicate.
    recoveredValue7 := (recoveredValue0) createForGeneratorVariant: (recoveredValue2) target: (recoveredValue4) targetSettings: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015c500; bytecode file offset 0xa58dfc"
!SGProject methodsFor: 'recovered'!
getExportController
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ASDXMLExportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := MainController.
    recoveredValue3 := ASDXMLExportParameters.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue4) initForMappingExport.
    recoveredValue6 := (recoveredValue1) initHeadlessOn: (recoveredValue2) options: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) xmlExt: ('xml').
    ^recoveredValue7
! !

"ASDBase.ic method 0x20161310; bytecode file offset 0xa5dbd0"
!SGProject methodsFor: 'recovered'!
apiClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectSpecification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EtasAPIProject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165f20; bytecode file offset 0xa627e0"
!SGProject methodsFor: 'recovered'!
addGlobalFormulaList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) addGlobalFormulaBasic: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    (self) updateFormulaTimeStamp.
    ^self
! !

"ASDBase.ic method 0x20167994; bytecode file offset 0xa6425c"
!SGProject methodsFor: 'recovered'!
experimentTarget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) experimentTarget: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169378; bytecode file offset 0xa65c40"
!SGProject methodsFor: 'recovered'!
renameGlobalFormula: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteFormula: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) addGlobalFormulaBasic: (recoveredValue4).
    (self) updateFormulaTimeStamp.
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201718a4; bytecode file offset 0xa6e174"
!SGProject methodsFor: 'recovered'!
getIntecrioExportPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expPrjTransInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyExportPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cef4cValue0 block280cef4cValue1 block280cef4cValue2 |
    block280cef4cValue0 := ASDPathOptions.
    block280cef4cValue1 := (block280cef4cValue0) instance.
    block280cef4cValue2 := (block280cef4cValue1) optionCodeGenerationPath.
    block280cef4cValue2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20175ad0; bytecode file offset 0xa723a0"
!SGProject methodsFor: 'recovered'!
addImplType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) implTypeName.
    recoveredValue3 := (self) implTypeNames.
    recoveredValue4 := (recoveredValue2) uniqueStringFor: (recoveredValue3).
    (recoveredValue0) implTypeName: (recoveredValue4).
    recoveredValue5 := (self) specification.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) addImplType: (recoveredValue6).
    (self) updateImplementationTypeTimeStamp.
    recoveredValue7 := recoveredArg1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20177f0c; bytecode file offset 0xa7490c"
!SGProject methodsFor: 'recovered'!
writeXMLEHOOKSConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksConfiguration.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) writeXML: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2017a36c; bytecode file offset 0xa76c88"
!SGProject methodsFor: 'recovered'!
incaSimulation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaSimulation.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017a388; bytecode file offset 0xa76c88"
!SGProject methodsFor: 'recovered'!
offlineSimulation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) offlineSimulation.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017a3a4; bytecode file offset 0xa76c88"
!SGProject methodsFor: 'recovered'!
standaloneCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) standaloneCode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017a3c0; bytecode file offset 0xa76c88"
!SGProject methodsFor: 'recovered'!
onlineSimulation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetOptions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) onlineSimulation.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e170; bytecode file offset 0xa7aa38"
!SGProject methodsFor: 'recovered'!
eeWriteAsap2ToFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) createDefaultContext.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := MainController.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue1) createCodeManager: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue4) writeAsap2ToFile: (recoveredValue5) generate: (true) build: (true) projectContext: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) noErrors.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017e9a4; bytecode file offset 0xa7b274"
!SGProject methodsFor: 'recovered'!
createDefaultNetworkContext
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGContext.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) getLibrary.
    (recoveredValue2) library: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) project: (self).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) createDefaultMakeConfig.
    (recoveredValue5) makeConfig: (recoveredValue6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20183d54; bytecode file offset 0xa80624"
!SGProject methodsFor: 'recovered'!
createDynamicExportedTaskVariableNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMonitoringVariable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGReal.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := (recoveredValue0) create: (recoveredValue1) sgClass: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) setToExported.
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) setCalibrationRead.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) owner: (self).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20186e9c; bytecode file offset 0xa8375c"
!SGProject methodsFor: 'recovered'!
removeHiddenCodeGenMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hiddenCodeGenMessages.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x2018f758; bytecode file offset 0xa8c02c"
!SGProject methodsFor: 'recovered'!
componentEditorLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) , (' [').
    recoveredValue2 := (self) targetLabel.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('/').
    recoveredValue5 := (self) generatorSettings.
    recoveredValue6 := (recoveredValue5) codeGenShortPathName.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (']').
    ^recoveredValue8
! !

"ASDBase.ic method 0x201a8824; bytecode file offset 0xaa50f0"
!SGProject methodsFor: 'recovered'!
xmlNamespace: recoveredArg1 writer: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'VolatileDefaultProjects'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := '.defaultProject'.
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super xmlNamespace: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac714; bytecode file offset 0xaa8fe8"
!SGProject methodsFor: 'recovered'!
createImplConfigEntryFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := SGCodeArchive.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := LookupTable.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue7).
    (self) modifiedWithoutTimeStamp.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201affd4; bytecode file offset 0xaac8a0"
!SGProject methodsFor: 'recovered'!
swComponentElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3dc4Arg1 | 
    | block280d3dc4Stack0 block280d3dc4Stack1 block280d3dc4Stack2 block280d3dc4Stack3 block280d3dc4PC block280d3dc4Step block280d3dc4Done block280d3dc4Result |
    block280d3dc4Stack0 := self.
    block280d3dc4PC := 4.
    block280d3dc4Done := false.
    [block280d3dc4Done not] whileTrue: [
        block280d3dc4Step := block280d3dc4PC.
        block280d3dc4Step = 4 ifTrue: [
            block280d3dc4Stack1 := false.
            block280d3dc4PC := 5.
        ].
        block280d3dc4Step = 5 ifTrue: [
            block280d3dc4Stack2 := block280d3dc4Arg1.
            block280d3dc4PC := 6.
        ].
        block280d3dc4Step = 6 ifTrue: [
            block280d3dc4Stack2 := (block280d3dc4Stack2) sgClass.
            block280d3dc4PC := 7.
        ].
        block280d3dc4Step = 7 ifTrue: [
            (block280d3dc4Stack2 == nil) ifTrue: [block280d3dc4PC := 14] ifFalse: [block280d3dc4PC := 10].
        ].
        block280d3dc4Step = 10 ifTrue: [
            block280d3dc4PC := 11.
        ].
        block280d3dc4Step = 11 ifTrue: [
            block280d3dc4Stack1 := block280d3dc4Arg1.
            block280d3dc4PC := 12.
        ].
        block280d3dc4Step = 12 ifTrue: [
            block280d3dc4Stack1 := (block280d3dc4Stack1) sgClass.
            block280d3dc4PC := 13.
        ].
        block280d3dc4Step = 13 ifTrue: [
            block280d3dc4Stack1 := (block280d3dc4Stack1) isAtomicSoftwareComponent.
            block280d3dc4PC := 14.
        ].
        block280d3dc4Step = 14 ifTrue: [
            block280d3dc4Result := block280d3dc4Stack1.
            block280d3dc4Done := true.
        ].
    ].
    block280d3dc4Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b16f4; bytecode file offset 0xaadfb8"
!SGProject methodsFor: 'recovered'!
isDefault
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isDefault.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentVariable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1978; bytecode file offset 0xaae23c"
!SGProject methodsFor: 'recovered'!
convertToASDV640_Step1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super convertToASDV640_Step1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) convertToASDV640_Step1.
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

"ASDBase.ic method 0x201b23ec; bytecode file offset 0xaaecb8"
!SGProject methodsFor: 'recovered'!
createDynamicExportedVariablesForTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) cycleTimeVariableNameFor: (recoveredValue1).
    recoveredValue3 := (self) createDynamicExportedTaskVariableNamed: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) cycleStartTimeVariableNameFor: (recoveredValue4).
    recoveredValue6 := (self) createDynamicExportedTaskVariableNamed: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) dtVariableNameFor: (recoveredValue7).
    recoveredValue9 := (self) createDynamicExportedTaskVariableNamed: (recoveredValue8).
    recoveredValue10 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6) with: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201b6e58; bytecode file offset 0xab3720"
!SGProject methodsFor: 'recovered'!
writeXMLToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kli') == ('VolatileDefaultProjects').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super writeXMLToFiles: (recoveredValue1) baseName: (recoveredValue2) xmlExt: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    (self) writeXMLProjectToFiles: (recoveredValue4) baseName: (recoveredValue5) xmlExt: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201bce40; bytecode file offset 0xab9710"
!SGProject methodsFor: 'recovered'!
addDependentVariableForComponent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('Kk') == ('Call_90274').
    recoveredValue1 := SGProjectManager.
    recoveredValue2 := (recoveredValue1) createForClass: (self).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) addInstVarClass: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) label.
    (recoveredValue6) elementName: (recoveredValue8).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201caa44; bytecode file offset 0xac7314"
!SGProject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SGProjectSpecification.
    recoveredValue1 := (recoveredValue0) createCT: (false) module: (false) forClass: (self).
    (self) addPublicSpecification: (recoveredValue1).
    (self) initDTClassVar.
    (self) addGlobalDefaultFormula.
    ^self
! !

"ASDBase.ic method 0x201cc88c; bytecode file offset 0xac9160"
!SGProject methodsFor: 'recovered'!
targetOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notNil.
    recoveredValue2 := (self) label.
    recoveredValue3 := ('target settings for ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' should not be nil').
    (self) runtimeAssert: (recoveredValue1) additionalInfo: (recoveredValue4).
    recoveredValue5 := (self) specification.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) targetSettings: (recoveredValue6).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x201d8c00; bytecode file offset 0xad54ec"
!SGProject methodsFor: 'recovered'!
deleteGlobalFormulasByName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) specification.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) deleteFormulaNamed: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    (self) updateFormulaTimeStamp.
    ^self
! !

"ASDBase.ic method 0x201d8c20; bytecode file offset 0xad54ec"
!SGProject methodsFor: 'recovered'!
deleteGlobalFormulas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) specification.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) deleteFormula: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    (self) updateFormulaTimeStamp.
    ^self
! !

"ASDBase.ic method 0x201e424c; bytecode file offset 0xae0b14"
!SGProject methodsFor: 'recovered'!
dependentVariable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) isOwnerOfDefaultProject: (self).
    recoveredBlock13Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fa1fc; bytecode file offset 0xaf6ac0"
!SGProject methodsFor: 'recovered'!
updateFormulaInDataElement: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaNamed: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) updateForFormula: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200884; bytecode file offset 0xafd150"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOnlineLABCAR
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) specification.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) target.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isOnlineLABCARTarget.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) generatorSettings.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isPathQuantizedExperiment.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) not.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            ^recoveredBlock5Stack1
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x202090c0; bytecode file offset 0xb05988"
!SGProject methodsFor: 'recovered'!
checkComponentSpecificationExistentFlag
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super checkComponentSpecificationExistentFlag.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
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
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020b7ec; bytecode file offset 0xb080bc"
!SGProject methodsFor: 'recovered'!
buildFolderPathNameForDefaultProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentVariable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d9e84Arg1 | 
    | block280d9e84Value0 block280d9e84Value1 block280d9e84Value2 |
    block280d9e84Value0 := block280d9e84Arg1.
    block280d9e84Value1 := (block280d9e84Value0) sgClass.
    block280d9e84Value2 := (block280d9e84Value1) buildFolderPathName.
    block280d9e84Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super buildFolderPathName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202116fc; bytecode file offset 0xb0dfd4"
!SGProject methodsFor: 'recovered'!
removeFromParent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_80009'.
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
            recoveredStack0 := (recoveredStack0) projectDatabaseCachePath.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) deletePathRecursive: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            super removeFromParent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20213f38; bytecode file offset 0xb10808"
!SGProject methodsFor: 'recovered'!
updateAddressTableFromHexFile: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) readAddressTableFromFile: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGCodeManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultContext.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setMapFileFor: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 30.
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

"ASDBase.ic method 0x202197ac; bytecode file offset 0xb1607c"
!SGProject methodsFor: 'recovered'!
updateEHooksProjectFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProjectFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksProjectFileDefault.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEHooksASCETConfigFile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) generatorSettings.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) eHooksProjectFile: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b8bc; bytecode file offset 0xb1818c"
!SGProject methodsFor: 'recovered'!
addVarOnlyBasic: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isImplementationCast.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'KK'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Call_58899'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setToExportedBasic.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := super addVarOnlyBasic: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228110; bytecode file offset 0xb249ec"
!SGProject methodsFor: 'recovered'!
printASDInfoOn: recoveredArg1
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
            super printASDInfoOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalFormulas.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ' formulas'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022c9f4; bytecode file offset 0xb292bc"
!SGProject methodsFor: 'recovered'!
getFormulaNamed: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) formulaNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFormulaName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedFormulaName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefaultFormula.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022db1c; bytecode file offset 0xb2a3f0"
!SGProject methodsFor: 'recovered'!
writeXMLProjectToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) , ('.project.').
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue0) makeWriter: (recoveredValue4) schema: ('component_project.xsd') sign: (true).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) encryptNodes: ('/Project').
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg3.
    (self) writeXMLProject: (recoveredValue7) baseName: (recoveredValue8) xmlExt: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) close.
    ^self
! !

"ASDBase.ic method 0x20233efc; bytecode file offset 0xb307cc"
!SGProject methodsFor: 'recovered'!
updateImplementationTypeAndFormulaInDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) updateImplementationTypeInDataElement: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) formula.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (self) getFormulaNamed: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) deepCopy.
    recoveredBlock16Value3 := (recoveredBlock16Value0) formula: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20234460; bytecode file offset 0xb30d2c"
!SGProject methodsFor: 'recovered'!
simulateProcessNameForVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctVariables.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) simulateMethodName.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) printString.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^''
! !

"ASDBase.ic method 0x20239e44; bytecode file offset 0xb36710"
!SGProject methodsFor: 'recovered'!
relatedComponentForCodeContainer
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70031'.
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
            recoveredStack0 := (recoveredStack0) dependentVariable.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super relatedComponentForCodeContainer.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedComponentForCodeContainer.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20243c18; bytecode file offset 0xb404dc"
!SGProject methodsFor: 'recovered'!
updateImplementationTypeInDataElement: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isImplementationType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencedImplTypeName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencedImplTypeName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypeNamed: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) updateDataElement: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20247cf4; bytecode file offset 0xb445c0"
!SGProject methodsFor: 'recovered'!
resetMappingCacheToNil
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) removeDependent: (self).
    recoveredBlock11Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) updateDependencyComponentsInMappingCache: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            mappingCache := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ASDCallbackManager.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) removeCallbacksFor: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) resetMappingCacheTimeStamp.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261f04; bytecode file offset 0xb5e7e0"
!SGProject methodsFor: 'recovered'!
doDefaultInitializations: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) project: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatorSettings.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 12.
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
            recoveredStack0 := (recoveredStack0) iaSettings.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setDefaultArithmeticServiceSet: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultsUseProjectOptionsTemplate.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsProjectOptionsTemplate.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) reinitBuildSettingsFromXMLFile: (recoveredStack1).
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

"ASDBase.ic method 0x20263140; bytecode file offset 0xb5fa40"
!SGProject methodsFor: 'recovered'!
ascetLinkForFormula: recoveredArg1 parameters: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    (self) ascetLink: (recoveredBlock7Value0) on: (recoveredBlock7Value1).
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := recoveredBlock7Value2.
    (recoveredBlock7Value3) nextPutAll: ('/').
    recoveredBlock7Value4 := recoveredBlock7Value2.
    (recoveredBlock7Value4) nextPutAll: ('formula=').
    recoveredBlock7Value5 := recoveredArg1.
    recoveredBlock7Value6 := (recoveredBlock7Value2) nextPutAll: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20266688; bytecode file offset 0xb62f50"
!SGProject methodsFor: 'recovered'!
eventProcessNameForVariable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ctVariables.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) eventMethodName.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) printString.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) , (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20267468; bytecode file offset 0xb63d48"
!SGProject methodsFor: 'recovered'!
memoryLayout
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasASAP2TransferManager.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) asdProject: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASAP2ModuleParameter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) memoryLayoutFileName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) readMemoryLayoutsFromFile: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLayout.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block280dffb0Arg1 | 
    | block280dffb0Value0 block280dffb0Value1 |
    block280dffb0Value0 := block280dffb0Arg1.
    block280dffb0Value1 := (block280dffb0Value0) convertToASD.
    block280dffb0Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027011c; bytecode file offset 0xb6c9f0"
!SGProject methodsFor: 'recovered'!
convertToNewIntegerTypes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allReferencedNonPrimitiveItemsRecursive.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) add: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := MainController.
    recoveredValue6 := (recoveredValue5) userInterface.
    (self) convertComponentsToNewIntegerTypes: (recoveredValue4) withProject: (self) userInterface: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2027364c; bytecode file offset 0xb6ff28"
!SGProject methodsFor: 'recovered'!
readProjectOptionsFromXMLFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDProjectOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) specification.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'codeGenMessages.xml'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeGenMessageOptionsFor: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) importOptionsFromXMLFile: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) writeBackOptionsToProject.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) updateExperimentTarget.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20278588; bytecode file offset 0xb74e54"
!SGProject methodsFor: 'recovered'!
ascetLinkForImplType: recoveredArg1 parameters: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    super ascetLink: (recoveredBlock7Value0) on: (recoveredBlock7Value1).
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := recoveredBlock7Value2.
    (recoveredBlock7Value3) nextPutAll: ('/').
    recoveredBlock7Value4 := recoveredBlock7Value2.
    (recoveredBlock7Value4) nextPutAll: ('impltype=').
    recoveredBlock7Value5 := recoveredArg1.
    recoveredBlock7Value6 := (recoveredBlock7Value2) nextPutAll: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2027a398; bytecode file offset 0xb76c60"
!SGProject methodsFor: 'recovered'!
allPossibleProcessInstVars
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allValidProcessInstVars.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isGenericComponentElement.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 22].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) sgClass.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            (recoveredBlock9Stack2 ~~ nil) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 28].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) add: (recoveredBlock9Stack2).
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) allComplexVariablesDo: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20282388; bytecode file offset 0xb7ec5c"
!SGProject methodsFor: 'recovered'!
ctVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e1534Arg1 | 
    | block280e1534Stack0 block280e1534Stack1 block280e1534Stack2 block280e1534Stack3 block280e1534Stack4 block280e1534PC block280e1534Step block280e1534Done block280e1534Result |
    block280e1534Stack0 := self.
    block280e1534PC := 4.
    block280e1534Done := false.
    [block280e1534Done not] whileTrue: [
        block280e1534Step := block280e1534PC.
        block280e1534Step = 4 ifTrue: [
            block280e1534Stack1 := false.
            block280e1534PC := 5.
        ].
        block280e1534Step = 5 ifTrue: [
            block280e1534Stack2 := block280e1534Arg1.
            block280e1534PC := 6.
        ].
        block280e1534Step = 6 ifTrue: [
            block280e1534Stack2 := (block280e1534Stack2) isImported.
            block280e1534PC := 7.
        ].
        block280e1534Step = 7 ifTrue: [
            (block280e1534Stack2) ifTrue: [block280e1534PC := 32] ifFalse: [block280e1534PC := 10].
        ].
        block280e1534Step = 10 ifTrue: [
            block280e1534PC := 11.
        ].
        block280e1534Step = 11 ifTrue: [
            block280e1534Stack1 := block280e1534Arg1.
            block280e1534PC := 12.
        ].
        block280e1534Step = 12 ifTrue: [
            block280e1534Stack1 := (block280e1534Stack1) sgClassKey.
            block280e1534PC := 13.
        ].
        block280e1534Step = 13 ifTrue: [
            block280e1534Stack2 := [:block280e1558Arg1 | 
    | block280e1558Value0 block280e1558Value1 |
    block280e1558Value0 := block280e1558Arg1.
    block280e1558Value1 := (block280e1558Value0) isCTClass.
    block280e1558Value1
].
            block280e1534PC := 15.
        ].
        block280e1534Step = 15 ifTrue: [
            block280e1534PC := 22.
        ].
        block280e1534Step = 22 ifTrue: [
            block280e1534Stack3 := [
    false
].
            block280e1534PC := 24.
        ].
        block280e1534Step = 24 ifTrue: [
            block280e1534PC := 30.
        ].
        block280e1534Step = 30 ifTrue: [
            block280e1534Stack1 := (block280e1534Stack1) ifNotNil: (block280e1534Stack2) ifNil: (block280e1534Stack3).
            block280e1534PC := 32.
        ].
        block280e1534Step = 32 ifTrue: [
            block280e1534Result := block280e1534Stack1.
            block280e1534Done := true.
        ].
    ].
    block280e1534Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) allVariablesSelect: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202920b0; bytecode file offset 0xb8e97c"
!SGProject methodsFor: 'recovered'!
libraryPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentVariable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    ^''
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryPath.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super libraryPath.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029b300; bytecode file offset 0xb97bec"
!SGProject methodsFor: 'recovered'!
allXmlMethods
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) specifications.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) xmlMethodsForClass: (self).
    recoveredBlock11Value2 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Value0 recoveredBlock11Block21Value1 recoveredBlock11Block21Value2 |
    recoveredBlock11Block21Value0 := recoveredLocal1.
    recoveredBlock11Block21Value1 := recoveredBlock11Block21Arg1.
    recoveredBlock11Block21Value2 := (recoveredBlock11Block21Value0) add: (recoveredBlock11Block21Value1).
    recoveredBlock11Block21Value2
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a950c; bytecode file offset 0xba5de8"
!SGProject methodsFor: 'recovered'!
supportsExperimentModeOnlineINTECRIO
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kra') = ('WHAT5440').
    recoveredValue1 := ('Rnz') == ('EHI_82253').
    recoveredValue2 := (self) specification.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) target.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isOnlineINTECRIOTarget.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 34] ifFalse: [recoveredBlock18PC := 41].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) generatorSettings.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isPathQuantizedExperiment.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) not.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            ^recoveredBlock18Stack1
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^false
! !

"ASDBase.ic method 0x202a9ffc; bytecode file offset 0xba68d4"
!SGProject methodsFor: 'recovered'!
update: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) removeDependent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'Call_364189'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportImportTimeStamp.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingCacheTimeStamp.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) resetMappingCacheToNil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad10c; bytecode file offset 0xba99dc"
!SGProject methodsFor: 'recovered'!
getAvailableTasks
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
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasksForProject: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    recoveredBlock24Value3 := (recoveredBlock24Value2) id.
    recoveredBlock24Value4 := (recoveredBlock24Value0) at: (recoveredBlock24Value1) put: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c579c; bytecode file offset 0xbc2060"
!SGProject methodsFor: 'recovered'!
mappingCache: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) removeDependent: (self).
    recoveredBlock9Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) updateDependencyComponentsInMappingCache: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            mappingCache := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) addDependent: (self).
    recoveredBlock31Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) updateDependencyComponentsInMappingCache: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) updateMappingCacheTimeStamp.
            recoveredPC := 46.
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

"ASDBase.ic method 0x202d9b78; bytecode file offset 0xbd644c"
!SGProject methodsFor: 'recovered'!
addListOffImplTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := [:recoveredBlock4Block13Arg1 | 
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 recoveredBlock4Block13Value2 recoveredBlock4Block13Value3 recoveredBlock4Block13Value4 recoveredBlock4Block13Value5 recoveredBlock4Block13Value6 |
    recoveredBlock4Block13Value0 := recoveredBlock4Block13Arg1.
    recoveredBlock4Block13Value1 := (recoveredBlock4Block13Value0) implTypeName.
    recoveredBlock4Block13Value2 := (self) implTypeNamed: (recoveredBlock4Block13Value1).
    recoveredBlock4Block13Value3 := [:recoveredBlock4Block13Block23Arg1 | 
    | recoveredBlock4Block13Block23Value0 recoveredBlock4Block13Block23Value1 |
    recoveredBlock4Block13Block23Value0 := recoveredBlock4Block13Block23Arg1.
    recoveredBlock4Block13Block23Value1 := (self) deleteImplType: (recoveredBlock4Block13Block23Value0).
    recoveredBlock4Block13Block23Value1
].
    (recoveredBlock4Block13Value2) ifNotNil: (recoveredBlock4Block13Value3).
    recoveredBlock4Block13Value4 := (self) item.
    recoveredBlock4Block13Value5 := recoveredBlock4Block13Arg1.
    recoveredBlock4Block13Value6 := (recoveredBlock4Block13Value4) addImplType: (recoveredBlock4Block13Value5).
    recoveredBlock4Block13Value6
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) suspendObserving: (recoveredValue0) notify: (true).
    ^self
! !

"ASDBase.ic method 0x202df54c; bytecode file offset 0xbdbe24"
!SGProject methodsFor: 'recovered'!
usedFormulaNameForImplementation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62774'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplementationType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencedImplTypeName.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeNamed: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) implTypeValue.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) formulaName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e73e0; bytecode file offset 0xbe3cbc"
!SGProject methodsFor: 'recovered'!
ascetLink: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectManager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForProject: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ascetLink: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'defaultProject='.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            super ascetLink: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec204; bytecode file offset 0xbe8acc"
!SGProject methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) isAllowedToAddIn: (self) component: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) delegateToFactory: (recoveredStack2) ifNotDefined: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedToComponent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec9a0; bytecode file offset 0xbe9268"
!SGProject methodsFor: 'recovered'!
allowedToReplaceComponent: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := (recoveredBlock15Value0) isAllowedToReplaceIn: (self) component: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) delegateToFactory: (recoveredStack2) ifNotDefined: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedToComponent: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f4280; bytecode file offset 0xbf0b70"
!SGProject methodsFor: 'recovered'!
cleanupEHooks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksApplicationIsValidAndRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 |
    recoveredBlock13Value0 := SGMonitorStreamDummy.
    recoveredBlock13Value1 := (recoveredBlock13Value0) create.
    recoveredBlock13Value2 := (self) eHooksConfiguration.
    recoveredBlock13Value3 := (recoveredBlock13Value2) configFileName.
    recoveredBlock13Value4 := (recoveredBlock13Value3) asFilename.
    recoveredBlock13Value5 := ('Save EHOOKS project: ') , (recoveredBlock13Value4).
    recoveredBlock13Value6 := (recoveredBlock13Value5) , ('...').
    (recoveredBlock13Value1) addImportantInfoText: (recoveredBlock13Value6).
    recoveredBlock13Value7 := recoveredBlock13Arg1.
    recoveredBlock13Value8 := (recoveredBlock13Value7) save.
    recoveredBlock13Value8
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) cleanupEHooks.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f6f44; bytecode file offset 0xbf382c"
!SGProject methodsFor: 'recovered'!
deleteFromParent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_80009'.
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
            recoveredStack0 := (recoveredStack0) projectDatabaseCachePath.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) deletePathRecursive: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultProject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultProjectManager.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteDefaultProject: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
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
            super deleteFromParent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203302d0; bytecode file offset 0xc2cc1c"
!SGProject methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super createInfoWidget: (recoveredStack1) parent: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredBlock34Value0.
    recoveredBlock34Value2 := recoveredArg3.
    (recoveredBlock34Value1) owner: (recoveredBlock34Value2).
    recoveredBlock34Value3 := (recoveredBlock34Value0) item: (self).
    recoveredBlock34Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasNotebookComponentWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20331808; bytecode file offset 0xc2e0d4"
!SGProject methodsFor: 'recovered'!
exportForImport: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingCache.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    ^nil
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ownerIfUndefined: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20333a28; bytecode file offset 0xc30310"
!SGProject methodsFor: 'recovered'!
convertToASDV50FromOldDataElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super convertToASDV50FromOldDataElements.
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
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
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := [:block280ed084Arg1 | 
    nil
].
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getObjectIfUndefined: (recoveredBlock11Stack3).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 44] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack1) convertTimeTableTriggerToTimerProject: (recoveredBlock11Stack2).
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) modified.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    (self) convertImplTypes.
    (self) convertFormulas.
    (self) convertFormulaParameter.
    (self) convertCodeGenSettingsTo50.
    ^self
! !

"ASDBase.ic method 0x20334d74; bytecode file offset 0xc3164c"
!SGProject methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1 withDefaultProject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super xmlCollectDependent: (recoveredValue0) withDefaultProject: (recoveredValue1).
    recoveredValue2 := (self) dbObject.
    recoveredValue3 := (recoveredValue2) importDesc.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
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
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) osLogic.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 54] ifFalse: [recoveredBlock17PC := 32].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) osLogic.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) values.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := [:recoveredBlock17Block38Arg1 | 
    | recoveredBlock17Block38Value0 recoveredBlock17Block38Value1 recoveredBlock17Block38Value2 recoveredBlock17Block38Value3 |
    recoveredBlock17Block38Value0 := recoveredArg1.
    recoveredBlock17Block38Value1 := recoveredBlock17Block38Arg1.
    recoveredBlock17Block38Value2 := (recoveredBlock17Block38Value1) dbObject.
    recoveredBlock17Block38Value3 := (recoveredBlock17Block38Value0) add: (recoveredBlock17Block38Value2).
    recoveredBlock17Block38Value3
].
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) do: (recoveredBlock17Stack2).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20346fa8; bytecode file offset 0xc4387c"
!SGProject methodsFor: 'recovered'!
loadFinished: recoveredArg1
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
            super loadFinished: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := intCode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := intCode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDBProxy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := intCode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280ee3c8Arg1 | 
    nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) readKeyIfUndefined: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) delete.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) resetIntCode.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := intCode.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) resetIntCode.
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

"ASDBase.ic method 0x20347830; bytecode file offset 0xc44110"
!SGProject methodsFor: 'recovered'!
updateDataElement: recoveredArg1 withProjectSpecificationForElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGScalar.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGVector.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrix.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) updateImplementationTypeAndFormulaInDataElement: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCharTable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 50].
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
            (recoveredStack1) updateInterpolationFromElementType: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) updateImplementationTypeAndFormulaInDataElement: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) updateImplementationTypeAndFormulaInDataElement: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGTwoDCharTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) updateImplementationTypeAndFormulaInDataElement: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036b634; bytecode file offset 0xc67f18"
!SGProject methodsFor: 'recovered'!
getAvailableMeasureTasks
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) osLogicForCurrentTarget.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) tasksForProject: (self).
    recoveredBlock11Value2 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Local1 recoveredBlock11Block21Stack0 recoveredBlock11Block21Stack1 recoveredBlock11Block21Stack2 recoveredBlock11Block21Stack3 recoveredBlock11Block21Stack4 recoveredBlock11Block21PC recoveredBlock11Block21Step recoveredBlock11Block21Done recoveredBlock11Block21Result |
    recoveredBlock11Block21Stack0 := nil.
    recoveredBlock11Block21PC := 28.
    recoveredBlock11Block21Done := false.
    [recoveredBlock11Block21Done not] whileTrue: [
        recoveredBlock11Block21Step := recoveredBlock11Block21PC.
        recoveredBlock11Block21Step = 28 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 29.
        ].
        recoveredBlock11Block21Step = 29 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) triggerObject.
            recoveredBlock11Block21PC := 31.
        ].
        recoveredBlock11Block21Step = 31 ifTrue: [
            recoveredBlock11Block21Local1 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 32.
        ].
        recoveredBlock11Block21Step = 32 ifTrue: [
            recoveredBlock11Block21Stack1 := nil.
            recoveredBlock11Block21PC := 33.
        ].
        recoveredBlock11Block21Step = 33 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Local1.
            recoveredBlock11Block21PC := 34.
        ].
        recoveredBlock11Block21Step = 34 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) isTimerTrigger.
            recoveredBlock11Block21PC := 36.
        ].
        recoveredBlock11Block21Step = 36 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 46] ifFalse: [recoveredBlock11Block21PC := 40].
        ].
        recoveredBlock11Block21Step = 40 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Local1.
            recoveredBlock11Block21PC := 41.
        ].
        recoveredBlock11Block21Step = 41 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) isSoftwareTrigger.
            recoveredBlock11Block21PC := 43.
        ].
        recoveredBlock11Block21Step = 43 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 46] ifFalse: [recoveredBlock11Block21PC := 58].
        ].
        recoveredBlock11Block21Step = 46 ifTrue: [
            recoveredBlock11Block21PC := 47.
        ].
        recoveredBlock11Block21Step = 47 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredLocal1.
            recoveredBlock11Block21PC := 50.
        ].
        recoveredBlock11Block21Step = 50 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 51.
        ].
        recoveredBlock11Block21Step = 51 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) name.
            recoveredBlock11Block21PC := 53.
        ].
        recoveredBlock11Block21Step = 53 ifTrue: [
            recoveredBlock11Block21Stack3 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 54.
        ].
        recoveredBlock11Block21Step = 54 ifTrue: [
            recoveredBlock11Block21Stack3 := (recoveredBlock11Block21Stack3) id.
            recoveredBlock11Block21PC := 56.
        ].
        recoveredBlock11Block21Step = 56 ifTrue: [
            recoveredBlock11Block21Stack1 := (recoveredBlock11Block21Stack1) at: (recoveredBlock11Block21Stack2) put: (recoveredBlock11Block21Stack3).
            recoveredBlock11Block21PC := 58.
        ].
        recoveredBlock11Block21Step = 58 ifTrue: [
            recoveredBlock11Block21Result := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21Done := true.
        ].
    ].
    recoveredBlock11Block21Result
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) do: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20388ec4; bytecode file offset 0xc857ac"
!SGProject methodsFor: 'recovered'!
reinitDefaultProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initVariables.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initDTClassVar.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Call_91067'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) datas.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementations.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280f33ccArg1 | 
    | block280f33ccStack0 block280f33ccStack1 block280f33ccStack2 block280f33ccStack3 block280f33ccPC block280f33ccStep block280f33ccDone block280f33ccResult |
    block280f33ccStack0 := self.
    block280f33ccPC := 4.
    block280f33ccDone := false.
    [block280f33ccDone not] whileTrue: [
        block280f33ccStep := block280f33ccPC.
        block280f33ccStep = 4 ifTrue: [
            block280f33ccStack1 := nil.
            block280f33ccPC := 5.
        ].
        block280f33ccStep = 5 ifTrue: [
            block280f33ccStack2 := block280f33ccArg1.
            block280f33ccPC := 6.
        ].
        block280f33ccStep = 6 ifTrue: [
            (block280f33ccStack2 == nil) ifTrue: [block280f33ccPC := 20] ifFalse: [block280f33ccPC := 10].
        ].
        block280f33ccStep = 10 ifTrue: [
            block280f33ccStack2 := block280f33ccArg1.
            block280f33ccPC := 11.
        ].
        block280f33ccStep = 11 ifTrue: [
            block280f33ccStack2 := (block280f33ccStack2) isRBDBUndefinedObject.
            block280f33ccPC := 13.
        ].
        block280f33ccStep = 13 ifTrue: [
            (block280f33ccStack2) ifTrue: [block280f33ccPC := 20] ifFalse: [block280f33ccPC := 16].
        ].
        block280f33ccStep = 16 ifTrue: [
            block280f33ccPC := 17.
        ].
        block280f33ccStep = 17 ifTrue: [
            block280f33ccStack1 := block280f33ccArg1.
            block280f33ccPC := 18.
        ].
        block280f33ccStep = 18 ifTrue: [
            block280f33ccStack1 := (block280f33ccStack1) reinitValues.
            block280f33ccPC := 20.
        ].
        block280f33ccStep = 20 ifTrue: [
            block280f33ccResult := block280f33ccStack1.
            block280f33ccDone := true.
        ].
    ].
    block280f33ccResult
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) classDataConfig.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) classDataConfig.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) reinitValues.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfig.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfig.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) reinitValues.
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

"ASDBase.ic method 0x203891b4; bytecode file offset 0xc85aa4"
!SGProject methodsFor: 'recovered'!
convertToASDV42
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super convertToASDV42.
    recoveredValue0 := ('Kk') == ('Call_58899').
    recoveredValue1 := (self) osLogic.
    recoveredValue2 := (recoveredValue1) values.
    recoveredValue3 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
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
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack3 := [:block280f33f0Arg1 | 
    nil
].
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) getObjectIfUndefined: (recoveredBlock19Stack3).
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack3.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 68] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            (recoveredBlock19Stack1) convertAttributesInTrigger: (recoveredBlock19Stack2).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            (recoveredBlock19Stack1) convertTimeTableTriggerModeProject: (recoveredBlock19Stack2).
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            (recoveredBlock19Stack1) convertSchedulingProject: (recoveredBlock19Stack2).
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            (recoveredBlock19Stack1) convertStartAlarmInInitTaskProject: (recoveredBlock19Stack2).
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            (recoveredBlock19Stack1) convertMonitoringVariables: (recoveredBlock19Stack2).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) modified.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2039908c; bytecode file offset 0xc95964"
!SGProject methodsFor: 'recovered'!
iniEHooksConfigFile: recoveredArg1 specificationFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPublicSpec.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    recoveredLocal2 := recoveredBlock6Value1.
    recoveredBlock6Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ASDEHooksConfig.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForProject: (recoveredStack1) configFile: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEHooksAscetSpecificationFromFile: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) associateWithProject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) scmModified.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) associateWithProject: (self).
    recoveredBlock59Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039b2ac; bytecode file offset 0xc97b88"
!SGProject methodsFor: 'recovered'!
allowedToComponent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isClientServerInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARDataInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARModeGroup.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcessClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allReferencedClasses.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAtomicSoftwareComponent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) allReferencedClasses.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:block280f402cArg1 | 
    | block280f402cValue0 block280f402cValue1 |
    block280f402cValue0 := block280f402cArg1.
    block280f402cValue1 := (block280f402cValue0) isAtomicSoftwareComponent.
    block280f402cValue1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203aa6e4; bytecode file offset 0xca6fbc"
!SGProject methodsFor: 'recovered'!
updateExperimentTarget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentTarget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExperimentOfflinePC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ExperimentOfflinePC.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget: (recoveredStack1).
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
            recoveredStack1 := ExperimentOnlineRP.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack1 := ExperimentOnlineRP.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget: (recoveredStack1).
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
            recoveredStack1 := ExperimentOnlineINTECRIO.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ExperimentOnlineINTECRIO.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := ExperimentOnlineLABCAR.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ExperimentOnlineLABCAR.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) experimentTarget: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b11f4; bytecode file offset 0xcadad8"
!SGProject methodsFor: 'recovered'!
updateDependencyComponentsInMappingCache: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) mappingCache.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Stack0 recoveredBlock12Block19Stack1 recoveredBlock12Block19Stack2 recoveredBlock12Block19Stack3 recoveredBlock12Block19Stack4 recoveredBlock12Block19PC recoveredBlock12Block19Step recoveredBlock12Block19Done recoveredBlock12Block19Result |
    recoveredBlock12Block19Stack0 := self.
    recoveredBlock12Block19PC := 26.
    recoveredBlock12Block19Done := false.
    [recoveredBlock12Block19Done not] whileTrue: [
        recoveredBlock12Block19Step := recoveredBlock12Block19PC.
        recoveredBlock12Block19Step = 26 ifTrue: [
            recoveredBlock12Block19Stack1 := nil.
            recoveredBlock12Block19PC := 27.
        ].
        recoveredBlock12Block19Step = 27 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 28.
        ].
        recoveredBlock12Block19Step = 28 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) ownerKey.
            recoveredBlock12Block19PC := 30.
        ].
        recoveredBlock12Block19Step = 30 ifTrue: [
            recoveredBlock12Block19Stack3 := self.
            recoveredBlock12Block19PC := 31.
        ].
        recoveredBlock12Block19Step = 31 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) dbObject.
            recoveredBlock12Block19PC := 33.
        ].
        recoveredBlock12Block19Step = 33 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) asRBDBReference.
            recoveredBlock12Block19PC := 35.
        ].
        recoveredBlock12Block19Step = 35 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) = (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19PC := 36.
        ].
        recoveredBlock12Block19Step = 36 ifTrue: [
            (recoveredBlock12Block19Stack2) ifTrue: [recoveredBlock12Block19PC := 71] ifFalse: [recoveredBlock12Block19PC := 40].
        ].
        recoveredBlock12Block19Step = 40 ifTrue: [
            recoveredBlock12Block19PC := 41.
        ].
        recoveredBlock12Block19Step = 41 ifTrue: [
            recoveredBlock12Block19Stack1 := nil.
            recoveredBlock12Block19PC := 42.
        ].
        recoveredBlock12Block19Step = 42 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredLocal1.
            recoveredBlock12Block19PC := 45.
        ].
        recoveredBlock12Block19Step = 45 ifTrue: [
            recoveredBlock12Block19Stack3 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 46.
        ].
        recoveredBlock12Block19Step = 46 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) ownerKey.
            recoveredBlock12Block19PC := 48.
        ].
        recoveredBlock12Block19Step = 48 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) includes: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19PC := 50.
        ].
        recoveredBlock12Block19Step = 50 ifTrue: [
            (recoveredBlock12Block19Stack2) ifTrue: [recoveredBlock12Block19PC := 71] ifFalse: [recoveredBlock12Block19PC := 54].
        ].
        recoveredBlock12Block19Step = 54 ifTrue: [
            recoveredBlock12Block19PC := 55.
        ].
        recoveredBlock12Block19Step = 55 ifTrue: [
            recoveredBlock12Block19Stack1 := recoveredArg1.
            recoveredBlock12Block19PC := 58.
        ].
        recoveredBlock12Block19Step = 58 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 59.
        ].
        recoveredBlock12Block19Step = 59 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) ownerSGClass.
            recoveredBlock12Block19PC := 61.
        ].
        recoveredBlock12Block19Step = 61 ifTrue: [
            (recoveredBlock12Block19Stack1) value: (recoveredBlock12Block19Stack2).
            recoveredBlock12Block19PC := 63.
        ].
        recoveredBlock12Block19Step = 63 ifTrue: [
            recoveredBlock12Block19Stack1 := recoveredLocal1.
            recoveredBlock12Block19PC := 66.
        ].
        recoveredBlock12Block19Step = 66 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 67.
        ].
        recoveredBlock12Block19Step = 67 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) ownerKey.
            recoveredBlock12Block19PC := 69.
        ].
        recoveredBlock12Block19Step = 69 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) add: (recoveredBlock12Block19Stack2).
            recoveredBlock12Block19PC := 71.
        ].
        recoveredBlock12Block19Step = 71 ifTrue: [
            recoveredBlock12Block19Result := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19Done := true.
        ].
    ].
    recoveredBlock12Block19Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) do: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203c5dd0; bytecode file offset 0xcc26a4"
!SGProject methodsFor: 'recovered'!
replaceInMappings: recoveredArg1 with: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageInput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 recoveredBlock18Block25Value3 |
    recoveredBlock18Block25Value0 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value1 := recoveredArg1.
    recoveredBlock18Block25Value2 := recoveredArg2.
    recoveredBlock18Block25Value3 := (recoveredBlock18Block25Value0) replaceAlias: (recoveredBlock18Block25Value1) with: (recoveredBlock18Block25Value2).
    recoveredBlock18Block25Value3
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageOutput.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := [:recoveredBlock51Block59Arg1 | 
    | recoveredBlock51Block59Value0 recoveredBlock51Block59Value1 recoveredBlock51Block59Value2 recoveredBlock51Block59Value3 |
    recoveredBlock51Block59Value0 := recoveredBlock51Block59Arg1.
    recoveredBlock51Block59Value1 := recoveredArg1.
    recoveredBlock51Block59Value2 := recoveredArg2.
    recoveredBlock51Block59Value3 := (recoveredBlock51Block59Value0) replaceAlias: (recoveredBlock51Block59Value1) with: (recoveredBlock51Block59Value2).
    recoveredBlock51Block59Value3
].
    recoveredBlock51Value2 := (recoveredBlock51Value0) do: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cd620; bytecode file offset 0xcc9f18"
!SGProject methodsFor: 'recovered'!
mappingCache
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 |
    (self) onFinalizeDo: ('resetMappingCacheToNil').
    recoveredBlock10Value0 := ASDCallbackManager.
    recoveredBlock10Value1 := (recoveredBlock10Value0) instance.
    recoveredBlock10Value2 := ASDDataStorageAboutToCloseCallback.
    recoveredBlock10Value3 := ASDPersistenceController.
    recoveredBlock10Value4 := (recoveredBlock10Value3) instance.
    (recoveredBlock10Value1) addCallback: (recoveredBlock10Value2) receiver: (self) for: (recoveredBlock10Value4).
    recoveredBlock10Value5 := (self) allExportedVariablesDictionary.
    mappingCache := recoveredBlock10Value5.
    recoveredBlock10Value6 := [:recoveredBlock10Block38Arg1 | 
    | recoveredBlock10Block38Value0 recoveredBlock10Block38Value1 |
    recoveredBlock10Block38Value0 := recoveredBlock10Block38Arg1.
    recoveredBlock10Block38Value1 := (recoveredBlock10Block38Value0) addDependent: (self).
    recoveredBlock10Block38Value1
].
    (self) updateDependencyComponentsInMappingCache: (recoveredBlock10Value6).
    recoveredBlock10Value7 := (self) updateMappingCacheTimeStamp.
    recoveredBlock10Value7
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVerbose.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'Build Mapping Cache'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) measureTimeFor: (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := mappingCache.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d2e90; bytecode file offset 0xccf77c"
!SGProject methodsFor: 'recovered'!
getEHooksASCETConfigFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) eHooksKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataForKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := EtasDOMDocument.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseStream: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigFileNameElementName.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementsByTagName: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) contents.
    recoveredBlock56Value2 := (recoveredBlock56Value1) someElement.
    recoveredBlock56Value3 := [:recoveredBlock56Block67Arg1 | 
    | recoveredBlock56Block67Value0 recoveredBlock56Block67Value1 |
    recoveredBlock56Block67Value0 := recoveredBlock56Block67Arg1.
    recoveredBlock56Block67Value1 := (recoveredBlock56Block67Value0) data.
    ^recoveredBlock56Block67Value1
].
    recoveredBlock56Value4 := (recoveredBlock56Value2) ifNotNil: (recoveredBlock56Value3).
    recoveredBlock56Value4
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d3b48; bytecode file offset 0xcd0444"
!SGProject methodsFor: 'recovered'!
deleteExternalCodeContainers
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) storageOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'storagePath'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block280f7800Value0 block280f7800Value1 |
    block280f7800Value0 := SGSnippetStorageManager.
    block280f7800Value1 := (block280f7800Value0) defaultStoragePath.
    block280f7800Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalIdString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := '.storage_data'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) deleteFile: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalIdString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := '.storage_index'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) deleteFile: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d3ee0; bytecode file offset 0xcd07b4"
!SGProject methodsFor: 'recovered'!
convertToExportedVariable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElementBasic: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultImplementation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultImplementation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElementBasic: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setToExportedBasic.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := classDataConfig.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280f7824Arg1 | 
    nil
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := classImplementationConfig.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block280f7848Arg1 | 
    nil
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d7900; bytecode file offset 0xcd41dc"
!SGProject methodsFor: 'recovered'!
getRescaleDataElementForNode: recoveredArg1 dataElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRescaled.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) parent.
    recoveredBlock16Value2 := [:recoveredBlock16Block26Arg1 | 
    | recoveredBlock16Block26Value0 recoveredBlock16Block26Value1 recoveredBlock16Block26Value2 recoveredBlock16Block26Value3 recoveredBlock16Block26Value4 recoveredBlock16Block26Value5 recoveredBlock16Block26Value6 |
    recoveredBlock16Block26Value0 := recoveredBlock16Block26Arg1.
    recoveredBlock16Block26Value1 := (recoveredBlock16Block26Value0) ic.
    recoveredBlock16Block26Value2 := recoveredBlock16Arg1.
    recoveredBlock16Block26Value3 := (recoveredBlock16Block26Value2) reference.
    recoveredBlock16Block26Value4 := (recoveredBlock16Block26Value1) getRescalingFormulaForElement: (recoveredBlock16Block26Value3).
    recoveredBlock16Block26Value5 := [:recoveredBlock16Block26Block40Arg1 | 
    | recoveredBlock16Block26Block40Local1 recoveredBlock16Block26Block40Stack0 recoveredBlock16Block26Block40Stack1 recoveredBlock16Block26Block40Stack2 recoveredBlock16Block26Block40PC recoveredBlock16Block26Block40Step recoveredBlock16Block26Block40Done recoveredBlock16Block26Block40Result |
    recoveredBlock16Block26Block40Stack0 := self.
    recoveredBlock16Block26Block40PC := 46.
    recoveredBlock16Block26Block40Done := false.
    [recoveredBlock16Block26Block40Done not] whileTrue: [
        recoveredBlock16Block26Block40Step := recoveredBlock16Block26Block40PC.
        recoveredBlock16Block26Block40Step = 46 ifTrue: [
            recoveredBlock16Block26Block40Stack1 := recoveredBlock16Block26Block40Arg1.
            recoveredBlock16Block26Block40PC := 47.
        ].
        recoveredBlock16Block26Block40Step = 47 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := (recoveredBlock16Block26Block40Stack0) getFormulaNamed: (recoveredBlock16Block26Block40Stack1).
            recoveredBlock16Block26Block40PC := 49.
        ].
        recoveredBlock16Block26Block40Step = 49 ifTrue: [
            recoveredBlock16Block26Block40Local1 := recoveredBlock16Block26Block40Stack0.
            recoveredBlock16Block26Block40PC := 50.
        ].
        recoveredBlock16Block26Block40Step = 50 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := nil.
            recoveredBlock16Block26Block40PC := 51.
        ].
        recoveredBlock16Block26Block40Step = 51 ifTrue: [
            recoveredBlock16Block26Block40Stack1 := recoveredBlock16Block26Block40Local1.
            recoveredBlock16Block26Block40PC := 52.
        ].
        recoveredBlock16Block26Block40Step = 52 ifTrue: [
            recoveredBlock16Block26Block40Stack1 := (recoveredBlock16Block26Block40Stack1) isLinearAndInvertible.
            recoveredBlock16Block26Block40PC := 54.
        ].
        recoveredBlock16Block26Block40Step = 54 ifTrue: [
            (recoveredBlock16Block26Block40Stack1) ifTrue: [recoveredBlock16Block26Block40PC := 58] ifFalse: [recoveredBlock16Block26Block40PC := 73].
        ].
        recoveredBlock16Block26Block40Step = 58 ifTrue: [
            recoveredBlock16Block26Block40PC := 59.
        ].
        recoveredBlock16Block26Block40Step = 59 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := recoveredArg2.
            recoveredBlock16Block26Block40PC := 62.
        ].
        recoveredBlock16Block26Block40Step = 62 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := (recoveredBlock16Block26Block40Stack0) deepCopy.
            recoveredBlock16Block26Block40PC := 64.
        ].
        recoveredBlock16Block26Block40Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock16Block26Block40Stack0.
            recoveredBlock16Block26Block40PC := 67.
        ].
        recoveredBlock16Block26Block40Step = 67 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := recoveredLocal1.
            recoveredBlock16Block26Block40PC := 70.
        ].
        recoveredBlock16Block26Block40Step = 70 ifTrue: [
            recoveredBlock16Block26Block40Stack1 := recoveredBlock16Block26Block40Local1.
            recoveredBlock16Block26Block40PC := 71.
        ].
        recoveredBlock16Block26Block40Step = 71 ifTrue: [
            recoveredBlock16Block26Block40Stack0 := (recoveredBlock16Block26Block40Stack0) rescaleImplementationWithFormula: (recoveredBlock16Block26Block40Stack1).
            recoveredBlock16Block26Block40PC := 73.
        ].
        recoveredBlock16Block26Block40Step = 73 ifTrue: [
            recoveredBlock16Block26Block40Result := recoveredBlock16Block26Block40Stack0.
            recoveredBlock16Block26Block40Done := true.
        ].
    ].
    recoveredBlock16Block26Block40Result
].
    recoveredBlock16Block26Value6 := (recoveredBlock16Block26Value4) ifNotNil: (recoveredBlock16Block26Value5).
    recoveredBlock16Block26Value6
].
    recoveredBlock16Value3 := (recoveredBlock16Value1) ifNotNil: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e79d4; bytecode file offset 0xce42c4"
!SGProject methodsFor: 'recovered'!
addMissingFormulasNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulaNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
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
            recoveredBlock30Stack2 := recoveredLocal2.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack3 := (recoveredBlock30Stack3) name.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) includes: (recoveredBlock30Stack3).
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 67] ifFalse: [recoveredBlock30PC := 48].
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack1 := RBFormulaLinear.
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) createDefault.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) name.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) name: (recoveredBlock30Stack2).
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredBlock30Stack2 := nil.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) addGlobalFormulaList: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0788; bytecode file offset 0xced060"
!SGProject methodsFor: 'recovered'!
mappedVariableFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) complexVariables.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) sgClass.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Stack0 recoveredBlock5Block14Stack1 recoveredBlock5Block14Stack2 recoveredBlock5Block14Stack3 recoveredBlock5Block14PC recoveredBlock5Block14Step recoveredBlock5Block14Done recoveredBlock5Block14Result |
    recoveredBlock5Block14Stack0 := nil.
    recoveredBlock5Block14PC := 20.
    recoveredBlock5Block14Done := false.
    [recoveredBlock5Block14Done not] whileTrue: [
        recoveredBlock5Block14Step := recoveredBlock5Block14PC.
        recoveredBlock5Block14Step = 20 ifTrue: [
            recoveredBlock5Block14Stack1 := nil.
            recoveredBlock5Block14PC := 21.
        ].
        recoveredBlock5Block14Step = 21 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredBlock5Block14Arg1.
            recoveredBlock5Block14PC := 22.
        ].
        recoveredBlock5Block14Step = 22 ifTrue: [
            recoveredBlock5Block14Stack2 := (recoveredBlock5Block14Stack2) isAtomicSoftwareComponent.
            recoveredBlock5Block14PC := 23.
        ].
        recoveredBlock5Block14Step = 23 ifTrue: [
            (recoveredBlock5Block14Stack2) ifTrue: [recoveredBlock5Block14PC := 26] ifFalse: [recoveredBlock5Block14PC := 54].
        ].
        recoveredBlock5Block14Step = 26 ifTrue: [
            recoveredBlock5Block14PC := 27.
        ].
        recoveredBlock5Block14Step = 27 ifTrue: [
            recoveredBlock5Block14Stack1 := recoveredArg1.
            recoveredBlock5Block14PC := 30.
        ].
        recoveredBlock5Block14Step = 30 ifTrue: [
            recoveredBlock5Block14Stack1 := (recoveredBlock5Block14Stack1) isVariable.
            recoveredBlock5Block14PC := 31.
        ].
        recoveredBlock5Block14Step = 31 ifTrue: [
            (recoveredBlock5Block14Stack1) ifTrue: [recoveredBlock5Block14PC := 34] ifFalse: [recoveredBlock5Block14PC := 44].
        ].
        recoveredBlock5Block14Step = 34 ifTrue: [
            recoveredBlock5Block14Stack1 := recoveredBlock5Block14Arg1.
            recoveredBlock5Block14PC := 35.
        ].
        recoveredBlock5Block14Step = 35 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredArg1.
            recoveredBlock5Block14PC := 38.
        ].
        recoveredBlock5Block14Step = 38 ifTrue: [
            recoveredBlock5Block14Stack1 := (recoveredBlock5Block14Stack1) mappedVariableFor: (recoveredBlock5Block14Stack2).
            recoveredBlock5Block14PC := 40.
        ].
        recoveredBlock5Block14Step = 40 ifTrue: [
            recoveredBlock5Block14PC := 50.
        ].
        recoveredBlock5Block14Step = 44 ifTrue: [
            recoveredBlock5Block14Stack1 := recoveredBlock5Block14Arg1.
            recoveredBlock5Block14PC := 45.
        ].
        recoveredBlock5Block14Step = 45 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredArg1.
            recoveredBlock5Block14PC := 48.
        ].
        recoveredBlock5Block14Step = 48 ifTrue: [
            recoveredBlock5Block14Stack1 := (recoveredBlock5Block14Stack1) mappedParameterFor: (recoveredBlock5Block14Stack2).
            recoveredBlock5Block14PC := 50.
        ].
        recoveredBlock5Block14Step = 50 ifTrue: [
            recoveredBlock5Block14Stack2 := recoveredBlock5Block14Stack1.
            recoveredBlock5Block14PC := 51.
        ].
        recoveredBlock5Block14Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock5Block14Stack2.
            recoveredBlock5Block14PC := 54.
        ].
        recoveredBlock5Block14Step = 54 ifTrue: [
            recoveredBlock5Block14Result := recoveredBlock5Block14Stack1.
            recoveredBlock5Block14Done := true.
        ].
    ].
    recoveredBlock5Block14Result
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 |
    recoveredBlock63Value0 := recoveredLocal1.
    recoveredBlock63Value1 := [:recoveredBlock63Block73Arg1 | 
    ^nil
].
    recoveredBlock63Value2 := (recoveredBlock63Value0) ownerIfUndefined: (recoveredBlock63Value1).
    recoveredBlock63Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20412164; bytecode file offset 0xd0ea40"
!SGProject methodsFor: 'recovered'!
isComplexVarUsed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExported.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImportedVariables.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [
    ^true
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) allImportedVariables.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExportedVariablesDictionary.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := [:recoveredBlock62Block71Arg1 | 
    | recoveredBlock62Block71Value0 recoveredBlock62Block71Value1 recoveredBlock62Block71Value2 recoveredBlock62Block71Value3 |
    recoveredBlock62Block71Value0 := recoveredBlock62Block71Arg1.
    recoveredBlock62Block71Value1 := (recoveredBlock62Block71Value0) defaultGlobalLabel.
    recoveredBlock62Block71Value2 := recoveredBlock62Arg1.
    recoveredBlock62Block71Value3 := (recoveredBlock62Block71Value1) = (recoveredBlock62Block71Value2).
    recoveredBlock62Block71Value3
].
    recoveredBlock62Value2 := (recoveredBlock62Value0) anySatisfy: (recoveredBlock62Value1).
    recoveredBlock62Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048fb14; bytecode file offset 0xd8c42c"
!SGProject methodsFor: 'recovered'!
writeImplTypes: recoveredArg1 toFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Bfr'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_446789'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ASDXMLExportController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) initHeadlessOn: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'xml'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlExt: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ASDXMLExportWriter.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := 'implementationtypes.xsd'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) filename: (recoveredStack3) schema: (recoveredStack4) sign: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'ImplementationTypes'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) writeVersionInfo.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'Call_2010403349'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := [:block281034ecArg1 :block281034ecArg2 | 
    | block281034ecValue0 block281034ecValue1 block281034ecValue2 block281034ecValue3 block281034ecValue4 |
    block281034ecValue0 := block281034ecArg1.
    block281034ecValue1 := (block281034ecValue0) implTypeName.
    block281034ecValue2 := block281034ecArg2.
    block281034ecValue3 := (block281034ecValue2) implTypeName.
    block281034ecValue4 := (block281034ecValue1) < (block281034ecValue3).
    block281034ecValue4
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 recoveredBlock94Value4 |
    recoveredBlock94Value0 := recoveredLocal2.
    (recoveredBlock94Value0) openComplex: ('ImplementationType').
    recoveredBlock94Value1 := recoveredBlock94Arg1.
    recoveredBlock94Value2 := recoveredLocal2.
    (recoveredBlock94Value1) writeXML: (recoveredBlock94Value2).
    recoveredBlock94Value3 := recoveredLocal2.
    recoveredBlock94Value4 := (recoveredBlock94Value3) closeComplex.
    recoveredBlock94Value4
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20496034; bytecode file offset 0xd92928"
!SGProject methodsFor: 'recovered'!
xmlMaxSuffixLen: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super xmlMaxSuffixLen: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) implementationTypesFileOn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Call_96418'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlProjectFiles.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 :recoveredBlock57Arg2 | 
    | recoveredBlock57Local1 recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg2.
            recoveredBlock57PC := 68.
        ].
        recoveredBlock57Step = 68 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) size.
            recoveredBlock57PC := 70.
        ].
        recoveredBlock57Step = 70 ifTrue: [
            recoveredBlock57Stack3 := 0.
            recoveredBlock57PC := 72.
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) > (recoveredBlock57Stack3).
            recoveredBlock57PC := 73.
        ].
        recoveredBlock57Step = 73 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 76] ifFalse: [recoveredBlock57PC := 127].
        ].
        recoveredBlock57Step = 76 ifTrue: [
            recoveredBlock57PC := 77.
        ].
        recoveredBlock57Step = 77 ifTrue: [
            recoveredBlock57Stack1 := '.projectFiles/'.
            recoveredBlock57PC := 79.
        ].
        recoveredBlock57Step = 79 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 82.
        ].
        recoveredBlock57Step = 82 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) , (recoveredBlock57Stack2).
            recoveredBlock57PC := 84.
        ].
        recoveredBlock57Step = 84 ifTrue: [
            recoveredBlock57Stack2 := '/'.
            recoveredBlock57PC := 86.
        ].
        recoveredBlock57Step = 86 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) , (recoveredBlock57Stack2).
            recoveredBlock57PC := 88.
        ].
        recoveredBlock57Step = 88 ifTrue: [
            recoveredBlock57Local1 := recoveredBlock57Stack1.
            recoveredBlock57PC := 91.
        ].
        recoveredBlock57Step = 91 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg2.
            recoveredBlock57PC := 94.
        ].
        recoveredBlock57Step = 94 ifTrue: [
            recoveredBlock57Stack2 := [:recoveredBlock57Block94Arg1 | 
    | recoveredBlock57Block94Value0 recoveredBlock57Block94Value1 recoveredBlock57Block94Value2 recoveredBlock57Block94Value3 recoveredBlock57Block94Value4 recoveredBlock57Block94Value5 recoveredBlock57Block94Value6 recoveredBlock57Block94Value7 recoveredBlock57Block94Value8 |
    recoveredBlock57Block94Value0 := recoveredLocal1.
    recoveredBlock57Block94Value1 := recoveredBlock57Local1.
    recoveredBlock57Block94Value2 := (recoveredBlock57Block94Value1) size.
    recoveredBlock57Block94Value3 := recoveredBlock57Block94Arg1.
    recoveredBlock57Block94Value4 := (recoveredBlock57Block94Value3) name.
    recoveredBlock57Block94Value5 := (recoveredBlock57Block94Value4) size.
    recoveredBlock57Block94Value6 := (recoveredBlock57Block94Value2) + (recoveredBlock57Block94Value5).
    recoveredBlock57Block94Value7 := (recoveredBlock57Block94Value0) max: (recoveredBlock57Block94Value6).
    recoveredBlock57Block94Value8 := recoveredBlock57Block94Value7.
    recoveredLocal1 := recoveredBlock57Block94Value8.
    recoveredBlock57Block94Value7
].
            recoveredBlock57PC := 121.
        ].
        recoveredBlock57Step = 121 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) do: (recoveredBlock57Stack2).
            recoveredBlock57PC := 123.
        ].
        recoveredBlock57Step = 123 ifTrue: [
            recoveredBlock57Stack2 := nil.
            recoveredBlock57PC := 124.
        ].
        recoveredBlock57Step = 124 ifTrue: [
            recoveredBlock57Local1 := recoveredBlock57Stack2.
            recoveredBlock57PC := 127.
        ].
        recoveredBlock57Step = 127 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c1740; bytecode file offset 0xdbe048"
!SGProject methodsFor: 'recovered'!
isUnchanged
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalId.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) primitiveVariables.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) formulas.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) implTypes.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectFiles.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceKey.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
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
            recoveredBlock75Stack3 := [
    #()
].
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) getObjectIfUndefined: (recoveredBlock75Stack3).
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) isEmpty.
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            (recoveredBlock75Stack2) ifTrue: [recoveredBlock75PC := 103] ifFalse: [recoveredBlock75PC := 100].
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75PC := 101.
        ].
        recoveredBlock75Step = 101 ifTrue: [
            recoveredBlock75Stack1 := false.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            ^recoveredBlock75Stack1
        ].
        recoveredBlock75Step = 103 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'Call_86953'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) promotedCodeGenMessages.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) ignoredCodeGenMessages.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) hiddenCodeGenMessages.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c2800; bytecode file offset 0xdbf108"
!SGProject methodsFor: 'recovered'!
additionalExportedVariables
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetTemporary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExperimentalTarget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super additionalExportedVariables.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
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
            recoveredStack0 := (recoveredStack0) osLogicForTarget: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := super additionalExportedVariables.
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
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForCurrentTarget.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := super additionalExportedVariables.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableMonitoring.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := super additionalExportedVariables.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasksForProject: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Arg1.
            recoveredBlock95PC := 104.
        ].
        recoveredBlock95Step = 104 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) triggerObject.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) isMonVar.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 112] ifFalse: [recoveredBlock95PC := 126].
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack1 := true.
            recoveredBlock95PC := 114.
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredLocal2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 117.
        ].
        recoveredBlock95Step = 117 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal3.
            recoveredBlock95PC := 120.
        ].
        recoveredBlock95Step = 120 ifTrue: [
            recoveredBlock95Stack2 := self.
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg1.
            recoveredBlock95PC := 122.
        ].
        recoveredBlock95Step = 122 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) createDynamicExportedVariablesForTask: (recoveredBlock95Stack3).
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) addAll: (recoveredBlock95Stack2).
            recoveredBlock95PC := 126.
        ].
        recoveredBlock95Step = 126 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'runtime_violation'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDynamicExportedTaskVariableNamed: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f14ec; bytecode file offset 0xdeddf4"
!SGProject methodsFor: 'recovered'!
usedFormulasAnywhereForConfig: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) hierarchicalAvailableInstanceConfigurations.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) formulaNames.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) getObject.
    recoveredBlock36Value2 := (recoveredBlock36Value1) allImplConfiguredElements.
    recoveredBlock36Value3 := [:recoveredBlock36Block49Arg1 | 
    | recoveredBlock36Block49Local1 recoveredBlock36Block49Stack0 recoveredBlock36Block49Stack1 recoveredBlock36Block49Stack2 recoveredBlock36Block49Stack3 recoveredBlock36Block49Stack4 recoveredBlock36Block49PC recoveredBlock36Block49Step recoveredBlock36Block49Done recoveredBlock36Block49Result |
    recoveredBlock36Block49Stack0 := self.
    recoveredBlock36Block49PC := 56.
    recoveredBlock36Block49Done := false.
    [recoveredBlock36Block49Done not] whileTrue: [
        recoveredBlock36Block49Step := recoveredBlock36Block49PC.
        recoveredBlock36Block49Step = 56 ifTrue: [
            recoveredBlock36Block49Stack1 := nil.
            recoveredBlock36Block49PC := 57.
        ].
        recoveredBlock36Block49Step = 57 ifTrue: [
            recoveredBlock36Block49Stack2 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 60.
        ].
        recoveredBlock36Block49Step = 60 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) isPrimitive.
            recoveredBlock36Block49PC := 62.
        ].
        recoveredBlock36Block49Step = 62 ifTrue: [
            (recoveredBlock36Block49Stack2) ifTrue: [recoveredBlock36Block49PC := 66] ifFalse: [recoveredBlock36Block49PC := 147].
        ].
        recoveredBlock36Block49Step = 66 ifTrue: [
            recoveredBlock36Block49PC := 67.
        ].
        recoveredBlock36Block49Step = 67 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 70.
        ].
        recoveredBlock36Block49Step = 70 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) isUniqueImplConfigured.
            recoveredBlock36Block49PC := 72.
        ].
        recoveredBlock36Block49Step = 72 ifTrue: [
            (recoveredBlock36Block49Stack1) ifTrue: [recoveredBlock36Block49PC := 76] ifFalse: [recoveredBlock36Block49PC := 94].
        ].
        recoveredBlock36Block49Step = 76 ifTrue: [
            recoveredBlock36Block49Stack1 := Array.
            recoveredBlock36Block49PC := 78.
        ].
        recoveredBlock36Block49Step = 78 ifTrue: [
            recoveredBlock36Block49Stack2 := recoveredBlock36Arg1.
            recoveredBlock36Block49PC := 81.
        ].
        recoveredBlock36Block49Step = 81 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) classImplConfig.
            recoveredBlock36Block49PC := 83.
        ].
        recoveredBlock36Block49Step = 83 ifTrue: [
            recoveredBlock36Block49Stack3 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 86.
        ].
        recoveredBlock36Block49Step = 86 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) configForElement: (recoveredBlock36Block49Stack3).
            recoveredBlock36Block49PC := 88.
        ].
        recoveredBlock36Block49Step = 88 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) with: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 90.
        ].
        recoveredBlock36Block49Step = 90 ifTrue: [
            recoveredBlock36Block49PC := 115.
        ].
        recoveredBlock36Block49Step = 94 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Arg2.
            recoveredBlock36Block49PC := 97.
        ].
        recoveredBlock36Block49Step = 97 ifTrue: [
            recoveredBlock36Block49Stack2 := [:recoveredBlock36Block49Block97Arg1 | 
    | recoveredBlock36Block49Block97Value0 recoveredBlock36Block49Block97Value1 recoveredBlock36Block49Block97Value2 recoveredBlock36Block49Block97Value3 |
    recoveredBlock36Block49Block97Value0 := recoveredBlock36Block49Block97Arg1.
    recoveredBlock36Block49Block97Value1 := (recoveredBlock36Block49Block97Value0) getObject.
    recoveredBlock36Block49Block97Value2 := recoveredBlock36Block49Arg1.
    recoveredBlock36Block49Block97Value3 := (recoveredBlock36Block49Block97Value1) configForElement: (recoveredBlock36Block49Block97Value2).
    recoveredBlock36Block49Block97Value3
].
            recoveredBlock36Block49PC := 113.
        ].
        recoveredBlock36Block49Step = 113 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) collect: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 115.
        ].
        recoveredBlock36Block49Step = 115 ifTrue: [
            recoveredBlock36Block49Local1 := recoveredBlock36Block49Stack1.
            recoveredBlock36Block49PC := 118.
        ].
        recoveredBlock36Block49Step = 118 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Block49Local1.
            recoveredBlock36Block49PC := 121.
        ].
        recoveredBlock36Block49Step = 121 ifTrue: [
            recoveredBlock36Block49Stack2 := [:recoveredBlock36Block49Block121Arg1 | 
    | recoveredBlock36Block49Block121Stack0 recoveredBlock36Block49Block121Stack1 recoveredBlock36Block49Block121Stack2 recoveredBlock36Block49Block121Stack3 recoveredBlock36Block49Block121Stack4 recoveredBlock36Block49Block121PC recoveredBlock36Block49Block121Step recoveredBlock36Block49Block121Done recoveredBlock36Block49Block121Result |
    recoveredBlock36Block49Block121Stack0 := self.
    recoveredBlock36Block49Block121PC := 128.
    recoveredBlock36Block49Block121Done := false.
    [recoveredBlock36Block49Block121Done not] whileTrue: [
        recoveredBlock36Block49Block121Step := recoveredBlock36Block49Block121PC.
        recoveredBlock36Block49Block121Step = 128 ifTrue: [
            recoveredBlock36Block49Block121Stack1 := nil.
            recoveredBlock36Block49Block121PC := 129.
        ].
        recoveredBlock36Block49Block121Step = 129 ifTrue: [
            recoveredBlock36Block49Block121Stack2 := recoveredBlock36Block49Block121Arg1.
            recoveredBlock36Block49Block121PC := 130.
        ].
        recoveredBlock36Block49Block121Step = 130 ifTrue: [
            (recoveredBlock36Block49Block121Stack2 == nil) ifTrue: [recoveredBlock36Block49Block121PC := 144] ifFalse: [recoveredBlock36Block49Block121PC := 134].
        ].
        recoveredBlock36Block49Block121Step = 134 ifTrue: [
            recoveredBlock36Block49Block121PC := 135.
        ].
        recoveredBlock36Block49Block121Step = 135 ifTrue: [
            recoveredBlock36Block49Block121Stack1 := recoveredLocal2.
            recoveredBlock36Block49Block121PC := 138.
        ].
        recoveredBlock36Block49Block121Step = 138 ifTrue: [
            recoveredBlock36Block49Block121Stack2 := self.
            recoveredBlock36Block49Block121PC := 139.
        ].
        recoveredBlock36Block49Block121Step = 139 ifTrue: [
            recoveredBlock36Block49Block121Stack3 := recoveredBlock36Block49Block121Arg1.
            recoveredBlock36Block49Block121PC := 140.
        ].
        recoveredBlock36Block49Block121Step = 140 ifTrue: [
            recoveredBlock36Block49Block121Stack2 := (recoveredBlock36Block49Block121Stack2) usedFormulaNamesForImplementation: (recoveredBlock36Block49Block121Stack3).
            recoveredBlock36Block49Block121PC := 142.
        ].
        recoveredBlock36Block49Block121Step = 142 ifTrue: [
            recoveredBlock36Block49Block121Stack1 := (recoveredBlock36Block49Block121Stack1) addAll: (recoveredBlock36Block49Block121Stack2).
            recoveredBlock36Block49Block121PC := 144.
        ].
        recoveredBlock36Block49Block121Step = 144 ifTrue: [
            recoveredBlock36Block49Block121Result := recoveredBlock36Block49Block121Stack1.
            recoveredBlock36Block49Block121Done := true.
        ].
    ].
    recoveredBlock36Block49Block121Result
].
            recoveredBlock36Block49PC := 145.
        ].
        recoveredBlock36Block49Step = 145 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) do: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 147.
        ].
        recoveredBlock36Block49Step = 147 ifTrue: [
            recoveredBlock36Block49Result := recoveredBlock36Block49Stack1.
            recoveredBlock36Block49Done := true.
        ].
    ].
    recoveredBlock36Block49Result
].
    recoveredBlock36Value4 := (recoveredBlock36Value2) do: (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    (recoveredValue8) keysAndValuesDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Value0 recoveredBlock156Value1 |
    recoveredBlock156Value0 := recoveredBlock156Arg1.
    recoveredBlock156Value1 := (self) formulaNamed: (recoveredBlock156Value0).
    recoveredBlock156Value1
].
    recoveredValue12 := (recoveredValue10) collect: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x204f7278; bytecode file offset 0xdf3b80"
!SGProject methodsFor: 'recovered'!
updateImplementations: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68691'.
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
            (recoveredStack0) recalculateImplementationTypes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Update Implementations in: '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) completeLabel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 44.
        ].
        recoveredBlock33Step = 44 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) modifiable.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 50] ifFalse: [recoveredBlock33PC := 145].
        ].
        recoveredBlock33Step = 50 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 53.
        ].
        recoveredBlock33Step = 53 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) sgClass.
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Stack2.
            recoveredBlock33PC := 56.
        ].
        recoveredBlock33Step = 56 ifTrue: [
            recoveredBlock33Local1 := recoveredBlock33Stack3.
            recoveredBlock33PC := 59.
        ].
        recoveredBlock33Step = 59 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 145] ifFalse: [recoveredBlock33PC := 62].
        ].
        recoveredBlock33Step = 62 ifTrue: [
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Local1.
            recoveredBlock33PC := 66.
        ].
        recoveredBlock33Step = 66 ifTrue: [
            recoveredBlock33Stack2 := [
    | recoveredBlock33Block66Value0 recoveredBlock33Block66Value1 recoveredBlock33Block66Value2 recoveredBlock33Block66Value3 recoveredBlock33Block66Value4 |
    recoveredBlock33Block66Value0 := recoveredBlock33Arg1.
    (recoveredBlock33Block66Value0) makeConsistent.
    recoveredBlock33Block66Value1 := recoveredBlock33Arg1.
    recoveredBlock33Block66Value2 := (recoveredBlock33Block66Value1) allConfiguredElements.
    recoveredBlock33Block66Value3 := [:recoveredBlock33Block66Block82Arg1 | 
    | recoveredBlock33Block66Block82Local1 recoveredBlock33Block66Block82Stack0 recoveredBlock33Block66Block82Stack1 recoveredBlock33Block66Block82Stack2 recoveredBlock33Block66Block82Stack3 recoveredBlock33Block66Block82Stack4 recoveredBlock33Block66Block82Stack5 recoveredBlock33Block66Block82Stack6 recoveredBlock33Block66Block82PC recoveredBlock33Block66Block82Step recoveredBlock33Block66Block82Done recoveredBlock33Block66Block82Result |
    recoveredBlock33Block66Block82Stack0 := self.
    recoveredBlock33Block66Block82PC := 88.
    recoveredBlock33Block66Block82Done := false.
    [recoveredBlock33Block66Block82Done not] whileTrue: [
        recoveredBlock33Block66Block82Step := recoveredBlock33Block66Block82PC.
        recoveredBlock33Block66Block82Step = 88 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := nil.
            recoveredBlock33Block66Block82PC := 89.
        ].
        recoveredBlock33Block66Block82Step = 89 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := recoveredBlock33Block66Block82Arg1.
            recoveredBlock33Block66Block82PC := 90.
        ].
        recoveredBlock33Block66Block82Step = 90 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := (recoveredBlock33Block66Block82Stack2) isPrimitive.
            recoveredBlock33Block66Block82PC := 92.
        ].
        recoveredBlock33Block66Block82Step = 92 ifTrue: [
            (recoveredBlock33Block66Block82Stack2) ifTrue: [recoveredBlock33Block66Block82PC := 96] ifFalse: [recoveredBlock33Block66Block82PC := 138].
        ].
        recoveredBlock33Block66Block82Step = 96 ifTrue: [
            recoveredBlock33Block66Block82PC := 97.
        ].
        recoveredBlock33Block66Block82Step = 97 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := nil.
            recoveredBlock33Block66Block82PC := 98.
        ].
        recoveredBlock33Block66Block82Step = 98 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := recoveredBlock33Arg1.
            recoveredBlock33Block66Block82PC := 101.
        ].
        recoveredBlock33Block66Block82Step = 101 ifTrue: [
            recoveredBlock33Block66Block82Stack3 := recoveredBlock33Block66Block82Arg1.
            recoveredBlock33Block66Block82PC := 102.
        ].
        recoveredBlock33Block66Block82Step = 102 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := (recoveredBlock33Block66Block82Stack2) configForElement: (recoveredBlock33Block66Block82Stack3).
            recoveredBlock33Block66Block82PC := 104.
        ].
        recoveredBlock33Block66Block82Step = 104 ifTrue: [
            recoveredBlock33Block66Block82Stack3 := recoveredBlock33Block66Block82Stack2.
            recoveredBlock33Block66Block82PC := 105.
        ].
        recoveredBlock33Block66Block82Step = 105 ifTrue: [
            recoveredBlock33Block66Block82Local1 := recoveredBlock33Block66Block82Stack3.
            recoveredBlock33Block66Block82PC := 106.
        ].
        recoveredBlock33Block66Block82Step = 106 ifTrue: [
            (recoveredBlock33Block66Block82Stack2 == nil) ifTrue: [recoveredBlock33Block66Block82PC := 136] ifFalse: [recoveredBlock33Block66Block82PC := 110].
        ].
        recoveredBlock33Block66Block82Step = 110 ifTrue: [
            recoveredBlock33Block66Block82PC := 111.
        ].
        recoveredBlock33Block66Block82Step = 111 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := recoveredBlock33Block66Block82Local1.
            recoveredBlock33Block66Block82PC := 112.
        ].
        recoveredBlock33Block66Block82Step = 112 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := self.
            recoveredBlock33Block66Block82PC := 113.
        ].
        recoveredBlock33Block66Block82Step = 113 ifTrue: [
            recoveredBlock33Block66Block82Stack3 := recoveredLocal2.
            recoveredBlock33Block66Block82PC := 116.
        ].
        recoveredBlock33Block66Block82Step = 116 ifTrue: [
            recoveredBlock33Block66Block82Stack4 := recoveredBlock33Arg1.
            recoveredBlock33Block66Block82PC := 119.
        ].
        recoveredBlock33Block66Block82Step = 119 ifTrue: [
            recoveredBlock33Block66Block82Stack5 := recoveredBlock33Block66Block82Arg1.
            recoveredBlock33Block66Block82PC := 120.
        ].
        recoveredBlock33Block66Block82Step = 120 ifTrue: [
            (recoveredBlock33Block66Block82Stack1) updateRepresentationFromMasterFormulas: (recoveredBlock33Block66Block82Stack2) monitor: (recoveredBlock33Block66Block82Stack3) implConfig: (recoveredBlock33Block66Block82Stack4) variable: (recoveredBlock33Block66Block82Stack5).
            recoveredBlock33Block66Block82PC := 123.
        ].
        recoveredBlock33Block66Block82Step = 123 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := 'Kk'.
            recoveredBlock33Block66Block82PC := 125.
        ].
        recoveredBlock33Block66Block82Step = 125 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := 'Call_68691'.
            recoveredBlock33Block66Block82PC := 127.
        ].
        recoveredBlock33Block66Block82Step = 127 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := (recoveredBlock33Block66Block82Stack1) == (recoveredBlock33Block66Block82Stack2).
            recoveredBlock33Block66Block82PC := 128.
        ].
        recoveredBlock33Block66Block82Step = 128 ifTrue: [
            recoveredBlock33Block66Block82PC := 129.
        ].
        recoveredBlock33Block66Block82Step = 129 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := recoveredBlock33Arg1.
            recoveredBlock33Block66Block82PC := 132.
        ].
        recoveredBlock33Block66Block82Step = 132 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := recoveredBlock33Block66Block82Local1.
            recoveredBlock33Block66Block82PC := 133.
        ].
        recoveredBlock33Block66Block82Step = 133 ifTrue: [
            recoveredBlock33Block66Block82Stack3 := recoveredBlock33Block66Block82Arg1.
            recoveredBlock33Block66Block82PC := 134.
        ].
        recoveredBlock33Block66Block82Step = 134 ifTrue: [
            recoveredBlock33Block66Block82Stack1 := (recoveredBlock33Block66Block82Stack1) setConfig: (recoveredBlock33Block66Block82Stack2) forElement: (recoveredBlock33Block66Block82Stack3).
            recoveredBlock33Block66Block82PC := 136.
        ].
        recoveredBlock33Block66Block82Step = 136 ifTrue: [
            recoveredBlock33Block66Block82Stack2 := nil.
            recoveredBlock33Block66Block82PC := 137.
        ].
        recoveredBlock33Block66Block82Step = 137 ifTrue: [
            recoveredBlock33Block66Block82Local1 := recoveredBlock33Block66Block82Stack2.
            recoveredBlock33Block66Block82PC := 138.
        ].
        recoveredBlock33Block66Block82Step = 138 ifTrue: [
            recoveredBlock33Block66Block82Result := recoveredBlock33Block66Block82Stack1.
            recoveredBlock33Block66Block82Done := true.
        ].
    ].
    recoveredBlock33Block66Block82Result
].
    recoveredBlock33Block66Value4 := (recoveredBlock33Block66Value2) do: (recoveredBlock33Block66Value3).
    recoveredBlock33Block66Value4
].
            recoveredBlock33PC := 142.
        ].
        recoveredBlock33Step = 142 ifTrue: [
            recoveredBlock33Stack3 := false.
            recoveredBlock33PC := 143.
        ].
        recoveredBlock33Step = 143 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) suspendObserving: (recoveredBlock33Stack2) notify: (recoveredBlock33Stack3).
            recoveredBlock33PC := 145.
        ].
        recoveredBlock33Step = 145 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) doWithReferencesNonPrimitiveItems: (recoveredStack1) recursive: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) printReady.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205020a0; bytecode file offset 0xdfe9b0"
!SGProject methodsFor: 'recovered'!
neededFormulaNamesForConfig: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) hierarchicalUsedInstanceConfigurations.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) formulaNames.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) getObject.
    recoveredBlock36Value2 := (recoveredBlock36Value1) allImplConfiguredElements.
    recoveredBlock36Value3 := [:recoveredBlock36Block49Arg1 | 
    | recoveredBlock36Block49Local1 recoveredBlock36Block49Stack0 recoveredBlock36Block49Stack1 recoveredBlock36Block49Stack2 recoveredBlock36Block49Stack3 recoveredBlock36Block49Stack4 recoveredBlock36Block49PC recoveredBlock36Block49Step recoveredBlock36Block49Done recoveredBlock36Block49Result |
    recoveredBlock36Block49Stack0 := self.
    recoveredBlock36Block49PC := 56.
    recoveredBlock36Block49Done := false.
    [recoveredBlock36Block49Done not] whileTrue: [
        recoveredBlock36Block49Step := recoveredBlock36Block49PC.
        recoveredBlock36Block49Step = 56 ifTrue: [
            recoveredBlock36Block49Stack1 := nil.
            recoveredBlock36Block49PC := 57.
        ].
        recoveredBlock36Block49Step = 57 ifTrue: [
            recoveredBlock36Block49Stack2 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 60.
        ].
        recoveredBlock36Block49Step = 60 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) isPrimitive.
            recoveredBlock36Block49PC := 62.
        ].
        recoveredBlock36Block49Step = 62 ifTrue: [
            (recoveredBlock36Block49Stack2) ifTrue: [recoveredBlock36Block49PC := 66] ifFalse: [recoveredBlock36Block49PC := 167].
        ].
        recoveredBlock36Block49Step = 66 ifTrue: [
            recoveredBlock36Block49PC := 67.
        ].
        recoveredBlock36Block49Step = 67 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 70.
        ].
        recoveredBlock36Block49Step = 70 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) isUniqueImplConfigured.
            recoveredBlock36Block49PC := 72.
        ].
        recoveredBlock36Block49Step = 72 ifTrue: [
            (recoveredBlock36Block49Stack1) ifTrue: [recoveredBlock36Block49PC := 76] ifFalse: [recoveredBlock36Block49PC := 114].
        ].
        recoveredBlock36Block49Step = 76 ifTrue: [
            recoveredBlock36Block49Stack1 := 'Kk'.
            recoveredBlock36Block49PC := 78.
        ].
        recoveredBlock36Block49Step = 78 ifTrue: [
            recoveredBlock36Block49Stack2 := 'Call_69590'.
            recoveredBlock36Block49PC := 80.
        ].
        recoveredBlock36Block49Step = 80 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) == (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 81.
        ].
        recoveredBlock36Block49Step = 81 ifTrue: [
            recoveredBlock36Block49PC := 82.
        ].
        recoveredBlock36Block49Step = 82 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Arg1.
            recoveredBlock36Block49PC := 85.
        ].
        recoveredBlock36Block49Step = 85 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) classImplConfig.
            recoveredBlock36Block49PC := 87.
        ].
        recoveredBlock36Block49Step = 87 ifTrue: [
            (recoveredBlock36Block49Stack1 ~~ nil) ifTrue: [recoveredBlock36Block49PC := 96] ifFalse: [recoveredBlock36Block49PC := 90].
        ].
        recoveredBlock36Block49Step = 90 ifTrue: [
            recoveredBlock36Block49Stack1 := #().
            recoveredBlock36Block49PC := 92.
        ].
        recoveredBlock36Block49Step = 92 ifTrue: [
            recoveredBlock36Block49PC := 110.
        ].
        recoveredBlock36Block49Step = 96 ifTrue: [
            recoveredBlock36Block49Stack1 := Array.
            recoveredBlock36Block49PC := 98.
        ].
        recoveredBlock36Block49Step = 98 ifTrue: [
            recoveredBlock36Block49Stack2 := recoveredBlock36Arg1.
            recoveredBlock36Block49PC := 101.
        ].
        recoveredBlock36Block49Step = 101 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) classImplConfig.
            recoveredBlock36Block49PC := 103.
        ].
        recoveredBlock36Block49Step = 103 ifTrue: [
            recoveredBlock36Block49Stack3 := recoveredBlock36Block49Arg1.
            recoveredBlock36Block49PC := 106.
        ].
        recoveredBlock36Block49Step = 106 ifTrue: [
            recoveredBlock36Block49Stack2 := (recoveredBlock36Block49Stack2) configForElement: (recoveredBlock36Block49Stack3).
            recoveredBlock36Block49PC := 108.
        ].
        recoveredBlock36Block49Step = 108 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) with: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 110.
        ].
        recoveredBlock36Block49Step = 110 ifTrue: [
            recoveredBlock36Block49PC := 135.
        ].
        recoveredBlock36Block49Step = 114 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Arg2.
            recoveredBlock36Block49PC := 117.
        ].
        recoveredBlock36Block49Step = 117 ifTrue: [
            recoveredBlock36Block49Stack2 := [:recoveredBlock36Block49Block117Arg1 | 
    | recoveredBlock36Block49Block117Value0 recoveredBlock36Block49Block117Value1 recoveredBlock36Block49Block117Value2 recoveredBlock36Block49Block117Value3 |
    recoveredBlock36Block49Block117Value0 := recoveredBlock36Block49Block117Arg1.
    recoveredBlock36Block49Block117Value1 := (recoveredBlock36Block49Block117Value0) getObject.
    recoveredBlock36Block49Block117Value2 := recoveredBlock36Block49Arg1.
    recoveredBlock36Block49Block117Value3 := (recoveredBlock36Block49Block117Value1) configForElement: (recoveredBlock36Block49Block117Value2).
    recoveredBlock36Block49Block117Value3
].
            recoveredBlock36Block49PC := 133.
        ].
        recoveredBlock36Block49Step = 133 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) collect: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 135.
        ].
        recoveredBlock36Block49Step = 135 ifTrue: [
            recoveredBlock36Block49Local1 := recoveredBlock36Block49Stack1.
            recoveredBlock36Block49PC := 138.
        ].
        recoveredBlock36Block49Step = 138 ifTrue: [
            recoveredBlock36Block49Stack1 := recoveredBlock36Block49Local1.
            recoveredBlock36Block49PC := 141.
        ].
        recoveredBlock36Block49Step = 141 ifTrue: [
            recoveredBlock36Block49Stack2 := [:recoveredBlock36Block49Block141Arg1 | 
    | recoveredBlock36Block49Block141Stack0 recoveredBlock36Block49Block141Stack1 recoveredBlock36Block49Block141Stack2 recoveredBlock36Block49Block141Stack3 recoveredBlock36Block49Block141Stack4 recoveredBlock36Block49Block141PC recoveredBlock36Block49Block141Step recoveredBlock36Block49Block141Done recoveredBlock36Block49Block141Result |
    recoveredBlock36Block49Block141Stack0 := self.
    recoveredBlock36Block49Block141PC := 148.
    recoveredBlock36Block49Block141Done := false.
    [recoveredBlock36Block49Block141Done not] whileTrue: [
        recoveredBlock36Block49Block141Step := recoveredBlock36Block49Block141PC.
        recoveredBlock36Block49Block141Step = 148 ifTrue: [
            recoveredBlock36Block49Block141Stack1 := nil.
            recoveredBlock36Block49Block141PC := 149.
        ].
        recoveredBlock36Block49Block141Step = 149 ifTrue: [
            recoveredBlock36Block49Block141Stack2 := recoveredBlock36Block49Block141Arg1.
            recoveredBlock36Block49Block141PC := 150.
        ].
        recoveredBlock36Block49Block141Step = 150 ifTrue: [
            (recoveredBlock36Block49Block141Stack2 == nil) ifTrue: [recoveredBlock36Block49Block141PC := 164] ifFalse: [recoveredBlock36Block49Block141PC := 154].
        ].
        recoveredBlock36Block49Block141Step = 154 ifTrue: [
            recoveredBlock36Block49Block141PC := 155.
        ].
        recoveredBlock36Block49Block141Step = 155 ifTrue: [
            recoveredBlock36Block49Block141Stack1 := recoveredLocal2.
            recoveredBlock36Block49Block141PC := 158.
        ].
        recoveredBlock36Block49Block141Step = 158 ifTrue: [
            recoveredBlock36Block49Block141Stack2 := self.
            recoveredBlock36Block49Block141PC := 159.
        ].
        recoveredBlock36Block49Block141Step = 159 ifTrue: [
            recoveredBlock36Block49Block141Stack3 := recoveredBlock36Block49Block141Arg1.
            recoveredBlock36Block49Block141PC := 160.
        ].
        recoveredBlock36Block49Block141Step = 160 ifTrue: [
            recoveredBlock36Block49Block141Stack2 := (recoveredBlock36Block49Block141Stack2) usedFormulaNamesForImplementation: (recoveredBlock36Block49Block141Stack3).
            recoveredBlock36Block49Block141PC := 162.
        ].
        recoveredBlock36Block49Block141Step = 162 ifTrue: [
            recoveredBlock36Block49Block141Stack1 := (recoveredBlock36Block49Block141Stack1) addAll: (recoveredBlock36Block49Block141Stack2).
            recoveredBlock36Block49Block141PC := 164.
        ].
        recoveredBlock36Block49Block141Step = 164 ifTrue: [
            recoveredBlock36Block49Block141Result := recoveredBlock36Block49Block141Stack1.
            recoveredBlock36Block49Block141Done := true.
        ].
    ].
    recoveredBlock36Block49Block141Result
].
            recoveredBlock36Block49PC := 165.
        ].
        recoveredBlock36Block49Step = 165 ifTrue: [
            recoveredBlock36Block49Stack1 := (recoveredBlock36Block49Stack1) do: (recoveredBlock36Block49Stack2).
            recoveredBlock36Block49PC := 167.
        ].
        recoveredBlock36Block49Step = 167 ifTrue: [
            recoveredBlock36Block49Result := recoveredBlock36Block49Stack1.
            recoveredBlock36Block49Done := true.
        ].
    ].
    recoveredBlock36Block49Result
].
    recoveredBlock36Value4 := (recoveredBlock36Value2) do: (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    (recoveredValue8) keysAndValuesDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20508020; bytecode file offset 0xe04944"
!SGProject methodsFor: 'recovered'!
writeXMLModelConfiguration: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) formulasFileOn: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack2 := 'Formulas'.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack1) openComplex: (recoveredBlock16Stack2).
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            (recoveredBlock16Stack1) writeVersionInfo.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) globalFormulas.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack1 := [:block2810ad28Arg1 :block2810ad28Arg2 | 
    | block2810ad28Value0 block2810ad28Value1 block2810ad28Value2 block2810ad28Value3 block2810ad28Value4 |
    block2810ad28Value0 := block2810ad28Arg1.
    block2810ad28Value1 := (block2810ad28Value0) name.
    block2810ad28Value2 := block2810ad28Arg2.
    block2810ad28Value3 := (block2810ad28Value2) name.
    block2810ad28Value4 := (block2810ad28Value1) < (block2810ad28Value3).
    block2810ad28Value4
].
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) asSortedCollection: (recoveredBlock16Stack1).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack1 := [:recoveredBlock16Block52Arg1 | 
    | recoveredBlock16Block52Value0 recoveredBlock16Block52Value1 recoveredBlock16Block52Value2 recoveredBlock16Block52Value3 recoveredBlock16Block52Value4 |
    recoveredBlock16Block52Value0 := recoveredBlock16Arg1.
    (recoveredBlock16Block52Value0) openComplex: ('Formula').
    recoveredBlock16Block52Value1 := recoveredBlock16Block52Arg1.
    recoveredBlock16Block52Value2 := recoveredBlock16Arg1.
    (recoveredBlock16Block52Value1) writeXML: (recoveredBlock16Block52Value2).
    recoveredBlock16Block52Value3 := recoveredBlock16Arg1.
    recoveredBlock16Block52Value4 := (recoveredBlock16Block52Value3) closeComplex.
    recoveredBlock16Block52Value4
].
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            (recoveredBlock16Stack0) do: (recoveredBlock16Stack1).
            recoveredBlock16PC := 79.
        ].
        recoveredBlock16Step = 79 ifTrue: [
            recoveredBlock16Stack0 := recoveredBlock16Arg1.
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) closeComplex.
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack0.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue0) complex: ('FormulasFile') fileRef: (recoveredValue4) type: ('FORMULA') schema: ('formulas.xsd') writerBlock: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (self) implementationTypesFileOn: (recoveredValue7).
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            recoveredBlock101Stack2 := 'ImplementationTypes'.
            recoveredBlock101PC := 113.
        ].
        recoveredBlock101Step = 113 ifTrue: [
            (recoveredBlock101Stack1) openComplex: (recoveredBlock101Stack2).
            recoveredBlock101PC := 115.
        ].
        recoveredBlock101Step = 115 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 118.
        ].
        recoveredBlock101Step = 118 ifTrue: [
            (recoveredBlock101Stack1) writeVersionInfo.
            recoveredBlock101PC := 120.
        ].
        recoveredBlock101Step = 120 ifTrue: [
            recoveredBlock101Stack1 := 'Kli'.
            recoveredBlock101PC := 122.
        ].
        recoveredBlock101Step = 122 ifTrue: [
            recoveredBlock101Stack2 := 'Call_2010403349'.
            recoveredBlock101PC := 124.
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) == (recoveredBlock101Stack2).
            recoveredBlock101PC := 125.
        ].
        recoveredBlock101Step = 125 ifTrue: [
            recoveredBlock101PC := 126.
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) implTypes.
            recoveredBlock101PC := 128.
        ].
        recoveredBlock101Step = 128 ifTrue: [
            recoveredBlock101Stack1 := [:block2810ad4cArg1 :block2810ad4cArg2 | 
    | block2810ad4cValue0 block2810ad4cValue1 block2810ad4cValue2 block2810ad4cValue3 block2810ad4cValue4 |
    block2810ad4cValue0 := block2810ad4cArg1.
    block2810ad4cValue1 := (block2810ad4cValue0) implTypeName.
    block2810ad4cValue2 := block2810ad4cArg2.
    block2810ad4cValue3 := (block2810ad4cValue2) implTypeName.
    block2810ad4cValue4 := (block2810ad4cValue1) < (block2810ad4cValue3).
    block2810ad4cValue4
].
            recoveredBlock101PC := 130.
        ].
        recoveredBlock101Step = 130 ifTrue: [
            recoveredBlock101PC := 142.
        ].
        recoveredBlock101Step = 142 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) asSortedCollection: (recoveredBlock101Stack1).
            recoveredBlock101PC := 144.
        ].
        recoveredBlock101Step = 144 ifTrue: [
            recoveredBlock101Stack1 := [:recoveredBlock101Block144Arg1 | 
    | recoveredBlock101Block144Value0 recoveredBlock101Block144Value1 recoveredBlock101Block144Value2 recoveredBlock101Block144Value3 recoveredBlock101Block144Value4 |
    recoveredBlock101Block144Value0 := recoveredBlock101Arg1.
    (recoveredBlock101Block144Value0) openComplex: ('ImplementationType').
    recoveredBlock101Block144Value1 := recoveredBlock101Block144Arg1.
    recoveredBlock101Block144Value2 := recoveredBlock101Arg1.
    (recoveredBlock101Block144Value1) writeXML: (recoveredBlock101Block144Value2).
    recoveredBlock101Block144Value3 := recoveredBlock101Arg1.
    recoveredBlock101Block144Value4 := (recoveredBlock101Block144Value3) closeComplex.
    recoveredBlock101Block144Value4
].
            recoveredBlock101PC := 169.
        ].
        recoveredBlock101Step = 169 ifTrue: [
            (recoveredBlock101Stack0) do: (recoveredBlock101Stack1).
            recoveredBlock101PC := 171.
        ].
        recoveredBlock101Step = 171 ifTrue: [
            recoveredBlock101Stack0 := recoveredBlock101Arg1.
            recoveredBlock101PC := 174.
        ].
        recoveredBlock101Step = 174 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) closeComplex.
            recoveredBlock101PC := 176.
        ].
        recoveredBlock101Step = 176 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack0.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
    (recoveredValue6) complex: ('ImplementationTypesFile') fileRef: (recoveredValue10) type: ('IMPLEMENTATION') schema: ('implementationtypes.xsd') writerBlock: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x205309d4; bytecode file offset 0xe2d2f4"
!SGProject methodsFor: 'recovered'!
continuousTimeProcesses
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810d5ccArg1 :block2810d5ccArg2 | 
    | block2810d5ccValue0 block2810d5ccValue1 block2810d5ccValue2 block2810d5ccValue3 block2810d5ccValue4 |
    block2810d5ccValue0 := block2810d5ccArg1.
    block2810d5ccValue1 := (block2810d5ccValue0) elementName.
    block2810d5ccValue2 := block2810d5ccArg2.
    block2810d5ccValue3 := (block2810d5ccValue2) elementName.
    block2810d5ccValue4 := (block2810d5ccValue1) < (block2810d5ccValue3).
    block2810d5ccValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Call_2009403427'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := super continuousTimeProcesses.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := SGContTimeBlockMethodProcess.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) initMethodName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithName: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) specification.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack3) owner: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := SGContTimeBlockMethodProcess.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) terminateMethodName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) specification.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 :recoveredBlock95Arg2 | 
    | recoveredBlock95Local1 recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Arg1.
            recoveredBlock95PC := 104.
        ].
        recoveredBlock95Step = 104 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) sgClass.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            (recoveredBlock95Stack2 == nil) ifTrue: [recoveredBlock95PC := 142] ifFalse: [recoveredBlock95PC := 110].
        ].
        recoveredBlock95Step = 110 ifTrue: [
            recoveredBlock95PC := 111.
        ].
        recoveredBlock95Step = 111 ifTrue: [
            recoveredBlock95Stack1 := SGContTimeBlockMethodProcess.
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack2 := self.
            recoveredBlock95PC := 114.
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) simulateMethodName.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg2.
            recoveredBlock95PC := 117.
        ].
        recoveredBlock95Step = 117 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) printString.
            recoveredBlock95PC := 119.
        ].
        recoveredBlock95Step = 119 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) , (recoveredBlock95Stack3).
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) createWithName: (recoveredBlock95Stack2).
            recoveredBlock95PC := 123.
        ].
        recoveredBlock95Step = 123 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack3 := self.
            recoveredBlock95PC := 125.
        ].
        recoveredBlock95Step = 125 ifTrue: [
            recoveredBlock95Stack3 := (recoveredBlock95Stack3) specification.
            recoveredBlock95PC := 127.
        ].
        recoveredBlock95Step = 127 ifTrue: [
            (recoveredBlock95Stack2) owner: (recoveredBlock95Stack3).
            recoveredBlock95Stack2 := recoveredBlock95Stack1.
            recoveredBlock95PC := 130.
        ].
        recoveredBlock95Step = 130 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg1.
            recoveredBlock95PC := 131.
        ].
        recoveredBlock95Step = 131 ifTrue: [
            (recoveredBlock95Stack2) relatedCTVariable: (recoveredBlock95Stack3).
            recoveredBlock95PC := 133.
        ].
        recoveredBlock95Step = 133 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack1.
            recoveredBlock95PC := 134.
        ].
        recoveredBlock95Step = 134 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal2.
            recoveredBlock95PC := 137.
        ].
        recoveredBlock95Step = 137 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Local1.
            recoveredBlock95PC := 138.
        ].
        recoveredBlock95Step = 138 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) add: (recoveredBlock95Stack2).
            recoveredBlock95PC := 140.
        ].
        recoveredBlock95Step = 140 ifTrue: [
            recoveredBlock95Stack2 := nil.
            recoveredBlock95PC := 141.
        ].
        recoveredBlock95Step = 141 ifTrue: [
            recoveredBlock95Local1 := recoveredBlock95Stack2.
            recoveredBlock95PC := 142.
        ].
        recoveredBlock95Step = 142 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:recoveredBlock148Arg1 :recoveredBlock148Arg2 | 
    | recoveredBlock148Local1 recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148Stack4 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := nil.
            recoveredBlock148PC := 155.
        ].
        recoveredBlock148Step = 155 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg1.
            recoveredBlock148PC := 156.
        ].
        recoveredBlock148Step = 156 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) sgClass.
            recoveredBlock148PC := 158.
        ].
        recoveredBlock148Step = 158 ifTrue: [
            (recoveredBlock148Stack2 == nil) ifTrue: [recoveredBlock148PC := 194] ifFalse: [recoveredBlock148PC := 162].
        ].
        recoveredBlock148Step = 162 ifTrue: [
            recoveredBlock148PC := 163.
        ].
        recoveredBlock148Step = 163 ifTrue: [
            recoveredBlock148Stack1 := SGContTimeBlockMethodProcess.
            recoveredBlock148PC := 165.
        ].
        recoveredBlock148Step = 165 ifTrue: [
            recoveredBlock148Stack2 := self.
            recoveredBlock148PC := 166.
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) eventMethodName.
            recoveredBlock148PC := 168.
        ].
        recoveredBlock148Step = 168 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Arg2.
            recoveredBlock148PC := 169.
        ].
        recoveredBlock148Step = 169 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) printString.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) , (recoveredBlock148Stack3).
            recoveredBlock148PC := 173.
        ].
        recoveredBlock148Step = 173 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) createWithName: (recoveredBlock148Stack2).
            recoveredBlock148PC := 175.
        ].
        recoveredBlock148Step = 175 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 176.
        ].
        recoveredBlock148Step = 176 ifTrue: [
            recoveredBlock148Stack3 := self.
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            recoveredBlock148Stack3 := (recoveredBlock148Stack3) specification.
            recoveredBlock148PC := 179.
        ].
        recoveredBlock148Step = 179 ifTrue: [
            (recoveredBlock148Stack2) owner: (recoveredBlock148Stack3).
            recoveredBlock148Stack2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 182.
        ].
        recoveredBlock148Step = 182 ifTrue: [
            recoveredBlock148Stack3 := recoveredBlock148Arg1.
            recoveredBlock148PC := 183.
        ].
        recoveredBlock148Step = 183 ifTrue: [
            (recoveredBlock148Stack2) relatedCTVariable: (recoveredBlock148Stack3).
            recoveredBlock148PC := 185.
        ].
        recoveredBlock148Step = 185 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack1.
            recoveredBlock148PC := 186.
        ].
        recoveredBlock148Step = 186 ifTrue: [
            recoveredBlock148Stack1 := recoveredLocal2.
            recoveredBlock148PC := 189.
        ].
        recoveredBlock148Step = 189 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local1.
            recoveredBlock148PC := 190.
        ].
        recoveredBlock148Step = 190 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) add: (recoveredBlock148Stack2).
            recoveredBlock148PC := 192.
        ].
        recoveredBlock148Step = 192 ifTrue: [
            recoveredBlock148Stack2 := nil.
            recoveredBlock148PC := 193.
        ].
        recoveredBlock148Step = 193 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack2.
            recoveredBlock148PC := 194.
        ].
        recoveredBlock148Step = 194 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053abd8; bytecode file offset 0xe374f4"
!SGProject methodsFor: 'recovered'!
internalWriteXMLFiles: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlProjectFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block2810ddd0Arg1 :block2810ddd0Arg2 | 
    | block2810ddd0Value0 block2810ddd0Value1 block2810ddd0Value2 block2810ddd0Value3 |
    block2810ddd0Value0 := block2810ddd0Arg1.
    block2810ddd0Value1 := block2810ddd0Arg2.
    block2810ddd0Value2 := (block2810ddd0Value1) size.
    block2810ddd0Value3 := (block2810ddd0Value0) + (block2810ddd0Value2).
    block2810ddd0Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := '.projectFiles'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'Files'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:recoveredBlock66Arg1 :recoveredBlock66Arg2 | 
    | recoveredBlock66Local1 recoveredBlock66Local2 recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66Stack4 recoveredBlock66Stack5 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := nil.
            recoveredBlock66PC := 73.
        ].
        recoveredBlock66Step = 73 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg2.
            recoveredBlock66PC := 76.
        ].
        recoveredBlock66Step = 76 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) size.
            recoveredBlock66PC := 77.
        ].
        recoveredBlock66Step = 77 ifTrue: [
            recoveredBlock66Stack3 := 0.
            recoveredBlock66PC := 79.
        ].
        recoveredBlock66Step = 79 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) > (recoveredBlock66Stack3).
            recoveredBlock66PC := 80.
        ].
        recoveredBlock66Step = 80 ifTrue: [
            (recoveredBlock66Stack2) ifTrue: [recoveredBlock66PC := 84] ifFalse: [recoveredBlock66PC := 195].
        ].
        recoveredBlock66Step = 84 ifTrue: [
            recoveredBlock66PC := 85.
        ].
        recoveredBlock66Step = 85 ifTrue: [
            recoveredBlock66Stack1 := recoveredLocal1.
            recoveredBlock66PC := 88.
        ].
        recoveredBlock66Step = 88 ifTrue: [
            recoveredBlock66Stack2 := '\'.
            recoveredBlock66PC := 90.
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) , (recoveredBlock66Stack2).
            recoveredBlock66PC := 92.
        ].
        recoveredBlock66Step = 92 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Arg1.
            recoveredBlock66PC := 95.
        ].
        recoveredBlock66Step = 95 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) , (recoveredBlock66Stack2).
            recoveredBlock66PC := 97.
        ].
        recoveredBlock66Step = 97 ifTrue: [
            recoveredBlock66Local2 := recoveredBlock66Stack1.
            recoveredBlock66PC := 100.
        ].
        recoveredBlock66Step = 100 ifTrue: [
            recoveredBlock66Stack1 := CfsDirectoryDescriptor.
            recoveredBlock66PC := 102.
        ].
        recoveredBlock66Step = 102 ifTrue: [
            recoveredBlock66Stack2 := recoveredArg1.
            recoveredBlock66PC := 105.
        ].
        recoveredBlock66Step = 105 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) path.
            recoveredBlock66PC := 107.
        ].
        recoveredBlock66Step = 107 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) pathName.
            recoveredBlock66PC := 109.
        ].
        recoveredBlock66Step = 109 ifTrue: [
            recoveredBlock66Stack3 := recoveredBlock66Local2.
            recoveredBlock66PC := 112.
        ].
        recoveredBlock66Step = 112 ifTrue: [
            recoveredBlock66Stack2 := (recoveredBlock66Stack2) , (recoveredBlock66Stack3).
            recoveredBlock66PC := 114.
        ].
        recoveredBlock66Step = 114 ifTrue: [
            recoveredBlock66Stack3 := 'Failed to create folder '.
            recoveredBlock66PC := 116.
        ].
        recoveredBlock66Step = 116 ifTrue: [
            recoveredBlock66Stack4 := recoveredArg1.
            recoveredBlock66PC := 119.
        ].
        recoveredBlock66Step = 119 ifTrue: [
            recoveredBlock66Stack4 := (recoveredBlock66Stack4) path.
            recoveredBlock66PC := 121.
        ].
        recoveredBlock66Step = 121 ifTrue: [
            recoveredBlock66Stack4 := (recoveredBlock66Stack4) pathName.
            recoveredBlock66PC := 123.
        ].
        recoveredBlock66Step = 123 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) , (recoveredBlock66Stack4).
            recoveredBlock66PC := 125.
        ].
        recoveredBlock66Step = 125 ifTrue: [
            recoveredBlock66Stack4 := recoveredBlock66Local2.
            recoveredBlock66PC := 128.
        ].
        recoveredBlock66Step = 128 ifTrue: [
            recoveredBlock66Stack3 := (recoveredBlock66Stack3) , (recoveredBlock66Stack4).
            recoveredBlock66PC := 130.
        ].
        recoveredBlock66Step = 130 ifTrue: [
            (recoveredBlock66Stack1) mkdirRecursive: (recoveredBlock66Stack2) errorLabel: (recoveredBlock66Stack3).
            recoveredBlock66PC := 132.
        ].
        recoveredBlock66Step = 132 ifTrue: [
            recoveredBlock66Stack1 := Set.
            recoveredBlock66PC := 134.
        ].
        recoveredBlock66Step = 134 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) new.
            recoveredBlock66PC := 136.
        ].
        recoveredBlock66Step = 136 ifTrue: [
            recoveredBlock66Local1 := recoveredBlock66Stack1.
            recoveredBlock66PC := 139.
        ].
        recoveredBlock66Step = 139 ifTrue: [
            recoveredBlock66Stack1 := recoveredArg1.
            recoveredBlock66PC := 142.
        ].
        recoveredBlock66Step = 142 ifTrue: [
            recoveredBlock66Stack2 := 'Target'.
            recoveredBlock66PC := 144.
        ].
        recoveredBlock66Step = 144 ifTrue: [
            (recoveredBlock66Stack1) openComplex: (recoveredBlock66Stack2).
            recoveredBlock66PC := 146.
        ].
        recoveredBlock66Step = 146 ifTrue: [
            recoveredBlock66Stack1 := recoveredArg1.
            recoveredBlock66PC := 149.
        ].
        recoveredBlock66Step = 149 ifTrue: [
            recoveredBlock66Stack2 := 'key'.
            recoveredBlock66PC := 151.
        ].
        recoveredBlock66Step = 151 ifTrue: [
            recoveredBlock66Stack3 := recoveredBlock66Arg1.
            recoveredBlock66PC := 154.
        ].
        recoveredBlock66Step = 154 ifTrue: [
            (recoveredBlock66Stack1) attr: (recoveredBlock66Stack2) nmToken: (recoveredBlock66Stack3).
            recoveredBlock66PC := 156.
        ].
        recoveredBlock66Step = 156 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Arg2.
            recoveredBlock66PC := 159.
        ].
        recoveredBlock66Step = 159 ifTrue: [
            recoveredBlock66Stack2 := [:recoveredBlock66Block159Arg1 | 
    | recoveredBlock66Block159Value0 recoveredBlock66Block159Value1 recoveredBlock66Block159Value2 recoveredBlock66Block159Value3 recoveredBlock66Block159Value4 |
    recoveredBlock66Block159Value0 := recoveredBlock66Block159Arg1.
    recoveredBlock66Block159Value1 := recoveredArg1.
    recoveredBlock66Block159Value2 := recoveredBlock66Local2.
    recoveredBlock66Block159Value3 := recoveredBlock66Local1.
    recoveredBlock66Block159Value4 := (recoveredBlock66Block159Value0) writeXML: (recoveredBlock66Block159Value1) subPath: (recoveredBlock66Block159Value2) usedNames: (recoveredBlock66Block159Value3).
    recoveredBlock66Block159Value4
].
            recoveredBlock66PC := 180.
        ].
        recoveredBlock66Step = 180 ifTrue: [
            (recoveredBlock66Stack1) do: (recoveredBlock66Stack2).
            recoveredBlock66PC := 182.
        ].
        recoveredBlock66Step = 182 ifTrue: [
            recoveredBlock66Stack1 := recoveredArg1.
            recoveredBlock66PC := 185.
        ].
        recoveredBlock66Step = 185 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) closeComplex.
            recoveredBlock66PC := 187.
        ].
        recoveredBlock66Step = 187 ifTrue: [
            recoveredBlock66Stack2 := nil.
            recoveredBlock66PC := 188.
        ].
        recoveredBlock66Step = 188 ifTrue: [
            recoveredBlock66Stack3 := recoveredBlock66Stack2.
            recoveredBlock66PC := 189.
        ].
        recoveredBlock66Step = 189 ifTrue: [
            recoveredBlock66Local2 := recoveredBlock66Stack3.
            recoveredBlock66PC := 192.
        ].
        recoveredBlock66Step = 192 ifTrue: [
            recoveredBlock66Local1 := recoveredBlock66Stack2.
            recoveredBlock66PC := 195.
        ].
        recoveredBlock66Step = 195 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056084c; bytecode file offset 0xe5d184"
!SGProject methodsFor: 'recovered'!
writeXMLOsLogic: recoveredArg1
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
            recoveredStack2 := 'OsLogic'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 227] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block281108b4Arg1 | 
    | block281108b4Stack0 block281108b4Stack1 block281108b4Stack2 block281108b4Stack3 block281108b4PC block281108b4Step block281108b4Done block281108b4Result |
    block281108b4Stack0 := self.
    block281108b4PC := 4.
    block281108b4Done := false.
    [block281108b4Done not] whileTrue: [
        block281108b4Step := block281108b4PC.
        block281108b4Step = 4 ifTrue: [
            block281108b4Stack1 := block281108b4Arg1.
            block281108b4PC := 5.
        ].
        block281108b4Step = 5 ifTrue: [
            block281108b4Stack2 := [:block281108d8Arg1 | 
    nil
].
            block281108b4PC := 7.
        ].
        block281108b4Step = 7 ifTrue: [
            block281108b4PC := 12.
        ].
        block281108b4Step = 12 ifTrue: [
            block281108b4Stack1 := (block281108b4Stack1) getObjectIfUndefined: (block281108b4Stack2).
            block281108b4PC := 14.
        ].
        block281108b4Step = 14 ifTrue: [
            block281108b4Stack1 := (block281108b4Stack1) notNil.
            block281108b4PC := 15.
        ].
        block281108b4Step = 15 ifTrue: [
            block281108b4Result := block281108b4Stack1.
            block281108b4Done := true.
        ].
    ].
    block281108b4Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) associations.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block281108fcArg1 :block281108fcArg2 | 
    | block281108fcStack0 block281108fcStack1 block281108fcStack2 block281108fcStack3 block281108fcStack4 block281108fcStack5 block281108fcPC block281108fcStep block281108fcDone block281108fcResult |
    block281108fcStack0 := self.
    block281108fcPC := 4.
    block281108fcDone := false.
    [block281108fcDone not] whileTrue: [
        block281108fcStep := block281108fcPC.
        block281108fcStep = 4 ifTrue: [
            block281108fcStack1 := true.
            block281108fcPC := 5.
        ].
        block281108fcStep = 5 ifTrue: [
            block281108fcStack2 := block281108fcArg1.
            block281108fcPC := 6.
        ].
        block281108fcStep = 6 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) key.
            block281108fcPC := 8.
        ].
        block281108fcStep = 8 ifTrue: [
            block281108fcStack3 := $..
            block281108fcPC := 12.
        ].
        block281108fcStep = 12 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) upTo: (block281108fcStack3).
            block281108fcPC := 14.
        ].
        block281108fcStep = 14 ifTrue: [
            block281108fcStack3 := block281108fcArg2.
            block281108fcPC := 15.
        ].
        block281108fcStep = 15 ifTrue: [
            block281108fcStack3 := (block281108fcStack3) key.
            block281108fcPC := 17.
        ].
        block281108fcStep = 17 ifTrue: [
            block281108fcStack4 := $..
            block281108fcPC := 20.
        ].
        block281108fcStep = 20 ifTrue: [
            block281108fcStack3 := (block281108fcStack3) upTo: (block281108fcStack4).
            block281108fcPC := 22.
        ].
        block281108fcStep = 22 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) < (block281108fcStack3).
            block281108fcPC := 23.
        ].
        block281108fcStep = 23 ifTrue: [
            (block281108fcStack2) ifTrue: [block281108fcPC := 60] ifFalse: [block281108fcPC := 26].
        ].
        block281108fcStep = 26 ifTrue: [
            block281108fcPC := 27.
        ].
        block281108fcStep = 27 ifTrue: [
            block281108fcStack1 := false.
            block281108fcPC := 28.
        ].
        block281108fcStep = 28 ifTrue: [
            block281108fcStack2 := block281108fcArg1.
            block281108fcPC := 29.
        ].
        block281108fcStep = 29 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) key.
            block281108fcPC := 31.
        ].
        block281108fcStep = 31 ifTrue: [
            block281108fcStack3 := $..
            block281108fcPC := 34.
        ].
        block281108fcStep = 34 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) upTo: (block281108fcStack3).
            block281108fcPC := 36.
        ].
        block281108fcStep = 36 ifTrue: [
            block281108fcStack3 := block281108fcArg2.
            block281108fcPC := 37.
        ].
        block281108fcStep = 37 ifTrue: [
            block281108fcStack3 := (block281108fcStack3) key.
            block281108fcPC := 39.
        ].
        block281108fcStep = 39 ifTrue: [
            block281108fcStack4 := $..
            block281108fcPC := 42.
        ].
        block281108fcStep = 42 ifTrue: [
            block281108fcStack3 := (block281108fcStack3) upTo: (block281108fcStack4).
            block281108fcPC := 44.
        ].
        block281108fcStep = 44 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) = (block281108fcStack3).
            block281108fcPC := 45.
        ].
        block281108fcStep = 45 ifTrue: [
            (block281108fcStack2) ifTrue: [block281108fcPC := 48] ifFalse: [block281108fcPC := 60].
        ].
        block281108fcStep = 48 ifTrue: [
            block281108fcPC := 49.
        ].
        block281108fcStep = 49 ifTrue: [
            block281108fcStack1 := block281108fcArg1.
            block281108fcPC := 50.
        ].
        block281108fcStep = 50 ifTrue: [
            block281108fcStack1 := (block281108fcStack1) value.
            block281108fcPC := 52.
        ].
        block281108fcStep = 52 ifTrue: [
            block281108fcStack1 := (block281108fcStack1) applicationTimeStamp.
            block281108fcPC := 54.
        ].
        block281108fcStep = 54 ifTrue: [
            block281108fcStack2 := block281108fcArg2.
            block281108fcPC := 55.
        ].
        block281108fcStep = 55 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) value.
            block281108fcPC := 57.
        ].
        block281108fcStep = 57 ifTrue: [
            block281108fcStack2 := (block281108fcStack2) applicationTimeStamp.
            block281108fcPC := 59.
        ].
        block281108fcStep = 59 ifTrue: [
            block281108fcStack1 := (block281108fcStack1) < (block281108fcStack2).
            block281108fcPC := 60.
        ].
        block281108fcStep = 60 ifTrue: [
            block281108fcResult := block281108fcStack1.
            block281108fcDone := true.
        ].
    ].
    block281108fcResult
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Local1 recoveredBlock117Local2 recoveredBlock117Local3 recoveredBlock117Stack0 recoveredBlock117Stack1 recoveredBlock117Stack2 recoveredBlock117Stack3 recoveredBlock117Stack4 recoveredBlock117Stack5 recoveredBlock117PC recoveredBlock117Step recoveredBlock117Done recoveredBlock117Result |
    recoveredBlock117Stack0 := self.
    recoveredBlock117PC := 124.
    recoveredBlock117Done := false.
    [recoveredBlock117Done not] whileTrue: [
        recoveredBlock117Step := recoveredBlock117PC.
        recoveredBlock117Step = 124 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 125.
        ].
        recoveredBlock117Step = 125 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) key.
            recoveredBlock117PC := 127.
        ].
        recoveredBlock117Step = 127 ifTrue: [
            recoveredBlock117Local3 := recoveredBlock117Stack1.
            recoveredBlock117PC := 128.
        ].
        recoveredBlock117Step = 128 ifTrue: [
            recoveredBlock117Stack1 := recoveredArg1.
            recoveredBlock117PC := 131.
        ].
        recoveredBlock117Step = 131 ifTrue: [
            recoveredBlock117Stack2 := 'OsEntry'.
            recoveredBlock117PC := 133.
        ].
        recoveredBlock117Step = 133 ifTrue: [
            (recoveredBlock117Stack1) openComplex: (recoveredBlock117Stack2).
            recoveredBlock117PC := 135.
        ].
        recoveredBlock117Step = 135 ifTrue: [
            recoveredBlock117Stack1 := recoveredArg1.
            recoveredBlock117PC := 138.
        ].
        recoveredBlock117Step = 138 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 139.
        ].
        recoveredBlock117Step = 139 ifTrue: [
            recoveredBlock117Stack3 := 'TargetKey'.
            recoveredBlock117PC := 141.
        ].
        recoveredBlock117Step = 141 ifTrue: [
            (recoveredBlock117Stack2) openComplex: (recoveredBlock117Stack3).
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 144.
        ].
        recoveredBlock117Step = 144 ifTrue: [
            recoveredBlock117Stack3 := 'name'.
            recoveredBlock117PC := 146.
        ].
        recoveredBlock117Step = 146 ifTrue: [
            recoveredBlock117Stack4 := recoveredBlock117Local3.
            recoveredBlock117PC := 147.
        ].
        recoveredBlock117Step = 147 ifTrue: [
            (recoveredBlock117Stack2) attr: (recoveredBlock117Stack3) string: (recoveredBlock117Stack4).
            recoveredBlock117PC := 149.
        ].
        recoveredBlock117Step = 149 ifTrue: [
            (recoveredBlock117Stack1) closeComplex.
            recoveredBlock117PC := 151.
        ].
        recoveredBlock117Step = 151 ifTrue: [
            recoveredBlock117Stack1 := 'Kli'.
            recoveredBlock117PC := 153.
        ].
        recoveredBlock117Step = 153 ifTrue: [
            recoveredBlock117Stack2 := 'Call_74790'.
            recoveredBlock117PC := 155.
        ].
        recoveredBlock117Step = 155 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) == (recoveredBlock117Stack2).
            recoveredBlock117PC := 156.
        ].
        recoveredBlock117Step = 156 ifTrue: [
            recoveredBlock117PC := 157.
        ].
        recoveredBlock117Step = 157 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 158.
        ].
        recoveredBlock117Step = 158 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) value.
            recoveredBlock117PC := 160.
        ].
        recoveredBlock117Step = 160 ifTrue: [
            recoveredBlock117Stack2 := [:block28110920Arg1 | 
    nil
].
            recoveredBlock117PC := 162.
        ].
        recoveredBlock117Step = 162 ifTrue: [
            recoveredBlock117PC := 168.
        ].
        recoveredBlock117Step = 168 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) getObjectIfUndefined: (recoveredBlock117Stack2).
            recoveredBlock117PC := 170.
        ].
        recoveredBlock117Step = 170 ifTrue: [
            recoveredBlock117Local2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 171.
        ].
        recoveredBlock117Step = 171 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local2.
            recoveredBlock117PC := 172.
        ].
        recoveredBlock117Step = 172 ifTrue: [
            (recoveredBlock117Stack1 ~~ nil) ifTrue: [recoveredBlock117PC := 192] ifFalse: [recoveredBlock117PC := 176].
        ].
        recoveredBlock117Step = 176 ifTrue: [
            recoveredBlock117Stack1 := recoveredArg1.
            recoveredBlock117PC := 179.
        ].
        recoveredBlock117Step = 179 ifTrue: [
            recoveredBlock117Stack2 := 'OsEntry missing in database for key '.
            recoveredBlock117PC := 181.
        ].
        recoveredBlock117Step = 181 ifTrue: [
            recoveredBlock117Stack3 := recoveredBlock117Local3.
            recoveredBlock117PC := 182.
        ].
        recoveredBlock117Step = 182 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) printString.
            recoveredBlock117PC := 184.
        ].
        recoveredBlock117Step = 184 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) , (recoveredBlock117Stack3).
            recoveredBlock117PC := 186.
        ].
        recoveredBlock117Step = 186 ifTrue: [
            (recoveredBlock117Stack1) wrongAssumption: (recoveredBlock117Stack2).
            recoveredBlock117PC := 188.
        ].
        recoveredBlock117Step = 188 ifTrue: [
            recoveredBlock117PC := 219.
        ].
        recoveredBlock117Step = 192 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local2.
            recoveredBlock117PC := 193.
        ].
        recoveredBlock117Step = 193 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) osConfigSettings.
            recoveredBlock117PC := 195.
        ].
        recoveredBlock117Step = 195 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack1.
            recoveredBlock117PC := 196.
        ].
        recoveredBlock117Step = 196 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local1.
            recoveredBlock117PC := 197.
        ].
        recoveredBlock117Step = 197 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) project.
            recoveredBlock117PC := 199.
        ].
        recoveredBlock117Step = 199 ifTrue: [
            (recoveredBlock117Stack1 ~~ nil) ifTrue: [recoveredBlock117PC := 210] ifFalse: [recoveredBlock117PC := 202].
        ].
        recoveredBlock117Step = 202 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local1.
            recoveredBlock117PC := 203.
        ].
        recoveredBlock117Step = 203 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 204.
        ].
        recoveredBlock117Step = 204 ifTrue: [
            recoveredBlock117Stack3 := self.
            recoveredBlock117PC := 205.
        ].
        recoveredBlock117Step = 205 ifTrue: [
            (recoveredBlock117Stack2) project: (recoveredBlock117Stack3).
            recoveredBlock117PC := 207.
        ].
        recoveredBlock117Step = 207 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Local3.
            recoveredBlock117PC := 208.
        ].
        recoveredBlock117Step = 208 ifTrue: [
            (recoveredBlock117Stack1) target: (recoveredBlock117Stack2).
            recoveredBlock117PC := 210.
        ].
        recoveredBlock117Step = 210 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local2.
            recoveredBlock117PC := 211.
        ].
        recoveredBlock117Step = 211 ifTrue: [
            recoveredBlock117Stack2 := recoveredArg1.
            recoveredBlock117PC := 214.
        ].
        recoveredBlock117Step = 214 ifTrue: [
            recoveredBlock117Stack3 := self.
            recoveredBlock117PC := 215.
        ].
        recoveredBlock117Step = 215 ifTrue: [
            (recoveredBlock117Stack1) writeXML: (recoveredBlock117Stack2) sgClass: (recoveredBlock117Stack3).
            recoveredBlock117PC := 217.
        ].
        recoveredBlock117Step = 217 ifTrue: [
            recoveredBlock117Stack1 := nil.
            recoveredBlock117PC := 218.
        ].
        recoveredBlock117Step = 218 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack1.
            recoveredBlock117PC := 219.
        ].
        recoveredBlock117Step = 219 ifTrue: [
            recoveredBlock117Stack1 := recoveredArg1.
            recoveredBlock117PC := 222.
        ].
        recoveredBlock117Step = 222 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) closeComplex.
            recoveredBlock117PC := 224.
        ].
        recoveredBlock117Step = 224 ifTrue: [
            recoveredBlock117Result := recoveredBlock117Stack1.
            recoveredBlock117Done := true.
        ].
    ].
    recoveredBlock117Result
].
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20564e64; bytecode file offset 0xe61794"
!SGProject methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super minToolVersion: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := #('ES910' 'ERCOSEK/ERCOSEK-43' 'RTE_AUTOSAR_30' 'RTE_AUTOSAR_31' 'RTE_AUTOSAR_302' 'RTE_AUTOSAR_310').
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Call92466'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) keys.
    recoveredBlock35Value2 := [:recoveredBlock35Block45Arg1 | 
    | recoveredBlock35Block45Stack0 recoveredBlock35Block45Stack1 recoveredBlock35Block45Stack2 recoveredBlock35Block45Stack3 recoveredBlock35Block45Stack4 recoveredBlock35Block45Stack5 recoveredBlock35Block45PC recoveredBlock35Block45Step recoveredBlock35Block45Done recoveredBlock35Block45Result |
    recoveredBlock35Block45Stack0 := self.
    recoveredBlock35Block45PC := 52.
    recoveredBlock35Block45Done := false.
    [recoveredBlock35Block45Done not] whileTrue: [
        recoveredBlock35Block45Step := recoveredBlock35Block45PC.
        recoveredBlock35Block45Step = 52 ifTrue: [
            recoveredBlock35Block45Stack1 := nil.
            recoveredBlock35Block45PC := 53.
        ].
        recoveredBlock35Block45Step = 53 ifTrue: [
            recoveredBlock35Block45Stack2 := recoveredLocal3.
            recoveredBlock35Block45PC := 56.
        ].
        recoveredBlock35Block45Step = 56 ifTrue: [
            recoveredBlock35Block45Stack3 := [:recoveredBlock35Block45Block56Arg1 | 
    | recoveredBlock35Block45Block56Value0 recoveredBlock35Block45Block56Value1 recoveredBlock35Block45Block56Value2 |
    recoveredBlock35Block45Block56Value0 := recoveredBlock35Block45Arg1.
    recoveredBlock35Block45Block56Value1 := recoveredBlock35Block45Block56Arg1.
    recoveredBlock35Block45Block56Value2 := (recoveredBlock35Block45Block56Value0) includesSubstring: (recoveredBlock35Block45Block56Value1).
    recoveredBlock35Block45Block56Value2
].
            recoveredBlock35Block45PC := 69.
        ].
        recoveredBlock35Block45Step = 69 ifTrue: [
            recoveredBlock35Block45Stack2 := (recoveredBlock35Block45Stack2) anySatisfy: (recoveredBlock35Block45Stack3).
            recoveredBlock35Block45PC := 71.
        ].
        recoveredBlock35Block45Step = 71 ifTrue: [
            (recoveredBlock35Block45Stack2) ifTrue: [recoveredBlock35Block45PC := 74] ifFalse: [recoveredBlock35Block45PC := 120].
        ].
        recoveredBlock35Block45Step = 74 ifTrue: [
            recoveredBlock35Block45PC := 75.
        ].
        recoveredBlock35Block45Step = 75 ifTrue: [
            recoveredBlock35Block45Stack1 := 'V6.1.0'.
            recoveredBlock35Block45PC := 77.
        ].
        recoveredBlock35Block45Step = 77 ifTrue: [
            recoveredBlock35Block45Stack2 := recoveredLocal1.
            recoveredBlock35Block45PC := 80.
        ].
        recoveredBlock35Block45Step = 80 ifTrue: [
            recoveredBlock35Block45Stack1 := (recoveredBlock35Block45Stack1) > (recoveredBlock35Block45Stack2).
            recoveredBlock35Block45PC := 81.
        ].
        recoveredBlock35Block45Step = 81 ifTrue: [
            (recoveredBlock35Block45Stack1) ifTrue: [recoveredBlock35Block45PC := 84] ifFalse: [recoveredBlock35Block45PC := 109].
        ].
        recoveredBlock35Block45Step = 84 ifTrue: [
            recoveredBlock35Block45Stack1 := SGMonitorStreamDummy.
            recoveredBlock35Block45PC := 86.
        ].
        recoveredBlock35Block45Step = 86 ifTrue: [
            recoveredBlock35Block45Stack1 := (recoveredBlock35Block45Stack1) create.
            recoveredBlock35Block45PC := 88.
        ].
        recoveredBlock35Block45Step = 88 ifTrue: [
            recoveredBlock35Block45Stack2 := 'OS type '.
            recoveredBlock35Block45PC := 90.
        ].
        recoveredBlock35Block45Step = 90 ifTrue: [
            recoveredBlock35Block45Stack3 := recoveredBlock35Block45Arg1.
            recoveredBlock35Block45PC := 93.
        ].
        recoveredBlock35Block45Step = 93 ifTrue: [
            recoveredBlock35Block45Stack3 := (recoveredBlock35Block45Stack3) asString.
            recoveredBlock35Block45PC := 95.
        ].
        recoveredBlock35Block45Step = 95 ifTrue: [
            recoveredBlock35Block45Stack2 := (recoveredBlock35Block45Stack2) , (recoveredBlock35Block45Stack3).
            recoveredBlock35Block45PC := 97.
        ].
        recoveredBlock35Block45Step = 97 ifTrue: [
            recoveredBlock35Block45Stack3 := ' only supported with ASCET V6.1.0 or higher. (%1)'.
            recoveredBlock35Block45PC := 99.
        ].
        recoveredBlock35Block45Step = 99 ifTrue: [
            recoveredBlock35Block45Stack2 := (recoveredBlock35Block45Stack2) , (recoveredBlock35Block45Stack3).
            recoveredBlock35Block45PC := 101.
        ].
        recoveredBlock35Block45Step = 101 ifTrue: [
            recoveredBlock35Block45Stack3 := self.
            recoveredBlock35Block45PC := 102.
        ].
        recoveredBlock35Block45Step = 102 ifTrue: [
            recoveredBlock35Block45Stack4 := nil.
            recoveredBlock35Block45PC := 103.
        ].
        recoveredBlock35Block45Step = 103 ifTrue: [
            recoveredBlock35Block45Stack3 := (recoveredBlock35Block45Stack3) ascetLink: (recoveredBlock35Block45Stack4).
            recoveredBlock35Block45PC := 105.
        ].
        recoveredBlock35Block45Step = 105 ifTrue: [
            recoveredBlock35Block45Stack2 := (recoveredBlock35Block45Stack2) bindWith: (recoveredBlock35Block45Stack3).
            recoveredBlock35Block45PC := 107.
        ].
        recoveredBlock35Block45Step = 107 ifTrue: [
            (recoveredBlock35Block45Stack1) addImportantInfoText: (recoveredBlock35Block45Stack2).
            recoveredBlock35Block45PC := 109.
        ].
        recoveredBlock35Block45Step = 109 ifTrue: [
            recoveredBlock35Block45Stack1 := recoveredLocal2.
            recoveredBlock35Block45PC := 112.
        ].
        recoveredBlock35Block45Step = 112 ifTrue: [
            recoveredBlock35Block45Stack2 := 'V6.1.0'.
            recoveredBlock35Block45PC := 114.
        ].
        recoveredBlock35Block45Step = 114 ifTrue: [
            recoveredBlock35Block45Stack1 := (recoveredBlock35Block45Stack1) max: (recoveredBlock35Block45Stack2).
            recoveredBlock35Block45PC := 116.
        ].
        recoveredBlock35Block45Step = 116 ifTrue: [
            recoveredBlock35Block45Stack2 := recoveredBlock35Block45Stack1.
            recoveredBlock35Block45PC := 117.
        ].
        recoveredBlock35Block45Step = 117 ifTrue: [
            recoveredLocal2 := recoveredBlock35Block45Stack2.
            recoveredBlock35Block45PC := 120.
        ].
        recoveredBlock35Block45Step = 120 ifTrue: [
            recoveredBlock35Block45Result := recoveredBlock35Block45Stack1.
            recoveredBlock35Block45Done := true.
        ].
    ].
    recoveredBlock35Block45Result
].
    recoveredBlock35Value3 := (recoveredBlock35Value1) do: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 |
    recoveredBlock129Value0 := recoveredBlock129Arg1.
    recoveredBlock129Value1 := (recoveredBlock129Value0) implTypes.
    recoveredBlock129Value2 := [:recoveredBlock129Block139Arg1 | 
    | recoveredBlock129Block139Value0 recoveredBlock129Block139Value1 recoveredBlock129Block139Value2 recoveredBlock129Block139Value3 |
    recoveredBlock129Block139Value0 := recoveredBlock129Block139Arg1.
    recoveredBlock129Block139Value1 := (recoveredBlock129Block139Value0) implTypeValue.
    recoveredBlock129Block139Value2 := [:recoveredBlock129Block139Block149Arg1 | 
    | recoveredBlock129Block139Block149Stack0 recoveredBlock129Block139Block149Stack1 recoveredBlock129Block139Block149Stack2 recoveredBlock129Block139Block149Stack3 recoveredBlock129Block139Block149Stack4 recoveredBlock129Block139Block149Stack5 recoveredBlock129Block139Block149PC recoveredBlock129Block139Block149Step recoveredBlock129Block139Block149Done recoveredBlock129Block139Block149Result |
    recoveredBlock129Block139Block149Stack0 := self.
    recoveredBlock129Block139Block149PC := 156.
    recoveredBlock129Block139Block149Done := false.
    [recoveredBlock129Block139Block149Done not] whileTrue: [
        recoveredBlock129Block139Block149Step := recoveredBlock129Block139Block149PC.
        recoveredBlock129Block139Block149Step = 156 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := nil.
            recoveredBlock129Block139Block149PC := 157.
        ].
        recoveredBlock129Block139Block149Step = 157 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := recoveredBlock129Block139Block149Arg1.
            recoveredBlock129Block139Block149PC := 158.
        ].
        recoveredBlock129Block139Block149Step = 158 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := (recoveredBlock129Block139Block149Stack2) isRescaled.
            recoveredBlock129Block139Block149PC := 160.
        ].
        recoveredBlock129Block139Block149Step = 160 ifTrue: [
            (recoveredBlock129Block139Block149Stack2) ifTrue: [recoveredBlock129Block139Block149PC := 164] ifFalse: [recoveredBlock129Block139Block149PC := 199].
        ].
        recoveredBlock129Block139Block149Step = 164 ifTrue: [
            recoveredBlock129Block139Block149PC := 165.
        ].
        recoveredBlock129Block139Block149Step = 165 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := 'V6.2.0'.
            recoveredBlock129Block139Block149PC := 167.
        ].
        recoveredBlock129Block139Block149Step = 167 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := recoveredLocal1.
            recoveredBlock129Block139Block149PC := 170.
        ].
        recoveredBlock129Block139Block149Step = 170 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := (recoveredBlock129Block139Block149Stack1) > (recoveredBlock129Block139Block149Stack2).
            recoveredBlock129Block139Block149PC := 171.
        ].
        recoveredBlock129Block139Block149Step = 171 ifTrue: [
            (recoveredBlock129Block139Block149Stack1) ifTrue: [recoveredBlock129Block139Block149PC := 174] ifFalse: [recoveredBlock129Block139Block149PC := 188].
        ].
        recoveredBlock129Block139Block149Step = 174 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := SGMonitorStreamDummy.
            recoveredBlock129Block139Block149PC := 176.
        ].
        recoveredBlock129Block139Block149Step = 176 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := (recoveredBlock129Block139Block149Stack1) create.
            recoveredBlock129Block139Block149PC := 178.
        ].
        recoveredBlock129Block139Block149Step = 178 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := 'Rescaled Implementation only supported with ASCET V6.2.0 or higher. (%1)'.
            recoveredBlock129Block139Block149PC := 180.
        ].
        recoveredBlock129Block139Block149Step = 180 ifTrue: [
            recoveredBlock129Block139Block149Stack3 := self.
            recoveredBlock129Block139Block149PC := 181.
        ].
        recoveredBlock129Block139Block149Step = 181 ifTrue: [
            recoveredBlock129Block139Block149Stack4 := nil.
            recoveredBlock129Block139Block149PC := 182.
        ].
        recoveredBlock129Block139Block149Step = 182 ifTrue: [
            recoveredBlock129Block139Block149Stack3 := (recoveredBlock129Block139Block149Stack3) ascetLink: (recoveredBlock129Block139Block149Stack4).
            recoveredBlock129Block139Block149PC := 184.
        ].
        recoveredBlock129Block139Block149Step = 184 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := (recoveredBlock129Block139Block149Stack2) bindWith: (recoveredBlock129Block139Block149Stack3).
            recoveredBlock129Block139Block149PC := 186.
        ].
        recoveredBlock129Block139Block149Step = 186 ifTrue: [
            (recoveredBlock129Block139Block149Stack1) addImportantInfoText: (recoveredBlock129Block139Block149Stack2).
            recoveredBlock129Block139Block149PC := 188.
        ].
        recoveredBlock129Block139Block149Step = 188 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := recoveredLocal2.
            recoveredBlock129Block139Block149PC := 191.
        ].
        recoveredBlock129Block139Block149Step = 191 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := 'V6.2.0'.
            recoveredBlock129Block139Block149PC := 193.
        ].
        recoveredBlock129Block139Block149Step = 193 ifTrue: [
            recoveredBlock129Block139Block149Stack1 := (recoveredBlock129Block139Block149Stack1) max: (recoveredBlock129Block139Block149Stack2).
            recoveredBlock129Block139Block149PC := 195.
        ].
        recoveredBlock129Block139Block149Step = 195 ifTrue: [
            recoveredBlock129Block139Block149Stack2 := recoveredBlock129Block139Block149Stack1.
            recoveredBlock129Block139Block149PC := 196.
        ].
        recoveredBlock129Block139Block149Step = 196 ifTrue: [
            recoveredLocal2 := recoveredBlock129Block139Block149Stack2.
            recoveredBlock129Block139Block149PC := 199.
        ].
        recoveredBlock129Block139Block149Step = 199 ifTrue: [
            recoveredBlock129Block139Block149Result := recoveredBlock129Block139Block149Stack1.
            recoveredBlock129Block139Block149Done := true.
        ].
    ].
    recoveredBlock129Block139Block149Result
].
    recoveredBlock129Block139Value3 := (recoveredBlock129Block139Value1) ifNotNil: (recoveredBlock129Block139Value2).
    recoveredBlock129Block139Value3
].
    recoveredBlock129Value3 := (recoveredBlock129Value1) do: (recoveredBlock129Value2).
    recoveredBlock129Value3
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := 'V6.4.0'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsMessageOfComplexType.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := 'V6.4.0'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058d7ec; bytecode file offset 0xe8a160"
!SGProject methodsFor: 'recovered'!
writeXMLProject: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) publicSpecifications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Invalid size %1 of ProjectSpecification for Project'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrongAssumption: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'Project'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) writeVersionInfo.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) publicSpecifications.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildConfigKey.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'buildConfigKey'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'ImplementationConfiguration'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'implementationSetName'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultOrCreateImplementation.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'implementationSetOID'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultOrCreateImplementation.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'DataConfiguration'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 'dataSetName'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultOrCreateData.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'dataSetOID'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultOrCreateData.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) writeXMLOsLogic: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'ModelConfiguration'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) writeXMLModelConfiguration: (recoveredStack1) baseName: (recoveredStack2) xmlExt: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) writeXMLEHOOKSConfiguration: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'BuildConfiguration'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'buildConfigKey'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) writeXMLConfig: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'SimulationConfiguration'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) writeXMLSimulationConfig: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := 'HiddenMessageTypes'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) writeXMLHiddenMessageTypes: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := 'IgnoredMessageTypes'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) writeXMLIgnoredMessageTypes: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 'XMLExport'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := 'PromotedToErrorMessageTypes'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) writeXMLPromotedToErrorMessageTypes: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := 'PromotedToWarningMessageTypes'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) writeXMLPromotedToWarningMessageTypes: (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := 'TransferOptions'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) writeXMLExpPrjTransInfo: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) internalWriteXMLFiles: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058f438; bytecode file offset 0xe8bd60"
!SGProject methodsFor: 'recovered'!
iniEHooksConfigQuiet: recoveredArg1 asdSpecificationFile: recoveredArg2 migrate: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigurationFile.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) generatorSettings.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigurationFile.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) asV621Filename.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 135] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) generatorSettings.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigurationFile.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := ASDEHooksConfig.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) askForEHooksConfigFileSearch: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := ASDEHooksConfig.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptForEHooksConfigurationFilePath: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) asFilename.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 273].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 273].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := ASDEHooksConfig.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) askForConfigFileLoad: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Local1 recoveredBlock183Stack0 recoveredBlock183Stack1 recoveredBlock183Stack2 recoveredBlock183Stack3 recoveredBlock183Stack4 recoveredBlock183PC recoveredBlock183Step recoveredBlock183Done recoveredBlock183Result |
    recoveredBlock183Stack0 := self.
    recoveredBlock183PC := 190.
    recoveredBlock183Done := false.
    [recoveredBlock183Done not] whileTrue: [
        recoveredBlock183Step := recoveredBlock183PC.
        recoveredBlock183Step = 190 ifTrue: [
            recoveredBlock183Stack1 := ASDEHooksConfig.
            recoveredBlock183PC := 192.
        ].
        recoveredBlock183Step = 192 ifTrue: [
            recoveredBlock183Stack2 := self.
            recoveredBlock183PC := 193.
        ].
        recoveredBlock183Step = 193 ifTrue: [
            recoveredBlock183Stack3 := recoveredLocal4.
            recoveredBlock183PC := 196.
        ].
        recoveredBlock183Step = 196 ifTrue: [
            recoveredBlock183Stack1 := (recoveredBlock183Stack1) createForProject: (recoveredBlock183Stack2) configFile: (recoveredBlock183Stack3).
            recoveredBlock183PC := 198.
        ].
        recoveredBlock183Step = 198 ifTrue: [
            recoveredLocal5 := recoveredBlock183Stack1.
            recoveredBlock183PC := 201.
        ].
        recoveredBlock183Step = 201 ifTrue: [
            recoveredBlock183Stack1 := recoveredLocal5.
            recoveredBlock183PC := 204.
        ].
        recoveredBlock183Step = 204 ifTrue: [
            recoveredBlock183Stack2 := recoveredArg2.
            recoveredBlock183PC := 207.
        ].
        recoveredBlock183Step = 207 ifTrue: [
            recoveredBlock183Stack1 := (recoveredBlock183Stack1) readEHooksAscetSpecificationFromFile: (recoveredBlock183Stack2).
            recoveredBlock183PC := 209.
        ].
        recoveredBlock183Step = 209 ifTrue: [
            recoveredBlock183Local1 := recoveredBlock183Stack1.
            recoveredBlock183PC := 210.
        ].
        recoveredBlock183Step = 210 ifTrue: [
            (recoveredBlock183Stack0) modified.
            recoveredBlock183PC := 212.
        ].
        recoveredBlock183Step = 212 ifTrue: [
            recoveredBlock183Stack0 := self.
            recoveredBlock183PC := 213.
        ].
        recoveredBlock183Step = 213 ifTrue: [
            (recoveredBlock183Stack0) scmModified.
            recoveredBlock183PC := 215.
        ].
        recoveredBlock183Step = 215 ifTrue: [
            recoveredBlock183Stack0 := recoveredLocal3.
            recoveredBlock183PC := 218.
        ].
        recoveredBlock183Step = 218 ifTrue: [
            (recoveredBlock183Stack0) ifTrue: [recoveredBlock183PC := 222] ifFalse: [recoveredBlock183PC := 233].
        ].
        recoveredBlock183Step = 222 ifTrue: [
            recoveredBlock183Stack0 := recoveredBlock183Local1.
            recoveredBlock183PC := 223.
        ].
        recoveredBlock183Step = 223 ifTrue: [
            (recoveredBlock183Stack0) ifTrue: [recoveredBlock183PC := 226] ifFalse: [recoveredBlock183PC := 233].
        ].
        recoveredBlock183Step = 226 ifTrue: [
            recoveredBlock183Stack0 := CfsFileDescriptor.
            recoveredBlock183PC := 228.
        ].
        recoveredBlock183Step = 228 ifTrue: [
            recoveredBlock183Stack1 := recoveredArg2.
            recoveredBlock183PC := 231.
        ].
        recoveredBlock183Step = 231 ifTrue: [
            (recoveredBlock183Stack0) remove: (recoveredBlock183Stack1).
            recoveredBlock183PC := 233.
        ].
        recoveredBlock183Step = 233 ifTrue: [
            recoveredBlock183Stack0 := recoveredArg3.
            recoveredBlock183PC := 236.
        ].
        recoveredBlock183Step = 236 ifTrue: [
            (recoveredBlock183Stack0) ifTrue: [recoveredBlock183PC := 240] ifFalse: [recoveredBlock183PC := 269].
        ].
        recoveredBlock183Step = 240 ifTrue: [
            recoveredBlock183Stack0 := self.
            recoveredBlock183PC := 241.
        ].
        recoveredBlock183Step = 241 ifTrue: [
            recoveredBlock183Stack0 := (recoveredBlock183Stack0) generatorSettings.
            recoveredBlock183PC := 242.
        ].
        recoveredBlock183Step = 242 ifTrue: [
            recoveredBlock183Stack1 := [:block281146dcArg1 | 
    | block281146dcStack0 block281146dcStack1 block281146dcStack2 block281146dcStack3 block281146dcPC block281146dcStep block281146dcDone block281146dcResult |
    block281146dcStack0 := self.
    block281146dcPC := 4.
    block281146dcDone := false.
    [block281146dcDone not] whileTrue: [
        block281146dcStep := block281146dcPC.
        block281146dcStep = 4 ifTrue: [
            block281146dcStack1 := nil.
            block281146dcPC := 5.
        ].
        block281146dcStep = 5 ifTrue: [
            block281146dcStack2 := block281146dcArg1.
            block281146dcPC := 6.
        ].
        block281146dcStep = 6 ifTrue: [
            block281146dcStack2 := (block281146dcStack2) isPathObjectBasedController.
            block281146dcPC := 8.
        ].
        block281146dcStep = 8 ifTrue: [
            (block281146dcStack2) ifTrue: [block281146dcPC := 12] ifFalse: [block281146dcPC := 22].
        ].
        block281146dcStep = 12 ifTrue: [
            block281146dcStack2 := block281146dcArg1.
            block281146dcPC := 13.
        ].
        block281146dcStep = 13 ifTrue: [
            block281146dcStack2 := (block281146dcStack2) isEHooksImplementationOverride.
            block281146dcPC := 15.
        ].
        block281146dcStep = 15 ifTrue: [
            (block281146dcStack2) ifTrue: [block281146dcPC := 18] ifFalse: [block281146dcPC := 22].
        ].
        block281146dcStep = 18 ifTrue: [
            block281146dcPC := 19.
        ].
        block281146dcStep = 19 ifTrue: [
            block281146dcStack1 := block281146dcArg1.
            block281146dcPC := 20.
        ].
        block281146dcStep = 20 ifTrue: [
            block281146dcStack1 := (block281146dcStack1) setPathPhysicalController.
            block281146dcPC := 22.
        ].
        block281146dcStep = 22 ifTrue: [
            block281146dcResult := block281146dcStack1.
            block281146dcDone := true.
        ].
    ].
    block281146dcResult
].
            recoveredBlock183PC := 244.
        ].
        recoveredBlock183Step = 244 ifTrue: [
            recoveredBlock183PC := 267.
        ].
        recoveredBlock183Step = 267 ifTrue: [
            (recoveredBlock183Stack0) ifNotNil: (recoveredBlock183Stack1).
            recoveredBlock183PC := 269.
        ].
        recoveredBlock183Step = 269 ifTrue: [
            recoveredBlock183Stack0 := true.
            recoveredBlock183PC := 270.
        ].
        recoveredBlock183Step = 270 ifTrue: [
            ^recoveredBlock183Stack0
        ].
    ].
    recoveredBlock183Result
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f48b8; bytecode file offset 0xef11e0"
!SGProject methodsFor: 'recovered'!
initEHooksConfigQuiet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [
    ^true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEHooksProjectFile.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Local3 recoveredBlock24Local4 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asFilename.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack3.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) notEmpty.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 46] ifFalse: [recoveredBlock24PC := 413].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := CfsStat.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) exists: (recoveredBlock24Stack2).
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 145] ifFalse: [recoveredBlock24PC := 58].
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) asV621Filename.
            recoveredBlock24PC := 63.
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Stack1 := CfsStat.
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) exists: (recoveredBlock24Stack2).
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 76] ifFalse: [recoveredBlock24PC := 86].
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack1.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 92] ifFalse: [recoveredBlock24PC := 100].
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 96.
        ].
        recoveredBlock24Step = 96 ifTrue: [
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            recoveredBlock24Stack1 := ASDEHooksConfig.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) askForConfigFileSearch: (recoveredBlock24Stack2).
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 113.
        ].
        recoveredBlock24Step = 113 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 116] ifFalse: [recoveredBlock24PC := 132].
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24Stack1 := ASDEHooksConfig.
            recoveredBlock24PC := 118.
        ].
        recoveredBlock24Step = 118 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 121.
        ].
        recoveredBlock24Step = 121 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) promptForEHooksAscetSpecificationFilePath: (recoveredBlock24Stack2).
            recoveredBlock24PC := 123.
        ].
        recoveredBlock24Step = 123 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 124.
        ].
        recoveredBlock24Step = 124 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack2.
            recoveredBlock24PC := 127.
        ].
        recoveredBlock24Step = 127 ifTrue: [
            (recoveredBlock24Stack1) asFilename.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 132 ifTrue: [
            recoveredBlock24Stack1 := ''.
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack1.
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 137 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 138.
        ].
        recoveredBlock24Step = 138 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 139.
        ].
        recoveredBlock24Step = 139 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 142.
        ].
        recoveredBlock24Step = 142 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 145.
        ].
        recoveredBlock24Step = 145 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 146.
        ].
        recoveredBlock24Step = 146 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 149.
        ].
        recoveredBlock24Step = 149 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) notEmpty.
            recoveredBlock24PC := 151.
        ].
        recoveredBlock24Step = 151 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 154] ifFalse: [recoveredBlock24PC := 413].
        ].
        recoveredBlock24Step = 154 ifTrue: [
            recoveredBlock24Stack2 := CfsStat.
            recoveredBlock24PC := 156.
        ].
        recoveredBlock24Step = 156 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local4.
            recoveredBlock24PC := 159.
        ].
        recoveredBlock24Step = 159 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) exists: (recoveredBlock24Stack3).
            recoveredBlock24PC := 161.
        ].
        recoveredBlock24Step = 161 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 164] ifFalse: [recoveredBlock24PC := 413].
        ].
        recoveredBlock24Step = 164 ifTrue: [
            recoveredBlock24PC := 165.
        ].
        recoveredBlock24Step = 165 ifTrue: [
            recoveredBlock24Stack1 := CfsStat.
            recoveredBlock24PC := 167.
        ].
        recoveredBlock24Step = 167 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 168.
        ].
        recoveredBlock24Step = 168 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generatorSettings.
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) eHooksConfigurationFile.
            recoveredBlock24PC := 172.
        ].
        recoveredBlock24Step = 172 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack3.
            recoveredBlock24PC := 176.
        ].
        recoveredBlock24Step = 176 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) exists: (recoveredBlock24Stack2).
            recoveredBlock24PC := 178.
        ].
        recoveredBlock24Step = 178 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 291] ifFalse: [recoveredBlock24PC := 182].
        ].
        recoveredBlock24Step = 182 ifTrue: [
            recoveredBlock24Stack1 := CfsStat.
            recoveredBlock24PC := 184.
        ].
        recoveredBlock24Step = 184 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 187.
        ].
        recoveredBlock24Step = 187 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) pathName.
            recoveredBlock24PC := 189.
        ].
        recoveredBlock24Step = 189 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asPathname.
            recoveredBlock24PC := 191.
        ].
        recoveredBlock24Step = 191 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local2.
            recoveredBlock24PC := 194.
        ].
        recoveredBlock24Step = 194 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) fileName.
            recoveredBlock24PC := 196.
        ].
        recoveredBlock24Step = 196 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) , (recoveredBlock24Stack3).
            recoveredBlock24PC := 198.
        ].
        recoveredBlock24Step = 198 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 199.
        ].
        recoveredBlock24Step = 199 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack3.
            recoveredBlock24PC := 202.
        ].
        recoveredBlock24Step = 202 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) exists: (recoveredBlock24Stack2).
            recoveredBlock24PC := 204.
        ].
        recoveredBlock24Step = 204 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 291] ifFalse: [recoveredBlock24PC := 208].
        ].
        recoveredBlock24Step = 208 ifTrue: [
            recoveredBlock24Stack1 := CfsStat.
            recoveredBlock24PC := 210.
        ].
        recoveredBlock24Step = 210 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 211.
        ].
        recoveredBlock24Step = 211 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) generatorSettings.
            recoveredBlock24PC := 213.
        ].
        recoveredBlock24Step = 213 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) eHooksConfigurationFile.
            recoveredBlock24PC := 215.
        ].
        recoveredBlock24Step = 215 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asV621Filename.
            recoveredBlock24PC := 217.
        ].
        recoveredBlock24Step = 217 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 218.
        ].
        recoveredBlock24Step = 218 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack3.
            recoveredBlock24PC := 221.
        ].
        recoveredBlock24Step = 221 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) exists: (recoveredBlock24Stack2).
            recoveredBlock24PC := 223.
        ].
        recoveredBlock24Step = 223 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 291] ifFalse: [recoveredBlock24PC := 226].
        ].
        recoveredBlock24Step = 226 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 227.
        ].
        recoveredBlock24Step = 227 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) generatorSettings.
            recoveredBlock24PC := 229.
        ].
        recoveredBlock24Step = 229 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) eHooksConfigurationFile.
            recoveredBlock24PC := 231.
        ].
        recoveredBlock24Step = 231 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 234.
        ].
        recoveredBlock24Step = 234 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 237.
        ].
        recoveredBlock24Step = 237 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 240] ifFalse: [recoveredBlock24PC := 248].
        ].
        recoveredBlock24Step = 240 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 241.
        ].
        recoveredBlock24Step = 241 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 244.
        ].
        recoveredBlock24Step = 244 ifTrue: [
            recoveredBlock24PC := 258.
        ].
        recoveredBlock24Step = 248 ifTrue: [
            recoveredBlock24Stack1 := ASDEHooksConfig.
            recoveredBlock24PC := 250.
        ].
        recoveredBlock24Step = 250 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 253.
        ].
        recoveredBlock24Step = 253 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) askForEHooksConfigFileSearch: (recoveredBlock24Stack2).
            recoveredBlock24PC := 255.
        ].
        recoveredBlock24Step = 255 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 258.
        ].
        recoveredBlock24Step = 258 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 261.
        ].
        recoveredBlock24Step = 261 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 264] ifFalse: [recoveredBlock24PC := 282].
        ].
        recoveredBlock24Step = 264 ifTrue: [
            recoveredBlock24Stack1 := ASDEHooksConfig.
            recoveredBlock24PC := 266.
        ].
        recoveredBlock24Step = 266 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 269.
        ].
        recoveredBlock24Step = 269 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) asFilename.
            recoveredBlock24PC := 271.
        ].
        recoveredBlock24Step = 271 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) promptForEHooksConfigurationFilePath: (recoveredBlock24Stack2).
            recoveredBlock24PC := 273.
        ].
        recoveredBlock24Step = 273 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 274.
        ].
        recoveredBlock24Step = 274 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 277.
        ].
        recoveredBlock24Step = 277 ifTrue: [
            (recoveredBlock24Stack1) asFilename.
            recoveredBlock24PC := 279.
        ].
        recoveredBlock24Step = 279 ifTrue: [
            recoveredBlock24PC := 287.
        ].
        recoveredBlock24Step = 282 ifTrue: [
            recoveredBlock24Stack1 := ''.
            recoveredBlock24PC := 284.
        ].
        recoveredBlock24Step = 284 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 287.
        ].
        recoveredBlock24Step = 287 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 288.
        ].
        recoveredBlock24Step = 288 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 291.
        ].
        recoveredBlock24Step = 291 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 292.
        ].
        recoveredBlock24Step = 292 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 295.
        ].
        recoveredBlock24Step = 295 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) notEmpty.
            recoveredBlock24PC := 297.
        ].
        recoveredBlock24Step = 297 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 300] ifFalse: [recoveredBlock24PC := 409].
        ].
        recoveredBlock24Step = 300 ifTrue: [
            recoveredBlock24Stack2 := CfsStat.
            recoveredBlock24PC := 302.
        ].
        recoveredBlock24Step = 302 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local2.
            recoveredBlock24PC := 305.
        ].
        recoveredBlock24Step = 305 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) exists: (recoveredBlock24Stack3).
            recoveredBlock24PC := 307.
        ].
        recoveredBlock24Step = 307 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 310] ifFalse: [recoveredBlock24PC := 409].
        ].
        recoveredBlock24Step = 310 ifTrue: [
            recoveredBlock24PC := 311.
        ].
        recoveredBlock24Step = 311 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg1.
            recoveredBlock24PC := 314.
        ].
        recoveredBlock24Step = 314 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 318] ifFalse: [recoveredBlock24PC := 326].
        ].
        recoveredBlock24Step = 318 ifTrue: [
            recoveredBlock24Stack1 := false.
            recoveredBlock24PC := 319.
        ].
        recoveredBlock24Step = 319 ifTrue: [
            recoveredBlock24Local3 := recoveredBlock24Stack1.
            recoveredBlock24PC := 322.
        ].
        recoveredBlock24Step = 322 ifTrue: [
            recoveredBlock24PC := 336.
        ].
        recoveredBlock24Step = 326 ifTrue: [
            recoveredBlock24Stack1 := ASDEHooksConfig.
            recoveredBlock24PC := 328.
        ].
        recoveredBlock24Step = 328 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 331.
        ].
        recoveredBlock24Step = 331 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) askForConfigFileLoad: (recoveredBlock24Stack2).
            recoveredBlock24PC := 333.
        ].
        recoveredBlock24Step = 333 ifTrue: [
            recoveredBlock24Local3 := recoveredBlock24Stack1.
            recoveredBlock24PC := 336.
        ].
        recoveredBlock24Step = 336 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local3.
            recoveredBlock24PC := 339.
        ].
        recoveredBlock24Step = 339 ifTrue: [
            recoveredBlock24Stack2 := [:recoveredBlock24Block339Arg1 | 
    | recoveredBlock24Block339Stack0 recoveredBlock24Block339Stack1 recoveredBlock24Block339Stack2 recoveredBlock24Block339Stack3 recoveredBlock24Block339Stack4 recoveredBlock24Block339Stack5 recoveredBlock24Block339PC recoveredBlock24Block339Step recoveredBlock24Block339Done recoveredBlock24Block339Result |
    recoveredBlock24Block339Stack0 := self.
    recoveredBlock24Block339PC := 346.
    recoveredBlock24Block339Done := false.
    [recoveredBlock24Block339Done not] whileTrue: [
        recoveredBlock24Block339Step := recoveredBlock24Block339PC.
        recoveredBlock24Block339Step = 346 ifTrue: [
            recoveredBlock24Block339Stack1 := nil.
            recoveredBlock24Block339PC := 347.
        ].
        recoveredBlock24Block339Step = 347 ifTrue: [
            recoveredBlock24Block339Stack2 := self.
            recoveredBlock24Block339PC := 348.
        ].
        recoveredBlock24Block339Step = 348 ifTrue: [
            recoveredBlock24Block339Stack3 := recoveredBlock24Local2.
            recoveredBlock24Block339PC := 351.
        ].
        recoveredBlock24Block339Step = 351 ifTrue: [
            recoveredBlock24Block339Stack4 := recoveredBlock24Local4.
            recoveredBlock24Block339PC := 354.
        ].
        recoveredBlock24Block339Step = 354 ifTrue: [
            recoveredBlock24Block339Stack2 := (recoveredBlock24Block339Stack2) iniEHooksConfigFile: (recoveredBlock24Block339Stack3) specificationFile: (recoveredBlock24Block339Stack4).
            recoveredBlock24Block339PC := 356.
        ].
        recoveredBlock24Block339Step = 356 ifTrue: [
            (recoveredBlock24Block339Stack2) ifTrue: [recoveredBlock24Block339PC := 360] ifFalse: [recoveredBlock24Block339PC := 407].
        ].
        recoveredBlock24Block339Step = 360 ifTrue: [
            recoveredBlock24Block339PC := 361.
        ].
        recoveredBlock24Block339Step = 361 ifTrue: [
            recoveredBlock24Block339Stack1 := recoveredBlock24Local3.
            recoveredBlock24Block339PC := 364.
        ].
        recoveredBlock24Block339Step = 364 ifTrue: [
            (recoveredBlock24Block339Stack1) ifTrue: [recoveredBlock24Block339PC := 368] ifFalse: [recoveredBlock24Block339PC := 375].
        ].
        recoveredBlock24Block339Step = 368 ifTrue: [
            recoveredBlock24Block339Stack1 := CfsFileDescriptor.
            recoveredBlock24Block339PC := 370.
        ].
        recoveredBlock24Block339Step = 370 ifTrue: [
            recoveredBlock24Block339Stack2 := recoveredBlock24Local4.
            recoveredBlock24Block339PC := 373.
        ].
        recoveredBlock24Block339Step = 373 ifTrue: [
            (recoveredBlock24Block339Stack1) remove: (recoveredBlock24Block339Stack2).
            recoveredBlock24Block339PC := 375.
        ].
        recoveredBlock24Block339Step = 375 ifTrue: [
            recoveredBlock24Block339Stack1 := self.
            recoveredBlock24Block339PC := 376.
        ].
        recoveredBlock24Block339Step = 376 ifTrue: [
            recoveredBlock24Block339Stack1 := (recoveredBlock24Block339Stack1) generatorSettings.
            recoveredBlock24Block339PC := 378.
        ].
        recoveredBlock24Block339Step = 378 ifTrue: [
            recoveredBlock24Block339Stack2 := [:block2811bb70Arg1 | 
    | block2811bb70Stack0 block2811bb70Stack1 block2811bb70Stack2 block2811bb70Stack3 block2811bb70PC block2811bb70Step block2811bb70Done block2811bb70Result |
    block2811bb70Stack0 := self.
    block2811bb70PC := 4.
    block2811bb70Done := false.
    [block2811bb70Done not] whileTrue: [
        block2811bb70Step := block2811bb70PC.
        block2811bb70Step = 4 ifTrue: [
            block2811bb70Stack1 := nil.
            block2811bb70PC := 5.
        ].
        block2811bb70Step = 5 ifTrue: [
            block2811bb70Stack2 := block2811bb70Arg1.
            block2811bb70PC := 6.
        ].
        block2811bb70Step = 6 ifTrue: [
            block2811bb70Stack2 := (block2811bb70Stack2) isPathObjectBasedController.
            block2811bb70PC := 8.
        ].
        block2811bb70Step = 8 ifTrue: [
            (block2811bb70Stack2) ifTrue: [block2811bb70PC := 12] ifFalse: [block2811bb70PC := 22].
        ].
        block2811bb70Step = 12 ifTrue: [
            block2811bb70Stack2 := block2811bb70Arg1.
            block2811bb70PC := 13.
        ].
        block2811bb70Step = 13 ifTrue: [
            block2811bb70Stack2 := (block2811bb70Stack2) isEHooksImplementationOverride.
            block2811bb70PC := 15.
        ].
        block2811bb70Step = 15 ifTrue: [
            (block2811bb70Stack2) ifTrue: [block2811bb70PC := 18] ifFalse: [block2811bb70PC := 22].
        ].
        block2811bb70Step = 18 ifTrue: [
            block2811bb70PC := 19.
        ].
        block2811bb70Step = 19 ifTrue: [
            block2811bb70Stack1 := block2811bb70Arg1.
            block2811bb70PC := 20.
        ].
        block2811bb70Step = 20 ifTrue: [
            block2811bb70Stack1 := (block2811bb70Stack1) setPathPhysicalController.
            block2811bb70PC := 22.
        ].
        block2811bb70Step = 22 ifTrue: [
            block2811bb70Result := block2811bb70Stack1.
            block2811bb70Done := true.
        ].
    ].
    block2811bb70Result
].
            recoveredBlock24Block339PC := 380.
        ].
        recoveredBlock24Block339Step = 380 ifTrue: [
            recoveredBlock24Block339PC := 403.
        ].
        recoveredBlock24Block339Step = 403 ifTrue: [
            (recoveredBlock24Block339Stack1) ifNotNil: (recoveredBlock24Block339Stack2).
            recoveredBlock24Block339PC := 405.
        ].
        recoveredBlock24Block339Step = 405 ifTrue: [
            recoveredBlock24Block339Stack1 := true.
            recoveredBlock24Block339PC := 406.
        ].
        recoveredBlock24Block339Step = 406 ifTrue: [
            ^recoveredBlock24Block339Stack1
        ].
        recoveredBlock24Block339Step = 407 ifTrue: [
            recoveredBlock24Block339Result := recoveredBlock24Block339Stack1.
            recoveredBlock24Block339Done := true.
        ].
    ].
    recoveredBlock24Block339Result
].
            recoveredBlock24PC := 408.
        ].
        recoveredBlock24Step = 408 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) ifNotNil: (recoveredBlock24Stack2).
            recoveredBlock24PC := 409.
        ].
        recoveredBlock24Step = 409 ifTrue: [
            recoveredBlock24Stack2 := nil.
            recoveredBlock24PC := 410.
        ].
        recoveredBlock24Step = 410 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 413.
        ].
        recoveredBlock24Step = 413 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

