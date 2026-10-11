"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200185c0; bytecode file offset 0x92209c"
!ASDExperimentOptions methodsFor: 'recovered'!
attributeUseAlternativePCExperimentDllFile
    ^'UseAlternativePCExperimentDllFile'
! !

"ASDBase.ic method 0x2001d420; bytecode file offset 0x92209c"
!ASDExperimentOptions methodsFor: 'recovered'!
defaultUseAlternativePCExperimentDllFile
    ^''
! !

"ASDBase.ic method 0x20024c14; bytecode file offset 0x92209c"
!ASDExperimentOptions methodsFor: 'recovered'!
attributeExperimentAutomaticMonitorMode
    ^'ExperimentAutomaticMonitorMode'
! !

"ASDBase.ic method 0x2007c1bc; bytecode file offset 0x97c330"
!ASDExperimentOptions methodsFor: 'recovered'!
defaultExperimentInitializeParametersAtOSStart
    ^false
! !

"ASDBase.ic method 0x2007e4ac; bytecode file offset 0x97c330"
!ASDExperimentOptions methodsFor: 'recovered'!
defaultExperimentAutomaticMonitorMode
    ^false
! !

"ASDBase.ic method 0x2007f24c; bytecode file offset 0x97c330"
!ASDExperimentOptions methodsFor: 'recovered'!
defaultExperimentInitializeVariablesAtOSStart
    ^false
! !

