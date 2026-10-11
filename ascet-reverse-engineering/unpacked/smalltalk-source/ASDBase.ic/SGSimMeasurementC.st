"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20034e64; bytecode file offset 0x934580"
!SGSimMeasurementC methodsFor: 'recovered'!
offlineChannelGroup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) offlineChannelGroup.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036f44; bytecode file offset 0x934580"
!SGSimMeasurementC methodsFor: 'recovered'!
measureViews
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureFramework.
    recoveredValue1 := (recoveredValue0) measureViews.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e40; bytecode file offset 0x93d83c"
!SGSimMeasurementC methodsFor: 'recovered'!
getAvailableMeasureTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) getAvailableMeasureTasks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ce8; bytecode file offset 0x956284"
!SGSimMeasurementC methodsFor: 'recovered'!
isTaskIdAvailable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) taskIdToNameMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200590c8; bytecode file offset 0x956284"
!SGSimMeasurementC methodsFor: 'recovered'!
isTaskNameAvailable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) taskIdToNameMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060810; bytecode file offset 0x95d1bc"
!SGSimMeasurementC methodsFor: 'recovered'!
isAquisitionStateRun
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) acquiState.
    recoveredValue1 := AquisitionStateRun.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060840; bytecode file offset 0x95d1bc"
!SGSimMeasurementC methodsFor: 'recovered'!
isAquisitionStateOff
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) acquiState.
    recoveredValue1 := AquisitionStateOff.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20060870; bytecode file offset 0x95d1bc"
!SGSimMeasurementC methodsFor: 'recovered'!
isAquisitionStatePause
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) acquiState.
    recoveredValue1 := AquisitionStatePause.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006832c; bytecode file offset 0x965b90"
!SGSimMeasurementC methodsFor: 'recovered'!
measureFramework
    | recoveredValue0 |
    recoveredValue0 := measureFramework.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006913c; bytecode file offset 0x965b90"
!SGSimMeasurementC methodsFor: 'recovered'!
measureInterfaceManager
    | recoveredValue0 |
    recoveredValue0 := measureFramework.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069418; bytecode file offset 0x966bdc"
!SGSimMeasurementC methodsFor: 'recovered'!
dataLoggerCtrl
    | recoveredValue0 |
    recoveredValue0 := dataLoggerCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b164; bytecode file offset 0x967a18"
!SGSimMeasurementC methodsFor: 'recovered'!
nvramCockpitCtrl
    | recoveredValue0 |
    recoveredValue0 := nvramCockpitCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b208; bytecode file offset 0x96873c"
!SGSimMeasurementC methodsFor: 'recovered'!
targetDebuggerCtrl
    | recoveredValue0 |
    recoveredValue0 := targetDebuggerCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bfc4; bytecode file offset 0x9692b0"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedDataElements
    | recoveredValue0 |
    recoveredValue0 := selectedDataElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce08; bytecode file offset 0x969c04"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedDataTables
    | recoveredValue0 |
    recoveredValue0 := selectedDataTables.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d5dc; bytecode file offset 0x96a390"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedTask
    | recoveredValue0 |
    recoveredValue0 := selectedTask.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e30c; bytecode file offset 0x96af48"
!SGSimMeasurementC methodsFor: 'recovered'!
acquiState
    | recoveredValue0 |
    recoveredValue0 := acquiState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e6d0; bytecode file offset 0x96b41c"
!SGSimMeasurementC methodsFor: 'recovered'!
getOfflineMeasureRate
    | recoveredValue0 |
    recoveredValue0 := offlineRate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084660; bytecode file offset 0x981ca4"
!SGSimMeasurementC methodsFor: 'recovered'!
changeTaskSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedTask: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008487c; bytecode file offset 0x981ca4"
!SGSimMeasurementC methodsFor: 'recovered'!
changeViewSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedView: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008b9e4; bytecode file offset 0x9882a8"
!SGSimMeasurementC methodsFor: 'recovered'!
isAcquisitionRunning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := acquiState.
    recoveredValue1 := (recoveredValue0) = ('run').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b9f0; bytecode file offset 0x9882a8"
!SGSimMeasurementC methodsFor: 'recovered'!
isAcquisitionOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := acquiState.
    recoveredValue1 := (recoveredValue0) = ('off').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009d31c; bytecode file offset 0x999bd4"
!SGSimMeasurementC methodsFor: 'recovered'!
isAcquisitionNotRunning
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := acquiState.
    recoveredValue1 := (recoveredValue0) = ('run').
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200acef4; bytecode file offset 0x9a97b0"
!SGSimMeasurementC methodsFor: 'recovered'!
setAcquisitionTaskName: recoveredArg1 forConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('acquiConfig') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bf86c; bytecode file offset 0x9bd228"
!SGSimMeasurementC methodsFor: 'recovered'!
measureFramework: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureFramework := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e80; bytecode file offset 0x9bdf14"
!SGSimMeasurementC methodsFor: 'recovered'!
dataLoggerCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataLoggerCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c194c; bytecode file offset 0x9beac8"
!SGSimMeasurementC methodsFor: 'recovered'!
nvramCockpitCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nvramCockpitCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2800; bytecode file offset 0x9bf474"
!SGSimMeasurementC methodsFor: 'recovered'!
targetDebuggerCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetDebuggerCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c32e4; bytecode file offset 0x9bfde0"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedDataElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedDataElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3548; bytecode file offset 0x9c058c"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedDataTables: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedDataTables := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c41cc; bytecode file offset 0x9c0bf0"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedTask := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c45a0; bytecode file offset 0x9c11bc"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedView := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c64; bytecode file offset 0x9c16b0"
!SGSimMeasurementC methodsFor: 'recovered'!
acquiState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    acquiState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e18; bytecode file offset 0x9c1afc"
!SGSimMeasurementC methodsFor: 'recovered'!
offlineRate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offlineRate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de010; bytecode file offset 0x9da8cc"
!SGSimMeasurementC methodsFor: 'recovered'!
addMeasureDataList: recoveredArg1 toView: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) selectedDataElements: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) addMeasureDatasToView: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e4d34; bytecode file offset 0x9e15f8"
!SGSimMeasurementC methodsFor: 'recovered'!
stopAcquisition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureFramework.
    (recoveredValue0) stopAcquisition.
    recoveredValue1 := AquisitionStateOff.
    (self) acquiState: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x200ffcbc; bytecode file offset 0x9fc580"
!SGSimMeasurementC methodsFor: 'recovered'!
measureRate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) maxMeasureOfflineRate.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (1) max: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) min: (recoveredValue3).
    offlineRate := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x20106658; bytecode file offset 0xa02f10"
!SGSimMeasurementC methodsFor: 'recovered'!
taskIdToNameMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := taskIdToNameMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initTaskIdToNameMapping.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := taskIdToNameMapping.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20119aac; bytecode file offset 0xa16880"
!SGSimMeasurementC methodsFor: 'recovered'!
closeOpenedMeasureViews
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openedMeasureViews.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7df4Arg1 | 
    | block280c7df4Value0 block280c7df4Value1 |
    block280c7df4Value0 := block280c7df4Arg1.
    block280c7df4Value1 := (block280c7df4Value0) close.
    block280c7df4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2014c5f4; bytecode file offset 0xa48eb4"
!SGSimMeasurementC methodsFor: 'recovered'!
resumeAcquisitionExternTrigger
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AquisitionStateRun.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) resumeAcquisitionExternTrigger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20156ecc; bytecode file offset 0xa53790"
!SGSimMeasurementC methodsFor: 'recovered'!
addMeasureElement: recoveredArg1 toVUI: recoveredArg2
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) selectedDataElements: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addMeasureDatasToView: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b600; bytecode file offset 0xa67ec4"
!SGSimMeasurementC methodsFor: 'recovered'!
pauseAcquisition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) stopAcquisitionExternTrigger.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := AquisitionStatePause.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017f0e0; bytecode file offset 0xa7b99c"
!SGSimMeasurementC methodsFor: 'recovered'!
displayMeasureDatas
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measureFramework.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := measureFramework.
    recoveredBlock10Value1 := (recoveredBlock10Value0) readMeasureDatas.
    recoveredBlock10Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20186a68; bytecode file offset 0xa8332c"
!SGSimMeasurementC methodsFor: 'recovered'!
setLogTargetTickbase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGAccessData.
    recoveredValue1 := (recoveredValue0) getSGMeasureDevice.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) setLogTargetTickbase: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201c70bc; bytecode file offset 0xac3984"
!SGSimMeasurementC methodsFor: 'recovered'!
initTaskIdToNameMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    taskIdToNameMapping := recoveredValue1.
    recoveredValue2 := (self) getAvailableMeasureTasks.
    recoveredValue3 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := taskIdToNameMapping.
    recoveredBlock10Value1 := recoveredBlock10Arg2.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) put: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201c7428; bytecode file offset 0xac3cf0"
