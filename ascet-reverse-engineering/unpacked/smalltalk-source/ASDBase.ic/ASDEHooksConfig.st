"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b18; bytecode file offset 0x8ffcfc"
!ASDEHooksConfig methodsFor: 'recovered'!
deleteConfigFile
    ^self
! !

"ASDBase.ic method 0x200089fc; bytecode file offset 0x908be4"
!ASDEHooksConfig methodsFor: 'recovered'!
getIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bb88; bytecode file offset 0x908be4"
!ASDEHooksConfig methodsFor: 'recovered'!
getBypassFuncs
    | recoveredValue0 |
    recoveredValue0 := (self) bypassFunctions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002f3c4; bytecode file offset 0x934580"
!ASDEHooksConfig methodsFor: 'recovered'!
getExportController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) getExportController.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056858; bytecode file offset 0x9531e4"
!ASDEHooksConfig methodsFor: 'recovered'!
hasProcessReferences: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) instVarProcessReferences.
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200669f4; bytecode file offset 0x963428"
!ASDEHooksConfig methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006785c; bytecode file offset 0x9646f8"
!ASDEHooksConfig methodsFor: 'recovered'!
configFileName
    | recoveredValue0 |
    recoveredValue0 := configFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200679bc; bytecode file offset 0x9646f8"
!ASDEHooksConfig methodsFor: 'recovered'!
ascetConfigFileName
    | recoveredValue0 |
    recoveredValue0 := configFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f08; bytecode file offset 0x966bdc"
!ASDEHooksConfig methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := identifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b014; bytecode file offset 0x967a18"
!ASDEHooksConfig methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 |
    recoveredValue0 := hostAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200814c8; bytecode file offset 0x97e234"
!ASDEHooksConfig methodsFor: 'recovered'!
configFileIsValid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) exists: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200846a8; bytecode file offset 0x981ca4"
!ASDEHooksConfig methodsFor: 'recovered'!
setIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) identifier: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084ccc; bytecode file offset 0x981ca4"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuWriteVarsSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) ecuVarsOutput: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20089ccc; bytecode file offset 0x986668"
!ASDEHooksConfig methodsFor: 'recovered'!
readXmlController
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLEHooksMappingImportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initFor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009503c; bytecode file offset 0x991c58"
!ASDEHooksConfig methodsFor: 'recovered'!
findEcuInputVarNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ecuVarsInput.
    recoveredValue2 := (self) findEcuVarNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009515c; bytecode file offset 0x991c58"
!ASDEHooksConfig methodsFor: 'recovered'!
findEcuOutputVarNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) ecuVarsOutput.
    recoveredValue2 := (self) findEcuVarNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a24bc; bytecode file offset 0x99ee44"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsCopyForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDMappingObject.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) mappingsForType: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) copyMappings: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac0ac; bytecode file offset 0x9a8980"
!ASDEHooksConfig methodsFor: 'recovered'!
exportMappingsIntoFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) exportUtilClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) exportFor: (self) into: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7c64; bytecode file offset 0x9b454c"
!ASDEHooksConfig methodsFor: 'recovered'!
lookupElementOid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDatamodelServiceProvider.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) project.
    recoveredValue3 := (recoveredValue0) lookupElementOid: (recoveredValue1) component: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7c78; bytecode file offset 0x9b454c"
!ASDEHooksConfig methodsFor: 'recovered'!
lookupElementName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDatamodelServiceProvider.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) project.
    recoveredValue3 := (recoveredValue0) lookupElementName: (recoveredValue1) component: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ba9a8; bytecode file offset 0x9b7264"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuVarsOutput: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    ecuVarsOutput := recoveredValue0.
    recoveredValue1 := (self) project.
    (recoveredValue1) modified.
    ^self
! !

"ASDBase.ic method 0x200ba9dc; bytecode file offset 0x9b7298"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuVarsInput: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    ecuVarsInput := recoveredValue0.
    recoveredValue1 := (self) project.
    (recoveredValue1) modified.
    ^self
! !

"ASDBase.ic method 0x200be7cc; bytecode file offset 0x9bb178"
!ASDEHooksConfig methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf7a0; bytecode file offset 0x9bc0b4"
!ASDEHooksConfig methodsFor: 'recovered'!
configFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf89c; bytecode file offset 0x9bd228"
!ASDEHooksConfig methodsFor: 'recovered'!
projectFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0d00; bytecode file offset 0x9bdf14"
!ASDEHooksConfig methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2620; bytecode file offset 0x9bf474"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3014; bytecode file offset 0x9bfde0"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingMessageInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingMessageInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36b0; bytecode file offset 0x9c058c"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingMessageOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingMessageOutput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c492c; bytecode file offset 0x9c16b0"
!ASDEHooksConfig methodsFor: 'recovered'!
bypassFunctions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bypassFunctions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e10; bytecode file offset 0x9c1afc"
!ASDEHooksConfig methodsFor: 'recovered'!
dispatchPoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dispatchPoints := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc33c; bytecode file offset 0x9c8f90"
!ASDEHooksConfig methodsFor: 'recovered'!
mappings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) mappingMessageInput.
    recoveredValue2 := (self) mappingMessageOutput.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dc040; bytecode file offset 0x9d8904"
!ASDEHooksConfig methodsFor: 'recovered'!
infoNumOfMappingsImport: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue2) , (' Mappings imported').
    (recoveredValue0) addImportantInfoText: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e9a50; bytecode file offset 0x9e6310"
!ASDEHooksConfig methodsFor: 'recovered'!
forceAssociationWithProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) project: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) defaultPublicSpec.
    (recoveredValue2) eHooksConfiguration: (self).
    ^self
! !

"ASDBase.ic method 0x200ea168; bytecode file offset 0x9e6a20"
!ASDEHooksConfig methodsFor: 'recovered'!
deleteBypassFuncs: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) deleteBypassFuncsLocal: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ed804; bytecode file offset 0x9ea0c0"
!ASDEHooksConfig methodsFor: 'recovered'!
mapSource: recoveredArg1 toTarget: recoveredArg2 inMapping: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) project.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) mapOnBase: (self) fromSource: (recoveredValue1) toTarget: (recoveredValue2) inMapping: (recoveredValue3) existingMap: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ee24c; bytecode file offset 0x9eab18"
!ASDEHooksConfig methodsFor: 'recovered'!
mapSource: recoveredArg1 toTarget: recoveredArg2 inMapping: recoveredArg3 existingMap: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) project.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) mapOnBase: (self) fromSource: (recoveredValue1) toTarget: (recoveredValue2) inMapping: (recoveredValue3) existingMap: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ee590; bytecode file offset 0x9eae48"
!ASDEHooksConfig methodsFor: 'recovered'!
addBypassFunc
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addBypassFuncLocal.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f76bc; bytecode file offset 0x9f4e38"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuBackupCopyVarsInput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuVarsInput.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4818Arg1 | 
    | block280c4818Value0 block280c4818Value1 |
    block280c4818Value0 := block280c4818Arg1.
    block280c4818Value1 := (block280c4818Value0) isECUBackupCopy.
    block280c4818Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f810c; bytecode file offset 0x9f4e38"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuNoCopyVarsInput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuVarsInput.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5790Arg1 | 
    | block280c5790Value0 block280c5790Value1 |
    block280c5790Value0 := block280c5790Arg1.
    block280c5790Value1 := (block280c5790Value0) isECUBackupCopy.
    block280c5790Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fceec; bytecode file offset 0x9f97b0"
!ASDEHooksConfig methodsFor: 'recovered'!
importMappingsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := MainController.
    recoveredValue4 := (self) importMappingsFrom: (recoveredValue0) toTableWidgets: (recoveredValue2) withoutSendRec: (false) mainController: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fdeb8; bytecode file offset 0x9fa794"
!ASDEHooksConfig methodsFor: 'recovered'!
associateWithProject: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) forceAssociationWithProject: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010c6cc; bytecode file offset 0xa08f94"
!ASDEHooksConfig methodsFor: 'recovered'!
readMappingFromXMLFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDXMLEHooksMappingImportController.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) project.
    (recoveredValue2) initFor: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) importFromFile: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2011664c; bytecode file offset 0xa12f08"
!ASDEHooksConfig methodsFor: 'recovered'!
dispatchPoints
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dispatchPoints.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := dispatchPoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201193a4; bytecode file offset 0xa15c68"
!ASDEHooksConfig methodsFor: 'recovered'!
getProjectSettings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) project.
    recoveredBlock4Value1 := (recoveredBlock4Value0) generatorSettings.
    recoveredBlock4Value1
].
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) exWhenUndefinedKeyOrValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20129dc8; bytecode file offset 0xa26694"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingProcess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingProcess.
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
            mappingProcess := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := mappingProcess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129f6c; bytecode file offset 0xa26878"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingMessageInput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingMessageInput.
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
            mappingMessageInput := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := mappingMessageInput.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a09c; bytecode file offset 0xa269a8"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingMessageOutput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingMessageOutput.
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
            mappingMessageOutput := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := mappingMessageOutput.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a1b0; bytecode file offset 0xa26acc"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuVarsOutput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ecuVarsOutput.
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
            ecuVarsOutput := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ecuVarsOutput.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a3d4; bytecode file offset 0xa26ca0"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuVarsInput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ecuVarsInput.
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
            ecuVarsInput := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ecuVarsInput.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201340e0; bytecode file offset 0xa309ac"
!ASDEHooksConfig methodsFor: 'recovered'!
createTargetObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) targetObjectClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) ecuLabelIconName.
    (recoveredValue3) visualCallBackImageElement: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) displayName: (recoveredValue7).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20134980; bytecode file offset 0xa3126c"
!ASDEHooksConfig methodsFor: 'recovered'!
infoStartedImport: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) class.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) exportLabelNameForMappingType: (recoveredValue2).
    recoveredValue4 := ('Import of ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' started').
    (recoveredValue0) addImportantInfoText: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201349a0; bytecode file offset 0xa3126c"
!ASDEHooksConfig methodsFor: 'recovered'!
infoCompletedImport: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) class.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) exportLabelNameForMappingType: (recoveredValue2).
    recoveredValue4 := ('Import of ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' completed').
    (recoveredValue0) addImportantInfoText: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201378f0; bytecode file offset 0xa341b0"
!ASDEHooksConfig methodsFor: 'recovered'!
allMappingProcessDict
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingProcess.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) allTargetKeyMappingDictFor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20152494; bytecode file offset 0xa4ed54"
!ASDEHooksConfig methodsFor: 'recovered'!
bypassFunctions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := bypassFunctions.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015c8ec; bytecode file offset 0xa591b8"
!ASDEHooksConfig methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) dispatchPoints: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) bypassFunctions: (recoveredValue3).
    recoveredValue4 := super initialize.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20169930; bytecode file offset 0xa66204"
!ASDEHooksConfig methodsFor: 'recovered'!
writeInstanceVariable: recoveredArg1 index: recoveredArg2 ToStream: recoveredArg3
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
            recoveredStack2 := 'project'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super writeInstanceVariable: (recoveredStack2) index: (recoveredStack3) ToStream: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20169a28; bytecode file offset 0xa662f0"
!ASDEHooksConfig methodsFor: 'recovered'!
renameBypassFunc: recoveredArg1 existingFuncs: recoveredArg2 to: recoveredArg3
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
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack4 := [:block280ce7d8Arg1 | 
    | block280ce7d8Value0 block280ce7d8Value1 |
    block280ce7d8Value0 := block280ce7d8Arg1.
    block280ce7d8Value1 := (block280ce7d8Value0) funcNodeName.
    block280ce7d8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) funcNodeName: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016b3ec; bytecode file offset 0xa67cc8"
!ASDEHooksConfig methodsFor: 'recovered'!
allMappingOutputDict
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageOutput.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuVarsOutput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSourceKeyMappingDictFor: (recoveredStack1) ecuVars: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b404; bytecode file offset 0xa67cc8"
!ASDEHooksConfig methodsFor: 'recovered'!
allMappingInputDict
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageInput.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuVarsInput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSourceKeyMappingDictFor: (recoveredStack1) ecuVars: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017be1c; bytecode file offset 0xa786e4"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuReadVarsBackupCopySelection: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) ecuNoCopyVarsInput.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) addAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) ecuVarsInput: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017be50; bytecode file offset 0xa78718"
!ASDEHooksConfig methodsFor: 'recovered'!
ecuReadVarsSelection: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) ecuBackupCopyVarsInput.
    (recoveredValue4) addAll: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) ecuVarsInput: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20187828; bytecode file offset 0xa840f0"
!ASDEHooksConfig methodsFor: 'recovered'!
setElementMappings: recoveredArg1 forType: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsForType: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) mappingsForType: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b66f4; bytecode file offset 0xab2fb8"
!ASDEHooksConfig methodsFor: 'recovered'!
findEcuVarNamed: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) name.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) equals: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201e2cdc; bytecode file offset 0xadf59c"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsAreEmpty
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
            recoveredStack2 := (recoveredStack2) mappingMessageInput.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingMessageInput.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingMessageOutput.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageOutput.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e704c; bytecode file offset 0xae3910"
!ASDEHooksConfig methodsFor: 'recovered'!
addDispatchPoints: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) dispatchPoints.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 25] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) dispatchPoints.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f498c; bytecode file offset 0xaf1258"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsForType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageInput.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageOutput.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20216b18; bytecode file offset 0xb133e0"
!ASDEHooksConfig methodsFor: 'recovered'!
deleteBypassFuncsLocal: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) bypassFunctions.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [
    | recoveredBlock5Block14Value0 |
    recoveredBlock5Block14Value0 := (self) runtimeAssert: (false) additionalInfo: ('EHOOKS: bypass function delete error').
    recoveredBlock5Block14Value0
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) remove: (recoveredBlock5Value1) ifAbsent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20239e88; bytecode file offset 0xb36760"
!ASDEHooksConfig methodsFor: 'recovered'!
addBypassFuncLocal
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'bypass_func'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) bypassFunctions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280dd898Arg1 | 
    | block280dd898Value0 block280dd898Value1 |
    block280dd898Value0 := block280dd898Arg1.
    block280dd898Value1 := (block280dd898Value0) funcNodeName.
    block280dd898Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ASDEHooksBypassFuncNode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2) eHooksConfig: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20251c80; bytecode file offset 0xb4e548"
!ASDEHooksConfig methodsFor: 'recovered'!
readAttribute: recoveredArg1 inSubElement: recoveredArg2 parent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20266d38; bytecode file offset 0xb63604"
!ASDEHooksConfig methodsFor: 'recovered'!
writeXMLECUInputVariables: recoveredArg1 writer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    (recoveredBlock12Value0) writeXMLforInputVar: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredLocal1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) + (1).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20266d48; bytecode file offset 0xb63604"
!ASDEHooksConfig methodsFor: 'recovered'!
writeXMLECUOutputVariables: recoveredArg1 writer: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg2.
    (recoveredBlock12Value0) writeXMLforOutputVar: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredLocal1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) + (1).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20297930; bytecode file offset 0xb94208"
!ASDEHooksConfig methodsFor: 'recovered'!
readEHOOKSBypassFunctions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := ASDEHooksBypassFuncNode.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (self) readXmlController.
    recoveredBlock7Value3 := (recoveredBlock7Value0) readEHOOKSBypassFunctions: (recoveredBlock7Value1) withImportController: (recoveredBlock7Value2).
    recoveredBlock7Value4 := [:recoveredBlock7Block21Arg1 | 
    | recoveredBlock7Block21Value0 recoveredBlock7Block21Value1 recoveredBlock7Block21Value2 recoveredBlock7Block21Value3 |
    recoveredBlock7Block21Value0 := recoveredBlock7Block21Arg1.
    (recoveredBlock7Block21Value0) eHooksConfig: (self).
    recoveredBlock7Block21Value1 := (self) bypassFunctions.
    recoveredBlock7Block21Value2 := recoveredBlock7Block21Arg1.
    recoveredBlock7Block21Value3 := (recoveredBlock7Block21Value1) add: (recoveredBlock7Block21Value2).
    recoveredBlock7Block21Value3
].
    recoveredBlock7Value5 := (recoveredBlock7Value3) do: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    (recoveredValue0) optional: ('BypassFunctions') do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202a3028; bytecode file offset 0xb9f8ec"
!ASDEHooksConfig methodsFor: 'recovered'!
assignProcesses: recoveredArg1 toBypassFunc: recoveredArg2 afterIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ~= (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := 1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := 2.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addProcess: (recoveredBlock7Stack2) instVarAlias: (recoveredBlock7Stack3) afterIndex: (recoveredBlock7Stack4).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202b5e14; bytecode file offset 0xbb26e8"
!ASDEHooksConfig methodsFor: 'recovered'!
handleError: recoveredArg1 stream: recoveredArg2 fileName: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) bringToFront.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'No import reader found for file format: '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := -3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) bringToFront.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'Error while reading mappings from file: '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageText.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b824c; bytecode file offset 0xbb4b24"
!ASDEHooksConfig methodsFor: 'recovered'!
qualifiedNamesProcessList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) instVarProcessReferences.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (self) project.
    recoveredBlock14Value4 := (recoveredBlock14Value1) moduleProcessLabelFor: (recoveredBlock14Value2) usingProject: (recoveredBlock14Value3).
    recoveredBlock14Value5 := (recoveredBlock14Value4) allSubStrings: ($/).
    recoveredBlock14Value6 := (recoveredBlock14Value5) last.
    recoveredBlock14Value7 := (recoveredBlock14Value0) add: (recoveredBlock14Value6).
    recoveredBlock14Value7
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202d0a60; bytecode file offset 0xbcd338"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsForType: recoveredArg1 put: recoveredArg2
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageInput: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageOutput: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOrderedCollection.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctions: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d67c4; bytecode file offset 0xbd309c"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsAsStorageObjectsRemoveInvalid: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) mappingTypeInput.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) mappingTypeOutput.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (self) mappingsForType: (recoveredBlock14Value0).
    recoveredLocal3 := recoveredBlock14Value1.
    recoveredBlock14Value2 := recoveredLocal3.
    recoveredBlock14Value3 := recoveredArg1.
    recoveredBlock14Value4 := (self) mappingsAsStorageObjects: (recoveredBlock14Value2) removeInvalid: (recoveredBlock14Value3).
    recoveredLocal2 := recoveredBlock14Value4.
    recoveredBlock14Value5 := recoveredLocal2.
    recoveredBlock14Value6 := recoveredBlock14Arg1.
    recoveredBlock14Value7 := (self) setElementMappings: (recoveredBlock14Value5) forType: (recoveredBlock14Value6).
    recoveredBlock14Value7
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202da030; bytecode file offset 0xbd6904"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingSourceObjectsForType: recoveredArg1 withoutSendRec: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingSourceObjectsForInput: (recoveredStack2) withoutSendRec: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingSourceObjectsForInput: (recoveredStack2) withoutSendRec: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030c6c0; bytecode file offset 0xc08fa0"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingTargetObjectsForType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block280ea414Arg1 | 
    | block280ea414Value0 block280ea414Value1 |
    block280ea414Value0 := block280ea414Arg1.
    block280ea414Value1 := (block280ea414Value0) funcNodeName.
    block280ea414Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsInput.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203173f0; bytecode file offset 0xc13cc8"
!ASDEHooksConfig methodsFor: 'recovered'!
hookVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allMappingOutputDict.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Stack0 recoveredBlock12Block19Stack1 recoveredBlock12Block19Stack2 recoveredBlock12Block19Stack3 recoveredBlock12Block19PC recoveredBlock12Block19Step recoveredBlock12Block19Done recoveredBlock12Block19Result |
    recoveredBlock12Block19Stack0 := nil.
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
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) targetObject.
            recoveredBlock12Block19PC := 30.
        ].
        recoveredBlock12Block19Step = 30 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) hasHookVariableNode.
            recoveredBlock12Block19PC := 32.
        ].
        recoveredBlock12Block19Step = 32 ifTrue: [
            (recoveredBlock12Block19Stack2) ifTrue: [recoveredBlock12Block19PC := 36] ifFalse: [recoveredBlock12Block19PC := 47].
        ].
        recoveredBlock12Block19Step = 36 ifTrue: [
            recoveredBlock12Block19PC := 37.
        ].
        recoveredBlock12Block19Step = 37 ifTrue: [
            recoveredBlock12Block19Stack1 := recoveredLocal1.
            recoveredBlock12Block19PC := 40.
        ].
        recoveredBlock12Block19Step = 40 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 41.
        ].
        recoveredBlock12Block19Step = 41 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) targetObject.
            recoveredBlock12Block19PC := 43.
        ].
        recoveredBlock12Block19Step = 43 ifTrue: [
            recoveredBlock12Block19Stack2 := (recoveredBlock12Block19Stack2) ehooksAttributesNode.
            recoveredBlock12Block19PC := 45.
        ].
        recoveredBlock12Block19Step = 45 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) add: (recoveredBlock12Block19Stack2).
            recoveredBlock12Block19PC := 47.
        ].
        recoveredBlock12Block19Step = 47 ifTrue: [
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
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203377e8; bytecode file offset 0xc340cc"
!ASDEHooksConfig methodsFor: 'recovered'!
importBypassFuncObjects: recoveredArg1 toWidget: recoveredArg2 outStream: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingTypeProcess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) infoStartedImport: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) addBypassFuncImported: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) initEHooksConfig.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) updateContentsLocal.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) infoNumOfMappingsImport: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) infoCompletedImport: (recoveredStack1) on: (recoveredStack2).
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

