"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200019a8; bytecode file offset 0x8ffcfc"
!SGOnlineSimulationView methodsFor: 'recovered'!
updateSimControl
    ^self
! !

"ASDBase.ic method 0x200080e4; bytecode file offset 0x908be4"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentStart
    | recoveredValue0 |
    recoveredValue0 := (self) activateStartSimulation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008570; bytecode file offset 0x908be4"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentStop
    | recoveredValue0 |
    recoveredValue0 := (self) activateStopSimulation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008eb8; bytecode file offset 0x908be4"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentMeasurementStart
    | recoveredValue0 |
    recoveredValue0 := (self) activateStartMeasurement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a694; bytecode file offset 0x908be4"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentMeasurementStop
    | recoveredValue0 |
    recoveredValue0 := (self) activateStopMeasurement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cd54; bytecode file offset 0x92209c"
!SGOnlineSimulationView methodsFor: 'recovered'!
defaultIcon
    ^'GeneralSimulationOnline'
! !

"ASDBase.ic method 0x2001d3cc; bytecode file offset 0x92209c"
!SGOnlineSimulationView methodsFor: 'recovered'!
defaultIcon32
    ^'GeneralSimulationOnline32'
! !

"ASDBase.ic method 0x2002ced4; bytecode file offset 0x934580"
!SGOnlineSimulationView methodsFor: 'recovered'!
isAquisitionStateOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureCtrl.
    recoveredValue1 := (recoveredValue0) isAquisitionStateOff.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030874; bytecode file offset 0x934580"
!SGOnlineSimulationView methodsFor: 'recovered'!
isAquisitionStateRun
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureCtrl.
    recoveredValue1 := (recoveredValue0) isAquisitionStateRun.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032a44; bytecode file offset 0x934580"
!SGOnlineSimulationView methodsFor: 'recovered'!
isAquisitionStatePause
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureCtrl.
    recoveredValue1 := (recoveredValue0) isAquisitionStatePause.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050eb0; bytecode file offset 0x94d84c"
!SGOnlineSimulationView methodsFor: 'recovered'!
isDataUpdatePossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simController.
    recoveredValue1 := (recoveredValue0) isRomCodeRunning.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005fd28; bytecode file offset 0x95c5dc"
!SGOnlineSimulationView methodsFor: 'recovered'!
setReconnectedExperiment
    isReconnected := true.
    ^true
! !

"ASDBase.ic method 0x200613c0; bytecode file offset 0x95e838"
!SGOnlineSimulationView methodsFor: 'recovered'!
toolStopMeasurement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar1.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StopMeasurement').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e4c; bytecode file offset 0x95e838"
!SGOnlineSimulationView methodsFor: 'recovered'!
toolStartMeasurement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolBar1.
    recoveredValue1 := (recoveredValue0) toolNamed: ('StartMeasurement').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200782ac; bytecode file offset 0x9757c8"
!SGOnlineSimulationView methodsFor: 'recovered'!
isOnlineSimulationView
    ^true
! !

"ASDBase.ic method 0x2007ea4c; bytecode file offset 0x97c330"
!SGOnlineSimulationView methodsFor: 'recovered'!
isOfflineExperiment
    ^false
! !

"ASDBase.ic method 0x200d3aac; bytecode file offset 0x9d0380"
!SGOnlineSimulationView methodsFor: 'recovered'!
backgroundProcessing
    (self) animateStates.
    super backgroundProcessing.
    ^self
! !

"ASDBase.ic method 0x200e213c; bytecode file offset 0x9de9f0"
!SGOnlineSimulationView methodsFor: 'recovered'!
isReconnectedExperiment
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
            recoveredStack2 := isReconnected.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := isReconnected.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e5700; bytecode file offset 0x9e1fcc"