!SGSimMeasurementC methodsFor: 'recovered'!
openedMeasureViews
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measureFramework.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := measureFramework.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureViews.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280d479cArg1 | 
    | block280d479cValue0 block280d479cValue1 block280d479cValue2 |
    block280d479cValue0 := block280d479cArg1.
    block280d479cValue1 := (block280d479cValue0) isDestroyed.
    block280d479cValue2 := (block280d479cValue1) not.
    block280d479cValue2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d8d88; bytecode file offset 0xad5658"
!SGSimMeasurementC methodsFor: 'recovered'!
changeDataSelection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectScalarElementsFromList: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280d5c6cArg1 | 
    | block280d5c6cValue0 block280d5c6cValue1 block280d5c6cValue2 |
    block280d5c6cValue0 := block280d5c6cArg1.
    block280d5c6cValue1 := RBDataVector.
    block280d5c6cValue2 := (block280d5c6cValue0) isKindOf: (block280d5c6cValue1).
    block280d5c6cValue2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) selectedDataTables: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9798; bytecode file offset 0xad6060"
!SGSimMeasurementC methodsFor: 'recovered'!
taskNameForId: recoveredArg1
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
            recoveredStack2 := 999.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Dummy Device'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskIdToNameMapping.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    'no Task'
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e2144; bytecode file offset 0xadea04"
!SGSimMeasurementC methodsFor: 'recovered'!
selectedView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultView.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e49e8; bytecode file offset 0xae12bc"
!SGSimMeasurementC methodsFor: 'recovered'!
acquisitionStopped
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) activateStopSimulation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := AquisitionStateOff.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateMeasureControl.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8590; bytecode file offset 0xaf4e7c"
!SGSimMeasurementC methodsFor: 'recovered'!
startAcquisitionExternTrigger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AquisitionStateRun.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGAccessData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGMeasureDevice.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) startAcquisition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) startAcquisitionExternTrigger.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f85b0; bytecode file offset 0xaf4e7c"
!SGSimMeasurementC methodsFor: 'recovered'!
stopAcquisitionExternTrigger
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AquisitionStateOff.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGAccessData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGMeasureDevice.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) stopAcquisition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := measureFramework.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202015b4; bytecode file offset 0xafde78"
!SGSimMeasurementC methodsFor: 'recovered'!
taskIdForName: recoveredArg1
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
            recoveredStack2 := 'Dummy Device'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 999.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskIdToNameMapping.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20201664; bytecode file offset 0xafdf48"
!SGSimMeasurementC methodsFor: 'recovered'!
selectScalarElementsFromList: recoveredArg1
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
            recoveredStack2 := [:block280d9584Arg1 | 
    | block280d9584Stack0 block280d9584Stack1 block280d9584Stack2 block280d9584Stack3 block280d9584PC block280d9584Step block280d9584Done block280d9584Result |
    block280d9584Stack0 := self.
    block280d9584PC := 4.
    block280d9584Done := false.
    [block280d9584Done not] whileTrue: [
        block280d9584Step := block280d9584PC.
        block280d9584Step = 4 ifTrue: [
            block280d9584Stack1 := true.
            block280d9584PC := 5.
        ].
        block280d9584Step = 5 ifTrue: [
            block280d9584Stack2 := block280d9584Arg1.
            block280d9584PC := 6.
        ].
        block280d9584Step = 6 ifTrue: [
            block280d9584Stack2 := (block280d9584Stack2) isArithmeticElement.
            block280d9584PC := 7.
        ].
        block280d9584Step = 7 ifTrue: [
            (block280d9584Stack2) ifTrue: [block280d9584PC := 21] ifFalse: [block280d9584PC := 10].
        ].
        block280d9584Step = 10 ifTrue: [
            block280d9584PC := 11.
        ].
        block280d9584Step = 11 ifTrue: [
            block280d9584Stack1 := true.
            block280d9584PC := 12.
        ].
        block280d9584Step = 12 ifTrue: [
            block280d9584Stack2 := block280d9584Arg1.
            block280d9584PC := 13.
        ].
        block280d9584Step = 13 ifTrue: [
            block280d9584Stack2 := (block280d9584Stack2) isRBDataBoolean.
            block280d9584PC := 14.
        ].
        block280d9584Step = 14 ifTrue: [
            (block280d9584Stack2) ifTrue: [block280d9584PC := 21] ifFalse: [block280d9584PC := 18].
        ].
        block280d9584Step = 18 ifTrue: [
            block280d9584PC := 19.
        ].
        block280d9584Step = 19 ifTrue: [
            block280d9584Stack1 := block280d9584Arg1.
            block280d9584PC := 20.
        ].
        block280d9584Step = 20 ifTrue: [
            block280d9584Stack1 := (block280d9584Stack1) isRBEnumeration.
            block280d9584PC := 21.
        ].
        block280d9584Step = 21 ifTrue: [
            block280d9584Result := block280d9584Stack1.
            block280d9584Done := true.
        ].
    ].
    block280d9584Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020ec04; bytecode file offset 0xb0b4cc"
!SGSimMeasurementC methodsFor: 'recovered'!
measureViewClosing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedView.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) selectedView: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) updateMeasureViewBox.
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

"ASDBase.ic method 0x20211c7c; bytecode file offset 0xb0e548"
!SGSimMeasurementC methodsFor: 'recovered'!
getDefaultView
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getViewList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := false.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isClass.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 20] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) measureViewType.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) class.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) defaultMeasureViewType.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) = (recoveredBlock7Stack2).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue3 := (recoveredValue1) detect: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20212998; bytecode file offset 0xb0f268"
!SGSimMeasurementC methodsFor: 'recovered'!
dataLoggingOffline: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LoggingAccessDataPerChannel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureFramework.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) acquisitionManager.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) dataLoggingOffline.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021f600; bytecode file offset 0xb1becc"
!SGSimMeasurementC methodsFor: 'recovered'!
startAcquisition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAquisitionStatePause.
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
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) resumeAcquisition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) startAcquisition.
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
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := AquisitionStateRun.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029a0f8; bytecode file offset 0xb969cc"
!SGSimMeasurementC methodsFor: 'recovered'!
getViewList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e3544Arg1 :block280e3544Arg2 | 
    | block280e3544Value0 block280e3544Value1 block280e3544Value2 block280e3544Value3 block280e3544Value4 |
    block280e3544Value0 := block280e3544Arg1.
    block280e3544Value1 := (block280e3544Value0) basicLabel.
    block280e3544Value2 := block280e3544Arg2.
    block280e3544Value3 := (block280e3544Value2) basicLabel.
    block280e3544Value4 := (block280e3544Value1) < (block280e3544Value3).
    block280e3544Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := RBMeasureInterfaceManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) measureViewClasses.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := measureFramework.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := measureFramework.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) measureViews.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c8a70; bytecode file offset 0xbc5348"
!SGSimMeasurementC methodsFor: 'recovered'!
sortedTaskIdWithNameList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e5944Arg1 :block280e5944Arg2 | 
    | block280e5944Value0 block280e5944Value1 block280e5944Value2 block280e5944Value3 block280e5944Value4 |
    block280e5944Value0 := block280e5944Arg1.
    block280e5944Value1 := (block280e5944Value0) key.
    block280e5944Value2 := block280e5944Arg2.
    block280e5944Value3 := (block280e5944Value2) key.
    block280e5944Value4 := (block280e5944Value1) < (block280e5944Value3).
    block280e5944Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskIdToNameMapping.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 :recoveredBlock24Arg2 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := Association.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    recoveredBlock24Value3 := recoveredBlock24Arg2.
    recoveredBlock24Value4 := (recoveredBlock24Value1) key: (recoveredBlock24Value2) value: (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value0) add: (recoveredBlock24Value4).
    recoveredBlock24Value5
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dad78; bytecode file offset 0xbd763c"
!SGSimMeasurementC methodsFor: 'recovered'!
checkAcquisitionTaskName: recoveredArg1 elementName: recoveredArg2 taskDictionary: recoveredArg3
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
            recoveredStack2 := 'Dummy Device'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTaskNameAvailable: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := recoveredArg2.
    recoveredBlock36Value1 := (self) selectTaskForElementName: (recoveredBlock36Value0).
    recoveredBlock36Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ebfd0; bytecode file offset 0xbe88a0"
!SGSimMeasurementC methodsFor: 'recovered'!
getAcquisitionTaskNameFromConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := [].
    recoveredBlock9Value2 := (recoveredBlock9Value0) at: ('aquiConfig') ifAbsent: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue2 := (recoveredValue0) at: ('acquiConfig') ifAbsent: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isString.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 40] ifFalse: [recoveredBlock28PC := 44].
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) taskNameForId: (recoveredBlock28Stack2).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    recoveredValue4 := (recoveredValue2) ifNotNil: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2031dafc; bytecode file offset 0xc1a3d8"
!SGSimMeasurementC methodsFor: 'recovered'!
droppedItemList: recoveredArg1 intoMeasureView: recoveredArg2
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
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := Smalltalk.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack4 := 'RBScrolledDrawingArea'.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isKindOf: (recoveredBlock7Stack3).
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 29].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := false.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) changeDataSelection: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) selectedView: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) updateMeasureViewBox.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) measure.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203218d8; bytecode file offset 0xc1e1b0"
!SGSimMeasurementC methodsFor: 'recovered'!
measureInstVars: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) mainController.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) simEnvironment.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getSimInstanceForInstVar: (recoveredBlock13Stack1).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 45] ifFalse: [recoveredBlock13PC := 36].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal2.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    (self) changeDataSelection: (recoveredValue4).
    (self) measure.
    ^self