"ASDBase.ic method 0x2033e28c; bytecode file offset 0xc3ab60"
!ASDEHooksConfig methodsFor: 'recovered'!
addBypassFuncImported: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) funcNodeName.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) funcNodeName.
    recoveredBlock5Value4 := (recoveredBlock5Value1) equals: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) eHooksConfig: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) overwriteWithImported: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034d010; bytecode file offset 0xc498d4"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsDetectionOfInvalid
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) mappings.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := [:recoveredBlock10Block17Arg1 | 
    | recoveredBlock10Block17Value0 recoveredBlock10Block17Value1 recoveredBlock10Block17Value2 |
    recoveredBlock10Block17Value0 := recoveredBlock10Block17Arg1.
    recoveredBlock10Block17Value1 := [:recoveredBlock10Block17Block25Arg1 | 
    | recoveredBlock10Block17Block25Stack0 recoveredBlock10Block17Block25Stack1 recoveredBlock10Block17Block25Stack2 recoveredBlock10Block17Block25Stack3 recoveredBlock10Block17Block25PC recoveredBlock10Block17Block25Step recoveredBlock10Block17Block25Done recoveredBlock10Block17Block25Result |
    recoveredBlock10Block17Block25Stack0 := nil.
    recoveredBlock10Block17Block25PC := 32.
    recoveredBlock10Block17Block25Done := false.
    [recoveredBlock10Block17Block25Done not] whileTrue: [
        recoveredBlock10Block17Block25Step := recoveredBlock10Block17Block25PC.
        recoveredBlock10Block17Block25Step = 32 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := nil.
            recoveredBlock10Block17Block25PC := 33.
        ].
        recoveredBlock10Block17Block25Step = 33 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Arg1.
            recoveredBlock10Block17Block25PC := 34.
        ].
        recoveredBlock10Block17Block25Step = 34 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) sourceObject.
            recoveredBlock10Block17Block25PC := 35.
        ].
        recoveredBlock10Block17Block25Step = 35 ifTrue: [
            (recoveredBlock10Block17Block25Stack2 == nil) ifTrue: [recoveredBlock10Block17Block25PC := 53] ifFalse: [recoveredBlock10Block17Block25PC := 38].
        ].
        recoveredBlock10Block17Block25Step = 38 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Arg1.
            recoveredBlock10Block17Block25PC := 39.
        ].
        recoveredBlock10Block17Block25Step = 39 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) sourceObject.
            recoveredBlock10Block17Block25PC := 40.
        ].
        recoveredBlock10Block17Block25Step = 40 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := (recoveredBlock10Block17Block25Stack2) isPropertyUnknown.
            recoveredBlock10Block17Block25PC := 41.
        ].
        recoveredBlock10Block17Block25Step = 41 ifTrue: [
            (recoveredBlock10Block17Block25Stack2) ifTrue: [recoveredBlock10Block17Block25PC := 44] ifFalse: [recoveredBlock10Block17Block25PC := 53].
        ].
        recoveredBlock10Block17Block25Step = 44 ifTrue: [
            recoveredBlock10Block17Block25PC := 45.
        ].
        recoveredBlock10Block17Block25Step = 45 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := recoveredLocal1.
            recoveredBlock10Block17Block25PC := 48.
        ].
        recoveredBlock10Block17Block25Step = 48 ifTrue: [
            recoveredBlock10Block17Block25Stack1 := (recoveredBlock10Block17Block25Stack1) + (1).
            recoveredBlock10Block17Block25PC := 49.
        ].
        recoveredBlock10Block17Block25Step = 49 ifTrue: [
            recoveredBlock10Block17Block25Stack2 := recoveredBlock10Block17Block25Stack1.
            recoveredBlock10Block17Block25PC := 50.
        ].
        recoveredBlock10Block17Block25Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock10Block17Block25Stack2.
            recoveredBlock10Block17Block25PC := 53.
        ].
        recoveredBlock10Block17Block25Step = 53 ifTrue: [
            recoveredBlock10Block17Block25Result := recoveredBlock10Block17Block25Stack1.
            recoveredBlock10Block17Block25Done := true.
        ].
    ].
    recoveredBlock10Block17Block25Result
].
    recoveredBlock10Block17Value2 := (recoveredBlock10Block17Value0) do: (recoveredBlock10Block17Value1).
    recoveredBlock10Block17Value2
].
    recoveredBlock10Value2 := (recoveredBlock10Value0) do: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20360164; bytecode file offset 0xc5ca64"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsAsStorageObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsDetectionOfInvalid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isZero.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'There are '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ' invalid Mappings in EHOOKS!!\Do you want to remove these Mappings?'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'ASDRemoveInvalidMappings'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := #('Remove' 'Keep').
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) buttonText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) mappingsAsStorageObjectsRemoveInvalid: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20364b6c; bytecode file offset 0xc61448"
!ASDEHooksConfig methodsFor: 'recovered'!
allTargetKeyMappingDictFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := [:recoveredBlock13Block21Arg1 | 
    | recoveredBlock13Block21Stack0 recoveredBlock13Block21Stack1 recoveredBlock13Block21Stack2 recoveredBlock13Block21Stack3 recoveredBlock13Block21Stack4 recoveredBlock13Block21PC recoveredBlock13Block21Step recoveredBlock13Block21Done recoveredBlock13Block21Result |
    recoveredBlock13Block21Stack0 := nil.
    recoveredBlock13Block21PC := 28.
    recoveredBlock13Block21Done := false.
    [recoveredBlock13Block21Done not] whileTrue: [
        recoveredBlock13Block21Step := recoveredBlock13Block21PC.
        recoveredBlock13Block21Step = 28 ifTrue: [
            recoveredBlock13Block21Stack1 := nil.
            recoveredBlock13Block21PC := 29.
        ].
        recoveredBlock13Block21Step = 29 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 30.
        ].
        recoveredBlock13Block21Step = 30 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) needsTarget.
            recoveredBlock13Block21PC := 31.
        ].
        recoveredBlock13Block21Step = 31 ifTrue: [
            (recoveredBlock13Block21Stack2) ifTrue: [recoveredBlock13Block21PC := 57] ifFalse: [recoveredBlock13Block21PC := 34].
        ].
        recoveredBlock13Block21Step = 34 ifTrue: [
            recoveredBlock13Block21PC := 35.
        ].
        recoveredBlock13Block21Step = 35 ifTrue: [
            recoveredBlock13Block21Stack1 := recoveredLocal1.
            recoveredBlock13Block21PC := 38.
        ].
        recoveredBlock13Block21Step = 38 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 39.
        ].
        recoveredBlock13Block21Step = 39 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) targetObject.
            recoveredBlock13Block21PC := 40.
        ].
        recoveredBlock13Block21Step = 40 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) qualifiedName.
            recoveredBlock13Block21PC := 42.
        ].
        recoveredBlock13Block21Step = 42 ifTrue: [
            recoveredBlock13Block21Stack3 := [
    | block280f0bdcValue0 block280f0bdcValue1 |
    block280f0bdcValue0 := OrderedCollection.
    block280f0bdcValue1 := (block280f0bdcValue0) new.
    block280f0bdcValue1
].
            recoveredBlock13Block21PC := 44.
        ].
        recoveredBlock13Block21Step = 44 ifTrue: [
            recoveredBlock13Block21PC := 52.
        ].
        recoveredBlock13Block21Step = 52 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) at: (recoveredBlock13Block21Stack2) ifAbsentPut: (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 54.
        ].
        recoveredBlock13Block21Step = 54 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 55.
        ].
        recoveredBlock13Block21Step = 55 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) add: (recoveredBlock13Block21Stack2).
            recoveredBlock13Block21PC := 57.
        ].
        recoveredBlock13Block21Step = 57 ifTrue: [
            recoveredBlock13Block21Result := recoveredBlock13Block21Stack1.
            recoveredBlock13Block21Done := true.
        ].
    ].
    recoveredBlock13Block21Result
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) do: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20374c28; bytecode file offset 0xc71514"
!ASDEHooksConfig methodsFor: 'recovered'!
needsCsvConversionTo640: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) asDecimal.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := 0.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) ~= (recoveredBlock16Stack2).
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 45].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack2 := 'File'.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 40] ifFalse: [recoveredBlock16PC := 45].
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) asDecimal.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredLocal2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := #[41 92 143 194 245 40 240 63].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20380708; bytecode file offset 0xc7cfec"
!ASDEHooksConfig methodsFor: 'recovered'!
convertCsvMappingTo640: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'Input'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Output'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block280f2b5cArg1 | 
    | block280f2b5cStack0 block280f2b5cStack1 block280f2b5cStack2 block280f2b5cStack3 block280f2b5cPC block280f2b5cStep block280f2b5cDone block280f2b5cResult |
    block280f2b5cStack0 := self.
    block280f2b5cPC := 4.
    block280f2b5cDone := false.
    [block280f2b5cDone not] whileTrue: [
        block280f2b5cStep := block280f2b5cPC.
        block280f2b5cStep = 4 ifTrue: [
            block280f2b5cStack1 := block280f2b5cArg1.
            block280f2b5cPC := 5.
        ].
        block280f2b5cStep = 5 ifTrue: [
            block280f2b5cStack2 := [:block280f2b80Arg1 | 
    | block280f2b80Stack0 block280f2b80Stack1 block280f2b80Stack2 block280f2b80Stack3 block280f2b80PC block280f2b80Step block280f2b80Done block280f2b80Result |
    block280f2b80Stack0 := self.
    block280f2b80PC := 4.
    block280f2b80Done := false.
    [block280f2b80Done not] whileTrue: [
        block280f2b80Step := block280f2b80PC.
        block280f2b80Step = 4 ifTrue: [
            block280f2b80Stack1 := nil.
            block280f2b80PC := 5.
        ].
        block280f2b80Step = 5 ifTrue: [
            block280f2b80Stack2 := block280f2b80Arg1.
            block280f2b80PC := 6.
        ].
        block280f2b80Step = 6 ifTrue: [
            block280f2b80Stack2 := (block280f2b80Stack2) hasDotIncludedInSourceObjectDisplayName.
            block280f2b80PC := 8.
        ].
        block280f2b80Step = 8 ifTrue: [
            (block280f2b80Stack2) ifTrue: [block280f2b80PC := 12] ifFalse: [block280f2b80PC := 16].
        ].
        block280f2b80Step = 12 ifTrue: [
            block280f2b80PC := 13.
        ].
        block280f2b80Step = 13 ifTrue: [
            block280f2b80Stack1 := block280f2b80Arg1.
            block280f2b80PC := 14.
        ].
        block280f2b80Step = 14 ifTrue: [
            block280f2b80Stack1 := (block280f2b80Stack1) addSelfToSourceObjectDisplayName.
            block280f2b80PC := 16.
        ].
        block280f2b80Step = 16 ifTrue: [
            block280f2b80Result := block280f2b80Stack1.
            block280f2b80Done := true.
        ].
    ].
    block280f2b80Result
].
            block280f2b5cPC := 7.
        ].
        block280f2b5cStep = 7 ifTrue: [
            block280f2b5cPC := 23.
        ].
        block280f2b5cStep = 23 ifTrue: [
            block280f2b5cStack1 := (block280f2b5cStack1) do: (block280f2b5cStack2).
            block280f2b5cPC := 25.
        ].
        block280f2b5cStep = 25 ifTrue: [
            block280f2b5cResult := block280f2b5cStack1.
            block280f2b5cDone := true.
        ].
    ].
    block280f2b5cResult
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20397a70; bytecode file offset 0xc94354"
!ASDEHooksConfig methodsFor: 'recovered'!
allSourceKeyMappingDictFor: recoveredArg1 ecuVars: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := [:recoveredBlock13Block21Arg1 | 
    | recoveredBlock13Block21Stack0 recoveredBlock13Block21Stack1 recoveredBlock13Block21Stack2 recoveredBlock13Block21Stack3 recoveredBlock13Block21Stack4 recoveredBlock13Block21PC recoveredBlock13Block21Step recoveredBlock13Block21Done recoveredBlock13Block21Result |
    recoveredBlock13Block21Stack0 := self.
    recoveredBlock13Block21PC := 28.
    recoveredBlock13Block21Done := false.
    [recoveredBlock13Block21Done not] whileTrue: [
        recoveredBlock13Block21Step := recoveredBlock13Block21PC.
        recoveredBlock13Block21Step = 28 ifTrue: [
            recoveredBlock13Block21Stack1 := nil.
            recoveredBlock13Block21PC := 29.
        ].
        recoveredBlock13Block21Step = 29 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 30.
        ].
        recoveredBlock13Block21Step = 30 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) needsTarget.
            recoveredBlock13Block21PC := 31.
        ].
        recoveredBlock13Block21Step = 31 ifTrue: [
            (recoveredBlock13Block21Stack2) ifTrue: [recoveredBlock13Block21PC := 65] ifFalse: [recoveredBlock13Block21PC := 34].
        ].
        recoveredBlock13Block21Step = 34 ifTrue: [
            recoveredBlock13Block21PC := 35.
        ].
        recoveredBlock13Block21Step = 35 ifTrue: [
            recoveredBlock13Block21Stack1 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 36.
        ].
        recoveredBlock13Block21Step = 36 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) targetObject.
            recoveredBlock13Block21PC := 37.
        ].
        recoveredBlock13Block21Step = 37 ifTrue: [
            recoveredBlock13Block21Stack2 := self.
            recoveredBlock13Block21PC := 38.
        ].
        recoveredBlock13Block21Step = 38 ifTrue: [
            recoveredBlock13Block21Stack3 := recoveredArg2.
            recoveredBlock13Block21PC := 41.
        ].
        recoveredBlock13Block21Step = 41 ifTrue: [
            (recoveredBlock13Block21Stack1) updateEHooksAttributesFromConfig: (recoveredBlock13Block21Stack2) ecuVars: (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 43.
        ].
        recoveredBlock13Block21Step = 43 ifTrue: [
            recoveredBlock13Block21Stack1 := recoveredLocal1.
            recoveredBlock13Block21PC := 46.
        ].
        recoveredBlock13Block21Step = 46 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 47.
        ].
        recoveredBlock13Block21Step = 47 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) sourceObject.
            recoveredBlock13Block21PC := 49.
        ].
        recoveredBlock13Block21Step = 49 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) qualifiedName.
            recoveredBlock13Block21PC := 51.
        ].
        recoveredBlock13Block21Step = 51 ifTrue: [
            recoveredBlock13Block21Stack3 := [
    | block280f3da4Value0 block280f3da4Value1 |
    block280f3da4Value0 := OrderedCollection.
    block280f3da4Value1 := (block280f3da4Value0) new.
    block280f3da4Value1
].
            recoveredBlock13Block21PC := 53.
        ].
        recoveredBlock13Block21Step = 53 ifTrue: [
            recoveredBlock13Block21PC := 60.
        ].
        recoveredBlock13Block21Step = 60 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) at: (recoveredBlock13Block21Stack2) ifAbsentPut: (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 62.
        ].
        recoveredBlock13Block21Step = 62 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 63.
        ].
        recoveredBlock13Block21Step = 63 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) add: (recoveredBlock13Block21Stack2).
            recoveredBlock13Block21PC := 65.
        ].
        recoveredBlock13Block21Step = 65 ifTrue: [
            recoveredBlock13Block21Result := recoveredBlock13Block21Stack1.
            recoveredBlock13Block21Done := true.
        ].
    ].
    recoveredBlock13Block21Result
].
    recoveredBlock13Value2 := (recoveredBlock13Value0) do: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203996a4; bytecode file offset 0xc95f84"
!ASDEHooksConfig methodsFor: 'recovered'!
getBypassFunc
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) mappingProcess.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Stack0 recoveredBlock11Block19Stack1 recoveredBlock11Block19Stack2 recoveredBlock11Block19Stack3 recoveredBlock11Block19PC recoveredBlock11Block19Step recoveredBlock11Block19Done recoveredBlock11Block19Result |
    recoveredBlock11Block19Stack0 := nil.
    recoveredBlock11Block19PC := 26.
    recoveredBlock11Block19Done := false.
    [recoveredBlock11Block19Done not] whileTrue: [
        recoveredBlock11Block19Step := recoveredBlock11Block19PC.
        recoveredBlock11Block19Step = 26 ifTrue: [
            recoveredBlock11Block19Stack1 := nil.
            recoveredBlock11Block19PC := 27.
        ].
        recoveredBlock11Block19Step = 27 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19PC := 28.
        ].
        recoveredBlock11Block19Step = 28 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) targetObject.
            recoveredBlock11Block19PC := 29.
        ].
        recoveredBlock11Block19Step = 29 ifTrue: [
            (recoveredBlock11Block19Stack2 == nil) ifTrue: [recoveredBlock11Block19PC := 50] ifFalse: [recoveredBlock11Block19PC := 32].
        ].
        recoveredBlock11Block19Step = 32 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19PC := 33.
        ].
        recoveredBlock11Block19Step = 33 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) targetObject.
            recoveredBlock11Block19PC := 34.
        ].
        recoveredBlock11Block19Step = 34 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) displayName.
            recoveredBlock11Block19PC := 36.
        ].
        recoveredBlock11Block19Step = 36 ifTrue: [
            (recoveredBlock11Block19Stack2 == nil) ifTrue: [recoveredBlock11Block19PC := 50] ifFalse: [recoveredBlock11Block19PC := 40].
        ].
        recoveredBlock11Block19Step = 40 ifTrue: [
            recoveredBlock11Block19PC := 41.
        ].
        recoveredBlock11Block19Step = 41 ifTrue: [
            recoveredBlock11Block19Stack1 := recoveredLocal1.
            recoveredBlock11Block19PC := 44.
        ].
        recoveredBlock11Block19Step = 44 ifTrue: [
            recoveredBlock11Block19Stack2 := recoveredBlock11Block19Arg1.
            recoveredBlock11Block19PC := 45.
        ].
        recoveredBlock11Block19Step = 45 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) targetObject.
            recoveredBlock11Block19PC := 46.
        ].
        recoveredBlock11Block19Step = 46 ifTrue: [
            recoveredBlock11Block19Stack2 := (recoveredBlock11Block19Stack2) displayName.
            recoveredBlock11Block19PC := 48.
        ].
        recoveredBlock11Block19Step = 48 ifTrue: [
            recoveredBlock11Block19Stack1 := (recoveredBlock11Block19Stack1) add: (recoveredBlock11Block19Stack2).
            recoveredBlock11Block19PC := 50.
        ].
        recoveredBlock11Block19Step = 50 ifTrue: [
            recoveredBlock11Block19Result := recoveredBlock11Block19Stack1.
            recoveredBlock11Block19Done := true.
        ].
    ].
    recoveredBlock11Block19Result
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ('bypass_func') uniqueStringFor: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := ASDEHooksBypassFuncNode.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue6) createWithName: (recoveredValue7) eHooksConfig: (self).
    ^recoveredValue8
! !

