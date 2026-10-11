"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000344; bytecode file offset 0xf34c"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionsDialogConfirmed
    | recoveredValue0 |
    recoveredValue0 := (self) readEtcPathSettingsCheck: (true).
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000384; bytecode file offset 0xf434"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionsGroup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optionsGroup.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200003e4; bytecode file offset 0xf434"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionHWCModuleInstanceName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getOptionHWCModuleInstanceName.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200003f4; bytecode file offset 0xf434"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionsXMLCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optionsXMLCategory.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000414; bytecode file offset 0xf434"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionsGroupMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) optionsGroupMapping.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000434; bytecode file offset 0xf434"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionHWCMessageCreationTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getOptionHWCMessageCreationTarget.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000554; bytecode file offset 0xf584"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
setOptionHWCMessageCreationTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getOptionHWCMessageCreationTarget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20000574; bytecode file offset 0xf584"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
setOptionHWCModuleInstanceNamet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getOptionHWCModuleInstanceName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20000624; bytecode file offset 0xf6f0"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
isMessageCreationTargetHWC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionHWCMessageCreationTarget.
    recoveredValue1 := (recoveredValue0) equals: ('HWC').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000688; bytecode file offset 0xf6f0"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
isMessageCreationTargetModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionHWCMessageCreationTarget.
    recoveredValue1 := (recoveredValue0) equals: ('MODULE').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x2000069c; bytecode file offset 0xf6f0"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
isMessageCreationTargetProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionHWCMessageCreationTarget.
    recoveredValue1 := (recoveredValue0) equals: ('PROJECT').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x2000096c; bytecode file offset 0xf994"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionUseLegacyHWCEditor
    ^false
! !

"ETargetCommon.ic method 0x20000f58; bytecode file offset 0xff5c"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
readOptionsFromXMLFiles
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := super readOptionsFromXMLFiles.
    recoveredLocal1 := recoveredValue0.
    (self) readEtcPathSettingsCheck: (false).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20001018; bytecode file offset 0x10018"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionSeparateHardwareConfigurator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('SeparateHardwareConfigurator') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x2000136c; bytecode file offset 0x10378"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