! !

"ASDBase.ic method 0x2032e3f4; bytecode file offset 0xc2acd0"
!SGSimMeasurementC methodsFor: 'recovered'!
initDisplayRate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
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
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOfflineRate10.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) offlineRate: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableCTSolver.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOfflineRate10.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) offlineRate: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOfflineRate1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) offlineRate: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20344ebc; bytecode file offset 0xc4179c"
!SGSimMeasurementC methodsFor: 'recovered'!
createMeasureConfig: recoveredArg1
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
            recoveredBlock5Stack1 := 'Kli'.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 'Call_58349'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := userInterface.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isIntecrioBackanimation.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isOscilloscopeOrRecorderConfiguration.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 59] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) versionString.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack2 := ''.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 42] ifFalse: [recoveredBlock5PC := 50].
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) restoreMeasureWindowForConfigOld: (recoveredBlock5Stack2).
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) mainController.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) taskRemapDictionary.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) restoreMeasureWindowForConfig: (recoveredBlock5Stack2) taskDictionary: (recoveredBlock5Stack3).
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20352590; bytecode file offset 0xc4ee80"
!SGSimMeasurementC methodsFor: 'recovered'!
shutDownMeasurement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAquisitionStateOff.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) stopAcquisition.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureViews.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280ef340Arg1 | 
    | block280ef340Value0 block280ef340Value1 |
    block280ef340Value0 := block280ef340Arg1.
    block280ef340Value1 := (block280ef340Value0) close.
    block280ef340Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := SGAccessData.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGMeasureDevice.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block280ef364Arg1 | 
    | block280ef364Value0 block280ef364Value1 block280ef364Value2 block280ef364Value3 |
    block280ef364Value0 := SGAccessData.
    (block280ef364Value0) initSGMeasureDevice: (nil).
    block280ef364Value1 := block280ef364Arg1.
    block280ef364Value2 := (block280ef364Value1) class.
    block280ef364Value3 := (block280ef364Value2) closeDll.
    block280ef364Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) measureFramework: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20356744; bytecode file offset 0xc53030"
!SGSimMeasurementC methodsFor: 'recovered'!
addMonitoredDataGO: recoveredArg1 data: recoveredArg2 view: recoveredArg3 prefix: recoveredArg4 postfix: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualHierarchyPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) hierarchy: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGSimChannelGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForMonitor: (recoveredStack2) prefix: (recoveredStack3) postfix: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack3) readOnlineData.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) lastPhysValue: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) addMonitor: (recoveredStack2) forData: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMeasureDatasToView: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) removeDataGO: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) displayCurrentValues.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20396e9c; bytecode file offset 0xc937b0"
!SGSimMeasurementC methodsFor: 'recovered'!
convertDataDisplayConfig: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := RBMeasureDataDisplayConfig.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) color.
    (recoveredValue2) color: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) precision.
    (recoveredValue5) decimals: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) displayType.
    (recoveredValue8) displayType: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) hexView.
    (recoveredValue11) hexView: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) highBound.
    (recoveredValue14) highBound: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) largeFont.
    (recoveredValue17) largeFont: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) lowBound.
    (recoveredValue20) lowBound: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) numberRepresentation.
    (recoveredValue23) numberRepresentation: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) showGrid.
    (recoveredValue26) showGrid: (recoveredValue28).
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := (recoveredValue30) wMin.
    (recoveredValue29) wMin: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredArg1.
    recoveredValue34 := (recoveredValue33) wMax.
    (recoveredValue32) wMax: (recoveredValue34).
    recoveredValue35 := recoveredLocal1.
    ^recoveredValue35
! !

"ASDBase.ic method 0x2040b040; bytecode file offset 0xd0796c"
!SGSimMeasurementC methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDMeasureEditorOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionMeasureCycleTime.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            MeasureCycleTime := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AquisitionStateOff.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) acquiState: (recoveredStack1).
            recoveredPC := 14.
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
            recoveredStack1 := (recoveredStack1) offlineChannelGroup.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) selectedTask: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) selectedDataTables: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOfflineRate.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) offlineRate: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := RBMeasureInterfaceManager.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForOwner: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) measureFramework: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := userInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntecrioBackanimation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := MeasureCycleTimeIntecrioBackanimation.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) minAcquisitionLoopTime: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := MeasureCycleTime.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) minAcquisitionLoopTime: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := MeasureProcessPrio.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) measureProcessPriority: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := MeasureMaxDataPerCycle.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) maxOnlineDLLDataNumber: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := SGAccessData.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := TGServer.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDeviceClass.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) initSGMeasureDevice: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044c014; bytecode file offset 0xd4890c"
!SGSimMeasurementC methodsFor: 'recovered'!
getMeasureConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureInterfaceManager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
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
            recoveredStack0 := (recoveredStack0) measureInterfaceManager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureViews.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) shell.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) title.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal2.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) returnWindowConfigurationWithName: (recoveredBlock23Stack2).
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal1.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            (recoveredBlock23Stack0) convertDataNamesFor: (recoveredBlock23Stack1).
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal3.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) includesKey: (recoveredBlock23Stack1).
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            (recoveredBlock23Stack0) ifTrue: [recoveredBlock23PC := 64] ifFalse: [recoveredBlock23PC := 94].
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack0 := 'hw'.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack1 := 'call_2010404344'.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) == (recoveredBlock23Stack1).
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal3.
            recoveredBlock23PC := 73.
        ].
        recoveredBlock23Step = 73 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 76.
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23Stack2 := '.'.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) , (recoveredBlock23Stack2).
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg2.
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) printString.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) , (recoveredBlock23Stack2).
            recoveredBlock23PC := 85.
        ].
        recoveredBlock23Step = 85 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1) put: (recoveredBlock23Stack2).
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            recoveredBlock23PC := 105.
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal3.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal2.
            recoveredBlock23PC := 100.
        ].
        recoveredBlock23Step = 100 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) at: (recoveredBlock23Stack1) put: (recoveredBlock23Stack2).
            recoveredBlock23PC := 105.
        ].
        recoveredBlock23Step = 105 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ae18; bytecode file offset 0xd57704"
!SGSimMeasurementC methodsFor: 'recovered'!
monitorElement: recoveredArg1 dataGO: recoveredArg2 view: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForInstVar: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstanceForNode: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'XXX'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSimValGO: (recoveredStack1) heightDistanceFactor: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) digits: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) addMonitoredDataGO: (recoveredStack1) data: (recoveredStack2) view: (recoveredStack3) prefix: (recoveredStack4) postfix: (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'mca'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) allAdapters.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) allAdapters.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 |
    recoveredBlock89Value0 := recoveredBlock89Arg1.
    recoveredBlock89Value1 := recoveredArg2.
    recoveredBlock89Value2 := recoveredArg3.
    recoveredBlock89Value3 := (recoveredBlock89Value0) addAdditionalMonitorsFor: (recoveredBlock89Value1) simMeasurementCtrl: (self) view: (recoveredBlock89Value2).
    recoveredBlock89Value3
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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