!SGOnlineSimulationView methodsFor: 'recovered'!
isStopSimulationEnable
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f1fd8; bytecode file offset 0x9ee898"
!SGOnlineSimulationView methodsFor: 'recovered'!
nvramVariablesAvailable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_62156').
    recoveredValue1 := (self) nvramIdentifier.
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f92d4; bytecode file offset 0x9f5ba0"
!SGOnlineSimulationView methodsFor: 'recovered'!
isStartSimulationEnable
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f92e4; bytecode file offset 0x9f5ba0"
!SGOnlineSimulationView methodsFor: 'recovered'!
isChangeClockScalingFactorEnable
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137b98; bytecode file offset 0xa34460"
!SGOnlineSimulationView methodsFor: 'recovered'!
globalActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := XKPause.
    (recoveredValue1) at: (recoveredValue2) put: ('toggleMeasurement').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20141700; bytecode file offset 0xa3dfd4"
!SGOnlineSimulationView methodsFor: 'recovered'!
isStartMeasurementEnable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simController.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) isAquisitionStateRun.
    recoveredBlock5Value1 := (recoveredBlock5Value0) not.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x20141714; bytecode file offset 0xa3dfd4"
!SGOnlineSimulationView methodsFor: 'recovered'!
isStopMeasurementEnable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simController.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := (self) isAquisitionStateOff.
    recoveredBlock5Value1 := (recoveredBlock5Value0) not.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x2016aae8; bytecode file offset 0xa673b8"
!SGOnlineSimulationView methodsFor: 'recovered'!
isOpenNVRamCockpitEnable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kk') == ('Call_62156').
    recoveredValue1 := (self) simController.
    recoveredValue2 := (recoveredValue1) simEnvironment.
    recoveredValue3 := (recoveredValue2) getProject.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) target.
    recoveredValue6 := (recoveredValue5) isNvramAvailableOnTargetInstance.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017135c; bytecode file offset 0xa6dc38"
!SGOnlineSimulationView methodsFor: 'recovered'!
toggleMeasurement
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAquisitionStateOff.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) activateStartMeasurement.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) activateStopMeasurement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) updateMeasureControl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171bfc; bytecode file offset 0xa6e4c4"
!SGOnlineSimulationView methodsFor: 'recovered'!
initTabbingGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) outlineTree.
    (recoveredValue0) addTabGroup.
    recoveredValue1 := (self) calibrationViewBox.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) measureViewBox.
    (recoveredValue2) addTabGroup.
    recoveredValue3 := (self) measureTaskBox.
    (recoveredValue3) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x201830d8; bytecode file offset 0xa7f9a8"
!SGOnlineSimulationView methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) iconSmall: ('GeneralSimulationOnline') large: ('GeneralSimulationOnline32').
    (self) updateBypassControl.
    (self) updateMeasureControl.
    ^self
! !

"ASDBase.ic method 0x2018fe24; bytecode file offset 0xa8c6f0"
!SGOnlineSimulationView methodsFor: 'recovered'!
updateMeasureControl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolStopMeasurement.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAquisitionStateOff.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolStartMeasurement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAquisitionStateRun.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ae094; bytecode file offset 0xaaa980"
!SGOnlineSimulationView methodsFor: 'recovered'!
activateStopMeasurement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := simController.
    recoveredBlock6Value1 := (recoveredBlock6Value0) measureSystemC.
    (recoveredBlock6Value1) stopAcquisition.
    (self) updateMeasureControl.
    recoveredBlock6Value2 := (self) updateBypassControl.
    recoveredBlock6Value2
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ae0b4; bytecode file offset 0xaaa980"
!SGOnlineSimulationView methodsFor: 'recovered'!
activateStartMeasurement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := simController.
    recoveredBlock6Value1 := (recoveredBlock6Value0) measureSystemC.
    (recoveredBlock6Value1) startAcquisition.
    (self) updateMeasureControl.
    recoveredBlock6Value2 := (self) updateBypassControl.
    recoveredBlock6Value2
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ff8bc; bytecode file offset 0xafc1b0"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentResume
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOnlinePCTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := simController.
    recoveredBlock16Value1 := (recoveredBlock16Value0) resumeSimulation.
    recoveredBlock16Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
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