"ASDBase.ic method 0x203ad2c4; bytecode file offset 0xca9b94"
!ASDEHooksConfig methodsFor: 'recovered'!
isMappingValidForSource: recoveredArg1 forTarget: recoveredArg2
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMessage.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ownerIsRecordInterface.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInProject: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044b374; bytecode file offset 0xd47c88"
!ASDEHooksConfig methodsFor: 'recovered'!
readEHooksAscetSpecificationFromFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) mappingMessageInput: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) mappingMessageOutput: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Import from file: '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEHooksAscetSpecificationFromStream: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageInput.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block280ff094Arg1 | 
    | block280ff094Stack0 block280ff094Stack1 block280ff094Stack2 block280ff094Stack3 block280ff094PC block280ff094Step block280ff094Done block280ff094Result |
    block280ff094Stack0 := self.
    block280ff094PC := 4.
    block280ff094Done := false.
    [block280ff094Done not] whileTrue: [
        block280ff094Step := block280ff094PC.
        block280ff094Step = 4 ifTrue: [
            block280ff094Stack1 := block280ff094Arg1.
            block280ff094PC := 5.
        ].
        block280ff094Step = 5 ifTrue: [
            block280ff094Stack2 := [:block280ff0b8Arg1 | 
    | block280ff0b8Value0 block280ff0b8Value1 |
    block280ff0b8Value0 := block280ff0b8Arg1.
    block280ff0b8Value1 := (block280ff0b8Value0) modified: (false).
    block280ff0b8Value1
].
            block280ff094PC := 7.
        ].
        block280ff094Step = 7 ifTrue: [
            block280ff094PC := 15.
        ].
        block280ff094Step = 15 ifTrue: [
            block280ff094Stack1 := (block280ff094Stack1) do: (block280ff094Stack2).
            block280ff094PC := 17.
        ].
        block280ff094Step = 17 ifTrue: [
            block280ff094Result := block280ff094Stack1.
            block280ff094Done := true.
        ].
    ].
    block280ff094Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageOutput.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:block280ff0dcArg1 | 
    | block280ff0dcStack0 block280ff0dcStack1 block280ff0dcStack2 block280ff0dcStack3 block280ff0dcPC block280ff0dcStep block280ff0dcDone block280ff0dcResult |
    block280ff0dcStack0 := self.
    block280ff0dcPC := 4.
    block280ff0dcDone := false.
    [block280ff0dcDone not] whileTrue: [
        block280ff0dcStep := block280ff0dcPC.
        block280ff0dcStep = 4 ifTrue: [
            block280ff0dcStack1 := block280ff0dcArg1.
            block280ff0dcPC := 5.
        ].
        block280ff0dcStep = 5 ifTrue: [
            block280ff0dcStack2 := [:block280ff100Arg1 | 
    | block280ff100Value0 block280ff100Value1 |
    block280ff100Value0 := block280ff100Arg1.
    block280ff100Value1 := (block280ff100Value0) modified: (false).
    block280ff100Value1
].
            block280ff0dcPC := 7.
        ].
        block280ff0dcStep = 7 ifTrue: [
            block280ff0dcPC := 15.
        ].
        block280ff0dcStep = 15 ifTrue: [
            block280ff0dcStack1 := (block280ff0dcStack1) do: (block280ff0dcStack2).
            block280ff0dcPC := 17.
        ].
        block280ff0dcStep = 17 ifTrue: [
            block280ff0dcResult := block280ff0dcStack1.
            block280ff0dcDone := true.
        ].
    ].
    block280ff0dcResult
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Import completed'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'Import aborted'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044df18; bytecode file offset 0xd4a810"
!ASDEHooksConfig methodsFor: 'recovered'!
convertToASDV640_Step1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) mappingMessageInput.
    recoveredValue2 := (self) mappingMessageOutput.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := Set.
    recoveredBlock12Value1 := (recoveredBlock12Value0) new.
    recoveredLocal1 := recoveredBlock12Value1.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := [:recoveredBlock12Block28Arg1 :recoveredBlock12Block28Arg2 | 
    | recoveredBlock12Block28Value0 recoveredBlock12Block28Value1 recoveredBlock12Block28Value2 |
    recoveredBlock12Block28Value0 := recoveredBlock12Block28Arg2.
    recoveredBlock12Block28Value1 := [:recoveredBlock12Block28Block37Arg1 | 
    | recoveredBlock12Block28Block37Stack0 recoveredBlock12Block28Block37Stack1 recoveredBlock12Block28Block37Stack2 recoveredBlock12Block28Block37Stack3 recoveredBlock12Block28Block37PC recoveredBlock12Block28Block37Step recoveredBlock12Block28Block37Done recoveredBlock12Block28Block37Result |
    recoveredBlock12Block28Block37Stack0 := nil.
    recoveredBlock12Block28Block37PC := 44.
    recoveredBlock12Block28Block37Done := false.
    [recoveredBlock12Block28Block37Done not] whileTrue: [
        recoveredBlock12Block28Block37Step := recoveredBlock12Block28Block37PC.
        recoveredBlock12Block28Block37Step = 44 ifTrue: [
            recoveredBlock12Block28Block37Stack1 := nil.
            recoveredBlock12Block28Block37PC := 45.
        ].
        recoveredBlock12Block28Block37Step = 45 ifTrue: [
            recoveredBlock12Block28Block37Stack2 := recoveredBlock12Block28Block37Arg1.
            recoveredBlock12Block28Block37PC := 46.
        ].
        recoveredBlock12Block28Block37Step = 46 ifTrue: [
            recoveredBlock12Block28Block37Stack2 := (recoveredBlock12Block28Block37Stack2) hasDotIncludedInSourceObjectDisplayName.
            recoveredBlock12Block28Block37PC := 48.
        ].
        recoveredBlock12Block28Block37Step = 48 ifTrue: [
            (recoveredBlock12Block28Block37Stack2) ifTrue: [recoveredBlock12Block28Block37PC := 52] ifFalse: [recoveredBlock12Block28Block37PC := 64].
        ].
        recoveredBlock12Block28Block37Step = 52 ifTrue: [
            recoveredBlock12Block28Block37PC := 53.
        ].
        recoveredBlock12Block28Block37Step = 53 ifTrue: [
            recoveredBlock12Block28Block37Stack1 := recoveredBlock12Block28Block37Arg1.
            recoveredBlock12Block28Block37PC := 54.
        ].
        recoveredBlock12Block28Block37Step = 54 ifTrue: [
            (recoveredBlock12Block28Block37Stack1) addSelfToSourceObjectDisplayName.
            recoveredBlock12Block28Block37PC := 56.
        ].
        recoveredBlock12Block28Block37Step = 56 ifTrue: [
            recoveredBlock12Block28Block37Stack1 := recoveredLocal1.
            recoveredBlock12Block28Block37PC := 59.
        ].
        recoveredBlock12Block28Block37Step = 59 ifTrue: [
            recoveredBlock12Block28Block37Stack2 := recoveredBlock12Block28Arg1.
            recoveredBlock12Block28Block37PC := 62.
        ].
        recoveredBlock12Block28Block37Step = 62 ifTrue: [
            recoveredBlock12Block28Block37Stack1 := (recoveredBlock12Block28Block37Stack1) add: (recoveredBlock12Block28Block37Stack2).
            recoveredBlock12Block28Block37PC := 64.
        ].
        recoveredBlock12Block28Block37Step = 64 ifTrue: [
            recoveredBlock12Block28Block37Result := recoveredBlock12Block28Block37Stack1.
            recoveredBlock12Block28Block37Done := true.
        ].
    ].
    recoveredBlock12Block28Block37Result
].
    recoveredBlock12Block28Value2 := (recoveredBlock12Block28Value0) do: (recoveredBlock12Block28Value1).
    recoveredBlock12Block28Value2
].
    (recoveredBlock12Value2) keysAndValuesDo: (recoveredBlock12Value3).
    recoveredBlock12Value4 := recoveredLocal1.
    recoveredBlock12Value5 := [:recoveredBlock12Block73Arg1 | 
    | recoveredBlock12Block73Value0 recoveredBlock12Block73Value1 recoveredBlock12Block73Value2 recoveredBlock12Block73Value3 recoveredBlock12Block73Value4 recoveredBlock12Block73Value5 recoveredBlock12Block73Value6 recoveredBlock12Block73Value7 recoveredBlock12Block73Value8 recoveredBlock12Block73Value9 recoveredBlock12Block73Value10 |
    recoveredBlock12Block73Value0 := recoveredBlock12Arg1.
    recoveredBlock12Block73Value1 := recoveredBlock12Block73Arg1.
    recoveredBlock12Block73Value2 := ('self.') , (recoveredBlock12Block73Value1).
    recoveredBlock12Block73Value3 := recoveredBlock12Arg1.
    recoveredBlock12Block73Value4 := recoveredBlock12Block73Arg1.
    recoveredBlock12Block73Value5 := [].
    recoveredBlock12Block73Value6 := (recoveredBlock12Block73Value3) at: (recoveredBlock12Block73Value4) ifAbsent: (recoveredBlock12Block73Value5).
    (recoveredBlock12Block73Value0) at: (recoveredBlock12Block73Value2) put: (recoveredBlock12Block73Value6).
    recoveredBlock12Block73Value7 := recoveredBlock12Arg1.
    recoveredBlock12Block73Value8 := recoveredBlock12Block73Arg1.
    recoveredBlock12Block73Value9 := [].
    recoveredBlock12Block73Value10 := (recoveredBlock12Block73Value7) removeKey: (recoveredBlock12Block73Value8) ifAbsent: (recoveredBlock12Block73Value9).
    recoveredBlock12Block73Value10
].
    recoveredBlock12Value6 := (recoveredBlock12Value4) do: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2044f810; bytecode file offset 0xd4c0f8"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsAsStorageObjects: recoveredArg1 removeInvalid: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := OrderedCollection.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) new.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block27Arg1 | 
    | recoveredBlock13Block27Stack0 recoveredBlock13Block27Stack1 recoveredBlock13Block27Stack2 recoveredBlock13Block27Stack3 recoveredBlock13Block27PC recoveredBlock13Block27Step recoveredBlock13Block27Done recoveredBlock13Block27Result |
    recoveredBlock13Block27Stack0 := nil.
    recoveredBlock13Block27PC := 34.
    recoveredBlock13Block27Done := false.
    [recoveredBlock13Block27Done not] whileTrue: [
        recoveredBlock13Block27Step := recoveredBlock13Block27PC.
        recoveredBlock13Block27Step = 34 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 35.
        ].
        recoveredBlock13Block27Step = 35 ifTrue: [
            recoveredBlock13Block27Stack2 := nil.
            recoveredBlock13Block27PC := 36.
        ].
        recoveredBlock13Block27Step = 36 ifTrue: [
            (recoveredBlock13Block27Stack1) originalTarget: (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 38.
        ].
        recoveredBlock13Block27Step = 38 ifTrue: [
            recoveredBlock13Block27Stack1 := nil.
            recoveredBlock13Block27PC := 39.
        ].
        recoveredBlock13Block27Step = 39 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 40.
        ].
        recoveredBlock13Block27Step = 40 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) isMapped.
            recoveredBlock13Block27PC := 42.
        ].
        recoveredBlock13Block27Step = 42 ifTrue: [
            (recoveredBlock13Block27Stack2) ifTrue: [recoveredBlock13Block27PC := 46] ifFalse: [recoveredBlock13Block27PC := 84].
        ].
        recoveredBlock13Block27Step = 46 ifTrue: [
            recoveredBlock13Block27PC := 47.
        ].
        recoveredBlock13Block27Step = 47 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 48.
        ].
        recoveredBlock13Block27Step = 48 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) sourceObject.
            recoveredBlock13Block27PC := 50.
        ].
        recoveredBlock13Block27Step = 50 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) isPropertyUnknown.
            recoveredBlock13Block27PC := 52.
        ].
        recoveredBlock13Block27Step = 52 ifTrue: [
            (recoveredBlock13Block27Stack1) ifTrue: [recoveredBlock13Block27PC := 56] ifFalse: [recoveredBlock13Block27PC := 76].
        ].
        recoveredBlock13Block27Step = 56 ifTrue: [
            recoveredBlock13Block27Stack1 := nil.
            recoveredBlock13Block27PC := 57.
        ].
        recoveredBlock13Block27Step = 57 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredArg2.
            recoveredBlock13Block27PC := 60.
        ].
        recoveredBlock13Block27Step = 60 ifTrue: [
            (recoveredBlock13Block27Stack2) ifTrue: [recoveredBlock13Block27PC := 73] ifFalse: [recoveredBlock13Block27PC := 64].
        ].
        recoveredBlock13Block27Step = 64 ifTrue: [
            recoveredBlock13Block27PC := 65.
        ].
        recoveredBlock13Block27Step = 65 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredLocal1.
            recoveredBlock13Block27PC := 68.
        ].
        recoveredBlock13Block27Step = 68 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 69.
        ].
        recoveredBlock13Block27Step = 69 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) asStorageObject.
            recoveredBlock13Block27PC := 71.
        ].
        recoveredBlock13Block27Step = 71 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) add: (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 73.
        ].
        recoveredBlock13Block27Step = 73 ifTrue: [
            recoveredBlock13Block27PC := 84.
        ].
        recoveredBlock13Block27Step = 76 ifTrue: [
            recoveredBlock13Block27Stack1 := recoveredLocal1.
            recoveredBlock13Block27PC := 79.
        ].
        recoveredBlock13Block27Step = 79 ifTrue: [
            recoveredBlock13Block27Stack2 := recoveredBlock13Block27Arg1.
            recoveredBlock13Block27PC := 80.
        ].
        recoveredBlock13Block27Step = 80 ifTrue: [
            recoveredBlock13Block27Stack2 := (recoveredBlock13Block27Stack2) asStorageObject.
            recoveredBlock13Block27PC := 82.
        ].
        recoveredBlock13Block27Step = 82 ifTrue: [
            recoveredBlock13Block27Stack1 := (recoveredBlock13Block27Stack1) add: (recoveredBlock13Block27Stack2).
            recoveredBlock13Block27PC := 84.
        ].
        recoveredBlock13Block27Step = 84 ifTrue: [
            recoveredBlock13Block27Result := recoveredBlock13Block27Stack1.
            recoveredBlock13Block27Done := true.
        ].
    ].
    recoveredBlock13Block27Result
].
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 96] ifFalse: [recoveredBlock13PC := 106].
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal1.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 106.
        ].
        recoveredBlock13Step = 106 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204805cc; bytecode file offset 0xd7ceb8"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsForType: recoveredArg1 putMapObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageInput.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageOutput.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 |
    recoveredBlock68Value0 := recoveredLocal3.
    recoveredBlock68Value1 := recoveredLocal2.
    recoveredBlock68Value2 := OrderedCollection.
    recoveredBlock68Value3 := (recoveredBlock68Value2) new.
    recoveredBlock68Value4 := (recoveredBlock68Value0) at: (recoveredBlock68Value1) put: (recoveredBlock68Value3).
    recoveredBlock68Value4
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredArg2.
    recoveredBlock95Value2 := (recoveredBlock95Value0) equals: (recoveredBlock95Value1).
    recoveredBlock95Value2
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 |
    recoveredBlock108Value0 := recoveredLocal1.
    recoveredBlock108Value1 := recoveredArg2.
    recoveredBlock108Value2 := (recoveredBlock108Value0) add: (recoveredBlock108Value1).
    ^recoveredBlock108Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048d00c; bytecode file offset 0xd898fc"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsForType: recoveredArg1 ensureIncluded: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageInput.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingMessageOutput.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 recoveredBlock47Value6 recoveredBlock47Value7 recoveredBlock47Value8 recoveredBlock47Value9 recoveredBlock47Value10 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) sourceObject.
    recoveredBlock47Value2 := (recoveredBlock47Value1) displayName.
    recoveredLocal2 := recoveredBlock47Value2.
    recoveredBlock47Value3 := recoveredLocal3.
    recoveredBlock47Value4 := recoveredLocal2.
    recoveredBlock47Value5 := [
    | recoveredBlock47Block70Value0 recoveredBlock47Block70Value1 recoveredBlock47Block70Value2 recoveredBlock47Block70Value3 recoveredBlock47Block70Value4 |
    recoveredBlock47Block70Value0 := recoveredLocal3.
    recoveredBlock47Block70Value1 := recoveredLocal2.
    recoveredBlock47Block70Value2 := OrderedCollection.
    recoveredBlock47Block70Value3 := (recoveredBlock47Block70Value2) new.
    recoveredBlock47Block70Value4 := (recoveredBlock47Block70Value0) at: (recoveredBlock47Block70Value1) put: (recoveredBlock47Block70Value3).
    recoveredBlock47Block70Value4
].
    recoveredBlock47Value6 := (recoveredBlock47Value3) at: (recoveredBlock47Value4) ifAbsent: (recoveredBlock47Value5).
    recoveredLocal1 := recoveredBlock47Value6.
    recoveredBlock47Value7 := recoveredLocal1.
    recoveredBlock47Value8 := [:recoveredBlock47Block97Arg1 | 
    | recoveredBlock47Block97Value0 recoveredBlock47Block97Value1 recoveredBlock47Block97Value2 |
    recoveredBlock47Block97Value0 := recoveredBlock47Block97Arg1.
    recoveredBlock47Block97Value1 := recoveredBlock47Arg1.
    recoveredBlock47Block97Value2 := (recoveredBlock47Block97Value0) equals: (recoveredBlock47Block97Value1).
    recoveredBlock47Block97Value2
].
    recoveredBlock47Value9 := [
    | recoveredBlock47Block110Value0 recoveredBlock47Block110Value1 recoveredBlock47Block110Value2 |
    recoveredBlock47Block110Value0 := recoveredLocal1.
    recoveredBlock47Block110Value1 := recoveredBlock47Arg1.
    recoveredBlock47Block110Value2 := (recoveredBlock47Block110Value0) add: (recoveredBlock47Block110Value1).
    recoveredBlock47Block110Value2
].
    recoveredBlock47Value10 := (recoveredBlock47Value7) detect: (recoveredBlock47Value8) ifNone: (recoveredBlock47Value9).
    recoveredBlock47Value10
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20514cf8; bytecode file offset 0xe11618"
!ASDEHooksConfig methodsFor: 'recovered'!
writeXML: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) eHooksConfigurationTag.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingInputTag.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingMessageInput.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCollectionOfMappingsFrom: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) writeXMLElementMapping: (recoveredStack1) writer: (recoveredStack2) includeOIDs: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 40.
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
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuInputVariablesTag.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
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
            recoveredStack1 := (recoveredStack1) ecuVarsInput.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) writeXMLECUInputVariables: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingOutputTag.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingMessageOutput.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCollectionOfMappingsFrom: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) writeXMLElementMapping: (recoveredStack1) writer: (recoveredStack2) includeOIDs: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuOutputVariablesTag.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) writeXMLECUOutputVariables: (recoveredStack1) writer: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFunctionsTag.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 |
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := recoveredArg1.
    recoveredBlock136Value2 := (self) project.
    recoveredBlock136Value3 := (recoveredBlock136Value0) writeXML: (recoveredBlock136Value1) includeOIDs: (true) usingProject: (recoveredBlock136Value2).
    recoveredBlock136Value3
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 'configFileName'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) configFileName.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := 'identifier'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20548b90; bytecode file offset 0xe454a8"
!ASDEHooksConfig methodsFor: 'recovered'!
getElementMappingAssociationsFor: recoveredArg1 unmappedSet: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getElementsByTagName: ('Element').
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) getAttribute: ('oid').
    recoveredBlock16Value2 := [:recoveredBlock16Block29Arg1 | 
    | recoveredBlock16Block29Local1 recoveredBlock16Block29Local2 recoveredBlock16Block29Local3 recoveredBlock16Block29Local4 recoveredBlock16Block29Stack0 recoveredBlock16Block29Stack1 recoveredBlock16Block29Stack2 recoveredBlock16Block29Stack3 recoveredBlock16Block29Stack4 recoveredBlock16Block29Stack5 recoveredBlock16Block29Stack6 recoveredBlock16Block29PC recoveredBlock16Block29Step recoveredBlock16Block29Done recoveredBlock16Block29Result |
    recoveredBlock16Block29Stack0 := self.
    recoveredBlock16Block29PC := 36.
    recoveredBlock16Block29Done := false.
    [recoveredBlock16Block29Done not] whileTrue: [
        recoveredBlock16Block29Step := recoveredBlock16Block29PC.
        recoveredBlock16Block29Step = 36 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Arg1.
            recoveredBlock16Block29PC := 39.
        ].
        recoveredBlock16Block29Step = 39 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) lookupElementOid: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 41.
        ].
        recoveredBlock16Block29Step = 41 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 42.
        ].
        recoveredBlock16Block29Step = 42 ifTrue: [
            recoveredBlock16Block29Local4 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 45.
        ].
        recoveredBlock16Block29Step = 45 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 84] ifFalse: [recoveredBlock16Block29PC := 48].
        ].
        recoveredBlock16Block29Step = 48 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 51.
        ].
        recoveredBlock16Block29Step = 51 ifTrue: [
            recoveredBlock16Block29Stack1 := 'name'.
            recoveredBlock16Block29PC := 53.
        ].
        recoveredBlock16Block29Step = 53 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 55.
        ].
        recoveredBlock16Block29Step = 55 ifTrue: [
            recoveredBlock16Block29Stack1 := [:recoveredBlock16Block29Block55Arg1 | 
    | recoveredBlock16Block29Block55Stack0 recoveredBlock16Block29Block55Stack1 recoveredBlock16Block29Block55Stack2 recoveredBlock16Block29Block55Stack3 recoveredBlock16Block29Block55Stack4 recoveredBlock16Block29Block55PC recoveredBlock16Block29Block55Step recoveredBlock16Block29Block55Done recoveredBlock16Block29Block55Result |
    recoveredBlock16Block29Block55Stack0 := self.
    recoveredBlock16Block29Block55PC := 62.
    recoveredBlock16Block29Block55Done := false.
    [recoveredBlock16Block29Block55Done not] whileTrue: [
        recoveredBlock16Block29Block55Step := recoveredBlock16Block29Block55PC.
        recoveredBlock16Block29Block55Step = 62 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := nil.
            recoveredBlock16Block29Block55PC := 63.
        ].
        recoveredBlock16Block29Block55Step = 63 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := self.
            recoveredBlock16Block29Block55PC := 64.
        ].
        recoveredBlock16Block29Block55Step = 64 ifTrue: [
            recoveredBlock16Block29Block55Stack3 := recoveredBlock16Block29Block55Arg1.
            recoveredBlock16Block29Block55PC := 65.
        ].
        recoveredBlock16Block29Block55Step = 65 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := (recoveredBlock16Block29Block55Stack2) lookupElementName: (recoveredBlock16Block29Block55Stack3).
            recoveredBlock16Block29Block55PC := 67.
        ].
        recoveredBlock16Block29Block55Step = 67 ifTrue: [
            recoveredBlock16Block29Block55Stack3 := recoveredBlock16Block29Block55Stack2.
            recoveredBlock16Block29Block55PC := 68.
        ].
        recoveredBlock16Block29Block55Step = 68 ifTrue: [
            recoveredBlock16Block29Local4 := recoveredBlock16Block29Block55Stack3.
            recoveredBlock16Block29Block55PC := 71.
        ].
        recoveredBlock16Block29Block55Step = 71 ifTrue: [
            (recoveredBlock16Block29Block55Stack2 ~~ nil) ifTrue: [recoveredBlock16Block29Block55PC := 81] ifFalse: [recoveredBlock16Block29Block55PC := 74].
        ].
        recoveredBlock16Block29Block55Step = 74 ifTrue: [
            recoveredBlock16Block29Block55PC := 75.
        ].
        recoveredBlock16Block29Block55Step = 75 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := recoveredArg2.
            recoveredBlock16Block29Block55PC := 78.
        ].
        recoveredBlock16Block29Block55Step = 78 ifTrue: [
            recoveredBlock16Block29Block55Stack2 := recoveredBlock16Block29Block55Arg1.
            recoveredBlock16Block29Block55PC := 79.
        ].
        recoveredBlock16Block29Block55Step = 79 ifTrue: [
            recoveredBlock16Block29Block55Stack1 := (recoveredBlock16Block29Block55Stack1) add: (recoveredBlock16Block29Block55Stack2).
            recoveredBlock16Block29Block55PC := 81.
        ].
        recoveredBlock16Block29Block55Step = 81 ifTrue: [
            recoveredBlock16Block29Block55Result := recoveredBlock16Block29Block55Stack1.
            recoveredBlock16Block29Block55Done := true.
        ].
    ].
    recoveredBlock16Block29Block55Result
].
            recoveredBlock16Block29PC := 82.
        ].
        recoveredBlock16Block29Step = 82 ifTrue: [
            (recoveredBlock16Block29Stack0) ifNotNil: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 84.
        ].
        recoveredBlock16Block29Step = 84 ifTrue: [
            recoveredBlock16Block29Stack0 := nil.
            recoveredBlock16Block29PC := 85.
        ].
        recoveredBlock16Block29Step = 85 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Local4.
            recoveredBlock16Block29PC := 88.
        ].
        recoveredBlock16Block29Step = 88 ifTrue: [
            (recoveredBlock16Block29Stack1 == nil) ifTrue: [recoveredBlock16Block29PC := 208] ifFalse: [recoveredBlock16Block29PC := 92].
        ].
        recoveredBlock16Block29Step = 92 ifTrue: [
            recoveredBlock16Block29PC := 93.
        ].
        recoveredBlock16Block29Step = 93 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 96.
        ].
        recoveredBlock16Block29Step = 96 ifTrue: [
            recoveredBlock16Block29Stack1 := 'ECU_index'.
            recoveredBlock16Block29PC := 98.
        ].
        recoveredBlock16Block29Step = 98 ifTrue: [
            recoveredBlock16Block29Stack2 := nil.
            recoveredBlock16Block29PC := 99.
        ].
        recoveredBlock16Block29Step = 99 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1) default: (recoveredBlock16Block29Stack2).
            recoveredBlock16Block29PC := 101.
        ].
        recoveredBlock16Block29Step = 101 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 102.
        ].
        recoveredBlock16Block29Step = 102 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 105.
        ].
        recoveredBlock16Block29Step = 105 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 116] ifFalse: [recoveredBlock16Block29PC := 108].
        ].
        recoveredBlock16Block29Step = 108 ifTrue: [
            recoveredBlock16Block29Stack0 := -1.
            recoveredBlock16Block29PC := 110.
        ].
        recoveredBlock16Block29Step = 110 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 113.
        ].
        recoveredBlock16Block29Step = 113 ifTrue: [
            recoveredBlock16Block29PC := 124.
        ].
        recoveredBlock16Block29Step = 116 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Block29Local2.
            recoveredBlock16Block29PC := 119.
        ].
        recoveredBlock16Block29Step = 119 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) asInteger.
            recoveredBlock16Block29PC := 121.
        ].
        recoveredBlock16Block29Step = 121 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 124.
        ].
        recoveredBlock16Block29Step = 124 ifTrue: [
            recoveredBlock16Block29Stack0 := nil.
            recoveredBlock16Block29PC := 125.
        ].
        recoveredBlock16Block29Step = 125 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 128.
        ].
        recoveredBlock16Block29Step = 128 ifTrue: [
            recoveredBlock16Block29Stack2 := 'ECU_var'.
            recoveredBlock16Block29PC := 130.
        ].
        recoveredBlock16Block29Step = 130 ifTrue: [
            recoveredBlock16Block29Stack1 := (recoveredBlock16Block29Stack1) getAttribute: (recoveredBlock16Block29Stack2).
            recoveredBlock16Block29PC := 132.
        ].
        recoveredBlock16Block29Step = 132 ifTrue: [
            recoveredBlock16Block29Stack2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 133.
        ].
        recoveredBlock16Block29Step = 133 ifTrue: [
            recoveredBlock16Block29Local3 := recoveredBlock16Block29Stack2.
            recoveredBlock16Block29PC := 136.
        ].
        recoveredBlock16Block29Step = 136 ifTrue: [
            (recoveredBlock16Block29Stack1 == nil) ifTrue: [recoveredBlock16Block29PC := 204] ifFalse: [recoveredBlock16Block29PC := 140].
        ].
        recoveredBlock16Block29Step = 140 ifTrue: [
            recoveredBlock16Block29PC := 141.
        ].
        recoveredBlock16Block29Step = 141 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Arg1.
            recoveredBlock16Block29PC := 144.
        ].
        recoveredBlock16Block29Step = 144 ifTrue: [
            recoveredBlock16Block29Stack1 := 'ECU_measurement'.
            recoveredBlock16Block29PC := 146.
        ].
        recoveredBlock16Block29Step = 146 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) getAttribute: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 148.
        ].
        recoveredBlock16Block29Step = 148 ifTrue: [
            recoveredBlock16Block29Stack1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 149.
        ].
        recoveredBlock16Block29Step = 149 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 152.
        ].
        recoveredBlock16Block29Step = 152 ifTrue: [
            (recoveredBlock16Block29Stack0 ~~ nil) ifTrue: [recoveredBlock16Block29PC := 162] ifFalse: [recoveredBlock16Block29PC := 156].
        ].
        recoveredBlock16Block29Step = 156 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredBlock16Block29Local3.
            recoveredBlock16Block29PC := 159.
        ].
        recoveredBlock16Block29Step = 159 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29PC := 162.
        ].
        recoveredBlock16Block29Step = 162 ifTrue: [
            recoveredBlock16Block29Stack0 := recoveredLocal1.
            recoveredBlock16Block29PC := 165.
        ].
        recoveredBlock16Block29Step = 165 ifTrue: [
            recoveredBlock16Block29Stack1 := Association.
            recoveredBlock16Block29PC := 167.
        ].
        recoveredBlock16Block29Step = 167 ifTrue: [
            recoveredBlock16Block29Stack2 := recoveredBlock16Block29Local4.
            recoveredBlock16Block29PC := 170.
        ].
        recoveredBlock16Block29Step = 170 ifTrue: [
            recoveredBlock16Block29Stack3 := ASDEHooksVariable.
            recoveredBlock16Block29PC := 172.
        ].
        recoveredBlock16Block29Step = 172 ifTrue: [
            recoveredBlock16Block29Stack3 := (recoveredBlock16Block29Stack3) create.
            recoveredBlock16Block29PC := 174.
        ].
        recoveredBlock16Block29Step = 174 ifTrue: [
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 175.
        ].
        recoveredBlock16Block29Step = 175 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local3.
            recoveredBlock16Block29PC := 178.
        ].
        recoveredBlock16Block29Step = 178 ifTrue: [
            (recoveredBlock16Block29Stack4) name: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 181.
        ].
        recoveredBlock16Block29Step = 181 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local1.
            recoveredBlock16Block29PC := 184.
        ].
        recoveredBlock16Block29Step = 184 ifTrue: [
            (recoveredBlock16Block29Stack4) measurementName: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 187.
        ].
        recoveredBlock16Block29Step = 187 ifTrue: [
            recoveredBlock16Block29Stack5 := recoveredBlock16Block29Local2.
            recoveredBlock16Block29PC := 190.
        ].
        recoveredBlock16Block29Step = 190 ifTrue: [
            (recoveredBlock16Block29Stack4) arrayIndex: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29Stack4 := recoveredBlock16Block29Stack3.
            recoveredBlock16Block29PC := 193.
        ].
        recoveredBlock16Block29Step = 193 ifTrue: [
            recoveredBlock16Block29Stack5 := true.
            recoveredBlock16Block29PC := 194.
        ].
        recoveredBlock16Block29Step = 194 ifTrue: [
            (recoveredBlock16Block29Stack4) conversion: (recoveredBlock16Block29Stack5).
            recoveredBlock16Block29PC := 196.
        ].
        recoveredBlock16Block29Step = 196 ifTrue: [
            recoveredBlock16Block29Stack1 := (recoveredBlock16Block29Stack1) key: (recoveredBlock16Block29Stack2) value: (recoveredBlock16Block29Stack3).
            recoveredBlock16Block29PC := 198.
        ].
        recoveredBlock16Block29Step = 198 ifTrue: [
            recoveredBlock16Block29Stack0 := (recoveredBlock16Block29Stack0) add: (recoveredBlock16Block29Stack1).
            recoveredBlock16Block29PC := 200.
        ].
        recoveredBlock16Block29Step = 200 ifTrue: [
            recoveredBlock16Block29Stack1 := nil.
            recoveredBlock16Block29PC := 201.
        ].
        recoveredBlock16Block29Step = 201 ifTrue: [
            recoveredBlock16Block29Local1 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 204.
        ].
        recoveredBlock16Block29Step = 204 ifTrue: [
            recoveredBlock16Block29Stack1 := nil.
            recoveredBlock16Block29PC := 205.
        ].
        recoveredBlock16Block29Step = 205 ifTrue: [
            recoveredBlock16Block29Local2 := recoveredBlock16Block29Stack1.
            recoveredBlock16Block29PC := 208.
        ].
        recoveredBlock16Block29Step = 208 ifTrue: [
            recoveredBlock16Block29Result := recoveredBlock16Block29Stack0.
            recoveredBlock16Block29Done := true.
        ].
    ].
    recoveredBlock16Block29Result
].
    recoveredBlock16Value3 := (recoveredBlock16Value1) ifNotNil: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20561e1c; bytecode file offset 0xe5e71c"