"ASDBase.ic method 0x20480414; bytecode file offset 0xd7cd1c"
!SGSimMeasurementC methodsFor: 'recovered'!
convertDataNamesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contentsConfiguration.
    recoveredValue2 := (recoveredValue1) at: ('dataConfigs').
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := 'name'.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) asASDSimLabel.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack2 := 'hierName'.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := 'name'.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) mainController.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local1.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) getAliasForLabel: (recoveredBlock17Stack4).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack2 := 'deviceType'.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack3 := [].
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 79] ifFalse: [recoveredBlock17PC := 64].
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isClass.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 72] ifFalse: [recoveredBlock17PC := 79].
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack2 := 'deviceType'.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack3 := 'SGSimMeasureDeviceDLL'.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack2 := 'displayConfig'.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack3 := [].
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 123] ifFalse: [recoveredBlock17PC := 96].
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) numberRepresentation.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) class.
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack3 := EsAtom.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) = (recoveredBlock17Stack3).
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 110] ifFalse: [recoveredBlock17PC := 123].
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) numberRepresentation.
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) asString.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) numberRepresentation: (recoveredBlock17Stack2).
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2048f934; bytecode file offset 0xd8c278"
!SGSimMeasurementC methodsFor: 'recovered'!
selectTaskForElementName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedTaskIdWithNameList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal3.
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
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EtasUserSelection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Select Acquisition Task for:\%1'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'ASDTaskSelectionPrompter'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := EtasIconListSelectionPrompter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) prompterClass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'question'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) type: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:block281034a4Arg1 | 
    | block281034a4Value0 block281034a4Value1 block281034a4Value2 block281034a4Value3 block281034a4Value4 block281034a4Value5 block281034a4Value6 block281034a4Value7 |
    block281034a4Value0 := block281034a4Arg1.
    block281034a4Value1 := (block281034a4Value0) key.
    block281034a4Value2 := (block281034a4Value1) printString.
    block281034a4Value3 := ('#') , (block281034a4Value2).
    block281034a4Value4 := (block281034a4Value3) , ('  ').
    block281034a4Value5 := block281034a4Arg1.
    block281034a4Value6 := (block281034a4Value5) value.
    block281034a4Value7 := (block281034a4Value4) , (block281034a4Value6).
    block281034a4Value7
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) visualCallbackStringBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:block281034c8Arg1 | 
    | block281034c8Value0 block281034c8Value1 block281034c8Value2 |
    block281034c8Value0 := RBUserInterface.
    block281034c8Value1 := (block281034c8Value0) resourceManager.
    block281034c8Value2 := (block281034c8Value1) returnIconWithName: ('GeneralTask').
    block281034c8Value2
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) visualCallbackIconBlock: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204994d0; bytecode file offset 0xd95de4"
!SGSimMeasurementC methodsFor: 'recovered'!
setAcquisitionRateFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) measureFramework.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) acquisitionManager.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) wName.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) baseName.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) access.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) device.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) access.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) channelGroup.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack5 := recoveredBlock7Arg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) isBitData.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) acquisitionListAtName: (recoveredBlock7Stack1) baseName: (recoveredBlock7Stack2) device: (recoveredBlock7Stack3) group: (recoveredBlock7Stack4) isBit: (recoveredBlock7Stack5).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal2.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 58] ifFalse: [recoveredBlock7PC := 46].
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) access.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) selectedTask.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) channelGroup: (recoveredBlock7Stack1).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7PC := 131.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal2.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) data.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) access.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) channelGroup.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) selectedTask.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) ~= (recoveredBlock7Stack1).
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 80] ifFalse: [recoveredBlock7PC := 123].
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack0 := mainController.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) simEnvironment.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isOffline.
            recoveredBlock7PC := 86.
        ].
        recoveredBlock7Step = 86 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 123] ifFalse: [recoveredBlock7PC := 90].
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) mainController.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack1 := 'Element: "'.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 96.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) wName.
            recoveredBlock7PC := 97.
        ].
        recoveredBlock7Step = 97 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) , (recoveredBlock7Stack2).
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack2 := '" is already at acquisition task: '.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) , (recoveredBlock7Stack2).
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getAvailableMeasureTasks.
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal1.
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 109 ifTrue: [
            recoveredBlock7Stack4 := [
    ''
].
            recoveredBlock7PC := 111.
        ].
        recoveredBlock7Step = 111 ifTrue: [
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) keyAtValue: (recoveredBlock7Stack3) ifAbsent: (recoveredBlock7Stack4).
            recoveredBlock7PC := 119.
        ].
        recoveredBlock7Step = 119 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) , (recoveredBlock7Stack2).
            recoveredBlock7PC := 121.
        ].
        recoveredBlock7Step = 121 ifTrue: [
            (recoveredBlock7Stack0) monitorInfo: (recoveredBlock7Stack1).
            recoveredBlock7PC := 123.
        ].
        recoveredBlock7Step = 123 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) access.
            recoveredBlock7PC := 126.
        ].
        recoveredBlock7Step = 126 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 129.
        ].
        recoveredBlock7Step = 129 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) channelGroup: (recoveredBlock7Stack1).
            recoveredBlock7PC := 131.
        ].
        recoveredBlock7Step = 131 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204c88c4; bytecode file offset 0xdc51b8"
!SGSimMeasurementC methodsFor: 'recovered'!
reMapOSTasks: recoveredArg1 taskDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := false.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := userInterface.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isIntecrioBackanimation.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isOscilloscopeOrRecorderConfiguration.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 145] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) versionString.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack3 := ''.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 145] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) contentsConfiguration.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := 'dataConfigs'.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2).
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal2.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block56Arg1 | 
    | recoveredBlock11Block56Local1 recoveredBlock11Block56Stack0 recoveredBlock11Block56Stack1 recoveredBlock11Block56Stack2 recoveredBlock11Block56Stack3 recoveredBlock11Block56Stack4 recoveredBlock11Block56PC recoveredBlock11Block56Step recoveredBlock11Block56Done recoveredBlock11Block56Result |
    recoveredBlock11Block56Stack0 := self.
    recoveredBlock11Block56PC := 62.
    recoveredBlock11Block56Done := false.
    [recoveredBlock11Block56Done not] whileTrue: [
        recoveredBlock11Block56Step := recoveredBlock11Block56PC.
        recoveredBlock11Block56Step = 62 ifTrue: [
            recoveredBlock11Block56Stack1 := recoveredBlock11Block56Arg1.
            recoveredBlock11Block56PC := 65.
        ].
        recoveredBlock11Block56Step = 65 ifTrue: [
            recoveredBlock11Block56Stack2 := 'name'.
            recoveredBlock11Block56PC := 67.
        ].
        recoveredBlock11Block56Step = 67 ifTrue: [
            recoveredBlock11Block56Stack1 := (recoveredBlock11Block56Stack1) at: (recoveredBlock11Block56Stack2).
            recoveredBlock11Block56PC := 69.
        ].
        recoveredBlock11Block56Step = 69 ifTrue: [
            recoveredLocal4 := recoveredBlock11Block56Stack1.
            recoveredBlock11Block56PC := 72.
        ].
        recoveredBlock11Block56Step = 72 ifTrue: [
            recoveredBlock11Block56Stack1 := mainController.
            recoveredBlock11Block56PC := 74.
        ].
        recoveredBlock11Block56Step = 74 ifTrue: [
            recoveredBlock11Block56Stack1 := (recoveredBlock11Block56Stack1) simEnvironment.
            recoveredBlock11Block56PC := 76.
        ].
        recoveredBlock11Block56Step = 76 ifTrue: [
            recoveredBlock11Block56Stack2 := recoveredLocal4.
            recoveredBlock11Block56PC := 79.
        ].
        recoveredBlock11Block56Step = 79 ifTrue: [
            recoveredBlock11Block56Stack1 := (recoveredBlock11Block56Stack1) getDataElementForStoredName: (recoveredBlock11Block56Stack2).
            recoveredBlock11Block56PC := 81.
        ].
        recoveredBlock11Block56Step = 81 ifTrue: [
            recoveredLocal3 := recoveredBlock11Block56Stack1.
            recoveredBlock11Block56PC := 84.
        ].
        recoveredBlock11Block56Step = 84 ifTrue: [
            recoveredBlock11Block56Stack1 := nil.
            recoveredBlock11Block56PC := 85.
        ].
        recoveredBlock11Block56Step = 85 ifTrue: [
            recoveredBlock11Block56Stack2 := recoveredLocal3.
            recoveredBlock11Block56PC := 88.
        ].
        recoveredBlock11Block56Step = 88 ifTrue: [
            (recoveredBlock11Block56Stack2 == nil) ifTrue: [recoveredBlock11Block56PC := 142] ifFalse: [recoveredBlock11Block56PC := 92].
        ].
        recoveredBlock11Block56Step = 92 ifTrue: [
            recoveredBlock11Block56PC := 93.
        ].
        recoveredBlock11Block56Step = 93 ifTrue: [
            recoveredBlock11Block56Stack1 := nil.
            recoveredBlock11Block56PC := 94.
        ].
        recoveredBlock11Block56Step = 94 ifTrue: [
            recoveredBlock11Block56Stack2 := self.
            recoveredBlock11Block56PC := 95.
        ].
        recoveredBlock11Block56Step = 95 ifTrue: [
            recoveredBlock11Block56Stack2 := (recoveredBlock11Block56Stack2) mainController.
            recoveredBlock11Block56PC := 97.
        ].
        recoveredBlock11Block56Step = 97 ifTrue: [
            recoveredBlock11Block56Stack2 := (recoveredBlock11Block56Stack2) isOffline.
            recoveredBlock11Block56PC := 99.
        ].
        recoveredBlock11Block56Step = 99 ifTrue: [
            (recoveredBlock11Block56Stack2) ifTrue: [recoveredBlock11Block56PC := 142] ifFalse: [recoveredBlock11Block56PC := 102].
        ].
        recoveredBlock11Block56Step = 102 ifTrue: [
            recoveredBlock11Block56PC := 103.
        ].
        recoveredBlock11Block56Step = 103 ifTrue: [
            recoveredBlock11Block56Stack1 := self.
            recoveredBlock11Block56PC := 104.
        ].
        recoveredBlock11Block56Step = 104 ifTrue: [
            recoveredBlock11Block56Stack2 := recoveredBlock11Block56Arg1.
            recoveredBlock11Block56PC := 107.
        ].
        recoveredBlock11Block56Step = 107 ifTrue: [
            recoveredBlock11Block56Stack1 := (recoveredBlock11Block56Stack1) getAcquisitionTaskNameFromConfig: (recoveredBlock11Block56Stack2).
            recoveredBlock11Block56PC := 109.
        ].
        recoveredBlock11Block56Step = 109 ifTrue: [
            recoveredBlock11Block56Local1 := recoveredBlock11Block56Stack1.
            recoveredBlock11Block56PC := 112.
        ].
        recoveredBlock11Block56Step = 112 ifTrue: [
            recoveredBlock11Block56Stack1 := recoveredArg2.
            recoveredBlock11Block56PC := 115.
        ].
        recoveredBlock11Block56Step = 115 ifTrue: [
            recoveredBlock11Block56Stack2 := recoveredBlock11Block56Local1.
            recoveredBlock11Block56PC := 118.
        ].
        recoveredBlock11Block56Step = 118 ifTrue: [
            recoveredBlock11Block56Stack3 := [:recoveredBlock11Block56Block118Arg1 | 
    | recoveredBlock11Block56Block118Value0 recoveredBlock11Block56Block118Value1 |
    recoveredBlock11Block56Block118Value0 := recoveredBlock11Block56Block118Arg1.
    recoveredBlock11Block56Block118Value1 := recoveredBlock11Block56Arg1.
    (self) setAcquisitionTaskName: (recoveredBlock11Block56Block118Value0) forConfig: (recoveredBlock11Block56Block118Value1).
    recoveredLocal1 := true.
    true
].
            recoveredBlock11Block56PC := 136.
        ].
        recoveredBlock11Block56Step = 136 ifTrue: [
            recoveredBlock11Block56Stack1 := (recoveredBlock11Block56Stack1) at: (recoveredBlock11Block56Stack2) ifPresent: (recoveredBlock11Block56Stack3).
            recoveredBlock11Block56PC := 138.
        ].
        recoveredBlock11Block56Step = 138 ifTrue: [
            recoveredBlock11Block56Stack2 := nil.
            recoveredBlock11Block56PC := 139.
        ].
        recoveredBlock11Block56Step = 139 ifTrue: [
            recoveredBlock11Block56Local1 := recoveredBlock11Block56Stack2.
            recoveredBlock11Block56PC := 142.
        ].
        recoveredBlock11Block56Step = 142 ifTrue: [
            recoveredBlock11Block56Result := recoveredBlock11Block56Stack1.
            recoveredBlock11Block56Done := true.
        ].
    ].
    recoveredBlock11Block56Result
].
            recoveredBlock11PC := 143.
        ].
        recoveredBlock11Step = 143 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 145.
        ].
        recoveredBlock11Step = 145 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204e8b40; bytecode file offset 0xde544c"
