"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007e5c; bytecode file offset 0x908be4"
!ASDEHooksConfig class methodsFor: 'recovered'!
exportTagForMapping
    | recoveredValue0 |
    recoveredValue0 := (self) eHooksConfigurationTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012cc0; bytecode file offset 0x912098"
!ASDEHooksConfig class methodsFor: 'recovered'!
exportUtilClass
    | recoveredValue0 |
    recoveredValue0 := ASDMappingEHooksExportUtil.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014268; bytecode file offset 0x912098"
!ASDEHooksConfig class methodsFor: 'recovered'!
targetObjectClass
    | recoveredValue0 |
    recoveredValue0 := ASDMappingTargetEHooksObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001661c; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
ecuOutputVariablesTag
    ^'ECUOutputVariables'
! !

"ASDBase.ic method 0x20016e20; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingProcessTag
    ^'BypassFunctions'
! !

"ASDBase.ic method 0x200171b0; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingTypeProcess
    ^'Process'
! !

"ASDBase.ic method 0x20017378; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
csvPrefixInput
    ^'Input'
! !

"ASDBase.ic method 0x200183e0; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
eHooksConfigurationTag
    ^'EHOOKSConfiguration'
! !

"ASDBase.ic method 0x2001a3e4; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingOutputTag
    ^'OutputMappings'
! !

"ASDBase.ic method 0x2001d93c; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingTypeInput
    ^'Input'
! !

"ASDBase.ic method 0x2001deb8; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
ecuLabelIconName
    ^'ElementsSwitchECU'
! !

"ASDBase.ic method 0x2001df84; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingInputTag
    ^'InputMappings'
! !

"ASDBase.ic method 0x2001ef38; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
bypassFunctionsTag
    ^'BypassFunctions'
! !

"ASDBase.ic method 0x20021260; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
ecuInputVariablesTag
    ^'ECUInputVariables'
! !

"ASDBase.ic method 0x20022214; bytecode file offset 0x92209c"
!ASDEHooksConfig class methodsFor: 'recovered'!
mappingTypeOutput
    ^'Output'
! !

"ASDBase.ic method 0x20026cc8; bytecode file offset 0x923928"
!ASDEHooksConfig class methodsFor: 'recovered'!
csvPrefixProcess
    ^'Process'
! !

"ASDBase.ic method 0x20026de8; bytecode file offset 0x923928"
!ASDEHooksConfig class methodsFor: 'recovered'!
csvPrefixOutput
    ^'Output'
! !

"ASDBase.ic method 0x20039084; bytecode file offset 0x935c54"
!ASDEHooksConfig class methodsFor: 'recovered'!
getCSVprefixLabelForType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d7b8; bytecode file offset 0x93bf94"
!ASDEHooksConfig class methodsFor: 'recovered'!
csvPrefixOutputVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDEHooksVariable.
    recoveredValue1 := (recoveredValue0) outputVarTag.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f098; bytecode file offset 0x93bf94"
!ASDEHooksConfig class methodsFor: 'recovered'!
csvPrefixInputVar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDEHooksVariable.
    recoveredValue1 := (recoveredValue0) inputVarTag.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058688; bytecode file offset 0x956284"
!ASDEHooksConfig class methodsFor: 'recovered'!
isCsvPrefixOutputVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) csvPrefixOutputVar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059298; bytecode file offset 0x956284"
!ASDEHooksConfig class methodsFor: 'recovered'!
isCsvPrefixProcess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) csvPrefixProcess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059648; bytecode file offset 0x956284"
!ASDEHooksConfig class methodsFor: 'recovered'!
isCsvPrefixInputVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) csvPrefixInputVar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c8f3c; bytecode file offset 0x9c5818"
!ASDEHooksConfig class methodsFor: 'recovered'!
createForProject: recoveredArg1 configFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) modifiable.
    recoveredValue4 := (self) createForProject: (recoveredValue0) configFile: (recoveredValue1) forceAssociation: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20104a1c; bytecode file offset 0xa01584"
!ASDEHooksConfig class methodsFor: 'recovered'!
allMappingTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) mappingTypeProcess.
    recoveredValue2 := (self) mappingTypeInput.
    recoveredValue3 := (self) mappingTypeOutput.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013124c; bytecode file offset 0xa2db34"
!ASDEHooksConfig class methodsFor: 'recovered'!
isCsvPrefixInputOrOutput: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) csvPrefixInput.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
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
            recoveredStack1 := (recoveredStack1) csvPrefixOutput.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ade24; bytecode file offset 0xaaa6f8"
!ASDEHooksConfig class methodsFor: 'recovered'!
allMappingCSVprefixes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) csvPrefixProcess.
    recoveredValue2 := (self) csvPrefixInput.
    recoveredValue3 := (self) csvPrefixOutput.
    recoveredValue4 := (self) csvPrefixInputVar.
    recoveredValue5 := (recoveredValue4) asSymbol.
    recoveredValue6 := (self) csvPrefixOutputVar.
    recoveredValue7 := (recoveredValue6) asSymbol.
    recoveredValue8 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5) with: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201e05e0; bytecode file offset 0xadceac"