!ASDEHooksConfig methodsFor: 'recovered'!
autoMapping: recoveredArg1 source: recoveredArg2 target: recoveredArg3 overwrite: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
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
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isMappingValid.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 38] ifFalse: [recoveredBlock25PC := 59].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) sourceObject.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) displayName.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) targetObject.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) displayName.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Local2 recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 recoveredBlock65Value6 recoveredBlock65Value7 recoveredBlock65Value8 recoveredBlock65Value9 |
    recoveredBlock65Value0 := recoveredArg3.
    recoveredBlock65Value1 := [:recoveredBlock65Block75Arg1 | 
    | recoveredBlock65Block75Stack0 recoveredBlock65Block75Stack1 recoveredBlock65Block75Stack2 recoveredBlock65Block75Stack3 recoveredBlock65Block75Stack4 recoveredBlock65Block75PC recoveredBlock65Block75Step recoveredBlock65Block75Done recoveredBlock65Block75Result |
    recoveredBlock65Block75Stack0 := self.
    recoveredBlock65Block75PC := 82.
    recoveredBlock65Block75Done := false.
    [recoveredBlock65Block75Done not] whileTrue: [
        recoveredBlock65Block75Step := recoveredBlock65Block75PC.
        recoveredBlock65Block75Step = 82 ifTrue: [
            recoveredBlock65Block75Stack1 := nil.
            recoveredBlock65Block75PC := 83.
        ].
        recoveredBlock65Block75Step = 83 ifTrue: [
            recoveredBlock65Block75Stack2 := recoveredBlock65Arg1.
            recoveredBlock65Block75PC := 86.
        ].
        recoveredBlock65Block75Step = 86 ifTrue: [
            recoveredBlock65Block75Stack2 := (recoveredBlock65Block75Stack2) displayName.
            recoveredBlock65Block75PC := 88.
        ].
        recoveredBlock65Block75Step = 88 ifTrue: [
            recoveredBlock65Block75Stack2 := (recoveredBlock65Block75Stack2) isEmpty.
            recoveredBlock65Block75PC := 90.
        ].
        recoveredBlock65Block75Step = 90 ifTrue: [
            (recoveredBlock65Block75Stack2) ifTrue: [recoveredBlock65Block75PC := 116] ifFalse: [recoveredBlock65Block75PC := 94].
        ].
        recoveredBlock65Block75Step = 94 ifTrue: [
            recoveredBlock65Block75PC := 95.
        ].
        recoveredBlock65Block75Step = 95 ifTrue: [
            recoveredBlock65Block75Stack1 := false.
            recoveredBlock65Block75PC := 96.
        ].
        recoveredBlock65Block75Step = 96 ifTrue: [
            recoveredBlock65Block75Stack2 := recoveredBlock65Block75Arg1.
            recoveredBlock65Block75PC := 97.
        ].
        recoveredBlock65Block75Step = 97 ifTrue: [
            recoveredBlock65Block75Stack2 := (recoveredBlock65Block75Stack2) displayName.
            recoveredBlock65Block75PC := 99.
        ].
        recoveredBlock65Block75Step = 99 ifTrue: [
            recoveredBlock65Block75Stack3 := recoveredBlock65Arg1.
            recoveredBlock65Block75PC := 102.
        ].
        recoveredBlock65Block75Step = 102 ifTrue: [
            recoveredBlock65Block75Stack3 := (recoveredBlock65Block75Stack3) nameForMapping.
            recoveredBlock65Block75PC := 104.
        ].
        recoveredBlock65Block75Step = 104 ifTrue: [
            recoveredBlock65Block75Stack2 := (recoveredBlock65Block75Stack2) = (recoveredBlock65Block75Stack3).
            recoveredBlock65Block75PC := 105.
        ].
        recoveredBlock65Block75Step = 105 ifTrue: [
            (recoveredBlock65Block75Stack2) ifTrue: [recoveredBlock65Block75PC := 108] ifFalse: [recoveredBlock65Block75PC := 116].
        ].
        recoveredBlock65Block75Step = 108 ifTrue: [
            recoveredBlock65Block75PC := 109.
        ].
        recoveredBlock65Block75Step = 109 ifTrue: [
            recoveredBlock65Block75Stack1 := self.
            recoveredBlock65Block75PC := 110.
        ].
        recoveredBlock65Block75Step = 110 ifTrue: [
            recoveredBlock65Block75Stack2 := recoveredBlock65Arg1.
            recoveredBlock65Block75PC := 113.
        ].
        recoveredBlock65Block75Step = 113 ifTrue: [
            recoveredBlock65Block75Stack3 := recoveredBlock65Block75Arg1.
            recoveredBlock65Block75PC := 114.
        ].
        recoveredBlock65Block75Step = 114 ifTrue: [
            recoveredBlock65Block75Stack1 := (recoveredBlock65Block75Stack1) isMappingValidForSource: (recoveredBlock65Block75Stack2) forTarget: (recoveredBlock65Block75Stack3).
            recoveredBlock65Block75PC := 116.
        ].
        recoveredBlock65Block75Step = 116 ifTrue: [
            recoveredBlock65Block75Result := recoveredBlock65Block75Stack1.
            recoveredBlock65Block75Done := true.
        ].
    ].
    recoveredBlock65Block75Result
].
    recoveredBlock65Value2 := (recoveredBlock65Value0) select: (recoveredBlock65Value1).
    recoveredBlock65Local2 := recoveredBlock65Value2.
    recoveredBlock65Value3 := recoveredBlock65Local2.
    recoveredBlock65Value4 := [:recoveredBlock65Block125Arg1 | 
    | recoveredBlock65Block125Value0 recoveredBlock65Block125Value1 recoveredBlock65Block125Value2 recoveredBlock65Block125Value3 |
    recoveredBlock65Block125Value0 := recoveredLocal1.
    recoveredBlock65Block125Value1 := recoveredBlock65Block125Arg1.
    recoveredBlock65Block125Value2 := (recoveredBlock65Block125Value1) displayName.
    recoveredBlock65Block125Value3 := (recoveredBlock65Block125Value0) includes: (recoveredBlock65Block125Value2).
    recoveredBlock65Block125Value3
].
    recoveredBlock65Value5 := (recoveredBlock65Value3) reject: (recoveredBlock65Value4).
    recoveredBlock65Local1 := recoveredBlock65Value5.
    recoveredBlock65Value6 := recoveredBlock65Local1.
    recoveredBlock65Value7 := (recoveredBlock65Value6) someElement.
    recoveredBlock65Value8 := [:recoveredBlock65Block151Arg1 | 
    | recoveredBlock65Block151Stack0 recoveredBlock65Block151Stack1 recoveredBlock65Block151Stack2 recoveredBlock65Block151Stack3 recoveredBlock65Block151Stack4 recoveredBlock65Block151PC recoveredBlock65Block151Step recoveredBlock65Block151Done recoveredBlock65Block151Result |
    recoveredBlock65Block151Stack0 := nil.
    recoveredBlock65Block151PC := 158.
    recoveredBlock65Block151Done := false.
    [recoveredBlock65Block151Done not] whileTrue: [
        recoveredBlock65Block151Step := recoveredBlock65Block151PC.
        recoveredBlock65Block151Step = 158 ifTrue: [
            recoveredBlock65Block151Stack1 := nil.
            recoveredBlock65Block151PC := 159.
        ].
        recoveredBlock65Block151Step = 159 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredArg4.
            recoveredBlock65Block151PC := 162.
        ].
        recoveredBlock65Block151Step = 162 ifTrue: [
            (recoveredBlock65Block151Stack2) ifTrue: [recoveredBlock65Block151PC := 186] ifFalse: [recoveredBlock65Block151PC := 166].
        ].
        recoveredBlock65Block151Step = 166 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredArg4.
            recoveredBlock65Block151PC := 169.
        ].
        recoveredBlock65Block151Step = 169 ifTrue: [
            (recoveredBlock65Block151Stack2) ifTrue: [recoveredBlock65Block151PC := 225] ifFalse: [recoveredBlock65Block151PC := 172].
        ].
        recoveredBlock65Block151Step = 172 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredLocal2.
            recoveredBlock65Block151PC := 175.
        ].
        recoveredBlock65Block151Step = 175 ifTrue: [
            recoveredBlock65Block151Stack3 := recoveredBlock65Arg1.
            recoveredBlock65Block151PC := 178.
        ].
        recoveredBlock65Block151Step = 178 ifTrue: [
            recoveredBlock65Block151Stack3 := (recoveredBlock65Block151Stack3) displayName.
            recoveredBlock65Block151PC := 180.
        ].
        recoveredBlock65Block151Step = 180 ifTrue: [
            recoveredBlock65Block151Stack2 := (recoveredBlock65Block151Stack2) includes: (recoveredBlock65Block151Stack3).
            recoveredBlock65Block151PC := 182.
        ].
        recoveredBlock65Block151Step = 182 ifTrue: [
            (recoveredBlock65Block151Stack2) ifTrue: [recoveredBlock65Block151PC := 225] ifFalse: [recoveredBlock65Block151PC := 186].
        ].
        recoveredBlock65Block151Step = 186 ifTrue: [
            recoveredBlock65Block151PC := 187.
        ].
        recoveredBlock65Block151Step = 187 ifTrue: [
            recoveredBlock65Block151Stack1 := recoveredLocal3.
            recoveredBlock65Block151PC := 190.
        ].
        recoveredBlock65Block151Step = 190 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredBlock65Arg1.
            recoveredBlock65Block151PC := 193.
        ].
        recoveredBlock65Block151Step = 193 ifTrue: [
            recoveredBlock65Block151Stack3 := [
    | block28110a64Value0 block28110a64Value1 |
    block28110a64Value0 := Set.
    block28110a64Value1 := (block28110a64Value0) new.
    block28110a64Value1
].
            recoveredBlock65Block151PC := 195.
        ].
        recoveredBlock65Block151Step = 195 ifTrue: [
            recoveredBlock65Block151PC := 202.
        ].
        recoveredBlock65Block151Step = 202 ifTrue: [
            recoveredBlock65Block151Stack1 := (recoveredBlock65Block151Stack1) at: (recoveredBlock65Block151Stack2) ifAbsentPut: (recoveredBlock65Block151Stack3).
            recoveredBlock65Block151PC := 204.
        ].
        recoveredBlock65Block151Step = 204 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredBlock65Block151Arg1.
            recoveredBlock65Block151PC := 205.
        ].
        recoveredBlock65Block151Step = 205 ifTrue: [
            (recoveredBlock65Block151Stack1) add: (recoveredBlock65Block151Stack2).
            recoveredBlock65Block151PC := 207.
        ].
        recoveredBlock65Block151Step = 207 ifTrue: [
            recoveredBlock65Block151Stack1 := recoveredLocal2.
            recoveredBlock65Block151PC := 210.
        ].
        recoveredBlock65Block151Step = 210 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredBlock65Arg1.
            recoveredBlock65Block151PC := 213.
        ].
        recoveredBlock65Block151Step = 213 ifTrue: [
            recoveredBlock65Block151Stack2 := (recoveredBlock65Block151Stack2) displayName.
            recoveredBlock65Block151PC := 215.
        ].
        recoveredBlock65Block151Step = 215 ifTrue: [
            (recoveredBlock65Block151Stack1) add: (recoveredBlock65Block151Stack2).
            recoveredBlock65Block151PC := 217.
        ].
        recoveredBlock65Block151Step = 217 ifTrue: [
            recoveredBlock65Block151Stack1 := recoveredLocal1.
            recoveredBlock65Block151PC := 220.
        ].
        recoveredBlock65Block151Step = 220 ifTrue: [
            recoveredBlock65Block151Stack2 := recoveredBlock65Block151Arg1.
            recoveredBlock65Block151PC := 221.
        ].
        recoveredBlock65Block151Step = 221 ifTrue: [
            recoveredBlock65Block151Stack2 := (recoveredBlock65Block151Stack2) displayName.
            recoveredBlock65Block151PC := 223.
        ].
        recoveredBlock65Block151Step = 223 ifTrue: [
            recoveredBlock65Block151Stack1 := (recoveredBlock65Block151Stack1) add: (recoveredBlock65Block151Stack2).
            recoveredBlock65Block151PC := 225.
        ].
        recoveredBlock65Block151Step = 225 ifTrue: [
            recoveredBlock65Block151Result := recoveredBlock65Block151Stack1.
            recoveredBlock65Block151Done := true.
        ].
    ].
    recoveredBlock65Block151Result
].
    recoveredBlock65Value9 := (recoveredBlock65Value7) ifNotNil: (recoveredBlock65Value8).
    recoveredBlock65Value9
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20570c30; bytecode file offset 0xe6d53c"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsType: recoveredArg1 updateUIForSourceObjects: recoveredArg2 targetObjects: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsForType: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value1) displayName.
    recoveredBlock35Value3 := OrderedCollection.
    recoveredBlock35Value4 := ASDMappingObject.
    recoveredBlock35Value5 := (recoveredBlock35Value4) create.
    recoveredBlock35Value6 := recoveredBlock35Arg1.
    recoveredBlock35Value7 := (recoveredBlock35Value5) sourceObject: (recoveredBlock35Value6).
    recoveredBlock35Value8 := (recoveredBlock35Value3) with: (recoveredBlock35Value7).
    recoveredBlock35Value9 := (recoveredBlock35Value0) at: (recoveredBlock35Value2) put: (recoveredBlock35Value8).
    recoveredBlock35Value9
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsCopyForType: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 |
    recoveredBlock82Value0 := recoveredBlock82Arg1.
    recoveredBlock82Value1 := [:recoveredBlock82Block89Arg1 | 
    | recoveredBlock82Block89Stack0 recoveredBlock82Block89Stack1 recoveredBlock82Block89Stack2 recoveredBlock82Block89Stack3 recoveredBlock82Block89Stack4 recoveredBlock82Block89PC recoveredBlock82Block89Step recoveredBlock82Block89Done recoveredBlock82Block89Result |
    recoveredBlock82Block89Stack0 := self.
    recoveredBlock82Block89PC := 96.
    recoveredBlock82Block89Done := false.
    [recoveredBlock82Block89Done not] whileTrue: [
        recoveredBlock82Block89Step := recoveredBlock82Block89PC.
        recoveredBlock82Block89Step = 96 ifTrue: [
            recoveredBlock82Block89Stack1 := nil.
            recoveredBlock82Block89PC := 97.
        ].
        recoveredBlock82Block89Step = 97 ifTrue: [
            recoveredBlock82Block89Stack2 := recoveredArg2.
            recoveredBlock82Block89PC := 100.
        ].
        recoveredBlock82Block89Step = 100 ifTrue: [
            recoveredBlock82Block89Stack3 := [:recoveredBlock82Block89Block100Arg1 | 
    | recoveredBlock82Block89Block100Value0 recoveredBlock82Block89Block100Value1 recoveredBlock82Block89Block100Value2 recoveredBlock82Block89Block100Value3 recoveredBlock82Block89Block100Value4 recoveredBlock82Block89Block100Value5 |
    recoveredBlock82Block89Block100Value0 := recoveredBlock82Block89Block100Arg1.
    recoveredBlock82Block89Block100Value1 := (recoveredBlock82Block89Block100Value0) displayName.
    recoveredBlock82Block89Block100Value2 := recoveredBlock82Block89Arg1.
    recoveredBlock82Block89Block100Value3 := (recoveredBlock82Block89Block100Value2) sourceObject.
    recoveredBlock82Block89Block100Value4 := (recoveredBlock82Block89Block100Value3) displayName.
    recoveredBlock82Block89Block100Value5 := (recoveredBlock82Block89Block100Value1) = (recoveredBlock82Block89Block100Value4).
    recoveredBlock82Block89Block100Value5
].
            recoveredBlock82Block89PC := 118.
        ].
        recoveredBlock82Block89Step = 118 ifTrue: [
            recoveredBlock82Block89Stack2 := (recoveredBlock82Block89Stack2) anySatisfy: (recoveredBlock82Block89Stack3).
            recoveredBlock82Block89PC := 120.
        ].
        recoveredBlock82Block89Step = 120 ifTrue: [
            (recoveredBlock82Block89Stack2) ifTrue: [recoveredBlock82Block89PC := 147] ifFalse: [recoveredBlock82Block89PC := 124].
        ].
        recoveredBlock82Block89Step = 124 ifTrue: [
            recoveredBlock82Block89PC := 125.
        ].
        recoveredBlock82Block89Step = 125 ifTrue: [
            recoveredBlock82Block89Stack1 := recoveredBlock82Block89Arg1.
            recoveredBlock82Block89PC := 128.
        ].
        recoveredBlock82Block89Step = 128 ifTrue: [
            recoveredBlock82Block89Stack1 := (recoveredBlock82Block89Stack1) sourceObject.
            recoveredBlock82Block89PC := 130.
        ].
        recoveredBlock82Block89Step = 130 ifTrue: [
            (recoveredBlock82Block89Stack1) fillPropertiesUnknown.
            recoveredBlock82Block89PC := 132.
        ].
        recoveredBlock82Block89Step = 132 ifTrue: [
            recoveredBlock82Block89Stack1 := recoveredBlock82Block89Arg1.
            recoveredBlock82Block89PC := 135.
        ].
        recoveredBlock82Block89Step = 135 ifTrue: [
            recoveredBlock82Block89Stack2 := recoveredArg3.
            recoveredBlock82Block89PC := 138.
        ].
        recoveredBlock82Block89Step = 138 ifTrue: [
            recoveredBlock82Block89Stack3 := self.
            recoveredBlock82Block89PC := 139.
        ].
        recoveredBlock82Block89Step = 139 ifTrue: [
            (recoveredBlock82Block89Stack1) fillTargetObjectProperties: (recoveredBlock82Block89Stack2) asc: (recoveredBlock82Block89Stack3).
            recoveredBlock82Block89PC := 141.
        ].
        recoveredBlock82Block89Step = 141 ifTrue: [
            recoveredBlock82Block89Stack1 := recoveredBlock82Block89Arg1.
            recoveredBlock82Block89PC := 144.
        ].
        recoveredBlock82Block89Step = 144 ifTrue: [
            recoveredBlock82Block89Stack2 := false.
            recoveredBlock82Block89PC := 145.
        ].
        recoveredBlock82Block89Step = 145 ifTrue: [
            recoveredBlock82Block89Stack1 := (recoveredBlock82Block89Stack1) mappingState: (recoveredBlock82Block89Stack2).
            recoveredBlock82Block89PC := 147.
        ].
        recoveredBlock82Block89Step = 147 ifTrue: [
            recoveredBlock82Block89Result := recoveredBlock82Block89Stack1.
            recoveredBlock82Block89Done := true.
        ].
    ].
    recoveredBlock82Block89Result
].
    recoveredBlock82Value2 := (recoveredBlock82Value0) do: (recoveredBlock82Value1).
    recoveredBlock82Value2
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Local1 recoveredBlock156Stack0 recoveredBlock156Stack1 recoveredBlock156Stack2 recoveredBlock156Stack3 recoveredBlock156Stack4 recoveredBlock156Stack5 recoveredBlock156Stack6 recoveredBlock156PC recoveredBlock156Step recoveredBlock156Done recoveredBlock156Result |
    recoveredBlock156Stack0 := self.
    recoveredBlock156PC := 162.
    recoveredBlock156Done := false.
    [recoveredBlock156Done not] whileTrue: [
        recoveredBlock156Step := recoveredBlock156PC.
        recoveredBlock156Step = 162 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal1.
            recoveredBlock156PC := 165.
        ].
        recoveredBlock156Step = 165 ifTrue: [
            recoveredBlock156Stack2 := recoveredBlock156Arg1.
            recoveredBlock156PC := 168.
        ].
        recoveredBlock156Step = 168 ifTrue: [
            recoveredBlock156Stack2 := (recoveredBlock156Stack2) displayName.
            recoveredBlock156PC := 170.
        ].
        recoveredBlock156Step = 170 ifTrue: [
            recoveredBlock156Stack3 := [].
            recoveredBlock156PC := 172.
        ].
        recoveredBlock156Step = 172 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) at: (recoveredBlock156Stack2) ifAbsent: (recoveredBlock156Stack3).
            recoveredBlock156PC := 174.
        ].
        recoveredBlock156Step = 174 ifTrue: [
            recoveredBlock156Local1 := recoveredBlock156Stack1.
            recoveredBlock156PC := 177.
        ].
        recoveredBlock156Step = 177 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local1.
            recoveredBlock156PC := 180.
        ].
        recoveredBlock156Step = 180 ifTrue: [
            (recoveredBlock156Stack1 ~~ nil) ifTrue: [recoveredBlock156PC := 210] ifFalse: [recoveredBlock156PC := 184].
        ].
        recoveredBlock156Step = 184 ifTrue: [
            recoveredBlock156Stack1 := recoveredLocal1.
            recoveredBlock156PC := 187.
        ].
        recoveredBlock156Step = 187 ifTrue: [
            recoveredBlock156Stack2 := recoveredBlock156Arg1.
            recoveredBlock156PC := 190.
        ].
        recoveredBlock156Step = 190 ifTrue: [
            recoveredBlock156Stack2 := (recoveredBlock156Stack2) displayName.
            recoveredBlock156PC := 192.
        ].
        recoveredBlock156Step = 192 ifTrue: [
            recoveredBlock156Stack3 := OrderedCollection.
            recoveredBlock156PC := 194.
        ].
        recoveredBlock156Step = 194 ifTrue: [
            recoveredBlock156Stack4 := ASDMappingObject.
            recoveredBlock156PC := 196.
        ].
        recoveredBlock156Step = 196 ifTrue: [
            recoveredBlock156Stack4 := (recoveredBlock156Stack4) create.
            recoveredBlock156PC := 198.
        ].
        recoveredBlock156Step = 198 ifTrue: [
            recoveredBlock156Stack5 := recoveredBlock156Arg1.
            recoveredBlock156PC := 201.
        ].
        recoveredBlock156Step = 201 ifTrue: [
            recoveredBlock156Stack4 := (recoveredBlock156Stack4) sourceObject: (recoveredBlock156Stack5).
            recoveredBlock156PC := 203.
        ].
        recoveredBlock156Step = 203 ifTrue: [
            recoveredBlock156Stack3 := (recoveredBlock156Stack3) with: (recoveredBlock156Stack4).
            recoveredBlock156PC := 205.
        ].
        recoveredBlock156Step = 205 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) at: (recoveredBlock156Stack2) put: (recoveredBlock156Stack3).
            recoveredBlock156PC := 207.
        ].
        recoveredBlock156Step = 207 ifTrue: [
            recoveredBlock156PC := 240.
        ].
        recoveredBlock156Step = 210 ifTrue: [
            recoveredBlock156Stack1 := recoveredBlock156Local1.
            recoveredBlock156PC := 213.
        ].
        recoveredBlock156Step = 213 ifTrue: [
            recoveredBlock156Stack2 := [:recoveredBlock156Block213Arg1 | 
    | recoveredBlock156Block213Value0 recoveredBlock156Block213Value1 recoveredBlock156Block213Value2 recoveredBlock156Block213Value3 recoveredBlock156Block213Value4 recoveredBlock156Block213Value5 |
    recoveredBlock156Block213Value0 := recoveredBlock156Block213Arg1.
    recoveredBlock156Block213Value1 := recoveredBlock156Arg1.
    (recoveredBlock156Block213Value0) fillSourceObjectProperties: (recoveredBlock156Block213Value1).
    recoveredBlock156Block213Value2 := recoveredBlock156Block213Arg1.
    (recoveredBlock156Block213Value2) mappingState: (nil).
    recoveredBlock156Block213Value3 := recoveredBlock156Block213Arg1.
    recoveredBlock156Block213Value4 := recoveredArg3.
    recoveredBlock156Block213Value5 := (recoveredBlock156Block213Value3) fillTargetObjectProperties: (recoveredBlock156Block213Value4) asc: (self).
    recoveredBlock156Block213Value5
].
            recoveredBlock156PC := 238.
        ].
        recoveredBlock156Step = 238 ifTrue: [
            recoveredBlock156Stack1 := (recoveredBlock156Stack1) do: (recoveredBlock156Stack2).
            recoveredBlock156PC := 240.
        ].
        recoveredBlock156Step = 240 ifTrue: [
            recoveredBlock156Result := recoveredBlock156Stack1.
            recoveredBlock156Done := true.
        ].
    ].
    recoveredBlock156Result
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057e734; bytecode file offset 0xe7b054"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingSourceObjectsForInput: recoveredArg1 withoutSendRec: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := (self) project.
    recoveredValue3 := (recoveredValue2) allValidProcessInstVars.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack3 := [:block28112e1cArg1 | 
    | block28112e1cValue0 |
    block28112e1cValue0 := block28112e1cArg1.
    block28112e1cValue0
].
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) sgClassIfUndefined: (recoveredBlock12Stack3).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredLocal4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRBDBUndefinedObject.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 57] ifFalse: [recoveredBlock12PC := 40].
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal4.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isProcessClass.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 48] ifFalse: [recoveredBlock12PC := 57].
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal5.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal4.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := Set.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Arg1.
            recoveredBlock69PC := 77.
        ].
        recoveredBlock69Step = 77 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) allVariables.
            recoveredBlock69PC := 79.
        ].
        recoveredBlock69Step = 79 ifTrue: [
            recoveredBlock69Stack2 := [:block28112e40Arg1 | 
    | block28112e40Value0 block28112e40Value1 block28112e40Value2 |
    block28112e40Value0 := block28112e40Arg1.
    block28112e40Value1 := (block28112e40Value0) sgClass.
    block28112e40Value2 := (block28112e40Value1) notNil.
    block28112e40Value2
].
            recoveredBlock69PC := 81.
        ].
        recoveredBlock69Step = 81 ifTrue: [
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) select: (recoveredBlock69Stack2).
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack2 := [:recoveredBlock69Block91Arg1 | 
    | recoveredBlock69Block91Local1 recoveredBlock69Block91Local2 recoveredBlock69Block91Stack0 recoveredBlock69Block91Stack1 recoveredBlock69Block91Stack2 recoveredBlock69Block91Stack3 recoveredBlock69Block91Stack4 recoveredBlock69Block91Stack5 recoveredBlock69Block91Stack6 recoveredBlock69Block91Stack7 recoveredBlock69Block91PC recoveredBlock69Block91Step recoveredBlock69Block91Done recoveredBlock69Block91Result |
    recoveredBlock69Block91Stack0 := self.
    recoveredBlock69Block91PC := 98.
    recoveredBlock69Block91Done := false.
    [recoveredBlock69Block91Done not] whileTrue: [
        recoveredBlock69Block91Step := recoveredBlock69Block91PC.
        recoveredBlock69Block91Step = 98 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 99.
        ].
        recoveredBlock69Block91Step = 99 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) sgClass.
            recoveredBlock69Block91PC := 101.
        ].
        recoveredBlock69Block91Step = 101 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isSGVector.
            recoveredBlock69Block91PC := 103.
        ].
        recoveredBlock69Block91Step = 103 ifTrue: [
            (recoveredBlock69Block91Stack1) ifTrue: [recoveredBlock69Block91PC := 114] ifFalse: [recoveredBlock69Block91PC := 106].
        ].
        recoveredBlock69Block91Step = 106 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 107.
        ].
        recoveredBlock69Block91Step = 107 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) sgClass.
            recoveredBlock69Block91PC := 109.
        ].
        recoveredBlock69Block91Step = 109 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isSGMatrix.
            recoveredBlock69Block91PC := 111.
        ].
        recoveredBlock69Block91Step = 111 ifTrue: [
            (recoveredBlock69Block91Stack1) ifTrue: [recoveredBlock69Block91PC := 114] ifFalse: [recoveredBlock69Block91PC := 118].
        ].
        recoveredBlock69Block91Step = 114 ifTrue: [
            recoveredBlock69Block91Stack1 := nil.
            recoveredBlock69Block91PC := 115.
        ].
        recoveredBlock69Block91Step = 115 ifTrue: [
            recoveredBlock69Block91PC := 249.
        ].
        recoveredBlock69Block91Step = 118 ifTrue: [
            recoveredBlock69Block91Stack1 := false.
            recoveredBlock69Block91PC := 119.
        ].
        recoveredBlock69Block91Step = 119 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 120.
        ].
        recoveredBlock69Block91Step = 120 ifTrue: [
            recoveredBlock69Block91Stack2 := (recoveredBlock69Block91Stack2) isSend.
            recoveredBlock69Block91PC := 122.
        ].
        recoveredBlock69Block91Step = 122 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 126] ifFalse: [recoveredBlock69Block91PC := 130].
        ].
        recoveredBlock69Block91Step = 126 ifTrue: [
            recoveredBlock69Block91PC := 127.
        ].
        recoveredBlock69Block91Step = 127 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 128.
        ].
        recoveredBlock69Block91Step = 128 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isReceive.
            recoveredBlock69Block91PC := 130.
        ].
        recoveredBlock69Block91Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91PC := 133.
        ].
        recoveredBlock69Block91Step = 133 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredArg1.
            recoveredBlock69Block91PC := 136.
        ].
        recoveredBlock69Block91Step = 136 ifTrue: [
            (recoveredBlock69Block91Stack1) ifTrue: [recoveredBlock69Block91PC := 140] ifFalse: [recoveredBlock69Block91PC := 162].
        ].
        recoveredBlock69Block91Step = 140 ifTrue: [
            recoveredBlock69Block91Stack1 := false.
            recoveredBlock69Block91PC := 141.
        ].
        recoveredBlock69Block91Step = 141 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 142.
        ].
        recoveredBlock69Block91Step = 142 ifTrue: [
            recoveredBlock69Block91Stack2 := (recoveredBlock69Block91Stack2) isMessage.
            recoveredBlock69Block91PC := 144.
        ].
        recoveredBlock69Block91Step = 144 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 148] ifFalse: [recoveredBlock69Block91PC := 152].
        ].
        recoveredBlock69Block91Step = 148 ifTrue: [
            recoveredBlock69Block91PC := 149.
        ].
        recoveredBlock69Block91Step = 149 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 150.
        ].
        recoveredBlock69Block91Step = 150 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isReceive.
            recoveredBlock69Block91PC := 152.
        ].
        recoveredBlock69Block91Step = 152 ifTrue: [
            recoveredBlock69Block91Local2 := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91PC := 153.
        ].
        recoveredBlock69Block91Step = 153 ifTrue: [
            recoveredBlock69Block91Stack1 := self.
            recoveredBlock69Block91PC := 154.
        ].
        recoveredBlock69Block91Step = 154 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) class.
            recoveredBlock69Block91PC := 156.
        ].
        recoveredBlock69Block91Step = 156 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) mappingTypeInput.
            recoveredBlock69Block91PC := 158.
        ].
        recoveredBlock69Block91Step = 158 ifTrue: [
            recoveredBlock69Block91Local1 := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91PC := 159.
        ].
        recoveredBlock69Block91Step = 159 ifTrue: [
            recoveredBlock69Block91PC := 181.
        ].
        recoveredBlock69Block91Step = 162 ifTrue: [
            recoveredBlock69Block91Stack1 := false.
            recoveredBlock69Block91PC := 163.
        ].
        recoveredBlock69Block91Step = 163 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 164.
        ].
        recoveredBlock69Block91Step = 164 ifTrue: [
            recoveredBlock69Block91Stack2 := (recoveredBlock69Block91Stack2) isMessage.
            recoveredBlock69Block91PC := 166.
        ].
        recoveredBlock69Block91Step = 166 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 170] ifFalse: [recoveredBlock69Block91PC := 174].
        ].
        recoveredBlock69Block91Step = 170 ifTrue: [
            recoveredBlock69Block91PC := 171.
        ].
        recoveredBlock69Block91Step = 171 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 172.
        ].
        recoveredBlock69Block91Step = 172 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isSend.
            recoveredBlock69Block91PC := 174.
        ].
        recoveredBlock69Block91Step = 174 ifTrue: [
            recoveredBlock69Block91Local2 := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91PC := 175.
        ].
        recoveredBlock69Block91Step = 175 ifTrue: [
            recoveredBlock69Block91Stack1 := self.
            recoveredBlock69Block91PC := 176.
        ].
        recoveredBlock69Block91Step = 176 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) class.
            recoveredBlock69Block91PC := 178.
        ].
        recoveredBlock69Block91Step = 178 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) mappingTypeOutput.
            recoveredBlock69Block91PC := 180.
        ].
        recoveredBlock69Block91Step = 180 ifTrue: [
            recoveredBlock69Block91Local1 := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91PC := 181.
        ].
        recoveredBlock69Block91Step = 181 ifTrue: [
            recoveredBlock69Block91Stack1 := nil.
            recoveredBlock69Block91PC := 182.
        ].
        recoveredBlock69Block91Step = 182 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Local2.
            recoveredBlock69Block91PC := 183.
        ].
        recoveredBlock69Block91Step = 183 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 186] ifFalse: [recoveredBlock69Block91PC := 245].
        ].
        recoveredBlock69Block91Step = 186 ifTrue: [
            recoveredBlock69Block91PC := 187.
        ].
        recoveredBlock69Block91Step = 187 ifTrue: [
            recoveredBlock69Block91Stack1 := nil.
            recoveredBlock69Block91PC := 188.
        ].
        recoveredBlock69Block91Step = 188 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredArg2.
            recoveredBlock69Block91PC := 191.
        ].
        recoveredBlock69Block91Step = 191 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 194] ifFalse: [recoveredBlock69Block91PC := 200].
        ].
        recoveredBlock69Block91Step = 194 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredLocal2.
            recoveredBlock69Block91PC := 197.
        ].
        recoveredBlock69Block91Step = 197 ifTrue: [
            (recoveredBlock69Block91Stack2) ifTrue: [recoveredBlock69Block91PC := 245] ifFalse: [recoveredBlock69Block91PC := 200].
        ].
        recoveredBlock69Block91Step = 200 ifTrue: [
            recoveredBlock69Block91PC := 201.
        ].
        recoveredBlock69Block91Step = 201 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 202.
        ].
        recoveredBlock69Block91Step = 202 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) isRecord.
            recoveredBlock69Block91PC := 204.
        ].
        recoveredBlock69Block91Step = 204 ifTrue: [
            (recoveredBlock69Block91Stack1) ifTrue: [recoveredBlock69Block91PC := 208] ifFalse: [recoveredBlock69Block91PC := 234].
        ].
        recoveredBlock69Block91Step = 208 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredLocal3.
            recoveredBlock69Block91PC := 211.
        ].
        recoveredBlock69Block91Step = 211 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 212.
        ].
        recoveredBlock69Block91Step = 212 ifTrue: [
            recoveredBlock69Block91Stack3 := OrderedCollection.
            recoveredBlock69Block91PC := 214.
        ].
        recoveredBlock69Block91Step = 214 ifTrue: [
            recoveredBlock69Block91Stack3 := (recoveredBlock69Block91Stack3) new.
            recoveredBlock69Block91PC := 215.
        ].
        recoveredBlock69Block91Step = 215 ifTrue: [
            recoveredBlock69Block91Stack4 := recoveredBlock69Block91Stack3.
            recoveredBlock69Block91PC := 216.
        ].
        recoveredBlock69Block91Step = 216 ifTrue: [
            recoveredBlock69Block91Stack5 := self.
            recoveredBlock69Block91PC := 217.
        ].
        recoveredBlock69Block91Step = 217 ifTrue: [
            (recoveredBlock69Block91Stack4) add: (recoveredBlock69Block91Stack5).
            recoveredBlock69Block91Stack4 := recoveredBlock69Block91Stack3.
            recoveredBlock69Block91PC := 220.
        ].
        recoveredBlock69Block91Step = 220 ifTrue: [
            recoveredBlock69Block91Stack5 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 221.
        ].
        recoveredBlock69Block91Step = 221 ifTrue: [
            (recoveredBlock69Block91Stack4) add: (recoveredBlock69Block91Stack5).
            recoveredBlock69Block91PC := 223.
        ].
        recoveredBlock69Block91Step = 223 ifTrue: [
            recoveredBlock69Block91Stack4 := recoveredBlock69Block91Local1.
            recoveredBlock69Block91PC := 224.
        ].
        recoveredBlock69Block91Step = 224 ifTrue: [
            recoveredBlock69Block91Stack5 := false.
            recoveredBlock69Block91PC := 225.
        ].
        recoveredBlock69Block91Step = 225 ifTrue: [
            recoveredBlock69Block91Stack6 := false.
            recoveredBlock69Block91PC := 226.
        ].
        recoveredBlock69Block91Step = 226 ifTrue: [
            recoveredBlock69Block91Stack2 := (recoveredBlock69Block91Stack2) asMappingSourcesForRecordElementsInEHooks: (recoveredBlock69Block91Stack3) type: (recoveredBlock69Block91Stack4) withArrays: (recoveredBlock69Block91Stack5) withMatrices: (recoveredBlock69Block91Stack6).
            recoveredBlock69Block91PC := 229.
        ].
        recoveredBlock69Block91Step = 229 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) addAll: (recoveredBlock69Block91Stack2).
            recoveredBlock69Block91PC := 231.
        ].
        recoveredBlock69Block91Step = 231 ifTrue: [
            recoveredBlock69Block91PC := 245.
        ].
        recoveredBlock69Block91Step = 234 ifTrue: [
            recoveredBlock69Block91Stack1 := recoveredLocal3.
            recoveredBlock69Block91PC := 237.
        ].
        recoveredBlock69Block91Step = 237 ifTrue: [
            recoveredBlock69Block91Stack2 := recoveredBlock69Block91Arg1.
            recoveredBlock69Block91PC := 238.
        ].
        recoveredBlock69Block91Step = 238 ifTrue: [
            recoveredBlock69Block91Stack3 := recoveredBlock69Block91Local1.
            recoveredBlock69Block91PC := 239.
        ].
        recoveredBlock69Block91Step = 239 ifTrue: [
            recoveredBlock69Block91Stack4 := self.
            recoveredBlock69Block91PC := 240.
        ].
        recoveredBlock69Block91Step = 240 ifTrue: [
            recoveredBlock69Block91Stack4 := (recoveredBlock69Block91Stack4) project.
            recoveredBlock69Block91PC := 241.
        ].
        recoveredBlock69Block91Step = 241 ifTrue: [
            recoveredBlock69Block91Stack2 := (recoveredBlock69Block91Stack2) asEHooksMappingSourceType: (recoveredBlock69Block91Stack3) inProject: (recoveredBlock69Block91Stack4).
            recoveredBlock69Block91PC := 243.
        ].
        recoveredBlock69Block91Step = 243 ifTrue: [
            recoveredBlock69Block91Stack1 := (recoveredBlock69Block91Stack1) add: (recoveredBlock69Block91Stack2).
            recoveredBlock69Block91PC := 245.
        ].
        recoveredBlock69Block91Step = 245 ifTrue: [
            recoveredBlock69Block91Stack2 := nil.
            recoveredBlock69Block91PC := 246.
        ].
        recoveredBlock69Block91Step = 246 ifTrue: [
            recoveredBlock69Block91Stack3 := recoveredBlock69Block91Stack2.
            recoveredBlock69Block91PC := 247.
        ].
        recoveredBlock69Block91Step = 247 ifTrue: [
            recoveredBlock69Block91Local2 := recoveredBlock69Block91Stack3.
            recoveredBlock69Block91PC := 248.
        ].
        recoveredBlock69Block91Step = 248 ifTrue: [
            recoveredBlock69Block91Local1 := recoveredBlock69Block91Stack2.
            recoveredBlock69Block91PC := 249.
        ].
        recoveredBlock69Block91Step = 249 ifTrue: [
            recoveredBlock69Block91Result := recoveredBlock69Block91Stack1.
            recoveredBlock69Block91Done := true.
        ].
    ].
    recoveredBlock69Block91Result
].
            recoveredBlock69PC := 250.
        ].
        recoveredBlock69Step = 250 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) do: (recoveredBlock69Stack2).
            recoveredBlock69PC := 252.
        ].
        recoveredBlock69Step = 252 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal3.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20590b6c; bytecode file offset 0xe8d4ac"