getETCInstallationPath
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionSeparateHardwareConfigurator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionHardwareConfigurationCommandLine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultIntecrioInstallationPath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x2000163c; bytecode file offset 0x10674"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
getOptionHWCMessageCreationTarget
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
            recoveredStack1 := [:block280008a4Arg1 | 
    | block280008a4Value0 block280008a4Value1 block280008a4Value2 |
    block280008a4Value0 := block280008a4Arg1.
    block280008a4Value1 := (block280008a4Value0) attributeName.
    block280008a4Value2 := (block280008a4Value1) = ('ETCMessageCreationTarget').
    block280008a4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^'PROJECT'
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20001660; bytecode file offset 0x10674"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
getOptionHWCModuleInstanceName
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
            recoveredStack1 := [:block280008c8Arg1 | 
    | block280008c8Value0 block280008c8Value1 block280008c8Value2 |
    block280008c8Value0 := block280008c8Arg1.
    block280008c8Value1 := (block280008c8Value0) attributeName.
    block280008c8Value2 := (block280008c8Value1) = ('ETCModuleInstanceName').
    block280008c8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^''
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20001ae4; bytecode file offset 0x10b34"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionHardwareConfigurationWorkingDirectory
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
            recoveredStack1 := [:block28000a0cArg1 | 
    | block28000a0cValue0 block28000a0cValue1 block28000a0cValue2 |
    block28000a0cValue0 := block28000a0cArg1.
    block28000a0cValue1 := (block28000a0cValue0) attributeName.
    block28000a0cValue2 := (block28000a0cValue1) = ('HardwareConfiguratorWorkingDirectory').
    block28000a0cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := (self) class.
    recoveredBlock16Value1 := (recoveredBlock16Value0) getDefaultWorkingDirectory.
    ^recoveredBlock16Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20001b14; bytecode file offset 0x10b34"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
optionHardwareConfigurationCommandLine
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
            recoveredStack1 := [:block28000a30Arg1 | 
    | block28000a30Value0 block28000a30Value1 block28000a30Value2 |
    block28000a30Value0 := block28000a30Arg1.
    block28000a30Value1 := (block28000a30Value0) attributeName.
    block28000a30Value2 := (block28000a30Value1) = ('ETCHardwareConfigurationCommandLine').
    block28000a30Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := (self) class.
    recoveredBlock16Value1 := (recoveredBlock16Value0) getDefaultIntecrioInstallationPath.
    ^recoveredBlock16Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20002140; bytecode file offset 0x11160"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeUseLegacyHWCEditor.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeSeparateHardwareConfigurator.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeHardwareConfigurationCommandLine.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeHardwareConfigurationWorkingDirectory.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeHWCMessageCreationTarget.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeHWCModuleInstanceName.
    (recoveredValue11) add: (recoveredValue12).
    ^self
! !

"ETargetCommon.ic method 0x200023b4; bytecode file offset 0x113e0"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeUseLegacyHWCEditor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'UseLegacyHWCEditor'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Use Legacy HWC Editor (deprecated)'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Use legacy HWC Editor (deprecated)'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Use legacy HWC Editor (deprecated)'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    false
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            recoveredStack13 := 'STATION'.
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
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ETargetCommon.ic method 0x20002424; bytecode file offset 0x11450"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeSeparateHardwareConfigurator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'SeparateHardwareConfigurator'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Use separately installed INTECRIO for hardware configuration'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Use separately installed INTECRIO as hardware configurator'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Use separately installed INTECRIO as hardware configurator'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
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
            recoveredStack13 := 'STATION'.
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
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ETargetCommon.ic method 0x20002a00; bytecode file offset 0x11a44"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeHWCMessageCreationTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasEnumerationOption.
    recoveredValue3 := ('Determines whether ASCET messages generated during automatic ') , ('mapping are created in the project itself (''Project'') or in one of the included modules (''Module'').').
    recoveredValue4 := (recoveredValue3) , ('If you specify ''Module'' you have additionally to specify the instance name of the module, where the mappings should be created.').
    recoveredValue5 := (self) optionsGroupMapping.
    recoveredValue6 := (recoveredValue2) label: ('Message Creation Target') description: (recoveredValue4) toolTip: ('Message Creation Target') value: ('PROJECT') default: ('PROJECT') group: (recoveredValue5) visible: (true) sensitive: (true) type: ('STATION') userField: (nil).
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) stringCollection: (#('Project' 'Module')).
    recoveredValue8 := (recoveredValue6) valueCollection: (#('PROJECT' 'MODULE')).
    recoveredValue9 := (self) stationOptionFile.
    recoveredValue10 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ETCMessageCreationTarget') optionClass: (recoveredValue8) optionFile: (recoveredValue9).
    ^recoveredValue10
! !

"ETargetCommon.ic method 0x20002af0; bytecode file offset 0x11b30"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeHWCModuleInstanceName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) optionsXMLCategory.
    recoveredValue2 := EtasStringOption.
    recoveredValue3 := ('Defines the name of the module for the generated messages in the input field. ') , ('Modules may be included directly or indirectly (in another module) in the project.').
    recoveredValue4 := (recoveredValue3) withCrs.
    recoveredValue5 := (self) optionsGroupMapping.
    recoveredValue6 := [
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := (self) optionHWCMessageCreationTarget.
    recoveredBlock32Value1 := (recoveredBlock32Value0) equalsIgnoringCase: ('MODULE').
    recoveredBlock32Value1
].
    recoveredValue7 := (recoveredValue2) label: ('Module Instance Name') description: (recoveredValue4) toolTip: ('Module Instance Name') value: ('') default: ('') group: (recoveredValue5) visible: (true) sensitive: (recoveredValue6) type: ('STATION') userField: (nil).
    recoveredValue8 := (self) stationOptionFile.
    recoveredValue9 := (recoveredValue0) xmlCategory: (recoveredValue1) attributeName: ('ETCModuleInstanceName') optionClass: (recoveredValue7) optionFile: (recoveredValue8).
    ^recoveredValue9
! !

"ETargetCommon.ic method 0x20003120; bytecode file offset 0x12164"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeHardwareConfigurationWorkingDirectory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'HardwareConfiguratorWorkingDirectory'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasPathOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'HWC Working Directory'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Working directory for hardware configurator'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Working directory for hardware configurator'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack8 := (recoveredStack8) getDefaultWorkingDirectory.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) getDefaultWorkingDirectory.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack14 := [:block28000cdcArg1 | 
    | block28000cdcValue0 block28000cdcValue1 block28000cdcValue2 |
    block28000cdcValue0 := block28000cdcArg1.
    block28000cdcValue1 := (block28000cdcValue0) optionClass.
    block28000cdcValue2 := (block28000cdcValue1) invalid: (false).
    block28000cdcValue2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) requiredPath: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ETargetCommon.ic method 0x200031c0; bytecode file offset 0x12204"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
initializeHardwareConfigurationCommandLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ETCHardwareConfigurationCommandLine'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasPathOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'HW Configurator Path'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Path to external hardware configurator'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Path to external hardware configurator'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack8 := (recoveredStack8) getDefaultIntecrioInstallationPath.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack9 := (recoveredStack9) getDefaultIntecrioInstallationPath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack12 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := (self) optionSeparateHardwareConfigurator.
    recoveredBlock38Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack14 := [:block28000d24Arg1 | 
    | block28000d24Value0 block28000d24Value1 block28000d24Value2 |
    block28000d24Value0 := block28000d24Arg1.
    block28000d24Value1 := (block28000d24Value0) optionClass.
    block28000d24Value2 := (block28000d24Value1) invalid: (false).
    block28000d24Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) requiredPath: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ETargetCommon.ic method 0x20003dd8; bytecode file offset 0x12e4c"
!ASDGenericHardwareConfigurationOptions methodsFor: 'recovered'!
readEtcPathSettingsCheck: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getETCInstallationPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setHWCPathTokenTo: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := '\Settings\ASCET-RP\ETC-Paths.xml'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) readEtcPathDeclarations: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := ASDXMLEtcOptions.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOptionsFromXMLFile: (recoveredStack1) overrideFixed: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := ASDXMLEtcOptions.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) copyValuesToDefaultValues.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := ASDXMLEtcOptions.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolPathOptions.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block28000e44Arg1 | 
    | block28000e44Value0 block28000e44Value1 block28000e44Value2 block28000e44Value3 block28000e44Value4 block28000e44Value5 block28000e44Value6 block28000e44Value7 block28000e44Value8 block28000e44Value9 |
    block28000e44Value0 := ASDPathOptions.
    block28000e44Value1 := (block28000e44Value0) instance.
    block28000e44Value2 := (block28000e44Value1) pathTokens.
    block28000e44Value3 := block28000e44Arg1.
    block28000e44Value4 := (block28000e44Value3) attributeName.
    block28000e44Value5 := ('ETC-PATHS.') , (block28000e44Value4).
    block28000e44Value6 := block28000e44Arg1.
    block28000e44Value7 := (block28000e44Value6) optionClass.
    block28000e44Value8 := (block28000e44Value7) value.
    block28000e44Value9 := (block28000e44Value2) at: (block28000e44Value5) put: (block28000e44Value8).
    block28000e44Value9
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := SGCgErrorHandler.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := ASDXMLEtcOptions.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHWCMessageDeclarationPath.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) readTargetMessages: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsGroup.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkETCInterfaceVersionPromptMessagesKeep: (recoveredStack1) optionPath: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Stack0 recoveredBlock151Stack1 recoveredBlock151Stack2 recoveredBlock151Stack3 recoveredBlock151PC recoveredBlock151Step recoveredBlock151Done recoveredBlock151Result |
    recoveredBlock151Stack0 := self.
    recoveredBlock151PC := 158.
    recoveredBlock151Done := false.
    [recoveredBlock151Done not] whileTrue: [
        recoveredBlock151Step := recoveredBlock151PC.
        recoveredBlock151Step = 158 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 159.
        ].
        recoveredBlock151Step = 159 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 160.
        ].
        recoveredBlock151Step = 160 ifTrue: [
            (recoveredBlock151Stack2) ifTrue: [recoveredBlock151PC := 167] ifFalse: [recoveredBlock151PC := 164].
        ].
        recoveredBlock151Step = 164 ifTrue: [
            recoveredBlock151PC := 165.
        ].
        recoveredBlock151Step = 165 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 166.
        ].
        recoveredBlock151Step = 166 ifTrue: [
            ^recoveredBlock151Stack1
        ].
        recoveredBlock151Step = 167 ifTrue: [
            recoveredBlock151Result := recoveredBlock151Stack1.
            recoveredBlock151Done := true.
        ].
    ].
    recoveredBlock151Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