!SGSimMeasurementC methodsFor: 'recovered'!
addMeasureDatasToView: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'mca'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedDataElements.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
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
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 37] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesAsynchronousAcquisition.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
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
            recoveredStack1 := (recoveredStack1) selectedDataElements.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setAcquisitionRateFor: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedDataElements.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72Stack4 recoveredBlock72Stack5 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Arg1.
            recoveredBlock72PC := 79.
        ].
        recoveredBlock72Step = 79 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) isRBDataBoolean.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            (recoveredBlock72Stack1) ifTrue: [recoveredBlock72PC := 84] ifFalse: [recoveredBlock72PC := 108].
        ].
        recoveredBlock72Step = 84 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal3.
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72Stack2 := Array.
            recoveredBlock72PC := 89.
        ].
        recoveredBlock72Step = 89 ifTrue: [
            recoveredBlock72Stack3 := self.
            recoveredBlock72PC := 90.
        ].
        recoveredBlock72Step = 90 ifTrue: [
            recoveredBlock72Stack3 := (recoveredBlock72Stack3) class.
            recoveredBlock72PC := 92.
        ].
        recoveredBlock72Step = 92 ifTrue: [
            recoveredBlock72Stack4 := recoveredArg1.
            recoveredBlock72PC := 95.
        ].
        recoveredBlock72Step = 95 ifTrue: [
            recoveredBlock72Stack3 := (recoveredBlock72Stack3) defaultDataBooleanConfig: (recoveredBlock72Stack4).
            recoveredBlock72PC := 97.
        ].
        recoveredBlock72Step = 97 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) with: (recoveredBlock72Stack3).
            recoveredBlock72PC := 99.
        ].
        recoveredBlock72Step = 99 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) , (recoveredBlock72Stack2).
            recoveredBlock72PC := 101.
        ].
        recoveredBlock72Step = 101 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Stack1.
            recoveredBlock72PC := 102.
        ].
        recoveredBlock72Step = 102 ifTrue: [
            recoveredLocal3 := recoveredBlock72Stack2.
            recoveredBlock72PC := 105.
        ].
        recoveredBlock72Step = 105 ifTrue: [
            recoveredBlock72PC := 129.
        ].
        recoveredBlock72Step = 108 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal3.
            recoveredBlock72PC := 111.
        ].
        recoveredBlock72Step = 111 ifTrue: [
            recoveredBlock72Stack2 := Array.
            recoveredBlock72PC := 113.
        ].
        recoveredBlock72Step = 113 ifTrue: [
            recoveredBlock72Stack3 := self.
            recoveredBlock72PC := 114.
        ].
        recoveredBlock72Step = 114 ifTrue: [
            recoveredBlock72Stack3 := (recoveredBlock72Stack3) class.
            recoveredBlock72PC := 116.
        ].
        recoveredBlock72Step = 116 ifTrue: [
            recoveredBlock72Stack4 := recoveredArg1.
            recoveredBlock72PC := 119.
        ].
        recoveredBlock72Step = 119 ifTrue: [
            recoveredBlock72Stack3 := (recoveredBlock72Stack3) defaultDataConfig: (recoveredBlock72Stack4).
            recoveredBlock72PC := 121.
        ].
        recoveredBlock72Step = 121 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) with: (recoveredBlock72Stack3).
            recoveredBlock72PC := 123.
        ].
        recoveredBlock72Step = 123 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) , (recoveredBlock72Stack2).
            recoveredBlock72PC := 125.
        ].
        recoveredBlock72Step = 125 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Stack1.
            recoveredBlock72PC := 126.
        ].
        recoveredBlock72Step = 126 ifTrue: [
            recoveredLocal3 := recoveredBlock72Stack2.
            recoveredBlock72PC := 129.
        ].
        recoveredBlock72Step = 129 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 recoveredBlock134Value4 recoveredBlock134Value5 |
    recoveredBlock134Value0 := (self) measureFramework.
    recoveredBlock134Value1 := (self) selectedDataElements.
    recoveredBlock134Value2 := recoveredArg1.
    recoveredBlock134Value3 := recoveredLocal3.
    recoveredBlock134Value4 := (recoveredBlock134Value0) addMeasureDataList: (recoveredBlock134Value1) toView: (recoveredBlock134Value2) dataConfigList: (recoveredBlock134Value3).
    recoveredBlock134Value5 := recoveredBlock134Value4.
    recoveredLocal2 := recoveredBlock134Value5.
    recoveredBlock134Value4
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20520c34; bytecode file offset 0xe1d548"
!SGSimMeasurementC methodsFor: 'recovered'!
measure
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85196'.
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
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedDataTables.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
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
            recoveredStack1 := (recoveredStack1) selectedDataTables.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptIndexedDataElementsForTables: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedDataElements.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedDataElements.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) selectedView.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredLocal3 := recoveredBlock60Stack0.
            recoveredBlock60PC := 71.
        ].
        recoveredBlock60Step = 71 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal3.
            recoveredBlock60PC := 74.
        ].
        recoveredBlock60Step = 74 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) isClass.
            recoveredBlock60PC := 76.
        ].
        recoveredBlock60Step = 76 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 80] ifFalse: [recoveredBlock60PC := 150].
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal3.
            recoveredBlock60PC := 83.
        ].
        recoveredBlock60Step = 83 ifTrue: [
            recoveredBlock60Stack1 := self.
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 85.
        ].
        recoveredBlock60Step = 85 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) class.
            recoveredBlock60PC := 87.
        ].
        recoveredBlock60Step = 87 ifTrue: [
            recoveredBlock60Stack3 := recoveredLocal3.
            recoveredBlock60PC := 90.
        ].
        recoveredBlock60Step = 90 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) defaultWinConfig: (recoveredBlock60Stack3).
            recoveredBlock60PC := 92.
        ].
        recoveredBlock60Step = 92 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) createForController: (recoveredBlock60Stack1) configuration: (recoveredBlock60Stack2).
            recoveredBlock60PC := 94.
        ].
        recoveredBlock60Step = 94 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Stack0.
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 95 ifTrue: [
            recoveredLocal4 := recoveredBlock60Stack1.
            recoveredBlock60PC := 98.
        ].
        recoveredBlock60Step = 98 ifTrue: [
            (recoveredBlock60Stack0 ~~ nil) ifTrue: [recoveredBlock60PC := 104] ifFalse: [recoveredBlock60PC := 102].
        ].
        recoveredBlock60Step = 102 ifTrue: [
            recoveredBlock60Stack0 := nil.
            recoveredBlock60PC := 103.
        ].
        recoveredBlock60Step = 103 ifTrue: [
            ^recoveredBlock60Stack0
        ].
        recoveredBlock60Step = 104 ifTrue: [
            recoveredBlock60Stack0 := self.
            recoveredBlock60PC := 105.
        ].
        recoveredBlock60Step = 105 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal4.
            recoveredBlock60PC := 108.
        ].
        recoveredBlock60Step = 108 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) addMeasureDatasToView: (recoveredBlock60Stack1).
            recoveredBlock60PC := 110.
        ].
        recoveredBlock60Step = 110 ifTrue: [
            recoveredLocal2 := recoveredBlock60Stack0.
            recoveredBlock60PC := 113.
        ].
        recoveredBlock60Step = 113 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal2.
            recoveredBlock60PC := 116.
        ].
        recoveredBlock60Step = 116 ifTrue: [
            (recoveredBlock60Stack0 == nil) ifTrue: [recoveredBlock60PC := 126] ifFalse: [recoveredBlock60PC := 120].
        ].
        recoveredBlock60Step = 120 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal2.
            recoveredBlock60PC := 123.
        ].
        recoveredBlock60Step = 123 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 128] ifFalse: [recoveredBlock60PC := 126].
        ].
        recoveredBlock60Step = 126 ifTrue: [
            recoveredBlock60Stack0 := nil.
            recoveredBlock60PC := 127.
        ].
        recoveredBlock60Step = 127 ifTrue: [
            ^recoveredBlock60Stack0
        ].
        recoveredBlock60Step = 128 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal4.
            recoveredBlock60PC := 131.
        ].
        recoveredBlock60Step = 131 ifTrue: [
            recoveredBlock60Stack1 := self.
            recoveredBlock60PC := 132.
        ].
        recoveredBlock60Step = 132 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) userInterface.
            recoveredBlock60PC := 134.
        ].
        recoveredBlock60Step = 134 ifTrue: [
            (recoveredBlock60Stack0) openWithParent: (recoveredBlock60Stack1).
            recoveredBlock60PC := 136.
        ].
        recoveredBlock60Step = 136 ifTrue: [
            recoveredBlock60Stack0 := self.
            recoveredBlock60PC := 137.
        ].
        recoveredBlock60Step = 137 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal4.
            recoveredBlock60PC := 140.
        ].
        recoveredBlock60Step = 140 ifTrue: [
            (recoveredBlock60Stack0) selectedView: (recoveredBlock60Stack1).
            recoveredBlock60PC := 142.
        ].
        recoveredBlock60Step = 142 ifTrue: [
            recoveredBlock60Stack0 := self.
            recoveredBlock60PC := 143.
        ].
        recoveredBlock60Step = 143 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) userInterface.
            recoveredBlock60PC := 145.
        ].
        recoveredBlock60Step = 145 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) updateMeasureViewBox.
            recoveredBlock60PC := 147.
        ].
        recoveredBlock60Step = 147 ifTrue: [
            recoveredBlock60PC := 189.
        ].
        recoveredBlock60Step = 150 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal3.
            recoveredBlock60PC := 153.
        ].
        recoveredBlock60Step = 153 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) isDestroyed.
            recoveredBlock60PC := 155.
        ].
        recoveredBlock60Step = 155 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 158] ifFalse: [recoveredBlock60PC := 160].
        ].
        recoveredBlock60Step = 158 ifTrue: [
            recoveredBlock60Stack0 := nil.
            recoveredBlock60PC := 159.
        ].
        recoveredBlock60Step = 159 ifTrue: [
            ^recoveredBlock60Stack0
        ].
        recoveredBlock60Step = 160 ifTrue: [
            recoveredBlock60Stack0 := self.
            recoveredBlock60PC := 161.
        ].
        recoveredBlock60Step = 161 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal3.
            recoveredBlock60PC := 164.
        ].
        recoveredBlock60Step = 164 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) addMeasureDatasToView: (recoveredBlock60Stack1).
            recoveredBlock60PC := 166.
        ].
        recoveredBlock60Step = 166 ifTrue: [
            recoveredLocal2 := recoveredBlock60Stack0.
            recoveredBlock60PC := 169.
        ].
        recoveredBlock60Step = 169 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal2.
            recoveredBlock60PC := 172.
        ].
        recoveredBlock60Step = 172 ifTrue: [
            (recoveredBlock60Stack0 == nil) ifTrue: [recoveredBlock60PC := 182] ifFalse: [recoveredBlock60PC := 176].
        ].
        recoveredBlock60Step = 176 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal2.
            recoveredBlock60PC := 179.
        ].
        recoveredBlock60Step = 179 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 184] ifFalse: [recoveredBlock60PC := 182].
        ].
        recoveredBlock60Step = 182 ifTrue: [
            recoveredBlock60Stack0 := nil.
            recoveredBlock60PC := 183.
        ].
        recoveredBlock60Step = 183 ifTrue: [
            ^recoveredBlock60Stack0
        ].
        recoveredBlock60Step = 184 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal3.
            recoveredBlock60PC := 187.
        ].
        recoveredBlock60Step = 187 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) updateView.
            recoveredBlock60PC := 189.
        ].
        recoveredBlock60Step = 189 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack0.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dd9f4; bytecode file offset 0xeda350"