!ASDEHooksConfig methodsFor: 'recovered'!
importType: recoveredArg1 objects: recoveredArg2 toWidget: recoveredArg3 withoutSendRec: recoveredArg4 outStream: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) infoStartedImport: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingObjects.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingsForType: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:block281148b0Arg1 :block281148b0Arg2 | 
    | block281148b0Value0 block281148b0Value1 block281148b0Value2 |
    block281148b0Value0 := block281148b0Arg1.
    block281148b0Value1 := block281148b0Arg2.
    (block281148b0Value0) addAll: (block281148b0Value1).
    block281148b0Value2 := block281148b0Arg1.
    block281148b0Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingSourceObjectsForType: (recoveredStack3) withoutSendRec: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) mappingTargetObjectsForType: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) mappingsUpdatePropertiesFor: (recoveredStack1) sources: (recoveredStack2) targets: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105Stack4 recoveredBlock105Stack5 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := recoveredBlock105Arg1.
            recoveredBlock105PC := 113.
        ].
        recoveredBlock105Step = 113 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) targetObject.
            recoveredBlock105PC := 115.
        ].
        recoveredBlock105Step = 115 ifTrue: [
            recoveredBlock105Stack2 := recoveredArg1.
            recoveredBlock105PC := 118.
        ].
        recoveredBlock105Step = 118 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) supportsMultiMappableTargets: (recoveredBlock105Stack2).
            recoveredBlock105PC := 120.
        ].
        recoveredBlock105Step = 120 ifTrue: [
            (recoveredBlock105Stack1) ifTrue: [recoveredBlock105PC := 172] ifFalse: [recoveredBlock105PC := 124].
        ].
        recoveredBlock105Step = 124 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal2.
            recoveredBlock105PC := 127.
        ].
        recoveredBlock105Step = 127 ifTrue: [
            recoveredBlock105Stack2 := [:block281148d4Arg1 | 
    | block281148d4Value0 block281148d4Value1 block281148d4Value2 |
    block281148d4Value0 := block281148d4Arg1.
    block281148d4Value1 := (block281148d4Value0) targetObject.
    block281148d4Value2 := (block281148d4Value1) displayName.
    block281148d4Value2
].
            recoveredBlock105PC := 129.
        ].
        recoveredBlock105Step = 129 ifTrue: [
            recoveredBlock105PC := 138.
        ].
        recoveredBlock105Step = 138 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) collect: (recoveredBlock105Stack2).
            recoveredBlock105PC := 140.
        ].
        recoveredBlock105Step = 140 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Arg1.
            recoveredBlock105PC := 141.
        ].
        recoveredBlock105Step = 141 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) targetObject.
            recoveredBlock105PC := 143.
        ].
        recoveredBlock105Step = 143 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) displayName.
            recoveredBlock105PC := 145.
        ].
        recoveredBlock105Step = 145 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) includes: (recoveredBlock105Stack2).
            recoveredBlock105PC := 147.
        ].
        recoveredBlock105Step = 147 ifTrue: [
            (recoveredBlock105Stack1) ifTrue: [recoveredBlock105PC := 150] ifFalse: [recoveredBlock105PC := 172].
        ].
        recoveredBlock105Step = 150 ifTrue: [
            recoveredBlock105Stack1 := recoveredArg5.
            recoveredBlock105PC := 153.
        ].
        recoveredBlock105Step = 153 ifTrue: [
            recoveredBlock105Stack2 := 'Import of target object (>'.
            recoveredBlock105PC := 155.
        ].
        recoveredBlock105Step = 155 ifTrue: [
            recoveredBlock105Stack3 := recoveredBlock105Arg1.
            recoveredBlock105PC := 156.
        ].
        recoveredBlock105Step = 156 ifTrue: [
            recoveredBlock105Stack3 := (recoveredBlock105Stack3) targetObject.
            recoveredBlock105PC := 158.
        ].
        recoveredBlock105Step = 158 ifTrue: [
            recoveredBlock105Stack3 := (recoveredBlock105Stack3) displayName.
            recoveredBlock105PC := 160.
        ].
        recoveredBlock105Step = 160 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) , (recoveredBlock105Stack3).
            recoveredBlock105PC := 162.
        ].
        recoveredBlock105Step = 162 ifTrue: [
            recoveredBlock105Stack3 := '<) prevented because it is already mapped!!'.
            recoveredBlock105PC := 164.
        ].
        recoveredBlock105Step = 164 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) , (recoveredBlock105Stack3).
            recoveredBlock105PC := 166.
        ].
        recoveredBlock105Step = 166 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) addWarningText: (recoveredBlock105Stack2).
            recoveredBlock105PC := 168.
        ].
        recoveredBlock105Step = 168 ifTrue: [
            recoveredBlock105PC := 215.
        ].
        recoveredBlock105Step = 172 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal3.
            recoveredBlock105PC := 175.
        ].
        recoveredBlock105Step = 175 ifTrue: [
            (recoveredBlock105Stack1) ifTrue: [recoveredBlock105PC := 178] ifFalse: [recoveredBlock105PC := 194].
        ].
        recoveredBlock105Step = 178 ifTrue: [
            recoveredBlock105Stack1 := recoveredArg3.
            recoveredBlock105PC := 181.
        ].
        recoveredBlock105Step = 181 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Arg1.
            recoveredBlock105PC := 182.
        ].
        recoveredBlock105Step = 182 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) sourceObject.
            recoveredBlock105PC := 184.
        ].
        recoveredBlock105Step = 184 ifTrue: [
            recoveredBlock105Stack3 := recoveredBlock105Arg1.
            recoveredBlock105PC := 185.
        ].
        recoveredBlock105Step = 185 ifTrue: [
            recoveredBlock105Stack3 := (recoveredBlock105Stack3) targetObject.
            recoveredBlock105PC := 187.
        ].
        recoveredBlock105Step = 187 ifTrue: [
            recoveredBlock105Stack4 := false.
            recoveredBlock105PC := 188.
        ].
        recoveredBlock105Step = 188 ifTrue: [
            (recoveredBlock105Stack1) mapSource: (recoveredBlock105Stack2) toTarget: (recoveredBlock105Stack3) notify: (recoveredBlock105Stack4).
            recoveredBlock105PC := 191.
        ].
        recoveredBlock105Step = 191 ifTrue: [
            recoveredBlock105PC := 207.
        ].
        recoveredBlock105Step = 194 ifTrue: [
            recoveredBlock105Stack1 := self.
            recoveredBlock105PC := 195.
        ].
        recoveredBlock105Step = 195 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Arg1.
            recoveredBlock105PC := 196.
        ].
        recoveredBlock105Step = 196 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) sourceObject.
            recoveredBlock105PC := 198.
        ].
        recoveredBlock105Step = 198 ifTrue: [
            recoveredBlock105Stack3 := recoveredBlock105Arg1.
            recoveredBlock105PC := 199.
        ].
        recoveredBlock105Step = 199 ifTrue: [
            recoveredBlock105Stack3 := (recoveredBlock105Stack3) targetObject.
            recoveredBlock105PC := 201.
        ].
        recoveredBlock105Step = 201 ifTrue: [
            recoveredBlock105Stack4 := recoveredLocal2.
            recoveredBlock105PC := 204.
        ].
        recoveredBlock105Step = 204 ifTrue: [
            (recoveredBlock105Stack1) mapSource: (recoveredBlock105Stack2) toTarget: (recoveredBlock105Stack3) inMapping: (recoveredBlock105Stack4).
            recoveredBlock105PC := 207.
        ].
        recoveredBlock105Step = 207 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal1.
            recoveredBlock105PC := 210.
        ].
        recoveredBlock105Step = 210 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) + (1).
            recoveredBlock105PC := 211.
        ].
        recoveredBlock105Step = 211 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Stack1.
            recoveredBlock105PC := 212.
        ].
        recoveredBlock105Step = 212 ifTrue: [
            recoveredLocal1 := recoveredBlock105Stack2.
            recoveredBlock105PC := 215.
        ].
        recoveredBlock105Step = 215 ifTrue: [
            recoveredBlock105Result := recoveredBlock105Stack1.
            recoveredBlock105Done := true.
        ].
    ].
    recoveredBlock105Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) updateLeftList.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) updateRightList.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) updateMappingList.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) mappingHasChanged.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) mappingsForType: (recoveredStack1) ensureIncluded: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) infoNumOfMappingsImport: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) infoCompletedImport: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059d134; bytecode file offset 0xe99a4c"
!ASDEHooksConfig methodsFor: 'recovered'!
mappingsUpdatePropertiesFor: recoveredArg1 sources: recoveredArg2 targets: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredArg2.
    recoveredBlock15Value2 := recoveredArg3.
    recoveredBlock15Value3 := (self) mappingsUpdatePropertiesFor: (recoveredBlock15Value0) sources: (recoveredBlock15Value1) targets: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := (recoveredBlock49Value0) displayName.
    recoveredBlock49Value2 := recoveredArg1.
    recoveredBlock49Value3 := (recoveredBlock49Value2) sourceObject.
    recoveredBlock49Value4 := (recoveredBlock49Value3) displayName.
    recoveredBlock49Value5 := (recoveredBlock49Value1) = (recoveredBlock49Value4).
    recoveredBlock49Value5
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) properties.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) modelOIDChain.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) modelOIDChain: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementOIDChain.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) elementOIDChain: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) properties.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) properties: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'GeneralUnknown'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) visualCallBackImageElement: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'GeneralUnknown'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) visualCallBackImageType: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) mappingState: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) missing: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Value0 recoveredBlock189Value1 recoveredBlock189Value2 recoveredBlock189Value3 recoveredBlock189Value4 recoveredBlock189Value5 |
    recoveredBlock189Value0 := recoveredBlock189Arg1.
    recoveredBlock189Value1 := (recoveredBlock189Value0) name.
    recoveredBlock189Value2 := recoveredArg1.
    recoveredBlock189Value3 := (recoveredBlock189Value2) targetObject.
    recoveredBlock189Value4 := (recoveredBlock189Value3) displayName.
    recoveredBlock189Value5 := (recoveredBlock189Value1) equals: (recoveredBlock189Value4).
    recoveredBlock189Value5
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := (recoveredStack2) ecuLabelIconName.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) visualCallBackImageElement: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'GeneralUnknown'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) visualCallBackImageElement: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := 'GeneralUnknown'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) visualCallBackImageType: (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) mappingState: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) missing: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059e4d8; bytecode file offset 0xe9ae00"
!ASDEHooksConfig methodsFor: 'recovered'!
setInMapping: recoveredArg1 type: recoveredArg2 message: recoveredArg3 toEcuVariable: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASDHierarchicalByteArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [:block28115384Arg1 | 
    | block28115384Value0 block28115384Value1 |
    block28115384Value0 := block28115384Arg1.
    block28115384Value1 := (block28115384Value0) aliasName.
    block28115384Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock47Local1 recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 recoveredBlock47Value6 |
    recoveredBlock47Value0 := OrderedCollection.
    recoveredBlock47Value1 := (recoveredBlock47Value0) new.
    recoveredBlock47Local1 := recoveredBlock47Value1.
    recoveredBlock47Value2 := recoveredArg1.
    recoveredBlock47Value3 := recoveredLocal4.
    recoveredBlock47Value4 := (recoveredBlock47Value3) elementName.
    recoveredBlock47Value5 := recoveredBlock47Local1.
    (recoveredBlock47Value2) at: (recoveredBlock47Value4) put: (recoveredBlock47Value5).
    recoveredBlock47Value6 := recoveredBlock47Local1.
    recoveredBlock47Value6
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Stack0 recoveredBlock80Stack1 recoveredBlock80Stack2 recoveredBlock80Stack3 recoveredBlock80PC recoveredBlock80Step recoveredBlock80Done recoveredBlock80Result |
    recoveredBlock80Stack0 := self.
    recoveredBlock80PC := 86.
    recoveredBlock80Done := false.
    [recoveredBlock80Done not] whileTrue: [
        recoveredBlock80Step := recoveredBlock80PC.
        recoveredBlock80Step = 86 ifTrue: [
            recoveredBlock80Stack1 := false.
            recoveredBlock80PC := 87.
        ].
        recoveredBlock80Step = 87 ifTrue: [
            recoveredBlock80Stack2 := recoveredBlock80Arg1.
            recoveredBlock80PC := 88.
        ].
        recoveredBlock80Step = 88 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) sourceObject.
            recoveredBlock80PC := 90.
        ].
        recoveredBlock80Step = 90 ifTrue: [
            (recoveredBlock80Stack2 == nil) ifTrue: [recoveredBlock80PC := 106] ifFalse: [recoveredBlock80PC := 94].
        ].
        recoveredBlock80Step = 94 ifTrue: [
            recoveredBlock80PC := 95.
        ].
        recoveredBlock80Step = 95 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 96.
        ].
        recoveredBlock80Step = 96 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) sourceObject.
            recoveredBlock80PC := 98.
        ].
        recoveredBlock80Step = 98 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) displayName.
            recoveredBlock80PC := 100.
        ].
        recoveredBlock80Step = 100 ifTrue: [
            recoveredBlock80Stack2 := recoveredLocal4.
            recoveredBlock80PC := 103.
        ].
        recoveredBlock80Step = 103 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) displayName.
            recoveredBlock80PC := 105.
        ].
        recoveredBlock80Step = 105 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) = (recoveredBlock80Stack2).
            recoveredBlock80PC := 106.
        ].
        recoveredBlock80Step = 106 ifTrue: [
            recoveredBlock80Result := recoveredBlock80Stack1.
            recoveredBlock80Done := true.
        ].
    ].
    recoveredBlock80Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := ASDMappingObject.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementName.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) newType: (recoveredStack2) sourceString: (recoveredStack3) targetEHooksString: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) ehooksAttributesNode: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) asHierarchicalOIDWithPreAlias: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) elementOIDChain: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 205] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceObject.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) elementOIDChain: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredPC := 289.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 257] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := ASDMappingTargetEHooksObject.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) displayName: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack3) ehooksAttributesNode: (recoveredStack4).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) targetObject: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayName.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 289].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetObject.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) displayName: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d8758; bytecode file offset 0xed507c"
!ASDEHooksConfig methodsFor: 'recovered'!
writeXMLElementMapping: recoveredArg1 writer: recoveredArg2 includeOIDs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSortedCollection.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isMapped.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 356].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack2 := 'ElementMapping'.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := 'elementName'.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (1).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsSource.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 194] ifFalse: [recoveredBlock13PC := 66].
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) project.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block78Arg1 | 
    | recoveredBlock13Block78Value0 recoveredBlock13Block78Value1 recoveredBlock13Block78Value2 recoveredBlock13Block78Value3 recoveredBlock13Block78Value4 |
    recoveredBlock13Block78Value0 := recoveredBlock13Block78Arg1.
    recoveredBlock13Block78Value1 := (recoveredBlock13Block78Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block78Value1.
    recoveredBlock13Block78Value2 := recoveredBlock13Block78Arg1.
    recoveredBlock13Block78Value3 := (recoveredBlock13Block78Value2) last.
    recoveredBlock13Block78Value4 := recoveredBlock13Block78Value3.
    recoveredBlock13Local2 := recoveredBlock13Block78Value4.
    recoveredBlock13Block78Value3
].
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack2 := 'SourceObject'.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 121.
        ].
        recoveredBlock13Step = 121 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 126.
        ].
        recoveredBlock13Step = 126 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 128.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 151] ifFalse: [recoveredBlock13PC := 132].
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 138.
        ].
        recoveredBlock13Step = 138 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 154.
        ].
        recoveredBlock13Step = 154 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 181] ifFalse: [recoveredBlock13PC := 162].
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 172.
        ].
        recoveredBlock13Step = 172 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 173.
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) project.
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 184.
        ].
        recoveredBlock13Step = 184 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 187.
        ].
        recoveredBlock13Step = 187 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 188.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 194.
        ].
        recoveredBlock13Step = 194 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 197.
        ].
        recoveredBlock13Step = 197 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsTarget.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 351] ifFalse: [recoveredBlock13PC := 202].
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) project.
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 205 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 208.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 212.
        ].
        recoveredBlock13Step = 212 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 214.
        ].
        recoveredBlock13Step = 214 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block214Arg1 | 
    | recoveredBlock13Block214Value0 recoveredBlock13Block214Value1 recoveredBlock13Block214Value2 recoveredBlock13Block214Value3 recoveredBlock13Block214Value4 |
    recoveredBlock13Block214Value0 := recoveredBlock13Block214Arg1.
    recoveredBlock13Block214Value1 := (recoveredBlock13Block214Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block214Value1.
    recoveredBlock13Block214Value2 := recoveredBlock13Block214Arg1.
    recoveredBlock13Block214Value3 := (recoveredBlock13Block214Value2) last.
    recoveredBlock13Block214Value4 := recoveredBlock13Block214Value3.
    recoveredBlock13Local2 := recoveredBlock13Block214Value4.
    recoveredBlock13Block214Value3
].
            recoveredBlock13PC := 234.
        ].
        recoveredBlock13Step = 234 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 239.
        ].
        recoveredBlock13Step = 239 ifTrue: [
            recoveredBlock13Stack2 := 'TargetObject'.
            recoveredBlock13PC := 241.
        ].
        recoveredBlock13Step = 241 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 243.
        ].
        recoveredBlock13Step = 243 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 246.
        ].
        recoveredBlock13Step = 246 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 248.
        ].
        recoveredBlock13Step = 248 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) targetObject.
            recoveredBlock13PC := 253.
        ].
        recoveredBlock13Step = 253 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 255.
        ].
        recoveredBlock13Step = 255 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 257.
        ].
        recoveredBlock13Step = 257 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 260.
        ].
        recoveredBlock13Step = 260 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 262.
        ].
        recoveredBlock13Step = 262 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 264.
        ].
        recoveredBlock13Step = 264 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 287] ifFalse: [recoveredBlock13PC := 268].
        ].
        recoveredBlock13Step = 268 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 271.
        ].
        recoveredBlock13Step = 271 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 274.
        ].
        recoveredBlock13Step = 274 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 276.
        ].
        recoveredBlock13Step = 276 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 278.
        ].
        recoveredBlock13Step = 278 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 281.
        ].
        recoveredBlock13Step = 281 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 284.
        ].
        recoveredBlock13Step = 284 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 287.
        ].
        recoveredBlock13Step = 287 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 290 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 292.
        ].
        recoveredBlock13Step = 292 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 294.
        ].
        recoveredBlock13Step = 294 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 315] ifFalse: [recoveredBlock13PC := 298].
        ].
        recoveredBlock13Step = 298 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 301.
        ].
        recoveredBlock13Step = 301 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 304.
        ].
        recoveredBlock13Step = 304 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 306.
        ].
        recoveredBlock13Step = 306 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 308.
        ].
        recoveredBlock13Step = 308 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 309.
        ].
        recoveredBlock13Step = 309 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 312.
        ].
        recoveredBlock13Step = 312 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 315.
        ].
        recoveredBlock13Step = 315 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 318.
        ].
        recoveredBlock13Step = 318 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 320.
        ].
        recoveredBlock13Step = 320 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasBypassFunctionNode.
            recoveredBlock13PC := 322.
        ].
        recoveredBlock13Step = 322 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 326] ifFalse: [recoveredBlock13PC := 338].
        ].
        recoveredBlock13Step = 326 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 329.
        ].
        recoveredBlock13Step = 329 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 331.
        ].
        recoveredBlock13Step = 331 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) ehooksAttributesNode.
            recoveredBlock13PC := 333.
        ].
        recoveredBlock13Step = 333 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 336.
        ].
        recoveredBlock13Step = 336 ifTrue: [
            (recoveredBlock13Stack1) writeXML: (recoveredBlock13Stack2).
            recoveredBlock13PC := 338.
        ].
        recoveredBlock13Step = 338 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 341.
        ].
        recoveredBlock13Step = 341 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 343.
        ].
        recoveredBlock13Step = 343 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 344.
        ].
        recoveredBlock13Step = 344 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 345.
        ].
        recoveredBlock13Step = 345 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 348.
        ].
        recoveredBlock13Step = 348 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 351.
        ].
        recoveredBlock13Step = 351 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 354.
        ].
        recoveredBlock13Step = 354 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 356.
        ].
        recoveredBlock13Step = 356 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x205e8358; bytecode file offset 0xee4c8c"