!ASDEHooksConfig class methodsFor: 'recovered'!
createForProject: recoveredArg1 configFile: recoveredArg2 forceAssociation: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) initialize.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) configFileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) project: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) forceAssociationWithProject: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c57c; bytecode file offset 0xb68e78"
!ASDEHooksConfig class methodsFor: 'recovered'!
exportFileNameForMappingType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'SchedulingMapping'.
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
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'InputMapping'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'OutputMapping'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'Mapping'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026c5a4; bytecode file offset 0xb68e78"
!ASDEHooksConfig class methodsFor: 'recovered'!
exportLabelNameForMappingType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Input Mappings'.
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
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Output Mappings'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Process Mappings'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'Mappings'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20276d6c; bytecode file offset 0xb73640"
!ASDEHooksConfig class methodsFor: 'recovered'!
exportTagForMappingType: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) mappingTypeInput.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingInputTag.
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
            recoveredStack2 := (recoveredStack2) mappingTypeOutput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingOutputTag.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) mappingTypeProcess.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingProcessTag.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20322270; bytecode file offset 0xc1eb6c"
!ASDEHooksConfig class methodsFor: 'recovered'!
askForConfigFileLoad: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := ('ASCET has recognized a EHooks project with a file based EHooks specification.\The specification that is stored in file <') withCrs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := ('> is transferred and gets stored in ASCET. The file is no longer used by this project.\') withCrs.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := ('ASCET has found an old EHooks project with a file based EHooks specification.\The file <') withCrs.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    recoveredValue8 := ('> will be converted into a new EHooks specification.\Shall the file be kept or deleted afterwards?\ \Note: If you select "Keep it" the file will remain on the disk and will be asked to convert again!!') withCrs.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := EtasUserQuestion.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) message: (recoveredValue11).
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) prompterID: ('ASDEHooksConfigurationImport').
    recoveredValue14 := recoveredValue12.
    (recoveredValue14) buttonStyle: ('YESNOCANCEL').
    recoveredValue15 := recoveredValue12.
    (recoveredValue15) buttonText: (#('Delete it' 'Keep it' 'Cancel')).
    recoveredValue16 := recoveredValue12.
    (recoveredValue16) nextTimeButtonVisible: (false).
    recoveredValue17 := recoveredValue12.
    (recoveredValue17) type: ('warning').
    recoveredValue18 := (recoveredValue12) prompt.
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

"ASDBase.ic method 0x203611bc; bytecode file offset 0xc5db10"
!ASDEHooksConfig class methodsFor: 'recovered'!
askForConfigFileSearch: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fileName.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) pathName.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ('ASCET has found a filename representing a file based EHooks specification.\However, the file \"') withCrs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := ('"\ does not exist in the directory \"') withCrs.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := ('"\ anymore. Would you like to search for the file?') withCrs.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    recoveredLocal4 := recoveredValue12.
    recoveredValue13 := EtasUserQuestion.
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (recoveredValue13) message: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) prompterID: ('ASDEHooksMigrateConfiguration').
    recoveredValue17 := recoveredValue15.
    (recoveredValue17) buttonStyle: ('YESNO').
    recoveredValue18 := recoveredValue15.
    (recoveredValue18) buttonText: (#('Search File' 'Ignore File')).
    recoveredValue19 := recoveredValue15.
    (recoveredValue19) nextTimeButtonVisible: (false).
    recoveredValue20 := recoveredValue15.
    (recoveredValue20) type: ('warning').
    recoveredValue21 := (recoveredValue15) prompt.
    recoveredLocal3 := recoveredValue21.
    recoveredValue22 := recoveredLocal3.
    ^recoveredValue22
! !

"ASDBase.ic method 0x20361210; bytecode file offset 0xc5db10"
!ASDEHooksConfig class methodsFor: 'recovered'!
askForEHooksConfigFileSearch: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fileName.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) pathName.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ('ASCET has found an EHOOKS configuration.\However, the file \"') withCrs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := ('"\ does not exist in the directory \"') withCrs.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := ('".\ Would you like to search for the file?') withCrs.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    recoveredLocal4 := recoveredValue12.
    recoveredValue13 := EtasUserQuestion.
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (recoveredValue13) message: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) prompterID: ('ASDEHooksMigrateConfiguration').
    recoveredValue17 := recoveredValue15.
    (recoveredValue17) buttonStyle: ('YESNO').
    recoveredValue18 := recoveredValue15.
    (recoveredValue18) buttonText: (#('Search File' 'Ignore File')).
    recoveredValue19 := recoveredValue15.
    (recoveredValue19) nextTimeButtonVisible: (false).
    recoveredValue20 := recoveredValue15.
    (recoveredValue20) type: ('warning').
    recoveredValue21 := (recoveredValue15) prompt.
    recoveredLocal3 := recoveredValue21.
    recoveredValue22 := recoveredLocal3.
    ^recoveredValue22
! !

"ASDBase.ic method 0x203b3b20; bytecode file offset 0xcb0474"
!ASDEHooksConfig class methodsFor: 'recovered'!
promptForEHooksConfigurationFilePath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidFileName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastExportPath.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := '*.ehcfg'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'EHOOKS configuration'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'File Name for EHOOKS Configuration File'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '*.ehcfg'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b3b74; bytecode file offset 0xcb0474"
!ASDEHooksConfig class methodsFor: 'recovered'!
promptForEHooksAscetSpecificationFilePath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidFileName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastExportPath.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := '*.aehk.xml'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'AEHK'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'File Name for (obsolete) EHOOKS Specification File'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '*.aehk.xml'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