!SGSimMeasurementC methodsFor: 'recovered'!
restoreMeasureWindowForConfigOld: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'dataConfigs'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Local2 recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50Stack5 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := 'name'.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) at: (recoveredBlock50Stack2).
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredLocal8 := recoveredBlock50Stack1.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack1 := mainController.
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) simEnvironment.
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal8.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) getDataElementForStoredName: (recoveredBlock50Stack2).
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredLocal9 := recoveredBlock50Stack1.
            recoveredBlock50PC := 76.
        ].
        recoveredBlock50Step = 76 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal9.
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            (recoveredBlock50Stack2 == nil) ifTrue: [recoveredBlock50PC := 166] ifFalse: [recoveredBlock50PC := 84].
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 85 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 86.
        ].
        recoveredBlock50Step = 86 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) mainController.
            recoveredBlock50PC := 88.
        ].
        recoveredBlock50Step = 88 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isOffline.
            recoveredBlock50PC := 90.
        ].
        recoveredBlock50Step = 90 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 94] ifFalse: [recoveredBlock50PC := 104].
        ].
        recoveredBlock50Step = 94 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 95.
        ].
        recoveredBlock50Step = 95 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) class.
            recoveredBlock50PC := 97.
        ].
        recoveredBlock50Step = 97 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) offlineChannelGroup.
            recoveredBlock50PC := 99.
        ].
        recoveredBlock50Step = 99 ifTrue: [
            recoveredBlock50Local2 := recoveredBlock50Stack1.
            recoveredBlock50PC := 100.
        ].
        recoveredBlock50Step = 100 ifTrue: [
            recoveredBlock50PC := 126.
        ].
        recoveredBlock50Step = 104 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 105.
        ].
        recoveredBlock50Step = 105 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 106.
        ].
        recoveredBlock50Step = 106 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg1.
            recoveredBlock50PC := 107.
        ].
        recoveredBlock50Step = 107 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) getAcquisitionTaskNameFromConfig: (recoveredBlock50Stack3).
            recoveredBlock50PC := 109.
        ].
        recoveredBlock50Step = 109 ifTrue: [
            recoveredBlock50Stack3 := recoveredLocal9.
            recoveredBlock50PC := 112.
        ].
        recoveredBlock50Step = 112 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) wName.
            recoveredBlock50PC := 114.
        ].
        recoveredBlock50Step = 114 ifTrue: [
            recoveredBlock50Stack4 := Dictionary.
            recoveredBlock50PC := 116.
        ].
        recoveredBlock50Step = 116 ifTrue: [
            recoveredBlock50Stack4 := (recoveredBlock50Stack4) new.
            recoveredBlock50PC := 117.
        ].
        recoveredBlock50Step = 117 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) checkAcquisitionTaskName: (recoveredBlock50Stack2) elementName: (recoveredBlock50Stack3) taskDictionary: (recoveredBlock50Stack4).
            recoveredBlock50PC := 120.
        ].
        recoveredBlock50Step = 120 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack1.
            recoveredBlock50PC := 121.
        ].
        recoveredBlock50Step = 121 ifTrue: [
            recoveredBlock50Stack1 := self.
            recoveredBlock50PC := 122.
        ].
        recoveredBlock50Step = 122 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local1.
            recoveredBlock50PC := 123.
        ].
        recoveredBlock50Step = 123 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) taskIdForName: (recoveredBlock50Stack2).
            recoveredBlock50PC := 125.
        ].
        recoveredBlock50Step = 125 ifTrue: [
            recoveredBlock50Local2 := recoveredBlock50Stack1.
            recoveredBlock50PC := 126.
        ].
        recoveredBlock50Step = 126 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 127.
        ].
        recoveredBlock50Step = 127 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local2.
            recoveredBlock50PC := 128.
        ].
        recoveredBlock50Step = 128 ifTrue: [
            (recoveredBlock50Stack2 == nil) ifTrue: [recoveredBlock50PC := 162] ifFalse: [recoveredBlock50PC := 132].
        ].
        recoveredBlock50Step = 132 ifTrue: [
            recoveredBlock50PC := 133.
        ].
        recoveredBlock50Step = 133 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal9.
            recoveredBlock50PC := 136.
        ].
        recoveredBlock50Step = 136 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) access.
            recoveredBlock50PC := 138.
        ].
        recoveredBlock50Step = 138 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Local2.
            recoveredBlock50PC := 139.
        ].
        recoveredBlock50Step = 139 ifTrue: [
            (recoveredBlock50Stack1) channelGroup: (recoveredBlock50Stack2).
            recoveredBlock50PC := 141.
        ].
        recoveredBlock50Step = 141 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal10.
            recoveredBlock50PC := 144.
        ].
        recoveredBlock50Step = 144 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal9.
            recoveredBlock50PC := 147.
        ].
        recoveredBlock50Step = 147 ifTrue: [
            (recoveredBlock50Stack1) add: (recoveredBlock50Stack2).
            recoveredBlock50PC := 149.
        ].
        recoveredBlock50Step = 149 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal7.
            recoveredBlock50PC := 152.
        ].
        recoveredBlock50Step = 152 ifTrue: [
            recoveredBlock50Stack2 := self.
            recoveredBlock50PC := 153.
        ].
        recoveredBlock50Step = 153 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg1.
            recoveredBlock50PC := 154.
        ].
        recoveredBlock50Step = 154 ifTrue: [
            recoveredBlock50Stack4 := 'displayConfig'.
            recoveredBlock50PC := 156.
        ].
        recoveredBlock50Step = 156 ifTrue: [
            recoveredBlock50Stack3 := (recoveredBlock50Stack3) at: (recoveredBlock50Stack4).
            recoveredBlock50PC := 158.
        ].
        recoveredBlock50Step = 158 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) convertDataDisplayConfig: (recoveredBlock50Stack3).
            recoveredBlock50PC := 160.
        ].
        recoveredBlock50Step = 160 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) add: (recoveredBlock50Stack2).
            recoveredBlock50PC := 162.
        ].
        recoveredBlock50Step = 162 ifTrue: [
            recoveredBlock50Stack2 := nil.
            recoveredBlock50PC := 163.
        ].
        recoveredBlock50Step = 163 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Stack2.
            recoveredBlock50PC := 164.
        ].
        recoveredBlock50Step = 164 ifTrue: [
            recoveredBlock50Local2 := recoveredBlock50Stack3.
            recoveredBlock50PC := 165.
        ].
        recoveredBlock50Step = 165 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack2.
            recoveredBlock50PC := 166.
        ].
        recoveredBlock50Step = 166 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForController: (recoveredStack2) configuration: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMeasureDataList: (recoveredStack1) toView: (recoveredStack2) dataConfigList: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'maxDataNumber'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxDataNumber.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMeasureDataList: (recoveredStack1) toView: (recoveredStack2) dataConfigList: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 304.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredPC := 314.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultWindowConfigObjectClass.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := 'viewConfig'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForConfig: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack0) putConfigurationObject: (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) windowConfiguration: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060a728; bytecode file offset 0xf07090"