!ASDEHooksConfig methodsFor: 'recovered'!
writeXMLSignatureMapping: recoveredArg1 writer: recoveredArg2 includeOIDs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSortedCollection.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isMapped.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 28] ifFalse: [recoveredBlock13PC := 384].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack2 := 'SignatureMapping'.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := 'signatureName'.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (1).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsSource.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 221] ifFalse: [recoveredBlock13PC := 66].
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) project.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 72.
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block78Arg1 | 
    | recoveredBlock13Block78Value0 recoveredBlock13Block78Value1 recoveredBlock13Block78Value2 recoveredBlock13Block78Value3 recoveredBlock13Block78Value4 |
    recoveredBlock13Block78Value0 := recoveredBlock13Block78Arg1.
    recoveredBlock13Block78Value1 := (recoveredBlock13Block78Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block78Value1.
    recoveredBlock13Block78Value2 := recoveredBlock13Block78Arg1.
    recoveredBlock13Block78Value3 := (recoveredBlock13Block78Value2) last.
    recoveredBlock13Block78Value4 := recoveredBlock13Block78Value3.
    recoveredBlock13Local2 := recoveredBlock13Block78Value4.
    recoveredBlock13Block78Value3
].
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack2 := 'SourceObject'.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 121.
        ].
        recoveredBlock13Step = 121 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 126.
        ].
        recoveredBlock13Step = 126 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 128.
        ].
        recoveredBlock13Step = 128 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 151] ifFalse: [recoveredBlock13PC := 132].
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 138.
        ].
        recoveredBlock13Step = 138 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 154.
        ].
        recoveredBlock13Step = 154 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 179] ifFalse: [recoveredBlock13PC := 162].
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) sourceObject.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 172.
        ].
        recoveredBlock13Step = 172 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 173.
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 176.
        ].
        recoveredBlock13Step = 176 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 179.
        ].
        recoveredBlock13Step = 179 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 182.
        ].
        recoveredBlock13Step = 182 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sourceObject.
            recoveredBlock13PC := 184.
        ].
        recoveredBlock13Step = 184 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getIndex.
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            recoveredBlock13Stack2 := 0.
            recoveredBlock13PC := 188.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) ~= (recoveredBlock13Stack2).
            recoveredBlock13PC := 189.
        ].
        recoveredBlock13Step = 189 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 192] ifFalse: [recoveredBlock13PC := 208].
        ].
        recoveredBlock13Step = 192 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            recoveredBlock13Stack2 := 'index'.
            recoveredBlock13PC := 197.
        ].
        recoveredBlock13Step = 197 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 200.
        ].
        recoveredBlock13Step = 200 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) sourceObject.
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) getIndex.
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asString.
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) string: (recoveredBlock13Stack3).
            recoveredBlock13PC := 208.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 211.
        ].
        recoveredBlock13Step = 211 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 213.
        ].
        recoveredBlock13Step = 213 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 214.
        ].
        recoveredBlock13Step = 214 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 215.
        ].
        recoveredBlock13Step = 215 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 218.
        ].
        recoveredBlock13Step = 218 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 221.
        ].
        recoveredBlock13Step = 221 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 224.
        ].
        recoveredBlock13Step = 224 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) needsTarget.
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 379] ifFalse: [recoveredBlock13PC := 230].
        ].
        recoveredBlock13Step = 230 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 231.
        ].
        recoveredBlock13Step = 231 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) project.
            recoveredBlock13PC := 233.
        ].
        recoveredBlock13Step = 233 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 238.
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 240.
        ].
        recoveredBlock13Step = 240 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getElementPathFor: (recoveredBlock13Stack2).
            recoveredBlock13PC := 242.
        ].
        recoveredBlock13Step = 242 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block242Arg1 | 
    | recoveredBlock13Block242Value0 recoveredBlock13Block242Value1 recoveredBlock13Block242Value2 recoveredBlock13Block242Value3 recoveredBlock13Block242Value4 |
    recoveredBlock13Block242Value0 := recoveredBlock13Block242Arg1.
    recoveredBlock13Block242Value1 := (recoveredBlock13Block242Value0) first.
    recoveredBlock13Local1 := recoveredBlock13Block242Value1.
    recoveredBlock13Block242Value2 := recoveredBlock13Block242Arg1.
    recoveredBlock13Block242Value3 := (recoveredBlock13Block242Value2) last.
    recoveredBlock13Block242Value4 := recoveredBlock13Block242Value3.
    recoveredBlock13Local2 := recoveredBlock13Block242Value4.
    recoveredBlock13Block242Value3
].
            recoveredBlock13PC := 262.
        ].
        recoveredBlock13Step = 262 ifTrue: [
            (recoveredBlock13Stack1) ifNotNil: (recoveredBlock13Stack2).
            recoveredBlock13PC := 264.
        ].
        recoveredBlock13Step = 264 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 267.
        ].
        recoveredBlock13Step = 267 ifTrue: [
            recoveredBlock13Stack2 := 'TargetObject'.
            recoveredBlock13PC := 269.
        ].
        recoveredBlock13Step = 269 ifTrue: [
            (recoveredBlock13Stack1) openComplex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 271.
        ].
        recoveredBlock13Step = 271 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 274.
        ].
        recoveredBlock13Step = 274 ifTrue: [
            recoveredBlock13Stack2 := 'displayName'.
            recoveredBlock13PC := 276.
        ].
        recoveredBlock13Step = 276 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 279.
        ].
        recoveredBlock13Step = 279 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) targetObject.
            recoveredBlock13PC := 281.
        ].
        recoveredBlock13Step = 281 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) displayName.
            recoveredBlock13PC := 283.
        ].
        recoveredBlock13Step = 283 ifTrue: [
            (recoveredBlock13Stack1) attr: (recoveredBlock13Stack2) nmToken: (recoveredBlock13Stack3).
            recoveredBlock13PC := 285.
        ].
        recoveredBlock13Step = 285 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 288.
        ].
        recoveredBlock13Step = 288 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 290 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) elementOIDChain.
            recoveredBlock13PC := 292.
        ].
        recoveredBlock13Step = 292 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 315] ifFalse: [recoveredBlock13PC := 296].
        ].
        recoveredBlock13Step = 296 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 299.
        ].
        recoveredBlock13Step = 299 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 302.
        ].
        recoveredBlock13Step = 302 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 304.
        ].
        recoveredBlock13Step = 304 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) elementOIDChain.
            recoveredBlock13PC := 306.
        ].
        recoveredBlock13Step = 306 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 309.
        ].
        recoveredBlock13Step = 309 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 312.
        ].
        recoveredBlock13Step = 312 ifTrue: [
            (recoveredBlock13Stack1) elementIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 315.
        ].
        recoveredBlock13Step = 315 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 318.
        ].
        recoveredBlock13Step = 318 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 320.
        ].
        recoveredBlock13Step = 320 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) modelOIDChain.
            recoveredBlock13PC := 322.
        ].
        recoveredBlock13Step = 322 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 343] ifFalse: [recoveredBlock13PC := 326].
        ].
        recoveredBlock13Step = 326 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 329.
        ].
        recoveredBlock13Step = 329 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 332.
        ].
        recoveredBlock13Step = 332 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) targetObject.
            recoveredBlock13PC := 334.
        ].
        recoveredBlock13Step = 334 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) modelOIDChain.
            recoveredBlock13PC := 336.
        ].
        recoveredBlock13Step = 336 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 337.
        ].
        recoveredBlock13Step = 337 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg3.
            recoveredBlock13PC := 340.
        ].
        recoveredBlock13Step = 340 ifTrue: [
            (recoveredBlock13Stack1) modelIDChain: (recoveredBlock13Stack2) item: (recoveredBlock13Stack3) includeOIDs: (recoveredBlock13Stack4).
            recoveredBlock13PC := 343.
        ].
        recoveredBlock13Step = 343 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 346.
        ].
        recoveredBlock13Step = 346 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 348.
        ].
        recoveredBlock13Step = 348 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasBypassFunctionNode.
            recoveredBlock13PC := 350.
        ].
        recoveredBlock13Step = 350 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 354] ifFalse: [recoveredBlock13PC := 366].
        ].
        recoveredBlock13Step = 354 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 357.
        ].
        recoveredBlock13Step = 357 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) targetObject.
            recoveredBlock13PC := 359.
        ].
        recoveredBlock13Step = 359 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) ehooksAttributesNode.
            recoveredBlock13PC := 361.
        ].
        recoveredBlock13Step = 361 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 364.
        ].
        recoveredBlock13Step = 364 ifTrue: [
            (recoveredBlock13Stack1) writeXML: (recoveredBlock13Stack2).
            recoveredBlock13PC := 366.
        ].
        recoveredBlock13Step = 366 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 369.
        ].
        recoveredBlock13Step = 369 ifTrue: [
            (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 371.
        ].
        recoveredBlock13Step = 371 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 372.
        ].
        recoveredBlock13Step = 372 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 373.
        ].
        recoveredBlock13Step = 373 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 376.
        ].
        recoveredBlock13Step = 376 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 379.
        ].
        recoveredBlock13Step = 379 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 382.
        ].
        recoveredBlock13Step = 382 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) closeComplex.
            recoveredBlock13PC := 384.
        ].
        recoveredBlock13Step = 384 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2063863c; bytecode file offset 0xf34fe8"