"ASDBase.ic method 0x201ff8e0; bytecode file offset 0xafc1b0"
!SGOnlineSimulationView methodsFor: 'recovered'!
menuExperimentSuspend
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOnlinePCTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := simController.
    recoveredBlock16Value1 := (recoveredBlock16Value0) suspendSimulation.
    recoveredBlock16Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
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

"ASDBase.ic method 0x20246564; bytecode file offset 0xb42e3c"
!SGOnlineSimulationView methodsFor: 'recovered'!
nvramIdentifier
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Kk') == ('Call_62156').
    recoveredValue1 := ('Kra') == ('Call_63222').
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (recoveredValue2) context.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) makeConfig.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) uiController.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) createCodeManager: (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue8) nvramIdentifier: (recoveredValue9) context: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2025d398; bytecode file offset 0xb59c6c"
!SGOnlineSimulationView methodsFor: 'recovered'!
activateStopSimulation
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := simController.
    recoveredBlock6Value1 := (recoveredBlock6Value0) bypassStop.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    recoveredLocal2 := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    (self) updateBypassControl.
    (self) activateStopMeasurement.
    (self) updateMeasureControl.
    recoveredValue2 := ('Kli') = ('Call_58246').
    ^self
! !

"ASDBase.ic method 0x20283ca8; bytecode file offset 0xb80588"
!SGOnlineSimulationView methodsFor: 'recovered'!
createEventGenGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kli') == ('Call_68548').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    recoveredBlock13Value2 := (self) returnIconWithName: ('EditorCTSolver').
    (recoveredBlock13Value1) image: (recoveredBlock13Value2).
    recoveredBlock13Value3 := recoveredBlock13Value0.
    recoveredBlock13Value4 := XmPUSHBUTTON.
    (recoveredBlock13Value3) buttonType: (recoveredBlock13Value4).
    recoveredBlock13Value5 := (recoveredBlock13Value0) toolTipText: ('Open CT Solver').
    recoveredBlock13Value5
].
    (recoveredValue1) createToolButton: ('OpenCTSolver') argBlock: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202b40c0; bytecode file offset 0xbb09a0"
!SGOnlineSimulationView methodsFor: 'recovered'!
createTools: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := XmNetasSingleSelectionCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('toolbarSelection:clientData:callData:') clientData: (nil).
    recoveredValue2 := recoveredArg1.
    (self) createBackToBDEGroup: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) createExperimentGroup: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) createControlGroup: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) createMeasureControlGroup: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) createDataLoggerGroup: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) createEventGenGroup: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) createExpandCollapseGroup: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) createNavigationGroup: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202c7fe0; bytecode file offset 0xbc48b4"
!SGOnlineSimulationView methodsFor: 'recovered'!
updateBypassControl
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRomCodeRunning.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolStopSimulation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolStartSimulation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) deactivateIdleTimer.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolStopSimulation.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolStartSimulation.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) set: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) reactivateIdleTimer.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20352cf4; bytecode file offset 0xc4f610"
!SGOnlineSimulationView methodsFor: 'recovered'!
createMeasureControlGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) returnIconWithName: ('EditorPositionStopRed').
    (recoveredBlock7Value1) image: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := XmRADIOBUTTON.
    (recoveredBlock7Value3) buttonType: (recoveredBlock7Value4).
    recoveredBlock7Value5 := (recoveredBlock7Value0) toolTipText: ('Stop Measurement').
    recoveredBlock7Value5
].
    (recoveredValue0) createToolButton: ('StopMeasurement') argBlock: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredBlock37Value0.
    recoveredBlock37Value2 := (self) returnIconWithName: ('EditorPositionStartRed').
    (recoveredBlock37Value1) image: (recoveredBlock37Value2).
    recoveredBlock37Value3 := recoveredBlock37Value0.
    recoveredBlock37Value4 := XmRADIOBUTTON.
    (recoveredBlock37Value3) buttonType: (recoveredBlock37Value4).
    recoveredBlock37Value5 := (recoveredBlock37Value0) toolTipText: ('Start Measurement').
    recoveredBlock37Value5
].
    (recoveredValue2) createToolButton: ('StartMeasurement') argBlock: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20352d2c; bytecode file offset 0xc4f610"