"ASDBase.ic method 0x202004dc; bytecode file offset 0xafcfec"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentMonitorFading
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
            recoveredStack1 := [:block280d9224Arg1 | 
    | block280d9224Value0 block280d9224Value1 block280d9224Value2 |
    block280d9224Value0 := block280d9224Arg1.
    block280d9224Value1 := (block280d9224Value0) attributeName.
    block280d9224Value2 := (block280d9224Value1) = ('ExperimentMonitorFadingOn').
    block280d9224Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^true
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

"ASDBase.ic method 0x202006b0; bytecode file offset 0xafcfec"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentMonitorMinimumRefresh
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
            recoveredStack1 := [:block280d93f8Arg1 | 
    | block280d93f8Value0 block280d93f8Value1 block280d93f8Value2 |
    block280d93f8Value0 := block280d93f8Arg1.
    block280d93f8Value1 := (block280d93f8Value0) attributeName.
    block280d93f8Value2 := (block280d93f8Value1) = ('ExperimentMonitorMinimumRefreshOn').
    block280d93f8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^true
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

"ASDBase.ic method 0x2020c80c; bytecode file offset 0xb09100"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentMonitorMinimumRefreshDelay
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
            recoveredStack1 := [:block280da1c0Arg1 | 
    | block280da1c0Value0 block280da1c0Value1 block280da1c0Value2 |
    block280da1c0Value0 := block280da1c0Arg1.
    block280da1c0Value1 := (block280da1c0Value0) attributeName.
    block280da1c0Value2 := (block280da1c0Value1) = ('ExperimentMonitorMinimumRefreshDelay').
    block280da1c0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^5
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
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020c830; bytecode file offset 0xb09100"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentMonitorFadingTime
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
            recoveredStack1 := [:block280da1e4Arg1 | 
    | block280da1e4Value0 block280da1e4Value1 block280da1e4Value2 |
    block280da1e4Value0 := block280da1e4Arg1.
    block280da1e4Value1 := (block280da1e4Value0) attributeName.
    block280da1e4Value2 := (block280da1e4Value1) = ('ExperimentMonitorFadingTime').
    block280da1e4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^5
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
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cacc; bytecode file offset 0xb09508"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentInitializeParametersAtOSStart
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
            recoveredStack1 := [:block280da400Arg1 | 
    | block280da400Value0 block280da400Value1 block280da400Value2 |
    block280da400Value0 := block280da400Arg1.
    block280da400Value1 := (block280da400Value0) attributeName.
    block280da400Value2 := (block280da400Value1) = ('ExperimentInitializeParametersAtOSStart').
    block280da400Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultExperimentInitializeParametersAtOSStart.
    ^recoveredBlock16Value0
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
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020cb1c; bytecode file offset 0xb09508"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentInitializeVariablesAtOSStart
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
            recoveredStack1 := [:block280da448Arg1 | 
    | block280da448Value0 block280da448Value1 block280da448Value2 |
    block280da448Value0 := block280da448Arg1.
    block280da448Value1 := (block280da448Value0) attributeName.
    block280da448Value2 := (block280da448Value1) = ('ExperimentInitializeVariablesAtOSStart').
    block280da448Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (self) defaultExperimentInitializeVariablesAtOSStart.
    ^recoveredBlock16Value0
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
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021a714; bytecode file offset 0xb16fe4"
!ASDExperimentOptions methodsFor: 'recovered'!
optionExperimentAutomaticMonitorMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeExperimentAutomaticMonitorMode.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) defaultExperimentAutomaticMonitorMode.
    ^recoveredBlock18Value0
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20226694; bytecode file offset 0xb22f60"
!ASDExperimentOptions methodsFor: 'recovered'!
resetOptionExperimentAutomaticMonitorMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeExperimentAutomaticMonitorMode.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value: (false).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202266d8; bytecode file offset 0xb22fa4"
!ASDExperimentOptions methodsFor: 'recovered'!
setOptionExperimentAutomaticMonitorMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeExperimentAutomaticMonitorMode.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) optionClass.
    recoveredValue5 := (recoveredValue4) value: (true).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2028cdf8; bytecode file offset 0xb896d0"
!ASDExperimentOptions methodsFor: 'recovered'!
optionUseAlternativePCExperimentDllFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultUseAlternativePCExperimentDllFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) attributeName.
    recoveredBlock14Value2 := (self) attributeUseAlternativePCExperimentDllFile.
    recoveredBlock14Value3 := (recoveredBlock14Value1) = (recoveredBlock14Value2).
    recoveredBlock14Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock28Value0 |
    recoveredBlock28Value0 := (self) defaultUseAlternativePCExperimentDllFile.
    ^recoveredBlock28Value0
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4edc; bytecode file offset 0xbc17b8"
!ASDExperimentOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeExperimentInitializeVariablesAtOSStart.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeExperimentInitializeParametersAtOSStart.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeExperimentMonitorFading.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeExperimentMonitorMinimumRefresh.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeUseAlternativePCExperimentDllFile.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeExperimentAutomaticMonitorMode.
    (recoveredValue11) add: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2031358c; bytecode file offset 0xc0fec0"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentInitializeVariablesAtOSStart
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentInitializeVariablesAtOSStart'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Initialize Variables at OS Start'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Perform "Reinitialize variables" every time the operating system is started in the experiment.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Perform "Reinitialize variables" every time the operating system is started in the experiment.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultExperimentInitializeVariablesAtOSStart.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultExperimentInitializeVariablesAtOSStart.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203135d0; bytecode file offset 0xc0fec0"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentInitializeParametersAtOSStart
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentInitializeParametersAtOSStart'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Initialize Parameters at OS Start'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Perform "Reinitialize parameters" every time the operating system is started in the experiment.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Perform "Reinitialize parameters" every time the operating system is started in the experiment.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultExperimentInitializeParametersAtOSStart.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultExperimentInitializeParametersAtOSStart.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20313650; bytecode file offset 0xc0ff44"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentAutomaticMonitorMode
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeExperimentAutomaticMonitorMode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Automatic Monitor Mode'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Automatically add a value monitor on all variables.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Monitor all Variables'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultExperimentAutomaticMonitorMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultExperimentAutomaticMonitorMode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036f89c; bytecode file offset 0xc6c1a0"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentMonitorFadingTime
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentMonitorFadingTime'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasNumericOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Monitor Fading Time [sec]'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'The time for fading the monitor if value does not change any more. 0 means, fading is off.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Monitor fading time [sec]'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := 5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := 5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    | block280f18ccValue0 block280f18ccValue1 block280f18ccValue2 |
    block280f18ccValue0 := ASDExperimentOptions.
    block280f18ccValue1 := (block280f18ccValue0) instance.
    block280f18ccValue2 := (block280f18ccValue1) optionExperimentMonitorFading.
    block280f18ccValue2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack5) min: (recoveredStack6).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := 60.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) max: (recoveredStack5).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037c714; bytecode file offset 0xc79018"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentMonitorMinimumRefreshDelay
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentMonitorMinimumRefreshDelay'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasNumericOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Monitor Minimum Refresh Delay [msec]'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'The minimum time delay for refreshing the monitor. 0 means, delay is off.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Monitor minimum refresh delay [msec]'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack12 := [
    | block280f24e4Value0 block280f24e4Value1 block280f24e4Value2 |
    block280f24e4Value0 := ASDExperimentOptions.
    block280f24e4Value1 := (block280f24e4Value0) instance.
    block280f24e4Value2 := (block280f24e4Value1) optionExperimentMonitorMinimumRefresh.
    block280f24e4Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack5) min: (recoveredStack6).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := 1000.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) max: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037dc64; bytecode file offset 0xc7a5c0"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentMonitorFading
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentMonitorFadingOn'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Activate Monitor Fading'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Activate monitor fading within the specified time period'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Activate monitor fading'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack5) changeable: (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeExperimentMonitorFadingTime.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037dcbc; bytecode file offset 0xc7a5c0"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeExperimentMonitorMinimumRefresh
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ExperimentMonitorMinimumRefreshOn'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'Activate Monitor Refresh Delay'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Delay monitor refresh for the specified time period'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Activate monitor refresh delay'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := 'STATION'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack5) changeable: (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := (recoveredStack5) stationOptionFile.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeExperimentMonitorMinimumRefreshDelay.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ee1e8; bytecode file offset 0xceab14"
!ASDExperimentOptions methodsFor: 'recovered'!
initializeUseAlternativePCExperimentDllFile
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionsXMLCategory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributeUseAlternativePCExperimentDllFile.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := EtasFileOption.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := 'DLL Used for PC Experiment'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack6 := 'Start PC experiment with specified DLL'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := 'Experiment DLL'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack8 := (recoveredStack8) defaultUseAlternativePCExperimentDllFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack9 := (recoveredStack9) defaultUseAlternativePCExperimentDllFile.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := (recoveredStack10) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack10 := (recoveredStack10) optionsGroup.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack11 := [
    | block280f900cValue0 block280f900cValue1 |
    block280f900cValue0 := MainController.
    block280f900cValue1 := (block280f900cValue0) isEtasInternalMode.
    block280f900cValue1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := Dictionary.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack7 := recoveredStack6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack8 := '*.DLL'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack9 := 'Experiment DLL'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack7) at: (recoveredStack8) put: (recoveredStack9).
            recoveredStack7 := recoveredStack6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack8 := '*.*'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack9 := 'All Files'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack7) at: (recoveredStack8) put: (recoveredStack9).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack5) filterDictionary: (recoveredStack6).
            recoveredStack5 := recoveredStack4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack6 := 'Select experiment DLL'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack5) dialogTitle: (recoveredStack6).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := EtasGeneralDllApi.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := (recoveredStack5) getAppProgramPath.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) searchPath: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