!SGSimMeasurementC methodsFor: 'recovered'!
restoreMeasureWindowForConfig: recoveredArg1 taskDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentsConfiguration.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'dataConfigs'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Local1 recoveredBlock57Local2 recoveredBlock57Stack0 recoveredBlock57Stack1 recoveredBlock57Stack2 recoveredBlock57Stack3 recoveredBlock57Stack4 recoveredBlock57Stack5 recoveredBlock57PC recoveredBlock57Step recoveredBlock57Done recoveredBlock57Result |
    recoveredBlock57Stack0 := self.
    recoveredBlock57PC := 64.
    recoveredBlock57Done := false.
    [recoveredBlock57Done not] whileTrue: [
        recoveredBlock57Step := recoveredBlock57PC.
        recoveredBlock57Step = 64 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 65.
        ].
        recoveredBlock57Step = 65 ifTrue: [
            recoveredBlock57Stack2 := 'name'.
            recoveredBlock57PC := 67.
        ].
        recoveredBlock57Step = 67 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) at: (recoveredBlock57Stack2).
            recoveredBlock57PC := 69.
        ].
        recoveredBlock57Step = 69 ifTrue: [
            recoveredLocal9 := recoveredBlock57Stack1.
            recoveredBlock57PC := 72.
        ].
        recoveredBlock57Step = 72 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal2.
            recoveredBlock57PC := 75.
        ].
        recoveredBlock57Step = 75 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal9.
            recoveredBlock57PC := 78.
        ].
        recoveredBlock57Step = 78 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) getDataElementForStoredName: (recoveredBlock57Stack2).
            recoveredBlock57PC := 80.
        ].
        recoveredBlock57Step = 80 ifTrue: [
            recoveredLocal10 := recoveredBlock57Stack1.
            recoveredBlock57PC := 83.
        ].
        recoveredBlock57Step = 83 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal10.
            recoveredBlock57PC := 86.
        ].
        recoveredBlock57Step = 86 ifTrue: [
            (recoveredBlock57Stack1 ~~ nil) ifTrue: [recoveredBlock57PC := 111] ifFalse: [recoveredBlock57PC := 90].
        ].
        recoveredBlock57Step = 90 ifTrue: [
            recoveredBlock57Stack1 := recoveredBlock57Arg1.
            recoveredBlock57PC := 91.
        ].
        recoveredBlock57Step = 91 ifTrue: [
            recoveredBlock57Stack2 := 'hierName'.
            recoveredBlock57PC := 93.
        ].
        recoveredBlock57Step = 93 ifTrue: [
            recoveredBlock57Stack3 := [].
            recoveredBlock57PC := 95.
        ].
        recoveredBlock57Step = 95 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) at: (recoveredBlock57Stack2) ifAbsent: (recoveredBlock57Stack3).
            recoveredBlock57PC := 97.
        ].
        recoveredBlock57Step = 97 ifTrue: [
            recoveredLocal9 := recoveredBlock57Stack1.
            recoveredBlock57PC := 100.
        ].
        recoveredBlock57Step = 100 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal2.
            recoveredBlock57PC := 103.
        ].
        recoveredBlock57Step = 103 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal9.
            recoveredBlock57PC := 106.
        ].
        recoveredBlock57Step = 106 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) getSimInstanceForLabel: (recoveredBlock57Stack2).
            recoveredBlock57PC := 108.
        ].
        recoveredBlock57Step = 108 ifTrue: [
            recoveredLocal10 := recoveredBlock57Stack1.
            recoveredBlock57PC := 111.
        ].
        recoveredBlock57Step = 111 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal10.
            recoveredBlock57PC := 114.
        ].
        recoveredBlock57Step = 114 ifTrue: [
            (recoveredBlock57Stack1 == nil) ifTrue: [recoveredBlock57PC := 142] ifFalse: [recoveredBlock57PC := 118].
        ].
        recoveredBlock57Step = 118 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal10.
            recoveredBlock57PC := 121.
        ].
        recoveredBlock57Step = 121 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) isVectoredType.
            recoveredBlock57PC := 123.
        ].
        recoveredBlock57Step = 123 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 126] ifFalse: [recoveredBlock57PC := 142].
        ].
        recoveredBlock57Step = 126 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal2.
            recoveredBlock57PC := 129.
        ].
        recoveredBlock57Step = 129 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal9.
            recoveredBlock57PC := 132.
        ].
        recoveredBlock57Step = 132 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) getIndexFromLabel: (recoveredBlock57Stack2).
            recoveredBlock57PC := 134.
        ].
        recoveredBlock57Step = 134 ifTrue: [
            (recoveredBlock57Stack1 ~~ nil) ifTrue: [recoveredBlock57PC := 142] ifFalse: [recoveredBlock57PC := 138].
        ].
        recoveredBlock57Step = 138 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 139.
        ].
        recoveredBlock57Step = 139 ifTrue: [
            recoveredLocal10 := recoveredBlock57Stack1.
            recoveredBlock57PC := 142.
        ].
        recoveredBlock57Step = 142 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 143.
        ].
        recoveredBlock57Step = 143 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal10.
            recoveredBlock57PC := 146.
        ].
        recoveredBlock57Step = 146 ifTrue: [
            (recoveredBlock57Stack2 == nil) ifTrue: [recoveredBlock57PC := 277] ifFalse: [recoveredBlock57PC := 150].
        ].
        recoveredBlock57Step = 150 ifTrue: [
            recoveredBlock57PC := 151.
        ].
        recoveredBlock57Step = 151 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 152.
        ].
        recoveredBlock57Step = 152 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal2.
            recoveredBlock57PC := 155.
        ].
        recoveredBlock57Step = 155 ifTrue: [
            recoveredBlock57Stack3 := recoveredLocal10.
            recoveredBlock57PC := 158.
        ].
        recoveredBlock57Step = 158 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) getSimNodeForDataElementByLabel: (recoveredBlock57Stack3).
            recoveredBlock57PC := 160.
        ].
        recoveredBlock57Step = 160 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) isMeasureNode.
            recoveredBlock57PC := 162.
        ].
        recoveredBlock57Step = 162 ifTrue: [
            (recoveredBlock57Stack2) ifTrue: [recoveredBlock57PC := 166] ifFalse: [recoveredBlock57PC := 277].
        ].
        recoveredBlock57Step = 166 ifTrue: [
            recoveredBlock57PC := 167.
        ].
        recoveredBlock57Step = 167 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal5.
            recoveredBlock57PC := 170.
        ].
        recoveredBlock57Step = 170 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) usesAsynchronousAcquisition.
            recoveredBlock57PC := 172.
        ].
        recoveredBlock57Step = 172 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 176] ifFalse: [recoveredBlock57PC := 198].
        ].
        recoveredBlock57Step = 176 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal11.
            recoveredBlock57PC := 179.
        ].
        recoveredBlock57Step = 179 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal10.
            recoveredBlock57PC := 182.
        ].
        recoveredBlock57Step = 182 ifTrue: [
            (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 184.
        ].
        recoveredBlock57Step = 184 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal8.
            recoveredBlock57PC := 187.
        ].
        recoveredBlock57Step = 187 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 188.
        ].
        recoveredBlock57Step = 188 ifTrue: [
            recoveredBlock57Stack3 := 'displayConfig'.
            recoveredBlock57PC := 190.
        ].
        recoveredBlock57Step = 190 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) at: (recoveredBlock57Stack3).
            recoveredBlock57PC := 192.
        ].
        recoveredBlock57Step = 192 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 194.
        ].
        recoveredBlock57Step = 194 ifTrue: [
            recoveredBlock57PC := 277.
        ].
        recoveredBlock57Step = 198 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 199.
        ].
        recoveredBlock57Step = 199 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) mainController.
            recoveredBlock57PC := 201.
        ].
        recoveredBlock57Step = 201 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) isOffline.
            recoveredBlock57PC := 203.
        ].
        recoveredBlock57Step = 203 ifTrue: [
            (recoveredBlock57Stack1) ifTrue: [recoveredBlock57PC := 206] ifFalse: [recoveredBlock57PC := 216].
        ].
        recoveredBlock57Step = 206 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 207.
        ].
        recoveredBlock57Step = 207 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) class.
            recoveredBlock57PC := 209.
        ].
        recoveredBlock57Step = 209 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) offlineChannelGroup.
            recoveredBlock57PC := 211.
        ].
        recoveredBlock57Step = 211 ifTrue: [
            recoveredBlock57Local2 := recoveredBlock57Stack1.
            recoveredBlock57PC := 212.
        ].
        recoveredBlock57Step = 212 ifTrue: [
            recoveredBlock57PC := 240.
        ].
        recoveredBlock57Step = 216 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 217.
        ].
        recoveredBlock57Step = 217 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 218.
        ].
        recoveredBlock57Step = 218 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) getAcquisitionTaskNameFromConfig: (recoveredBlock57Stack2).
            recoveredBlock57PC := 220.
        ].
        recoveredBlock57Step = 220 ifTrue: [
            recoveredBlock57Local1 := recoveredBlock57Stack1.
            recoveredBlock57PC := 221.
        ].
        recoveredBlock57Step = 221 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 222.
        ].
        recoveredBlock57Step = 222 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Local1.
            recoveredBlock57PC := 223.
        ].
        recoveredBlock57Step = 223 ifTrue: [
            recoveredBlock57Stack3 := recoveredLocal10.
            recoveredBlock57PC := 226.
        ].
        recoveredBlock57Step = 226 ifTrue: [
            recoveredBlock57Stack3 := (recoveredBlock57Stack3) wName.
            recoveredBlock57PC := 228.
        ].
        recoveredBlock57Step = 228 ifTrue: [
            recoveredBlock57Stack4 := recoveredArg2.
            recoveredBlock57PC := 231.
        ].
        recoveredBlock57Step = 231 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) checkAcquisitionTaskName: (recoveredBlock57Stack2) elementName: (recoveredBlock57Stack3) taskDictionary: (recoveredBlock57Stack4).
            recoveredBlock57PC := 234.
        ].
        recoveredBlock57Step = 234 ifTrue: [
            recoveredBlock57Local1 := recoveredBlock57Stack1.
            recoveredBlock57PC := 235.
        ].
        recoveredBlock57Step = 235 ifTrue: [
            recoveredBlock57Stack1 := self.
            recoveredBlock57PC := 236.
        ].
        recoveredBlock57Step = 236 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Local1.
            recoveredBlock57PC := 237.
        ].
        recoveredBlock57Step = 237 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) taskIdForName: (recoveredBlock57Stack2).
            recoveredBlock57PC := 239.
        ].
        recoveredBlock57Step = 239 ifTrue: [
            recoveredBlock57Local2 := recoveredBlock57Stack1.
            recoveredBlock57PC := 240.
        ].
        recoveredBlock57Step = 240 ifTrue: [
            recoveredBlock57Stack1 := nil.
            recoveredBlock57PC := 241.
        ].
        recoveredBlock57Step = 241 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Local2.
            recoveredBlock57PC := 242.
        ].
        recoveredBlock57Step = 242 ifTrue: [
            (recoveredBlock57Stack2 == nil) ifTrue: [recoveredBlock57PC := 273] ifFalse: [recoveredBlock57PC := 246].
        ].
        recoveredBlock57Step = 246 ifTrue: [
            recoveredBlock57PC := 247.
        ].
        recoveredBlock57Step = 247 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal10.
            recoveredBlock57PC := 250.
        ].
        recoveredBlock57Step = 250 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) access.
            recoveredBlock57PC := 252.
        ].
        recoveredBlock57Step = 252 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Local2.
            recoveredBlock57PC := 253.
        ].
        recoveredBlock57Step = 253 ifTrue: [
            (recoveredBlock57Stack1) channelGroup: (recoveredBlock57Stack2).
            recoveredBlock57PC := 255.
        ].
        recoveredBlock57Step = 255 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal11.
            recoveredBlock57PC := 258.
        ].
        recoveredBlock57Step = 258 ifTrue: [
            recoveredBlock57Stack2 := recoveredLocal10.
            recoveredBlock57PC := 261.
        ].
        recoveredBlock57Step = 261 ifTrue: [
            (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 263.
        ].
        recoveredBlock57Step = 263 ifTrue: [
            recoveredBlock57Stack1 := recoveredLocal8.
            recoveredBlock57PC := 266.
        ].
        recoveredBlock57Step = 266 ifTrue: [
            recoveredBlock57Stack2 := recoveredBlock57Arg1.
            recoveredBlock57PC := 267.
        ].
        recoveredBlock57Step = 267 ifTrue: [
            recoveredBlock57Stack3 := 'displayConfig'.
            recoveredBlock57PC := 269.
        ].
        recoveredBlock57Step = 269 ifTrue: [
            recoveredBlock57Stack2 := (recoveredBlock57Stack2) at: (recoveredBlock57Stack3).
            recoveredBlock57PC := 271.
        ].
        recoveredBlock57Step = 271 ifTrue: [
            recoveredBlock57Stack1 := (recoveredBlock57Stack1) add: (recoveredBlock57Stack2).
            recoveredBlock57PC := 273.
        ].
        recoveredBlock57Step = 273 ifTrue: [
            recoveredBlock57Stack2 := nil.
            recoveredBlock57PC := 274.
        ].
        recoveredBlock57Step = 274 ifTrue: [
            recoveredBlock57Stack3 := recoveredBlock57Stack2.
            recoveredBlock57PC := 275.
        ].
        recoveredBlock57Step = 275 ifTrue: [
            recoveredBlock57Local2 := recoveredBlock57Stack3.
            recoveredBlock57PC := 276.
        ].
        recoveredBlock57Step = 276 ifTrue: [
            recoveredBlock57Local1 := recoveredBlock57Stack2.
            recoveredBlock57PC := 277.
        ].
        recoveredBlock57Step = 277 ifTrue: [
            recoveredBlock57Result := recoveredBlock57Stack1.
            recoveredBlock57Done := true.
        ].
    ].
    recoveredBlock57Result
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForController: (recoveredStack1) configuration: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMeasureDataList: (recoveredStack1) toView: (recoveredStack2) dataConfigList: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 424] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := 'maxDataNumber'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 342] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxDataNumber.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureFramework.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) addMeasureDataList: (recoveredStack1) toView: (recoveredStack2) dataConfigList: (recoveredStack3).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 408 ifTrue: [
            recoveredPC := 414.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredPC := 424.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentsConfiguration.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := 'viewConfig'.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack0) putConfigurationObject: (recoveredStack1).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) windowConfiguration: (recoveredStack1).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