!SGOnlineSimulationView methodsFor: 'recovered'!
createControlGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := (self) returnIconWithName: ('EditorPositionStopBlue').
    (recoveredBlock7Value1) image: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := XmRADIOBUTTON.
    (recoveredBlock7Value3) buttonType: (recoveredBlock7Value4).
    recoveredBlock7Value5 := (recoveredBlock7Value0) toolTipText: ('Stop OS').
    recoveredBlock7Value5
].
    (recoveredValue0) createToolButton: ('StopSimulation') argBlock: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredBlock37Value0.
    recoveredBlock37Value2 := (self) returnIconWithName: ('EditorPositionStartBlue').
    (recoveredBlock37Value1) image: (recoveredBlock37Value2).
    recoveredBlock37Value3 := recoveredBlock37Value0.
    recoveredBlock37Value4 := XmRADIOBUTTON.
    (recoveredBlock37Value3) buttonType: (recoveredBlock37Value4).
    recoveredBlock37Value5 := (recoveredBlock37Value0) toolTipText: ('Start OS').
    recoveredBlock37Value5
].
    (recoveredValue2) createToolButton: ('StartSimulation') argBlock: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2035f01c; bytecode file offset 0xc5b90c"
!SGOnlineSimulationView methodsFor: 'recovered'!
activateStartSimulation
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WHAT9218'.
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
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExperimentInitializeVariablesAtOSStart.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) menuReinitVariables.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExperimentInitializeParametersAtOSStart.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) menuReinitParameters.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := simController.
    recoveredBlock35Value1 := (recoveredBlock35Value0) bypassStart.
    recoveredBlock35Value2 := recoveredBlock35Value1.
    recoveredLocal2 := recoveredBlock35Value2.
    recoveredBlock35Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) updateBypassControl.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) updateMeasureControl.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Call_58246'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20382c24; bytecode file offset 0xc7f524"
!SGOnlineSimulationView methodsFor: 'recovered'!
createTools1: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := XmNetasSingleSelectionCallback.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'toolbarSelection:clientData:callData:'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) createBackToBDEGroup: (recoveredStack1).
            recoveredPC := 17.
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
            (recoveredStack0) createExperimentGroup: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) createControlGroup: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) createMeasureControlGroup: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) createDataLoggerGroup: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNvramAvailableOnTargetInstance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) createNvramCockpitGroup: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Call_60689'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) createEventGenGroup: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) createExpandCollapseGroup: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) createNavigationGroup: (recoveredStack1).
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

"ASDBase.ic method 0x2038d00c; bytecode file offset 0xc898f0"
!SGOnlineSimulationView methodsFor: 'recovered'!
createForContext: recoveredArg1 makeConfig: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := SGSimEnvironmentMainCtrl.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) create: (recoveredBlock4Stack2).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) simController: (recoveredBlock4Stack1).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hasProject.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 52].
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) simController.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) initOnlineSimEnvironment: (recoveredBlock4Stack1) makeConfig: (recoveredBlock4Stack2).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 46] ifFalse: [recoveredBlock4PC := 52].
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := uiController.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := ('Opening Experiment for: ') , (recoveredValue3).
    recoveredValue5 := SCEtas.
    (self) execWithProgressDialog: (recoveredValue0) message: (recoveredValue4) showProgress: (true) title: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203e9630; bytecode file offset 0xce5f38"