!ASDEHooksConfig methodsFor: 'recovered'!
importMappingsFrom: recoveredArg1 toTableWidgets: recoveredArg2 withoutSendRec: recoveredArg3 mainController: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'CSV'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMappingFromCSVFile: (recoveredStack2) type: (recoveredStack3) mainController: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleError: (recoveredStack2) stream: (recoveredStack3) fileName: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'EHOOKSBypassFunctionNode'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := [
    | block281211ecValue0 block281211ecValue1 |
    block281211ecValue0 := Set.
    block281211ecValue1 := (block281211ecValue0) new.
    block281211ecValue1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:block28121210Arg1 | 
    | block28121210Local1 block28121210Local2 block28121210Local3 block28121210Stack0 block28121210Stack1 block28121210Stack2 block28121210Stack3 block28121210Stack4 block28121210PC block28121210Step block28121210Done block28121210Result |
    block28121210Stack0 := self.
    block28121210PC := 4.
    block28121210Done := false.
    [block28121210Done not] whileTrue: [
        block28121210Step := block28121210PC.
        block28121210Step = 4 ifTrue: [
            block28121210Stack1 := nil.
            block28121210PC := 5.
        ].
        block28121210Step = 5 ifTrue: [
            block28121210Stack2 := block28121210Arg1.
            block28121210PC := 8.
        ].
        block28121210Step = 8 ifTrue: [
            block28121210Stack2 := (block28121210Stack2) instVarProcessReferences.
            block28121210PC := 10.
        ].
        block28121210Step = 10 ifTrue: [
            block28121210Stack3 := block28121210Stack2.
            block28121210PC := 11.
        ].
        block28121210Step = 11 ifTrue: [
            block28121210Local3 := block28121210Stack3.
            block28121210PC := 14.
        ].
        block28121210Step = 14 ifTrue: [
            block28121210Stack2 := (block28121210Stack2) isDictionary.
            block28121210PC := 16.
        ].
        block28121210Step = 16 ifTrue: [
            (block28121210Stack2) ifTrue: [block28121210PC := 20] ifFalse: [block28121210PC := 85].
        ].
        block28121210Step = 20 ifTrue: [
            block28121210PC := 21.
        ].
        block28121210Step = 21 ifTrue: [
            block28121210Stack1 := Array.
            block28121210PC := 23.
        ].
        block28121210Step = 23 ifTrue: [
            block28121210Stack2 := block28121210Local3.
            block28121210PC := 26.
        ].
        block28121210Step = 26 ifTrue: [
            block28121210Stack2 := (block28121210Stack2) size.
            block28121210PC := 28.
        ].
        block28121210Step = 28 ifTrue: [
            block28121210Stack1 := (block28121210Stack1) new: (block28121210Stack2).
            block28121210PC := 30.
        ].
        block28121210Step = 30 ifTrue: [
            block28121210Local2 := block28121210Stack1.
            block28121210PC := 33.
        ].
        block28121210Step = 33 ifTrue: [
            block28121210Stack1 := 1.
            block28121210PC := 35.
        ].
        block28121210Step = 35 ifTrue: [
            block28121210Local1 := block28121210Stack1.
            block28121210PC := 38.
        ].
        block28121210Step = 38 ifTrue: [
            block28121210Stack1 := block28121210Local3.
            block28121210PC := 41.
        ].
        block28121210Step = 41 ifTrue: [
            block28121210Stack1 := (block28121210Stack1) keys.
            block28121210PC := 43.
        ].
        block28121210Step = 43 ifTrue: [
            block28121210Stack1 := (block28121210Stack1) sorted.
            block28121210PC := 45.
        ].
        block28121210Step = 45 ifTrue: [
            block28121210Stack2 := [:block28121210Block45Arg1 | 
    | block28121210Block45Value0 block28121210Block45Value1 block28121210Block45Value2 block28121210Block45Value3 block28121210Block45Value4 block28121210Block45Value5 block28121210Block45Value6 block28121210Block45Value7 |
    block28121210Block45Value0 := block28121210Local2.
    block28121210Block45Value1 := block28121210Local1.
    block28121210Block45Value2 := block28121210Local3.
    block28121210Block45Value3 := block28121210Block45Arg1.
    block28121210Block45Value4 := (block28121210Block45Value2) at: (block28121210Block45Value3).
    (block28121210Block45Value0) at: (block28121210Block45Value1) put: (block28121210Block45Value4).
    block28121210Block45Value5 := block28121210Local1.
    block28121210Block45Value6 := (block28121210Block45Value5) + (1).
    block28121210Block45Value7 := block28121210Block45Value6.
    block28121210Local1 := block28121210Block45Value7.
    block28121210Block45Value6
].
            block28121210PC := 75.
        ].
        block28121210Step = 75 ifTrue: [
            (block28121210Stack1) do: (block28121210Stack2).
            block28121210PC := 77.
        ].
        block28121210Step = 77 ifTrue: [
            block28121210Stack1 := block28121210Arg1.
            block28121210PC := 80.
        ].
        block28121210Step = 80 ifTrue: [
            block28121210Stack2 := block28121210Local2.
            block28121210PC := 83.
        ].
        block28121210Step = 83 ifTrue: [
            block28121210Stack1 := (block28121210Stack1) instVarProcessReferences: (block28121210Stack2).
            block28121210PC := 85.
        ].
        block28121210Step = 85 ifTrue: [
            block28121210Result := block28121210Stack1.
            block28121210Done := true.
        ].
    ].
    block28121210Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 'XML'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMappingFromXMLFile: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) handleError: (recoveredStack2) stream: (recoveredStack3) fileName: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock235Value0 recoveredBlock235Value1 |
    recoveredBlock235Value0 := recoveredArg1.
    recoveredBlock235Value1 := ('Import from file: ') , (recoveredBlock235Value0).
    recoveredBlock235Value1
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) addImportantInfoTextBlock: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingTypeProcess.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := [:recoveredBlock262Arg1 | 
    | recoveredBlock262Value0 recoveredBlock262Value1 recoveredBlock262Value2 recoveredBlock262Value3 |
    recoveredBlock262Value0 := recoveredBlock262Arg1.
    recoveredBlock262Value1 := (recoveredBlock262Value0) mappingType.
    recoveredBlock262Value2 := recoveredLocal2.
    recoveredBlock262Value3 := (recoveredBlock262Value1) equals: (recoveredBlock262Value2).
    recoveredBlock262Value3
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := 'EHOOKSBypassFunctionNode'.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := [
    | block28121234Value0 block28121234Value1 |
    block28121234Value0 := Set.
    block28121234Value1 := (block28121234Value0) new.
    block28121234Value1
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) importBypassFuncObjects: (recoveredStack1) toWidget: (recoveredStack2) outStream: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := (recoveredStack1) csvPrefixInputVar.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := [
    | block28121258Value0 block28121258Value1 |
    block28121258Value0 := Set.
    block28121258Value1 := (block28121258Value0) new.
    block28121258Value1
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Stack0 recoveredBlock335Stack1 recoveredBlock335Stack2 recoveredBlock335Stack3 recoveredBlock335Stack4 recoveredBlock335PC recoveredBlock335Step recoveredBlock335Done recoveredBlock335Result |
    recoveredBlock335Stack0 := self.
    recoveredBlock335PC := 342.
    recoveredBlock335Done := false.
    [recoveredBlock335Done not] whileTrue: [
        recoveredBlock335Step := recoveredBlock335PC.
        recoveredBlock335Step = 342 ifTrue: [
            recoveredBlock335Stack1 := nil.
            recoveredBlock335PC := 343.
        ].
        recoveredBlock335Step = 343 ifTrue: [
            recoveredBlock335Stack2 := self.
            recoveredBlock335PC := 344.
        ].
        recoveredBlock335Step = 344 ifTrue: [
            recoveredBlock335Stack3 := recoveredBlock335Arg1.
            recoveredBlock335PC := 345.
        ].
        recoveredBlock335Step = 345 ifTrue: [
            recoveredBlock335Stack3 := (recoveredBlock335Stack3) name.
            recoveredBlock335PC := 347.
        ].
        recoveredBlock335Step = 347 ifTrue: [
            recoveredBlock335Stack2 := (recoveredBlock335Stack2) findEcuInputVarNamed: (recoveredBlock335Stack3).
            recoveredBlock335PC := 349.
        ].
        recoveredBlock335Step = 349 ifTrue: [
            (recoveredBlock335Stack2 ~~ nil) ifTrue: [recoveredBlock335PC := 359] ifFalse: [recoveredBlock335PC := 352].
        ].
        recoveredBlock335Step = 352 ifTrue: [
            recoveredBlock335PC := 353.
        ].
        recoveredBlock335Step = 353 ifTrue: [
            recoveredBlock335Stack1 := self.
            recoveredBlock335PC := 354.
        ].
        recoveredBlock335Step = 354 ifTrue: [
            recoveredBlock335Stack1 := (recoveredBlock335Stack1) ecuVarsInput.
            recoveredBlock335PC := 356.
        ].
        recoveredBlock335Step = 356 ifTrue: [
            recoveredBlock335Stack2 := recoveredBlock335Arg1.
            recoveredBlock335PC := 357.
        ].
        recoveredBlock335Step = 357 ifTrue: [
            recoveredBlock335Stack1 := (recoveredBlock335Stack1) add: (recoveredBlock335Stack2).
            recoveredBlock335PC := 359.
        ].
        recoveredBlock335Step = 359 ifTrue: [
            recoveredBlock335Result := recoveredBlock335Stack1.
            recoveredBlock335Done := true.
        ].
    ].
    recoveredBlock335Result
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingTypeInput.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := [:recoveredBlock373Arg1 | 
    | recoveredBlock373Value0 recoveredBlock373Value1 recoveredBlock373Value2 recoveredBlock373Value3 |
    recoveredBlock373Value0 := recoveredBlock373Arg1.
    recoveredBlock373Value1 := (recoveredBlock373Value0) mappingType.
    recoveredBlock373Value2 := recoveredLocal2.
    recoveredBlock373Value3 := (recoveredBlock373Value1) equals: (recoveredBlock373Value2).
    recoveredBlock373Value3
].
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := [:recoveredBlock397Arg1 | 
    | recoveredBlock397Value0 recoveredBlock397Value1 recoveredBlock397Value2 recoveredBlock397Value3 |
    recoveredBlock397Value0 := recoveredBlock397Arg1.
    recoveredBlock397Value1 := (recoveredBlock397Value0) variableMappingTargetObjects.
    recoveredBlock397Value2 := [:recoveredBlock397Block407Arg1 | 
    | recoveredBlock397Block407Stack0 recoveredBlock397Block407Stack1 recoveredBlock397Block407Stack2 recoveredBlock397Block407Stack3 recoveredBlock397Block407Stack4 recoveredBlock397Block407PC recoveredBlock397Block407Step recoveredBlock397Block407Done recoveredBlock397Block407Result |
    recoveredBlock397Block407Stack0 := nil.
    recoveredBlock397Block407PC := 414.
    recoveredBlock397Block407Done := false.
    [recoveredBlock397Block407Done not] whileTrue: [
        recoveredBlock397Block407Step := recoveredBlock397Block407PC.
        recoveredBlock397Block407Step = 414 ifTrue: [
            recoveredBlock397Block407Stack1 := nil.
            recoveredBlock397Block407PC := 415.
        ].
        recoveredBlock397Block407Step = 415 ifTrue: [
            recoveredBlock397Block407Stack2 := recoveredLocal1.
            recoveredBlock397Block407PC := 418.
        ].
        recoveredBlock397Block407Step = 418 ifTrue: [
            recoveredBlock397Block407Stack2 := (recoveredBlock397Block407Stack2) targetObjects.
            recoveredBlock397Block407PC := 420.
        ].
        recoveredBlock397Block407Step = 420 ifTrue: [
            recoveredBlock397Block407Stack3 := recoveredBlock397Block407Arg1.
            recoveredBlock397Block407PC := 421.
        ].
        recoveredBlock397Block407Step = 421 ifTrue: [
            recoveredBlock397Block407Stack2 := (recoveredBlock397Block407Stack2) includes: (recoveredBlock397Block407Stack3).
            recoveredBlock397Block407PC := 423.
        ].
        recoveredBlock397Block407Step = 423 ifTrue: [
            (recoveredBlock397Block407Stack2) ifTrue: [recoveredBlock397Block407PC := 435] ifFalse: [recoveredBlock397Block407PC := 426].
        ].
        recoveredBlock397Block407Step = 426 ifTrue: [
            recoveredBlock397Block407PC := 427.
        ].
        recoveredBlock397Block407Step = 427 ifTrue: [
            recoveredBlock397Block407Stack1 := recoveredLocal1.
            recoveredBlock397Block407PC := 430.
        ].
        recoveredBlock397Block407Step = 430 ifTrue: [
            recoveredBlock397Block407Stack1 := (recoveredBlock397Block407Stack1) targetObjects.
            recoveredBlock397Block407PC := 432.
        ].
        recoveredBlock397Block407Step = 432 ifTrue: [
            recoveredBlock397Block407Stack2 := recoveredBlock397Block407Arg1.
            recoveredBlock397Block407PC := 433.
        ].
        recoveredBlock397Block407Step = 433 ifTrue: [
            recoveredBlock397Block407Stack1 := (recoveredBlock397Block407Stack1) add: (recoveredBlock397Block407Stack2).
            recoveredBlock397Block407PC := 435.
        ].
        recoveredBlock397Block407Step = 435 ifTrue: [
            recoveredBlock397Block407Result := recoveredBlock397Block407Stack1.
            recoveredBlock397Block407Done := true.
        ].
    ].
    recoveredBlock397Block407Result
].
    recoveredBlock397Value3 := (recoveredBlock397Value1) do: (recoveredBlock397Value2).
    recoveredBlock397Value3
].
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack4 := [
    | block2812127cValue0 block2812127cValue1 |
    block2812127cValue0 := Set.
    block2812127cValue1 := (block2812127cValue0) new.
    block2812127cValue1
].
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack0) importType: (recoveredStack1) objects: (recoveredStack2) toWidget: (recoveredStack3) withoutSendRec: (recoveredStack4) outStream: (recoveredStack5).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) csvPrefixOutputVar.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := [
    | block281212a0Value0 block281212a0Value1 |
    block281212a0Value0 := Set.
    block281212a0Value1 := (block281212a0Value0) new.
    block281212a0Value1
].
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := [:recoveredBlock497Arg1 | 
    | recoveredBlock497Stack0 recoveredBlock497Stack1 recoveredBlock497Stack2 recoveredBlock497Stack3 recoveredBlock497Stack4 recoveredBlock497PC recoveredBlock497Step recoveredBlock497Done recoveredBlock497Result |
    recoveredBlock497Stack0 := self.
    recoveredBlock497PC := 504.
    recoveredBlock497Done := false.
    [recoveredBlock497Done not] whileTrue: [
        recoveredBlock497Step := recoveredBlock497PC.
        recoveredBlock497Step = 504 ifTrue: [
            recoveredBlock497Stack1 := nil.
            recoveredBlock497PC := 505.
        ].
        recoveredBlock497Step = 505 ifTrue: [
            recoveredBlock497Stack2 := self.
            recoveredBlock497PC := 506.
        ].
        recoveredBlock497Step = 506 ifTrue: [
            recoveredBlock497Stack3 := recoveredBlock497Arg1.
            recoveredBlock497PC := 507.
        ].
        recoveredBlock497Step = 507 ifTrue: [
            recoveredBlock497Stack3 := (recoveredBlock497Stack3) name.
            recoveredBlock497PC := 509.
        ].
        recoveredBlock497Step = 509 ifTrue: [
            recoveredBlock497Stack2 := (recoveredBlock497Stack2) findEcuOutputVarNamed: (recoveredBlock497Stack3).
            recoveredBlock497PC := 511.
        ].
        recoveredBlock497Step = 511 ifTrue: [
            (recoveredBlock497Stack2 ~~ nil) ifTrue: [recoveredBlock497PC := 524] ifFalse: [recoveredBlock497PC := 514].
        ].
        recoveredBlock497Step = 514 ifTrue: [
            recoveredBlock497PC := 515.
        ].
        recoveredBlock497Step = 515 ifTrue: [
            recoveredBlock497Stack1 := self.
            recoveredBlock497PC := 516.
        ].
        recoveredBlock497Step = 516 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) ecuVarsOutput.
            recoveredBlock497PC := 521.
        ].
        recoveredBlock497Step = 521 ifTrue: [
            recoveredBlock497Stack2 := recoveredBlock497Arg1.
            recoveredBlock497PC := 522.
        ].
        recoveredBlock497Step = 522 ifTrue: [
            recoveredBlock497Stack1 := (recoveredBlock497Stack1) add: (recoveredBlock497Stack2).
            recoveredBlock497PC := 524.
        ].
        recoveredBlock497Step = 524 ifTrue: [
            recoveredBlock497Result := recoveredBlock497Stack1.
            recoveredBlock497Done := true.
        ].
    ].
    recoveredBlock497Result
].
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingTypeOutput.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := [:recoveredBlock541Arg1 | 
    | recoveredBlock541Value0 recoveredBlock541Value1 recoveredBlock541Value2 recoveredBlock541Value3 |
    recoveredBlock541Value0 := recoveredBlock541Arg1.
    recoveredBlock541Value1 := (recoveredBlock541Value0) mappingType.
    recoveredBlock541Value2 := recoveredLocal2.
    recoveredBlock541Value3 := (recoveredBlock541Value1) equals: (recoveredBlock541Value2).
    recoveredBlock541Value3
].
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := [:recoveredBlock565Arg1 | 
    | recoveredBlock565Value0 recoveredBlock565Value1 recoveredBlock565Value2 recoveredBlock565Value3 |
    recoveredBlock565Value0 := recoveredBlock565Arg1.
    recoveredBlock565Value1 := (recoveredBlock565Value0) variableMappingTargetObjects.
    recoveredBlock565Value2 := [:recoveredBlock565Block575Arg1 | 
    | recoveredBlock565Block575Stack0 recoveredBlock565Block575Stack1 recoveredBlock565Block575Stack2 recoveredBlock565Block575Stack3 recoveredBlock565Block575Stack4 recoveredBlock565Block575PC recoveredBlock565Block575Step recoveredBlock565Block575Done recoveredBlock565Block575Result |
    recoveredBlock565Block575Stack0 := nil.
    recoveredBlock565Block575PC := 582.
    recoveredBlock565Block575Done := false.
    [recoveredBlock565Block575Done not] whileTrue: [
        recoveredBlock565Block575Step := recoveredBlock565Block575PC.
        recoveredBlock565Block575Step = 582 ifTrue: [
            recoveredBlock565Block575Stack1 := nil.
            recoveredBlock565Block575PC := 583.
        ].
        recoveredBlock565Block575Step = 583 ifTrue: [
            recoveredBlock565Block575Stack2 := recoveredLocal1.
            recoveredBlock565Block575PC := 586.
        ].
        recoveredBlock565Block575Step = 586 ifTrue: [
            recoveredBlock565Block575Stack2 := (recoveredBlock565Block575Stack2) targetObjects.
            recoveredBlock565Block575PC := 588.
        ].
        recoveredBlock565Block575Step = 588 ifTrue: [
            recoveredBlock565Block575Stack3 := recoveredBlock565Block575Arg1.
            recoveredBlock565Block575PC := 589.
        ].
        recoveredBlock565Block575Step = 589 ifTrue: [
            recoveredBlock565Block575Stack2 := (recoveredBlock565Block575Stack2) includes: (recoveredBlock565Block575Stack3).
            recoveredBlock565Block575PC := 591.
        ].
        recoveredBlock565Block575Step = 591 ifTrue: [
            (recoveredBlock565Block575Stack2) ifTrue: [recoveredBlock565Block575PC := 603] ifFalse: [recoveredBlock565Block575PC := 594].
        ].
        recoveredBlock565Block575Step = 594 ifTrue: [
            recoveredBlock565Block575PC := 595.
        ].
        recoveredBlock565Block575Step = 595 ifTrue: [
            recoveredBlock565Block575Stack1 := recoveredLocal1.
            recoveredBlock565Block575PC := 598.
        ].
        recoveredBlock565Block575Step = 598 ifTrue: [
            recoveredBlock565Block575Stack1 := (recoveredBlock565Block575Stack1) targetObjects.
            recoveredBlock565Block575PC := 600.
        ].
        recoveredBlock565Block575Step = 600 ifTrue: [
            recoveredBlock565Block575Stack2 := recoveredBlock565Block575Arg1.
            recoveredBlock565Block575PC := 601.
        ].
        recoveredBlock565Block575Step = 601 ifTrue: [
            recoveredBlock565Block575Stack1 := (recoveredBlock565Block575Stack1) add: (recoveredBlock565Block575Stack2).
            recoveredBlock565Block575PC := 603.
        ].
        recoveredBlock565Block575Step = 603 ifTrue: [
            recoveredBlock565Block575Result := recoveredBlock565Block575Stack1.
            recoveredBlock565Block575Done := true.
        ].
    ].
    recoveredBlock565Block575Result
].
    recoveredBlock565Value3 := (recoveredBlock565Value1) do: (recoveredBlock565Value2).
    recoveredBlock565Value3
].
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack4 := [
    | block281212c4Value0 block281212c4Value1 |
    block281212c4Value0 := Set.
    block281212c4Value1 := (block281212c4Value0) new.
    block281212c4Value1
].
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack0) importType: (recoveredStack1) objects: (recoveredStack2) toWidget: (recoveredStack3) withoutSendRec: (recoveredStack4) outStream: (recoveredStack5).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206445dc; bytecode file offset 0xf40f74"
!ASDEHooksConfig methodsFor: 'recovered'!
readMappingFromCSVFile: recoveredArg1 type: recoveredArg2 mainController: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal12 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 707] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 694.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 686.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := $,.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 686].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := -4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := '### Import Error: Line read format should include at least 3 elements: <Type>,<Source>,<Target>. (had read: >'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := '<)'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingCSVprefixes.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := [:recoveredBlock187Arg1 | 
    | recoveredBlock187Value0 recoveredBlock187Value1 recoveredBlock187Value2 recoveredBlock187Value3 recoveredBlock187Value4 recoveredBlock187Value5 |
    recoveredBlock187Value0 := recoveredLocal1.
    recoveredBlock187Value1 := (recoveredBlock187Value0) , (' ').
    recoveredBlock187Value2 := recoveredBlock187Arg1.
    recoveredBlock187Value3 := (recoveredBlock187Value2) asString.
    recoveredBlock187Value4 := (recoveredBlock187Value1) , (recoveredBlock187Value3).
    recoveredBlock187Value5 := recoveredBlock187Value4.
    recoveredLocal1 := recoveredBlock187Value5.
    recoveredBlock187Value4
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMappingCSVprefixes.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 259] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := -5.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := '### Import Error: Mapping type in file <'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := '> is not in allowed. Allowed are: '.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := '.'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 311.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) equal: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 311] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := -5.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := '### Import Error: Mapping type in file <'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := '> is not <'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := '>.'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCsvPrefixProcess: (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'EHOOKSBypassFunctionNode'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock327Local1 recoveredBlock327Value0 recoveredBlock327Value1 recoveredBlock327Value2 recoveredBlock327Value3 recoveredBlock327Value4 |
    recoveredBlock327Value0 := OrderedCollection.
    recoveredBlock327Value1 := (recoveredBlock327Value0) new.
    recoveredBlock327Local1 := recoveredBlock327Value1.
    recoveredBlock327Value2 := recoveredLocal8.
    recoveredBlock327Value3 := recoveredBlock327Local1.
    (recoveredBlock327Value2) at: ('EHOOKSBypassFunctionNode') put: (recoveredBlock327Value3).
    recoveredBlock327Value4 := recoveredBlock327Local1.
    recoveredBlock327Value4
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := -4.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := '### Import Error: Line read format should include at least 4 elements: <Type>,<ProcessName>,<Index>,<BypassFunctionName>. (had read: >'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := '<)'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText: (recoveredStack2).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := [:recoveredBlock389Arg1 | 
    | recoveredBlock389Value0 recoveredBlock389Value1 recoveredBlock389Value2 recoveredBlock389Value3 recoveredBlock389Value4 |
    recoveredBlock389Value0 := recoveredBlock389Arg1.
    recoveredBlock389Value1 := (recoveredBlock389Value0) funcNodeName.
    recoveredBlock389Value2 := recoveredLocal9.
    recoveredBlock389Value3 := (recoveredBlock389Value2) at: (4).
    recoveredBlock389Value4 := (recoveredBlock389Value1) equals: (recoveredBlock389Value3).
    recoveredBlock389Value4
].
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := ASDEHooksBypassFuncNode.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForArray: (recoveredStack2) mainController: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 448] ifFalse: [recoveredPC := 440].
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredPC := 484.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := ASDEHooksBypassFuncNode.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForArray: (recoveredStack2) mainController: (recoveredStack3).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 484] ifFalse: [recoveredPC := 472].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarProcessReferences.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVarProcessReferences.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCsvPrefixOutputVar: (recoveredStack2).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 496] ifFalse: [recoveredPC := 550].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := ASDEHooksVariable.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForArray: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock514Local1 recoveredBlock514Value0 recoveredBlock514Value1 recoveredBlock514Value2 recoveredBlock514Value3 recoveredBlock514Value4 recoveredBlock514Value5 recoveredBlock514Value6 |
    recoveredBlock514Value0 := OrderedCollection.
    recoveredBlock514Value1 := (recoveredBlock514Value0) new.
    recoveredBlock514Local1 := recoveredBlock514Value1.
    recoveredBlock514Value2 := recoveredLocal8.
    recoveredBlock514Value3 := recoveredLocal6.
    recoveredBlock514Value4 := (recoveredBlock514Value3) asSymbol.
    recoveredBlock514Value5 := recoveredBlock514Local1.
    (recoveredBlock514Value2) at: (recoveredBlock514Value4) put: (recoveredBlock514Value5).
    recoveredBlock514Value6 := recoveredBlock514Local1.
    recoveredBlock514Value6
].
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCsvPrefixInputVar: (recoveredStack2).
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 562] ifFalse: [recoveredPC := 616].
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := ASDEHooksVariable.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForArray: (recoveredStack2).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock580Local1 recoveredBlock580Value0 recoveredBlock580Value1 recoveredBlock580Value2 recoveredBlock580Value3 recoveredBlock580Value4 recoveredBlock580Value5 recoveredBlock580Value6 |
    recoveredBlock580Value0 := OrderedCollection.
    recoveredBlock580Value1 := (recoveredBlock580Value0) new.
    recoveredBlock580Local1 := recoveredBlock580Value1.
    recoveredBlock580Value2 := recoveredLocal8.
    recoveredBlock580Value3 := recoveredLocal6.
    recoveredBlock580Value4 := (recoveredBlock580Value3) asSymbol.
    recoveredBlock580Value5 := recoveredBlock580Local1.
    (recoveredBlock580Value2) at: (recoveredBlock580Value4) put: (recoveredBlock580Value5).
    recoveredBlock580Value6 := recoveredBlock580Local1.
    recoveredBlock580Value6
].
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCsvPrefixInputOrOutput: (recoveredStack2).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 628] ifFalse: [recoveredPC := 682].
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := ASDMappingObject.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForArray: (recoveredStack2).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock646Local1 recoveredBlock646Value0 recoveredBlock646Value1 recoveredBlock646Value2 recoveredBlock646Value3 recoveredBlock646Value4 recoveredBlock646Value5 recoveredBlock646Value6 |
    recoveredBlock646Value0 := OrderedCollection.
    recoveredBlock646Value1 := (recoveredBlock646Value0) new.
    recoveredBlock646Local1 := recoveredBlock646Value1.
    recoveredBlock646Value2 := recoveredLocal8.
    recoveredBlock646Value3 := recoveredLocal6.
    recoveredBlock646Value4 := (recoveredBlock646Value3) asSymbol.
    recoveredBlock646Value5 := recoveredBlock646Local1.
    (recoveredBlock646Value2) at: (recoveredBlock646Value4) put: (recoveredBlock646Value5).
    recoveredBlock646Value6 := recoveredBlock646Local1.
    recoveredBlock646Value6
].
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 702] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsCsvConversionTo640: (recoveredStack1).
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 716] ifFalse: [recoveredPC := 722].
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack0) convertCsvMappingTo640: (recoveredStack1).
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064f9a8; bytecode file offset 0xf4c394"
!ASDEHooksConfig methodsFor: 'recovered'!
readEHooksAscetSpecificationFromStream: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := EtasDOMDocument.
    recoveredBlock4Value1 := (recoveredBlock4Value0) new.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := [
    | recoveredBlock4Block16Value0 |
    recoveredBlock4Block16Value0 := (self) runtimeAssert: (false) additionalInfo: ('EHOOKS: Unable to parse file').
    recoveredBlock4Block16Value0
].
    recoveredBlock4Value4 := (recoveredBlock4Value1) parseStream: (recoveredBlock4Value2) ifFail: (recoveredBlock4Value3).
    recoveredBlock4Value5 := [:recoveredBlock4Block30Arg1 | 
    | recoveredBlock4Block30Local1 recoveredBlock4Block30Value0 recoveredBlock4Block30Value1 recoveredBlock4Block30Value2 recoveredBlock4Block30Value3 recoveredBlock4Block30Value4 recoveredBlock4Block30Value5 recoveredBlock4Block30Value6 recoveredBlock4Block30Value7 recoveredBlock4Block30Value8 recoveredBlock4Block30Value9 recoveredBlock4Block30Value10 |
    recoveredBlock4Block30Value0 := SGMonitorStreamDummy.
    recoveredBlock4Block30Value1 := (recoveredBlock4Block30Value0) create.
    recoveredBlock4Block30Local1 := recoveredBlock4Block30Value1.
    recoveredBlock4Block30Value2 := recoveredBlock4Block30Arg1.
    recoveredBlock4Block30Value3 := (recoveredBlock4Block30Value2) getElementsByTagPath: ('OEMProject\General').
    recoveredBlock4Block30Value4 := [:recoveredBlock4Block30Block50Arg1 | 
    | recoveredBlock4Block30Block50Value0 recoveredBlock4Block30Block50Value1 recoveredBlock4Block30Block50Value2 recoveredBlock4Block30Block50Value3 |
    recoveredBlock4Block30Block50Value0 := recoveredBlock4Block30Block50Arg1.
    recoveredBlock4Block30Block50Value1 := (recoveredBlock4Block30Block50Value0) getElementByTagName: ('SourceFiles').
    recoveredBlock4Block30Block50Value2 := [:recoveredBlock4Block30Block50Block61Arg1 | 
    | recoveredBlock4Block30Block50Block61Value0 recoveredBlock4Block30Block50Block61Value1 recoveredBlock4Block30Block50Block61Value2 recoveredBlock4Block30Block50Block61Value3 |
    recoveredBlock4Block30Block50Block61Value0 := recoveredBlock4Block30Block50Block61Arg1.
    recoveredBlock4Block30Block50Block61Value1 := (self) readAttribute: ('eHooksIdentifier') inSubElement: ('eHooksConfig') parent: (recoveredBlock4Block30Block50Block61Value0).
    recoveredBlock4Block30Block50Block61Value2 := [:recoveredBlock4Block30Block50Block61Block76Arg1 | 
    | recoveredBlock4Block30Block50Block61Block76Value0 recoveredBlock4Block30Block50Block61Block76Value1 |
    recoveredBlock4Block30Block50Block61Block76Value0 := recoveredBlock4Block30Block50Block61Block76Arg1.
    recoveredBlock4Block30Block50Block61Block76Value1 := (self) identifier: (recoveredBlock4Block30Block50Block61Block76Value0).
    recoveredBlock4Block30Block50Block61Block76Value1
].
    recoveredBlock4Block30Block50Block61Value3 := (recoveredBlock4Block30Block50Block61Value1) ifNotNil: (recoveredBlock4Block30Block50Block61Value2).
    recoveredBlock4Block30Block50Block61Value3
].
    recoveredBlock4Block30Block50Value3 := (recoveredBlock4Block30Block50Value1) ifNotNil: (recoveredBlock4Block30Block50Value2).
    recoveredBlock4Block30Block50Value3
].
    (recoveredBlock4Block30Value3) ifNotNil: (recoveredBlock4Block30Value4).
    recoveredBlock4Block30Value5 := recoveredBlock4Block30Arg1.
    recoveredBlock4Block30Value6 := (recoveredBlock4Block30Value5) getElementsByTagPath: ('OEMProject\Mapping').
    recoveredBlock4Block30Value7 := [:recoveredBlock4Block30Block101Arg1 | 
    | recoveredBlock4Block30Block101Local1 recoveredBlock4Block30Block101Local2 recoveredBlock4Block30Block101Value0 recoveredBlock4Block30Block101Value1 recoveredBlock4Block30Block101Value2 recoveredBlock4Block30Block101Value3 recoveredBlock4Block30Block101Value4 recoveredBlock4Block30Block101Value5 recoveredBlock4Block30Block101Value6 recoveredBlock4Block30Block101Value7 recoveredBlock4Block30Block101Value8 recoveredBlock4Block30Block101Value9 recoveredBlock4Block30Block101Value10 recoveredBlock4Block30Block101Value11 recoveredBlock4Block30Block101Value12 recoveredBlock4Block30Block101Value13 recoveredBlock4Block30Block101Value14 recoveredBlock4Block30Block101Value15 recoveredBlock4Block30Block101Value16 recoveredBlock4Block30Block101Value17 recoveredBlock4Block30Block101Value18 recoveredBlock4Block30Block101Value19 recoveredBlock4Block30Block101Value20 recoveredBlock4Block30Block101Value21 recoveredBlock4Block30Block101Value22 recoveredBlock4Block30Block101Value23 recoveredBlock4Block30Block101Value24 recoveredBlock4Block30Block101Value25 recoveredBlock4Block30Block101Value26 recoveredBlock4Block30Block101Value27 recoveredBlock4Block30Block101Value28 recoveredBlock4Block30Block101Value29 recoveredBlock4Block30Block101Value30 recoveredBlock4Block30Block101Value31 recoveredBlock4Block30Block101Value32 recoveredBlock4Block30Block101Value33 recoveredBlock4Block30Block101Value34 |
    recoveredBlock4Block30Block101Value0 := Set.
    recoveredBlock4Block30Block101Value1 := (recoveredBlock4Block30Block101Value0) new.
    recoveredBlock4Block30Block101Local2 := recoveredBlock4Block30Block101Value1.
    recoveredBlock4Block30Block101Value2 := Set.
    recoveredBlock4Block30Block101Value3 := (recoveredBlock4Block30Block101Value2) new.
    recoveredBlock4Block30Block101Local1 := recoveredBlock4Block30Block101Value3.
    recoveredBlock4Block30Block101Value4 := (self) class.
    recoveredBlock4Block30Block101Value5 := (recoveredBlock4Block30Block101Value4) mappingTypeInput.
    recoveredBlock4Block30Block101Value6 := recoveredBlock4Block30Local1.
    (self) infoStartedImport: (recoveredBlock4Block30Block101Value5) on: (recoveredBlock4Block30Block101Value6).
    recoveredBlock4Block30Block101Value7 := recoveredBlock4Block30Block101Arg1.
    recoveredBlock4Block30Block101Value8 := (recoveredBlock4Block30Block101Value7) getElementsByTagName: ('Inputs').
    recoveredBlock4Block30Block101Value9 := [:recoveredBlock4Block30Block101Block137Arg1 | 
    | recoveredBlock4Block30Block101Block137Local1 recoveredBlock4Block30Block101Block137Value0 recoveredBlock4Block30Block101Block137Value1 recoveredBlock4Block30Block101Block137Value2 recoveredBlock4Block30Block101Block137Value3 recoveredBlock4Block30Block101Block137Value4 |
    recoveredBlock4Block30Block101Block137Value0 := recoveredBlock4Block30Block101Block137Arg1.
    recoveredBlock4Block30Block101Block137Value1 := recoveredBlock4Block30Block101Local2.
    recoveredBlock4Block30Block101Block137Value2 := (self) getElementMappingAssociationsFor: (recoveredBlock4Block30Block101Block137Value0) unmappedSet: (recoveredBlock4Block30Block101Block137Value1).
    recoveredBlock4Block30Block101Block137Value3 := [:recoveredBlock4Block30Block101Block137Block150Arg1 | 
    | recoveredBlock4Block30Block101Block137Block150Local1 recoveredBlock4Block30Block101Block137Block150Value0 recoveredBlock4Block30Block101Block137Block150Value1 recoveredBlock4Block30Block101Block137Block150Value2 recoveredBlock4Block30Block101Block137Block150Value3 recoveredBlock4Block30Block101Block137Block150Value4 recoveredBlock4Block30Block101Block137Block150Value5 recoveredBlock4Block30Block101Block137Block150Value6 recoveredBlock4Block30Block101Block137Block150Value7 recoveredBlock4Block30Block101Block137Block150Value8 recoveredBlock4Block30Block101Block137Block150Value9 recoveredBlock4Block30Block101Block137Block150Value10 recoveredBlock4Block30Block101Block137Block150Value11 recoveredBlock4Block30Block101Block137Block150Value12 recoveredBlock4Block30Block101Block137Block150Value13 recoveredBlock4Block30Block101Block137Block150Value14 |
    recoveredBlock4Block30Block101Block137Block150Value0 := recoveredBlock4Block30Block101Block137Block150Arg1.
    recoveredBlock4Block30Block101Block137Block150Value1 := (recoveredBlock4Block30Block101Block137Block150Value0) value.
    recoveredBlock4Block30Block101Block137Block150Local1 := recoveredBlock4Block30Block101Block137Block150Value1.
    recoveredBlock4Block30Block101Block137Block150Value2 := (self) mappingMessageInput.
    recoveredBlock4Block30Block101Block137Block150Value3 := (self) class.
    recoveredBlock4Block30Block101Block137Block150Value4 := (recoveredBlock4Block30Block101Block137Block150Value3) mappingTypeInput.
    recoveredBlock4Block30Block101Block137Block150Value5 := recoveredBlock4Block30Block101Block137Block150Arg1.
    recoveredBlock4Block30Block101Block137Block150Value6 := (recoveredBlock4Block30Block101Block137Block150Value5) key.
    recoveredBlock4Block30Block101Block137Block150Value7 := recoveredBlock4Block30Block101Block137Block150Local1.
    (self) setInMapping: (recoveredBlock4Block30Block101Block137Block150Value2) type: (recoveredBlock4Block30Block101Block137Block150Value4) message: (recoveredBlock4Block30Block101Block137Block150Value6) toEcuVariable: (recoveredBlock4Block30Block101Block137Block150Value7).
    recoveredBlock4Block30Block101Block137Block150Value8 := recoveredBlock4Block30Block101Block137Block150Local1.
    recoveredBlock4Block30Block101Block137Block150Value9 := recoveredBlock4Block30Block101Block137Block150Local1.
    recoveredBlock4Block30Block101Block137Block150Value10 := (recoveredBlock4Block30Block101Block137Block150Value9) name.
    recoveredBlock4Block30Block101Block137Block150Value11 := ('EH_copy*') match: (recoveredBlock4Block30Block101Block137Block150Value10).
    (recoveredBlock4Block30Block101Block137Block150Value8) ecuBackupCopy: (recoveredBlock4Block30Block101Block137Block150Value11).
    recoveredBlock4Block30Block101Block137Block150Value12 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Block137Block150Value13 := recoveredBlock4Block30Block101Block137Block150Local1.
    recoveredBlock4Block30Block101Block137Block150Value14 := (recoveredBlock4Block30Block101Block137Block150Value12) add: (recoveredBlock4Block30Block101Block137Block150Value13).
    recoveredBlock4Block30Block101Block137Block150Value14
].
    recoveredBlock4Block30Block101Block137Value4 := (recoveredBlock4Block30Block101Block137Value2) do: (recoveredBlock4Block30Block101Block137Value3).
    recoveredBlock4Block30Block101Block137Value4
].
    (recoveredBlock4Block30Block101Value8) do: (recoveredBlock4Block30Block101Value9).
    recoveredBlock4Block30Block101Value10 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Value11 := (recoveredBlock4Block30Block101Value10) asOrderedCollection.
    (self) ecuVarsInput: (recoveredBlock4Block30Block101Value11).
    recoveredBlock4Block30Block101Value12 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Value13 := (recoveredBlock4Block30Block101Value12) size.
    recoveredBlock4Block30Block101Value14 := recoveredBlock4Block30Local1.
    (self) infoNumOfMappingsImport: (recoveredBlock4Block30Block101Value13) on: (recoveredBlock4Block30Block101Value14).
    recoveredBlock4Block30Block101Value15 := (self) class.
    recoveredBlock4Block30Block101Value16 := (recoveredBlock4Block30Block101Value15) mappingTypeInput.
    recoveredBlock4Block30Block101Value17 := recoveredBlock4Block30Local1.
    (self) infoCompletedImport: (recoveredBlock4Block30Block101Value16) on: (recoveredBlock4Block30Block101Value17).
    recoveredBlock4Block30Block101Value18 := (self) class.
    recoveredBlock4Block30Block101Value19 := (recoveredBlock4Block30Block101Value18) mappingTypeOutput.
    recoveredBlock4Block30Block101Value20 := recoveredBlock4Block30Local1.
    (self) infoStartedImport: (recoveredBlock4Block30Block101Value19) on: (recoveredBlock4Block30Block101Value20).
    recoveredBlock4Block30Block101Value21 := Set.
    recoveredBlock4Block30Block101Value22 := (recoveredBlock4Block30Block101Value21) new.
    recoveredBlock4Block30Block101Local1 := recoveredBlock4Block30Block101Value22.
    recoveredBlock4Block30Block101Value23 := recoveredBlock4Block30Block101Arg1.
    recoveredBlock4Block30Block101Value24 := (recoveredBlock4Block30Block101Value23) getElementsByTagName: ('Outputs').
    recoveredBlock4Block30Block101Value25 := [:recoveredBlock4Block30Block101Block251Arg1 | 
    | recoveredBlock4Block30Block101Block251Local1 recoveredBlock4Block30Block101Block251Value0 recoveredBlock4Block30Block101Block251Value1 recoveredBlock4Block30Block101Block251Value2 recoveredBlock4Block30Block101Block251Value3 recoveredBlock4Block30Block101Block251Value4 recoveredBlock4Block30Block101Block251Value5 recoveredBlock4Block30Block101Block251Value6 |
    recoveredBlock4Block30Block101Block251Value0 := Set.
    recoveredBlock4Block30Block101Block251Value1 := (recoveredBlock4Block30Block101Block251Value0) new.
    recoveredBlock4Block30Block101Block251Local1 := recoveredBlock4Block30Block101Block251Value1.
    recoveredBlock4Block30Block101Block251Value2 := recoveredBlock4Block30Block101Block251Arg1.
    recoveredBlock4Block30Block101Block251Value3 := recoveredBlock4Block30Block101Local2.
    recoveredBlock4Block30Block101Block251Value4 := (self) getElementMappingAssociationsFor: (recoveredBlock4Block30Block101Block251Value2) unmappedSet: (recoveredBlock4Block30Block101Block251Value3).
    recoveredBlock4Block30Block101Block251Value5 := [:recoveredBlock4Block30Block101Block251Block268Arg1 | 
    | recoveredBlock4Block30Block101Block251Block268Local1 recoveredBlock4Block30Block101Block251Block268Value0 recoveredBlock4Block30Block101Block251Block268Value1 recoveredBlock4Block30Block101Block251Block268Value2 recoveredBlock4Block30Block101Block251Block268Value3 recoveredBlock4Block30Block101Block251Block268Value4 recoveredBlock4Block30Block101Block251Block268Value5 recoveredBlock4Block30Block101Block251Block268Value6 recoveredBlock4Block30Block101Block251Block268Value7 recoveredBlock4Block30Block101Block251Block268Value8 recoveredBlock4Block30Block101Block251Block268Value9 recoveredBlock4Block30Block101Block251Block268Value10 recoveredBlock4Block30Block101Block251Block268Value11 |
    recoveredBlock4Block30Block101Block251Block268Value0 := recoveredBlock4Block30Block101Block251Block268Arg1.
    recoveredBlock4Block30Block101Block251Block268Value1 := (recoveredBlock4Block30Block101Block251Block268Value0) value.
    recoveredBlock4Block30Block101Block251Block268Local1 := recoveredBlock4Block30Block101Block251Block268Value1.
    recoveredBlock4Block30Block101Block251Block268Value2 := (self) mappingMessageOutput.
    recoveredBlock4Block30Block101Block251Block268Value3 := (self) class.
    recoveredBlock4Block30Block101Block251Block268Value4 := (recoveredBlock4Block30Block101Block251Block268Value3) mappingTypeOutput.
    recoveredBlock4Block30Block101Block251Block268Value5 := recoveredBlock4Block30Block101Block251Block268Arg1.
    recoveredBlock4Block30Block101Block251Block268Value6 := (recoveredBlock4Block30Block101Block251Block268Value5) key.
    recoveredBlock4Block30Block101Block251Block268Value7 := recoveredBlock4Block30Block101Block251Block268Arg1.
    recoveredBlock4Block30Block101Block251Block268Value8 := (recoveredBlock4Block30Block101Block251Block268Value7) value.
    (self) setInMapping: (recoveredBlock4Block30Block101Block251Block268Value2) type: (recoveredBlock4Block30Block101Block251Block268Value4) message: (recoveredBlock4Block30Block101Block251Block268Value6) toEcuVariable: (recoveredBlock4Block30Block101Block251Block268Value8).
    recoveredBlock4Block30Block101Block251Block268Value9 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Block251Block268Value10 := recoveredBlock4Block30Block101Block251Block268Local1.
    recoveredBlock4Block30Block101Block251Block268Value11 := (recoveredBlock4Block30Block101Block251Block268Value9) add: (recoveredBlock4Block30Block101Block251Block268Value10).
    recoveredBlock4Block30Block101Block251Block268Value11
].
    recoveredBlock4Block30Block101Block251Value6 := (recoveredBlock4Block30Block101Block251Value4) do: (recoveredBlock4Block30Block101Block251Value5).
    recoveredBlock4Block30Block101Block251Value6
].
    (recoveredBlock4Block30Block101Value24) do: (recoveredBlock4Block30Block101Value25).
    recoveredBlock4Block30Block101Value26 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Value27 := (recoveredBlock4Block30Block101Value26) asOrderedCollection.
    (self) ecuVarsOutput: (recoveredBlock4Block30Block101Value27).
    recoveredBlock4Block30Block101Value28 := recoveredBlock4Block30Block101Local1.
    recoveredBlock4Block30Block101Value29 := (recoveredBlock4Block30Block101Value28) size.
    recoveredBlock4Block30Block101Value30 := recoveredBlock4Block30Local1.
    (self) infoNumOfMappingsImport: (recoveredBlock4Block30Block101Value29) on: (recoveredBlock4Block30Block101Value30).
    recoveredBlock4Block30Block101Value31 := (self) class.
    recoveredBlock4Block30Block101Value32 := (recoveredBlock4Block30Block101Value31) mappingTypeOutput.
    recoveredBlock4Block30Block101Value33 := recoveredBlock4Block30Local1.
    recoveredBlock4Block30Block101Value34 := (self) infoCompletedImport: (recoveredBlock4Block30Block101Value32) on: (recoveredBlock4Block30Block101Value33).
    recoveredBlock4Block30Block101Value34
].
    (recoveredBlock4Block30Value6) ifNotNil: (recoveredBlock4Block30Value7).
    recoveredBlock4Block30Value8 := recoveredBlock4Block30Arg1.
    recoveredBlock4Block30Value9 := (recoveredBlock4Block30Value8) getElementsByTagPath: ('OEMProject\Functions').
    recoveredBlock4Block30Value10 := [:recoveredBlock4Block30Block347Arg1 | 
    | recoveredBlock4Block30Block347Local1 recoveredBlock4Block30Block347Value0 recoveredBlock4Block30Block347Value1 recoveredBlock4Block30Block347Value2 recoveredBlock4Block30Block347Value3 recoveredBlock4Block30Block347Value4 recoveredBlock4Block30Block347Value5 recoveredBlock4Block30Block347Value6 recoveredBlock4Block30Block347Value7 recoveredBlock4Block30Block347Value8 recoveredBlock4Block30Block347Value9 recoveredBlock4Block30Block347Value10 recoveredBlock4Block30Block347Value11 recoveredBlock4Block30Block347Value12 recoveredBlock4Block30Block347Value13 |
    recoveredBlock4Block30Block347Value0 := (self) class.
    recoveredBlock4Block30Block347Value1 := (recoveredBlock4Block30Block347Value0) mappingTypeProcess.
    recoveredBlock4Block30Block347Value2 := recoveredBlock4Block30Local1.
    (self) infoStartedImport: (recoveredBlock4Block30Block347Value1) on: (recoveredBlock4Block30Block347Value2).
    recoveredBlock4Block30Block347Value3 := recoveredBlock4Block30Block347Arg1.
    recoveredBlock4Block30Block347Value4 := (recoveredBlock4Block30Block347Value3) getElementsByTagName: ('Function').
    recoveredBlock4Block30Block347Local1 := recoveredBlock4Block30Block347Value4.
    recoveredBlock4Block30Block347Value5 := recoveredBlock4Block30Block347Local1.
    recoveredBlock4Block30Block347Value6 := [:recoveredBlock4Block30Block347Block371Arg1 | 
    | recoveredBlock4Block30Block347Block371Value0 recoveredBlock4Block30Block347Block371Value1 recoveredBlock4Block30Block347Block371Value2 recoveredBlock4Block30Block347Block371Value3 |
    recoveredBlock4Block30Block347Block371Value0 := recoveredBlock4Block30Block347Block371Arg1.
    recoveredBlock4Block30Block347Block371Value1 := (recoveredBlock4Block30Block347Block371Value0) getAttribute: ('name').
    recoveredBlock4Block30Block347Block371Value2 := [:recoveredBlock4Block30Block347Block371Block385Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Local1 recoveredBlock4Block30Block347Block371Block385Stack0 recoveredBlock4Block30Block347Block371Block385Stack1 recoveredBlock4Block30Block347Block371Block385Stack2 recoveredBlock4Block30Block347Block371Block385PC recoveredBlock4Block30Block347Block371Block385Step recoveredBlock4Block30Block347Block371Block385Done recoveredBlock4Block30Block347Block371Block385Result |
    recoveredBlock4Block30Block347Block371Block385Stack0 := self.
    recoveredBlock4Block30Block347Block371Block385PC := 392.
    recoveredBlock4Block30Block347Block371Block385Done := false.
    [recoveredBlock4Block30Block347Block371Block385Done not] whileTrue: [
        recoveredBlock4Block30Block347Block371Block385Step := recoveredBlock4Block30Block347Block371Block385PC.
        recoveredBlock4Block30Block347Block371Block385Step = 392 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) addBypassFuncLocal.
            recoveredBlock4Block30Block347Block371Block385PC := 394.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 394 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := recoveredBlock4Block30Block347Block371Block385Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 397.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 397 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) funcNodeName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 399.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 399 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Local1 := recoveredBlock4Block30Block347Block371Block385Stack0.
            recoveredBlock4Block30Block347Block371Block385PC := 402.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 402 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 405.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 405 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'forceWrites'.
            recoveredBlock4Block30Block347Block371Block385PC := 407.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 407 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getAttribute: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 409.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 409 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block409Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block409Value0 recoveredBlock4Block30Block347Block371Block385Block409Value1 recoveredBlock4Block30Block347Block371Block385Block409Value2 recoveredBlock4Block30Block347Block371Block385Block409Value3 |
    recoveredBlock4Block30Block347Block371Block385Block409Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block409Value1 := recoveredBlock4Block30Block347Block371Block385Block409Arg1.
    recoveredBlock4Block30Block347Block371Block385Block409Value2 := (recoveredBlock4Block30Block347Block371Block385Block409Value1) asBoolean.
    recoveredBlock4Block30Block347Block371Block385Block409Value3 := (recoveredBlock4Block30Block347Block371Block385Block409Value0) ecuTriggerConfigForceWrites: (recoveredBlock4Block30Block347Block371Block385Block409Value2).
    recoveredBlock4Block30Block347Block371Block385Block409Value3
].
            recoveredBlock4Block30Block347Block371Block385PC := 425.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 425 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Stack0) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 427.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 427 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 430.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 430 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'Dispatch'.
            recoveredBlock4Block30Block347Block371Block385PC := 432.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 432 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getElementByTagName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 434.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 434 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block434Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block434Value0 recoveredBlock4Block30Block347Block371Block385Block434Value1 recoveredBlock4Block30Block347Block371Block385Block434Value2 recoveredBlock4Block30Block347Block371Block385Block434Value3 recoveredBlock4Block30Block347Block371Block385Block434Value4 recoveredBlock4Block30Block347Block371Block385Block434Value5 recoveredBlock4Block30Block347Block371Block385Block434Value6 |
    recoveredBlock4Block30Block347Block371Block385Block434Value0 := recoveredBlock4Block30Block347Block371Block385Block434Arg1.
    recoveredBlock4Block30Block347Block371Block385Block434Value1 := (recoveredBlock4Block30Block347Block371Block385Block434Value0) getAttribute: ('name').
    recoveredBlock4Block30Block347Block371Block385Block434Value2 := [:recoveredBlock4Block30Block347Block371Block385Block434Block445Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block434Block445Value0 recoveredBlock4Block30Block347Block371Block385Block434Block445Value1 recoveredBlock4Block30Block347Block371Block385Block434Block445Value2 |
    recoveredBlock4Block30Block347Block371Block385Block434Block445Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block434Block445Value1 := recoveredBlock4Block30Block347Block371Block385Block434Block445Arg1.
    recoveredBlock4Block30Block347Block371Block385Block434Block445Value2 := (recoveredBlock4Block30Block347Block371Block385Block434Block445Value0) ecuTriggerConfigDispatchPoint: (recoveredBlock4Block30Block347Block371Block385Block434Block445Value1).
    recoveredBlock4Block30Block347Block371Block385Block434Block445Value2
].
    (recoveredBlock4Block30Block347Block371Block385Block434Value1) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Block434Value2).
    recoveredBlock4Block30Block347Block371Block385Block434Value3 := recoveredBlock4Block30Block347Block371Block385Block434Arg1.
    recoveredBlock4Block30Block347Block371Block385Block434Value4 := (recoveredBlock4Block30Block347Block371Block385Block434Value3) getAttribute: ('period').
    recoveredBlock4Block30Block347Block371Block385Block434Value5 := [:recoveredBlock4Block30Block347Block371Block385Block434Block466Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block434Block466Value0 recoveredBlock4Block30Block347Block371Block385Block434Block466Value1 recoveredBlock4Block30Block347Block371Block385Block434Block466Value2 recoveredBlock4Block30Block347Block371Block385Block434Block466Value3 |
    recoveredBlock4Block30Block347Block371Block385Block434Block466Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block434Block466Value1 := recoveredBlock4Block30Block347Block371Block385Block434Block466Arg1.
    recoveredBlock4Block30Block347Block371Block385Block434Block466Value2 := (recoveredBlock4Block30Block347Block371Block385Block434Block466Value1) asFloat.
    recoveredBlock4Block30Block347Block371Block385Block434Block466Value3 := (recoveredBlock4Block30Block347Block371Block385Block434Block466Value0) period: (recoveredBlock4Block30Block347Block371Block385Block434Block466Value2).
    recoveredBlock4Block30Block347Block371Block385Block434Block466Value3
].
    recoveredBlock4Block30Block347Block371Block385Block434Value6 := (recoveredBlock4Block30Block347Block371Block385Block434Value4) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Block434Value5).
    recoveredBlock4Block30Block347Block371Block385Block434Value6
].
            recoveredBlock4Block30Block347Block371Block385PC := 487.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 487 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Stack0) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 489.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 489 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 492.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 492 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'Process'.
            recoveredBlock4Block30Block347Block371Block385PC := 496.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 496 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getElementsByTagName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 498.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 498 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:block28122dc4Arg1 | 
    | block28122dc4Value0 block28122dc4Value1 |
    block28122dc4Value0 := block28122dc4Arg1.
    block28122dc4Value1 := (block28122dc4Value0) getAttribute: ('oid').
    block28122dc4Value1
].
            recoveredBlock4Block30Block347Block371Block385PC := 502.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 502 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385PC := 513.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 513 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) collect: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 517.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 517 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block517Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block517Local1 recoveredBlock4Block30Block347Block371Block385Block517Local2 recoveredBlock4Block30Block347Block371Block385Block517Local3 recoveredBlock4Block30Block347Block371Block385Block517Stack0 recoveredBlock4Block30Block347Block371Block385Block517Stack1 recoveredBlock4Block30Block347Block371Block385Block517Stack2 recoveredBlock4Block30Block347Block371Block385Block517Stack3 recoveredBlock4Block30Block347Block371Block385Block517Stack4 recoveredBlock4Block30Block347Block371Block385Block517Stack5 recoveredBlock4Block30Block347Block371Block385Block517PC recoveredBlock4Block30Block347Block371Block385Block517Step recoveredBlock4Block30Block347Block371Block385Block517Done recoveredBlock4Block30Block347Block371Block385Block517Result |
    recoveredBlock4Block30Block347Block371Block385Block517Stack0 := self.
    recoveredBlock4Block30Block347Block371Block385Block517PC := 524.
    recoveredBlock4Block30Block347Block371Block385Block517Done := false.
    [recoveredBlock4Block30Block347Block371Block385Block517Done not] whileTrue: [
        recoveredBlock4Block30Block347Block371Block385Block517Step := recoveredBlock4Block30Block347Block371Block385Block517PC.
        recoveredBlock4Block30Block347Block371Block385Block517Step = 524 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := nil.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 525.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 525 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := recoveredBlock4Block30Block347Block371Block385Block517Arg1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 526.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 526 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Block517Stack2 == nil) ifTrue: [recoveredBlock4Block30Block347Block371Block385Block517PC := 617] ifFalse: [recoveredBlock4Block30Block347Block371Block385Block517PC := 530].
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 530 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517PC := 531.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 531 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := nil.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 532.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 532 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := recoveredBlock4Block30Block347Block371Block385Block517Arg1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 533.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 533 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := '/'.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 536.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 536 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := (recoveredBlock4Block30Block347Block371Block385Block517Stack2) asArrayOfSubstringsSeparatedBy: (recoveredBlock4Block30Block347Block371Block385Block517Stack3).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 541.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 541 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := recoveredBlock4Block30Block347Block371Block385Block517Stack2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 542.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 542 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Local3 := recoveredBlock4Block30Block347Block371Block385Block517Stack3.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 543.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 543 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := (recoveredBlock4Block30Block347Block371Block385Block517Stack2) size.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 545.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 545 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := 2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 547.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 547 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := (recoveredBlock4Block30Block347Block371Block385Block517Stack2) = (recoveredBlock4Block30Block347Block371Block385Block517Stack3).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 548.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 548 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Block517Stack2) ifTrue: [recoveredBlock4Block30Block347Block371Block385Block517PC := 552] ifFalse: [recoveredBlock4Block30Block347Block371Block385Block517PC := 617].
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 552 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517PC := 553.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 553 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := self.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 554.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 554 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) library.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 559.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 559 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) globalIdServer.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 563.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 563 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := recoveredBlock4Block30Block347Block371Block385Block517Local3.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 564.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 564 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := 1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 566.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 566 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := (recoveredBlock4Block30Block347Block371Block385Block517Stack2) at: (recoveredBlock4Block30Block347Block371Block385Block517Stack3).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 571.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 571 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) fromAlphaNumString: (recoveredBlock4Block30Block347Block371Block385Block517Stack2).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 575.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 575 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Local2 := recoveredBlock4Block30Block347Block371Block385Block517Stack1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 576.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 576 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := self.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 577.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 577 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) library.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 581.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 581 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) globalIdServer.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 585.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 585 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := recoveredBlock4Block30Block347Block371Block385Block517Local3.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 586.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 586 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := 2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 588.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 588 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := (recoveredBlock4Block30Block347Block371Block385Block517Stack2) at: (recoveredBlock4Block30Block347Block371Block385Block517Stack3).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 593.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 593 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) fromAlphaNumString: (recoveredBlock4Block30Block347Block371Block385Block517Stack2).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 597.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 597 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Local1 := recoveredBlock4Block30Block347Block371Block385Block517Stack1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 598.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 598 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := recoveredBlock4Block30Block347Block371Block385Local1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 601.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 601 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := recoveredBlock4Block30Block347Block371Block385Block517Local1.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 602.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 602 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := recoveredBlock4Block30Block347Block371Block385Block517Local2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 603.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 603 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack4 := self.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 604.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 604 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack4 := (recoveredBlock4Block30Block347Block371Block385Block517Stack4) project.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 609.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 609 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack1 := (recoveredBlock4Block30Block347Block371Block385Block517Stack1) addProcessAlias: (recoveredBlock4Block30Block347Block371Block385Block517Stack2) instVarConvertAlias: (recoveredBlock4Block30Block347Block371Block385Block517Stack3) forProject: (recoveredBlock4Block30Block347Block371Block385Block517Stack4).
            recoveredBlock4Block30Block347Block371Block385Block517PC := 613.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 613 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack2 := nil.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 614.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 614 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Stack3 := recoveredBlock4Block30Block347Block371Block385Block517Stack2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 615.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 615 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Local2 := recoveredBlock4Block30Block347Block371Block385Block517Stack3.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 616.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 616 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Local1 := recoveredBlock4Block30Block347Block371Block385Block517Stack2.
            recoveredBlock4Block30Block347Block371Block385Block517PC := 617.
        ].
        recoveredBlock4Block30Block347Block371Block385Block517Step = 617 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Block517Result := recoveredBlock4Block30Block347Block371Block385Block517Stack1.
            recoveredBlock4Block30Block347Block371Block385Block517Done := true.
        ].
    ].
    recoveredBlock4Block30Block347Block371Block385Block517Result
].
            recoveredBlock4Block30Block347Block371Block385PC := 618.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 618 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Stack0) do: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 620.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 620 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 623.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 623 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'EnablerParameter'.
            recoveredBlock4Block30Block347Block371Block385PC := 626.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 626 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getElementByTagName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 628.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 628 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block628Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block628Value0 recoveredBlock4Block30Block347Block371Block385Block628Value1 recoveredBlock4Block30Block347Block371Block385Block628Value2 recoveredBlock4Block30Block347Block371Block385Block628Value3 |
    recoveredBlock4Block30Block347Block371Block385Block628Value0 := recoveredBlock4Block30Block347Block371Block385Block628Arg1.
    recoveredBlock4Block30Block347Block371Block385Block628Value1 := (recoveredBlock4Block30Block347Block371Block385Block628Value0) getAttribute: ('name').
    recoveredBlock4Block30Block347Block371Block385Block628Value2 := [:recoveredBlock4Block30Block347Block371Block385Block628Block639Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block628Block639Value0 recoveredBlock4Block30Block347Block371Block385Block628Block639Value1 recoveredBlock4Block30Block347Block371Block385Block628Block639Value2 |
    recoveredBlock4Block30Block347Block371Block385Block628Block639Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block628Block639Value1 := recoveredBlock4Block30Block347Block371Block385Block628Block639Arg1.
    recoveredBlock4Block30Block347Block371Block385Block628Block639Value2 := (recoveredBlock4Block30Block347Block371Block385Block628Block639Value0) ecuTriggerConfigEnablerParameter: (recoveredBlock4Block30Block347Block371Block385Block628Block639Value1).
    recoveredBlock4Block30Block347Block371Block385Block628Block639Value2
].
    recoveredBlock4Block30Block347Block371Block385Block628Value3 := (recoveredBlock4Block30Block347Block371Block385Block628Value1) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Block628Value2).
    recoveredBlock4Block30Block347Block371Block385Block628Value3
].
            recoveredBlock4Block30Block347Block371Block385PC := 659.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 659 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Stack0) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 661.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 661 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 664.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 664 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'ControlVariable'.
            recoveredBlock4Block30Block347Block371Block385PC := 668.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 668 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getElementByTagName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 670.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 670 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block670Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block670Value0 recoveredBlock4Block30Block347Block371Block385Block670Value1 recoveredBlock4Block30Block347Block371Block385Block670Value2 recoveredBlock4Block30Block347Block371Block385Block670Value3 |
    recoveredBlock4Block30Block347Block371Block385Block670Value0 := recoveredBlock4Block30Block347Block371Block385Block670Arg1.
    recoveredBlock4Block30Block347Block371Block385Block670Value1 := (recoveredBlock4Block30Block347Block371Block385Block670Value0) getAttribute: ('name').
    recoveredBlock4Block30Block347Block371Block385Block670Value2 := [:recoveredBlock4Block30Block347Block371Block385Block670Block681Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block670Block681Value0 recoveredBlock4Block30Block347Block371Block385Block670Block681Value1 recoveredBlock4Block30Block347Block371Block385Block670Block681Value2 |
    recoveredBlock4Block30Block347Block371Block385Block670Block681Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block670Block681Value1 := recoveredBlock4Block30Block347Block371Block385Block670Block681Arg1.
    recoveredBlock4Block30Block347Block371Block385Block670Block681Value2 := (recoveredBlock4Block30Block347Block371Block385Block670Block681Value0) ecuTriggerConfigControlVariable: (recoveredBlock4Block30Block347Block371Block385Block670Block681Value1).
    recoveredBlock4Block30Block347Block371Block385Block670Block681Value2
].
    recoveredBlock4Block30Block347Block371Block385Block670Value3 := (recoveredBlock4Block30Block347Block371Block385Block670Value1) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Block670Value2).
    recoveredBlock4Block30Block347Block371Block385Block670Value3
].
            recoveredBlock4Block30Block347Block371Block385PC := 701.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 701 ifTrue: [
            (recoveredBlock4Block30Block347Block371Block385Stack0) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 703.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 703 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := recoveredBlock4Block30Block347Block371Arg1.
            recoveredBlock4Block30Block347Block371Block385PC := 706.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 706 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := 'IndicatorVariable'.
            recoveredBlock4Block30Block347Block371Block385PC := 710.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 710 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) getElementByTagName: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 712.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 712 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack1 := [:recoveredBlock4Block30Block347Block371Block385Block712Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block712Value0 recoveredBlock4Block30Block347Block371Block385Block712Value1 recoveredBlock4Block30Block347Block371Block385Block712Value2 recoveredBlock4Block30Block347Block371Block385Block712Value3 |
    recoveredBlock4Block30Block347Block371Block385Block712Value0 := recoveredBlock4Block30Block347Block371Block385Block712Arg1.
    recoveredBlock4Block30Block347Block371Block385Block712Value1 := (recoveredBlock4Block30Block347Block371Block385Block712Value0) getAttribute: ('name').
    recoveredBlock4Block30Block347Block371Block385Block712Value2 := [:recoveredBlock4Block30Block347Block371Block385Block712Block723Arg1 | 
    | recoveredBlock4Block30Block347Block371Block385Block712Block723Value0 recoveredBlock4Block30Block347Block371Block385Block712Block723Value1 recoveredBlock4Block30Block347Block371Block385Block712Block723Value2 |
    recoveredBlock4Block30Block347Block371Block385Block712Block723Value0 := recoveredBlock4Block30Block347Block371Block385Local1.
    recoveredBlock4Block30Block347Block371Block385Block712Block723Value1 := recoveredBlock4Block30Block347Block371Block385Block712Block723Arg1.
    recoveredBlock4Block30Block347Block371Block385Block712Block723Value2 := (recoveredBlock4Block30Block347Block371Block385Block712Block723Value0) ecuTriggerConfigIndicatorVariable: (recoveredBlock4Block30Block347Block371Block385Block712Block723Value1).
    recoveredBlock4Block30Block347Block371Block385Block712Block723Value2
].
    recoveredBlock4Block30Block347Block371Block385Block712Value3 := (recoveredBlock4Block30Block347Block371Block385Block712Value1) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Block712Value2).
    recoveredBlock4Block30Block347Block371Block385Block712Value3
].
            recoveredBlock4Block30Block347Block371Block385PC := 743.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 743 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Stack0 := (recoveredBlock4Block30Block347Block371Block385Stack0) ifNotNil: (recoveredBlock4Block30Block347Block371Block385Stack1).
            recoveredBlock4Block30Block347Block371Block385PC := 745.
        ].
        recoveredBlock4Block30Block347Block371Block385Step = 745 ifTrue: [
            recoveredBlock4Block30Block347Block371Block385Result := recoveredBlock4Block30Block347Block371Block385Stack0.
            recoveredBlock4Block30Block347Block371Block385Done := true.
        ].
    ].
    recoveredBlock4Block30Block347Block371Block385Result
].
    recoveredBlock4Block30Block347Block371Value3 := (recoveredBlock4Block30Block347Block371Value1) ifNotNil: (recoveredBlock4Block30Block347Block371Value2).
    recoveredBlock4Block30Block347Block371Value3
].
    (recoveredBlock4Block30Block347Value5) do: (recoveredBlock4Block30Block347Value6).
    recoveredBlock4Block30Block347Value7 := recoveredBlock4Block30Block347Local1.
    recoveredBlock4Block30Block347Value8 := (recoveredBlock4Block30Block347Value7) size.
    recoveredBlock4Block30Block347Value9 := recoveredBlock4Block30Local1.
    (self) infoNumOfMappingsImport: (recoveredBlock4Block30Block347Value8) on: (recoveredBlock4Block30Block347Value9).
    recoveredBlock4Block30Block347Value10 := (self) class.
    recoveredBlock4Block30Block347Value11 := (recoveredBlock4Block30Block347Value10) mappingTypeProcess.
    recoveredBlock4Block30Block347Value12 := recoveredBlock4Block30Local1.
    recoveredBlock4Block30Block347Value13 := (self) infoCompletedImport: (recoveredBlock4Block30Block347Value11) on: (recoveredBlock4Block30Block347Value12).
    recoveredBlock4Block30Block347Value13
].
    (recoveredBlock4Block30Value9) ifNotNil: (recoveredBlock4Block30Value10).
    ^true
].
    recoveredBlock4Value6 := (recoveredBlock4Value4) ifNotNil: (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    recoveredValue1 := [
    | recoveredBlock779Value0 recoveredBlock779Value1 |
    recoveredBlock779Value0 := recoveredArg1.
    recoveredBlock779Value1 := (recoveredBlock779Value0) close.
    recoveredBlock779Value1
].
    (recoveredValue0) ensure: (recoveredValue1).
    ^false
! !