!SGOnlineSimulationView methodsFor: 'recovered'!
changeClockScalingFactor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwScalePrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Clock scaling factor'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280f8c64Arg1 | 
    | block280f8c64Value0 block280f8c64Value1 block280f8c64Value2 block280f8c64Value3 block280f8c64Value4 block280f8c64Value5 block280f8c64Value6 block280f8c64Value7 block280f8c64Value8 |
    block280f8c64Value0 := block280f8c64Arg1.
    block280f8c64Value1 := block280f8c64Value0.
    (block280f8c64Value1) maximum: (1000).
    block280f8c64Value2 := block280f8c64Value0.
    (block280f8c64Value2) minimum: (1).
    block280f8c64Value3 := block280f8c64Value0.
    (block280f8c64Value3) value: (10).
    block280f8c64Value4 := block280f8c64Value0.
    (block280f8c64Value4) decimalPoints: (1).
    block280f8c64Value5 := block280f8c64Value0.
    block280f8c64Value6 := XmHORIZONTAL.
    (block280f8c64Value5) orientation: (block280f8c64Value6).
    block280f8c64Value7 := XmMAXONLEFT.
    block280f8c64Value8 := (block280f8c64Value0) processingDirection: (block280f8c64Value7).
    block280f8c64Value8
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptWithEtasFonts.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := System.
    recoveredBlock55Value1 := [
    | recoveredBlock55Block64Value0 recoveredBlock55Block64Value1 recoveredBlock55Block64Value2 recoveredBlock55Block64Value3 recoveredBlock55Block64Value4 |
    recoveredBlock55Block64Value0 := simController.
    recoveredBlock55Block64Value1 := recoveredBlock55Arg1.
    recoveredBlock55Block64Value2 := (recoveredBlock55Block64Value1) / (10).
    recoveredBlock55Block64Value3 := (recoveredBlock55Block64Value2) asFloat.
    recoveredBlock55Block64Value4 := (recoveredBlock55Block64Value0) setClockScalingFactor: (recoveredBlock55Block64Value3).
    recoveredBlock55Block64Value4
].
    recoveredBlock55Value2 := (recoveredBlock55Value0) showBusyCursorWhile: (recoveredBlock55Value1).
    recoveredBlock55Value2
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e2610; bytecode file offset 0xedefc8"
!SGOnlineSimulationView methodsFor: 'recovered'!
createExperimentMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'Exper~iment'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'menuExperimentStop'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'St~op OS'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock19Value0 |
    recoveredBlock19Value0 := (self) isStopSimulationEnable.
    recoveredBlock19Value0
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 |
    recoveredBlock29Value0 := (self) isBackanimationView.
    recoveredBlock29Value1 := (recoveredBlock29Value0) not.
    recoveredBlock29Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack10 := XKF6.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack9 := 'F6'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'menuExperimentStart'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'St~art OS'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock58Value0 |
    recoveredBlock58Value0 := (self) isStartSimulationEnable.
    recoveredBlock58Value0
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 |
    recoveredBlock67Value0 := (self) isBackanimationView.
    recoveredBlock67Value1 := (recoveredBlock67Value0) not.
    recoveredBlock67Value1
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack10 := XKF7.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack9 := 'F7'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := 'menuExperimentMeasurementStop'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 'Stop M~easurement'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock99Value0 |
    recoveredBlock99Value0 := (self) isStopMeasurementEnable.
    recoveredBlock99Value0
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack10 := XKF8.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack9 := 'F8'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := 'menuExperimentMeasurementStart'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := 'Start ~Measurement'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock134Value0 |
    recoveredBlock134Value0 := (self) isStartMeasurementEnable.
    recoveredBlock134Value0
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack10 := XKF9.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack9 := 'F9'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := 'menuExperimentMonitorAll'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := '~Monitor All'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := true.
            recoveredBlock171PC := 179.
        ].
        recoveredBlock171Step = 179 ifTrue: [
            recoveredBlock171Stack2 := self.
            recoveredBlock171PC := 180.
        ].
        recoveredBlock171Step = 180 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) uiController.
            recoveredBlock171PC := 182.
        ].
        recoveredBlock171Step = 182 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) specification.
            recoveredBlock171PC := 184.
        ].
        recoveredBlock171Step = 184 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isBdSpecification.
            recoveredBlock171PC := 186.
        ].
        recoveredBlock171Step = 186 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 198] ifFalse: [recoveredBlock171PC := 190].
        ].
        recoveredBlock171Step = 190 ifTrue: [
            recoveredBlock171PC := 191.
        ].
        recoveredBlock171Step = 191 ifTrue: [
            recoveredBlock171Stack1 := self.
            recoveredBlock171PC := 192.
        ].
        recoveredBlock171Step = 192 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) uiController.
            recoveredBlock171PC := 194.
        ].
        recoveredBlock171Step = 194 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) specification.
            recoveredBlock171PC := 196.
        ].
        recoveredBlock171Step = 196 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) isARBdSpecification.
            recoveredBlock171PC := 198.
        ].
        recoveredBlock171Step = 198 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := 'menuExperimentMonitorDelete'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := '~Delete Monitors'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock216Stack0 recoveredBlock216Stack1 recoveredBlock216Stack2 recoveredBlock216Stack3 recoveredBlock216PC recoveredBlock216Step recoveredBlock216Done recoveredBlock216Result |
    recoveredBlock216Stack0 := self.
    recoveredBlock216PC := 222.
    recoveredBlock216Done := false.
    [recoveredBlock216Done not] whileTrue: [
        recoveredBlock216Step := recoveredBlock216PC.
        recoveredBlock216Step = 222 ifTrue: [
            recoveredBlock216Stack1 := true.
            recoveredBlock216PC := 223.
        ].
        recoveredBlock216Step = 223 ifTrue: [
            recoveredBlock216Stack2 := self.
            recoveredBlock216PC := 224.
        ].
        recoveredBlock216Step = 224 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) uiController.
            recoveredBlock216PC := 226.
        ].
        recoveredBlock216Step = 226 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) specification.
            recoveredBlock216PC := 228.
        ].
        recoveredBlock216Step = 228 ifTrue: [
            recoveredBlock216Stack2 := (recoveredBlock216Stack2) isBdSpecification.
            recoveredBlock216PC := 230.
        ].
        recoveredBlock216Step = 230 ifTrue: [
            (recoveredBlock216Stack2) ifTrue: [recoveredBlock216PC := 242] ifFalse: [recoveredBlock216PC := 234].
        ].
        recoveredBlock216Step = 234 ifTrue: [
            recoveredBlock216PC := 235.
        ].
        recoveredBlock216Step = 235 ifTrue: [
            recoveredBlock216Stack1 := self.
            recoveredBlock216PC := 236.
        ].
        recoveredBlock216Step = 236 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) uiController.
            recoveredBlock216PC := 238.
        ].
        recoveredBlock216Step = 238 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) specification.
            recoveredBlock216PC := 240.
        ].
        recoveredBlock216Step = 240 ifTrue: [
            recoveredBlock216Stack1 := (recoveredBlock216Stack1) isARBdSpecification.
            recoveredBlock216PC := 242.
        ].
        recoveredBlock216Step = 242 ifTrue: [
            recoveredBlock216Result := recoveredBlock216Stack1.
            recoveredBlock216Done := true.
        ].
    ].
    recoveredBlock216Result
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := 'menuExperimentDisableTargetErrorMessages'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasInternalMenuLabelPrefix.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack5 := 'Disable Reading Target Error Messages (for L1 debugging)'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock272Value0 |
    recoveredBlock272Value0 := (self) disableReadingTargetErrorMessages.
    recoveredBlock272Value0
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock281Value0 recoveredBlock281Value1 recoveredBlock281Value2 |
    recoveredBlock281Value0 := (self) uiController.
    recoveredBlock281Value1 := (recoveredBlock281Value0) mainController.
    recoveredBlock281Value2 := (recoveredBlock281Value1) isEtasInternalMode.
    recoveredBlock281Value2
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6) visible: (recoveredStack7) for: (recoveredStack8) accelerator: (recoveredStack9) acceleratorText: (recoveredStack10).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'ModelDebugging'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) simController.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOnlinePCTarget.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 369].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'menuExperimentSuspend'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := 'Suspend'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := 'menuExperimentResume'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := 'Resume'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 'ASCET_RTS'.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

