"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002eb0; bytecode file offset 0x8ffcfc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
activateSaveAsINCAExperiment
    ^self
! !

"ASDBase.ic method 0x2000c050; bytecode file offset 0x908be4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getParentWindow
    | recoveredValue0 |
    recoveredValue0 := (self) userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001503c; bytecode file offset 0x912098"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200150a8; bytecode file offset 0x912098"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getTextDialogClass
    | recoveredValue0 |
    recoveredValue0 := RBTextWindowFixFont1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015174; bytecode file offset 0x912098"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getNVRamLoadSaveDialogClass
    | recoveredValue0 |
    recoveredValue0 := ASDNvramLoadSaveDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029bc4; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMeasureLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := (recoveredValue0) getMeasureLabels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bab4; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCTParameter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) ctParameter.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c2b4; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isSimStep
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) isSimStep.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e514; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isSimRun
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) isSimRun.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002eab4; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isSimPause
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) isSimPause.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031e54; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCalibrationLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := (recoveredValue0) getCalibrationLabels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035da4; bytecode file offset 0x934580"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simulationStopped
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) activateStopSimulation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ab5c; bytecode file offset 0x938608"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCalibrationElementForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getDataElementForLabel: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bbe8; bytecode file offset 0x938608"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMeasureElementForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getDataElementForLabel: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040a44; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
hasDataLoggerCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) hasDataLoggerCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040a74; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
suspendSimulation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) suspendSimulation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040abc; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
activeEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) activeEvents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040ae0; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
allNodesFlatAndParams
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) allNodesFlatAndParams.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040af8; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
allNodes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) allNodes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040bc4; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
dataGeneratorDic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) dataGeneratorDic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040bf4; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
dataChannels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) dataChannels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c00; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getAvailableMeasureTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) getAvailableMeasureTasks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c0c; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getExperiments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) getExperiments.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c54; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
resumeSimulation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) resumeSimulation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040ca8; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isOffline
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) isOffline.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040db0; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simulator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) simulator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040dd4; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
allNodesFlatAndGlobal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) allNodesFlatAndGlobal.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e64; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
exportExperiment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) exportExperiment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e7c; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getAvailableTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) getAvailableTasks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040e88; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isRomCodeRunning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) isRomCodeRunning.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040ec4; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
allNodesFlat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) allNodesFlat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040f48; bytecode file offset 0x93d83c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getTopClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) getTopClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200410cc; bytecode file offset 0x93dd2c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
dataLoggerCtrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := measureSystemC.
    recoveredValue1 := (recoveredValue0) dataLoggerCtrl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ab48; bytecode file offset 0x947414"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldMeasureElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedMeasureableElementsCancelIfFoundOne: (true).
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ab58; bytecode file offset 0x947414"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldCalibrateElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedCalibrateableElementsCancelIfFoundOne: (true).
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200578d8; bytecode file offset 0x956284"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getSourceModelFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSourceModelFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c85c; bytecode file offset 0x959680"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
asap3IniFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASCETSD.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) asap3IniFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d534; bytecode file offset 0x959e64"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
saveAsExperiment
    | recoveredValue0 |
    recoveredValue0 := simEnvironment.
    (recoveredValue0) saveAsExperiment.
    ^self
! !

"ASDBase.ic method 0x2005d57c; bytecode file offset 0x959e64"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
saveExperiment
    | recoveredValue0 |
    recoveredValue0 := simEnvironment.
    (recoveredValue0) saveExperiment.
    ^self
! !

"ASDBase.ic method 0x2005d594; bytecode file offset 0x959e64"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
saveDefaultExperiment
    | recoveredValue0 |
    recoveredValue0 := simEnvironment.
    (recoveredValue0) saveDefaultExperiment.
    ^self
! !

"ASDBase.ic method 0x2005d5ac; bytecode file offset 0x959e64"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
saveAsExperimentForComponent
    | recoveredValue0 |
    recoveredValue0 := simEnvironment.
    (recoveredValue0) saveAsExperimentForComponent.
    ^self
! !

"ASDBase.ic method 0x2006708c; bytecode file offset 0x9646f8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simEnvironment
    | recoveredValue0 |
    recoveredValue0 := simEnvironment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200684bc; bytecode file offset 0x965b90"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
measureSystemC
    | recoveredValue0 |
    recoveredValue0 := measureSystemC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e94; bytecode file offset 0x965b90"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMeasureManager
    | recoveredValue0 |
    recoveredValue0 := measureSystemC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069cd8; bytecode file offset 0x966bdc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
adjustSystemC
    | recoveredValue0 |
    recoveredValue0 := adjustSystemC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a2b0; bytecode file offset 0x966bdc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCalibrationManager
    | recoveredValue0 |
    recoveredValue0 := adjustSystemC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006acc4; bytecode file offset 0x967a18"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simDataGeneratorC
    | recoveredValue0 |
    recoveredValue0 := simDataGeneratorC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b598; bytecode file offset 0x96873c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simEventGeneratorC
    | recoveredValue0 |
    recoveredValue0 := simEventGeneratorC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c83c; bytecode file offset 0x9692b0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedElements
    | recoveredValue0 |
    recoveredValue0 := selectedElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cd00; bytecode file offset 0x969c04"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedComplexElements
    | recoveredValue0 |
    recoveredValue0 := selectedComplexElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dfd0; bytecode file offset 0x96a9dc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
expandedViewSize
    | recoveredValue0 |
    recoveredValue0 := expandedViewSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e574; bytecode file offset 0x96af48"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
listState
    | recoveredValue0 |
    recoveredValue0 := listState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e8d8; bytecode file offset 0x96b41c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
monitorConf
    | recoveredValue0 |
    recoveredValue0 := monitorConf.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef2c; bytecode file offset 0x96b8a0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
eeInstrumentationManager
    | recoveredValue0 |
    recoveredValue0 := eeInstrumentationManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f208; bytecode file offset 0x96bc1c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
taskRemapDictionary
    | recoveredValue0 |
    recoveredValue0 := taskRemapDictionary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072360; bytecode file offset 0x96ee04"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bitCollapsedView
    ^1
! !

"ASDBase.ic method 0x200728d8; bytecode file offset 0x96f1c4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bitElementsFlat
    ^2
! !

"ASDBase.ic method 0x20072c60; bytecode file offset 0x96f6d4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bitFilterMeasure
    ^4
! !

"ASDBase.ic method 0x200744ac; bytecode file offset 0x970de8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bitFilterCalibrate
    ^8
! !

"ASDBase.ic method 0x20074dec; bytecode file offset 0x9757c8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
windowCloseRequest
    ^true
! !

"ASDBase.ic method 0x20078ff0; bytecode file offset 0x97594c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bitFilterParameter
    ^16
! !

"ASDBase.ic method 0x20081af8; bytecode file offset 0x97e554"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
openExperimentCommentWindow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := userInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openExperimentCommentWindow: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081cfc; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setClockScalingFactor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setClockScalingFactor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d08; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getAliasForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getAliasForLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d2c; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setCurrentSimNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setCurrentSimNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d5c; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
lastUsedExperiment: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) lastUsedExperiment: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d68; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateValueConfigForNodes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) updateValueConfigForNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d8c; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateImplConfigForNodes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) updateImplConfigForNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081dd4; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getSimInstancesForNodes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSimInstancesForNodes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081de0; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
checkExperimentContainsViewsOutsideDesktop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkExperimentContainsViewsOutsideDesktop: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081df8; bytecode file offset 0x97e6e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getSimInstanceForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSimInstanceForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086070; bytecode file offset 0x982a70"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getDataElementForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) reversedASDSimLabel.
    recoveredValue3 := (recoveredValue0) getSimInstanceForLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086084; bytecode file offset 0x982a70"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isValidCalibrationLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) reversedASDSimLabel.
    recoveredValue3 := (recoveredValue0) isValidCalibrationLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200860d4; bytecode file offset 0x982a70"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isValidMeasureLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) reversedASDSimLabel.
    recoveredValue3 := (recoveredValue0) isValidMeasureLabel: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200899dc; bytecode file offset 0x986298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
initTaskRemapDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    taskRemapDictionary := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008adcc; bytecode file offset 0x987698"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
resetCurrentSMState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) currentSimNode.
    (recoveredValue1) resetSMState.
    ^self
! !

"ASDBase.ic method 0x2008addc; bytecode file offset 0x987698"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
removeAllDataChannels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) dataGenerator.
    (recoveredValue1) removeAllDataChannels.
    ^self
! !

"ASDBase.ic method 0x20092884; bytecode file offset 0x98f298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
removeExperiment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeExperiment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200928e4; bytecode file offset 0x98f298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createDataChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) createDataChannel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009292c; bytecode file offset 0x98f298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
loadExperiment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) loadExperiment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092944; bytecode file offset 0x98f298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
breakCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) breakCondition: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200929d4; bytecode file offset 0x98f298"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
changeSteps: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeSteps: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097fd4; bytecode file offset 0x995850"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
enableSteps: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) enableSteps: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200982b4; bytecode file offset 0x995850"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateSteps: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) updateSteps: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fea0; bytecode file offset 0x99c9e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateSteps
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) stepsLeft.
    (self) updateSteps: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2ed0; bytecode file offset 0x99f78c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
removeDataChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) dataGenerator.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) removeDataChannel: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae268; bytecode file offset 0x9ab034"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
addMeasureElement: recoveredArg1 toVUI: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) measureSystemC.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) addMeasureElement: (recoveredValue1) toVUI: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200afef4; bytecode file offset 0x9ac7b4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bypassStart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasLicenseManager.
    (recoveredValue0) setBlockingAllowed: (false).
    recoveredValue1 := (self) bypassStartStop: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b035c; bytecode file offset 0x9acc1c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bypassStop
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasLicenseManager.
    (recoveredValue0) setBlockingAllowed: (true).
    recoveredValue1 := (self) bypassStartStop: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bef60; bytecode file offset 0x9bc0b4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simEnvironment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simEnvironment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0534; bytecode file offset 0x9bd228"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
measureSystemC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureSystemC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0d38; bytecode file offset 0x9bdf14"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
adjustSystemC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    adjustSystemC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c182c; bytecode file offset 0x9beac8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simDataGeneratorC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simDataGeneratorC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2718; bytecode file offset 0x9bf474"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simEventGeneratorC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simEventGeneratorC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2c3c; bytecode file offset 0x9bfde0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b00; bytecode file offset 0x9c058c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedComplexElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedComplexElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44e8; bytecode file offset 0x9c11bc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
expandedViewSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expandedViewSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b0c; bytecode file offset 0x9c16b0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
listState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    listState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5110; bytecode file offset 0x9c1afc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
monitorConf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitorConf := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5368; bytecode file offset 0x9c1f64"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
eeInstrumentationManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eeInstrumentationManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c56e4; bytecode file offset 0x9c22c8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
taskRemapDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    taskRemapDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd160; bytecode file offset 0x9c9a24"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
initInstrumentationManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGEEInstrumentation.
    recoveredValue1 := (recoveredValue0) eeInstrumentationClass.
    recoveredValue2 := (recoveredValue1) createForSimController: (self).
    (self) eeInstrumentationManager: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ce05c; bytecode file offset 0x9ca91c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
reMapOSTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (self) getExperiments.
    recoveredValue2 := (self) taskRemapDictionary.
    (recoveredValue0) reMapOSTasks: (recoveredValue1) taskDictionary: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ceb2c; bytecode file offset 0x9cb3e4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setCollapsedView
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceb54; bytecode file offset 0x9cb40c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isCollapsedView
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ceb70; bytecode file offset 0x9cb428"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setElementsFlat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceb8c; bytecode file offset 0x9cb444"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isElementsFlat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ceba8; bytecode file offset 0x9cb460"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setFilterMeasure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cebc4; bytecode file offset 0x9cb47c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isFilterMeasure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cebe0; bytecode file offset 0x9cb498"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setFilterCalibrate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cebfc; bytecode file offset 0x9cb4b4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isFilterCalibrate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cec18; bytecode file offset 0x9cb4d0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
clearFilterParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (15).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cec34; bytecode file offset 0x9cb4ec"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setFilterParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (16).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cec50; bytecode file offset 0x9cb508"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isFilterParameter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (16).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cec6c; bytecode file offset 0x9cb524"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
clearFilterCalibrate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (23).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cec88; bytecode file offset 0x9cb540"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
clearFilterMeasure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (27).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceca4; bytecode file offset 0x9cb55c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
clearElementsFlat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (29).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cecc0; bytecode file offset 0x9cb578"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
clearCollapsedView
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (30).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d4db8; bytecode file offset 0x9d1694"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simStep
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) measureSystemC.
    (recoveredValue0) resumeAcquisitionExternTrigger.
    recoveredValue1 := (self) simulator.
    (recoveredValue1) simStep.
    ^self
! !

"ASDBase.ic method 0x200dbb9c; bytecode file offset 0x9d8468"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
initOfflineSimEnvironment: recoveredArg1 makeConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) initInstrumentationManager.
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) initOfflineSimEnvironment: (recoveredValue1) makeConfig: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dbbac; bytecode file offset 0x9d8468"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
initOnlineSimEnvironment: recoveredArg1 makeConfig: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) initInstrumentationManager.
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) initOnlineSimEnvironment: (recoveredValue1) makeConfig: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dd38c; bytecode file offset 0x9d9c50"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
experimentGetParameterDicForLabels: recoveredArg1 hierarchicalNames: recoveredArg2 caseSensitive: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) getDAMOSParameterDicForLabels: (recoveredValue1) hierarchicalNames: (recoveredValue2) caseSensitive: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e1b28; bytecode file offset 0x9de3ec"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldWriteBackElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rnz') == ('EHI_81943').
    recoveredValue1 := (self) selectedWriteBackElementsCancelIfFoundOne: (true).
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e5004; bytecode file offset 0x9e1900"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateEventGenerator
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEventGeneratorC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEventGeneratorC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 12.
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

"ASDBase.ic method 0x200e5024; bytecode file offset 0x9e1900"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateDataGenerator
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simDataGeneratorC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) simDataGeneratorC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 12.
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

"ASDBase.ic method 0x200f0a10; bytecode file offset 0x9ed2c8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
shutDownMeasurement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) shutDownMeasurement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fbfb4; bytecode file offset 0x9f8874"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
resetLayoutConfigsOutsideDesktop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_82374').
    recoveredValue1 := simEnvironment.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) resetLayoutConfigsOutsideDesktop: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ff358; bytecode file offset 0x9fbd94"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createMeasureConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) createMeasureConfig: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff418; bytecode file offset 0x9fbd94"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createCalibrationConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) createCalibrationConfig: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20107ac0; bytecode file offset 0xa04380"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldLogElements
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
            recoveredStack2 := (recoveredStack2) couldLogElementsBasic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedLoggableElementsCancelIfFoundOne: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20109cfc; bytecode file offset 0xa06608"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCalibrationConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCalibrationConfig.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109d2c; bytecode file offset 0xa06608"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMeasureConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMeasureConfig.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113858; bytecode file offset 0xa10124"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
monitorError: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            (recoveredStack0) monitorError: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113868; bytecode file offset 0xa10124"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
monitorInfo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
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
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011e660; bytecode file offset 0xa1af28"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateSimulationData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Shikhar') == ('EHI65932').
    recoveredValue1 := (self) simEnvironment.
    recoveredValue2 := (recoveredValue1) dataGenerator.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) updateElements: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201254ec; bytecode file offset 0xa21dac"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getCurrentSignalItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012db70; bytecode file offset 0xa2a43c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simRun
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) measureSystemC.
    (recoveredValue0) resumeAcquisitionExternTrigger.
    recoveredValue1 := (self) simulator.
    (recoveredValue1) simRun.
    recoveredValue2 := EtasLicenseManager.
    (recoveredValue2) setBlockingAllowed: (false).
    ^self
! !

"ASDBase.ic method 0x2012dbd4; bytecode file offset 0xa2a498"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simPause
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) simPause.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
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

"ASDBase.ic method 0x20133140; bytecode file offset 0xa2fa04"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    (self) attributesPrintOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20135778; bytecode file offset 0xa32038"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getDAMOSLabelsSelectedOnly: recoveredArg1 includeParameters: recoveredArg2 includeNonVolatiles: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_73507').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) getDAMOSLabelsSelectedOnly: (recoveredValue1) includeParameters: (recoveredValue2) includeNonVolatiles: (recoveredValue3) includeDependentParameters: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013abe4; bytecode file offset 0xa374a4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
measureUpdate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) animateStates.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) displayMeasureDatas.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20161128; bytecode file offset 0xa5da10"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getDataloggerConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataloggerConfig.
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

"ASDBase.ic method 0x2016113c; bytecode file offset 0xa5da10"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getNvramCockpitConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramCockpitCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramCockpitCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNvramCockpitConfig.
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

"ASDBase.ic method 0x20161150; bytecode file offset 0xa5da10"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getTargetDebuggerConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetDebuggerCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetDebuggerCtrl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTargetDebuggerConfig.
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

"ASDBase.ic method 0x20174768; bytecode file offset 0xa71030"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getElementsWithMonotonyViolation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_72777'.
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
            recoveredStack2 := [:block280cf18cArg1 | 
    | block280cf18cValue0 block280cf18cValue1 |
    block280cf18cValue0 := block280cf18cArg1.
    block280cf18cValue1 := (block280cf18cValue0) checkMonotony.
    block280cf18cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017cd20; bytecode file offset 0xa795e4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simViewConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
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
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) simViewConfig: (recoveredStack1).
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

"ASDBase.ic method 0x2018f068; bytecode file offset 0xa8b924"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldLogElementsBasic
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
            recoveredStack2 := (recoveredStack2) dataLoggerCtrl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) dataLoggerCtrl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataLoggerCtrl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) logging.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201990c8; bytecode file offset 0xa95994"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setCurrentSimNodeUp
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := (recoveredValue0) setCurrentSimNodeUp.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) userInterface.
    recoveredValue3 := (recoveredValue2) outlineTree.
    (recoveredValue3) deselectAllItems.
    recoveredValue4 := (self) userInterface.
    recoveredValue5 := (recoveredValue4) outlineTree.
    recoveredValue6 := simEnvironment.
    recoveredValue7 := (recoveredValue6) currentSimNode.
    (recoveredValue5) selectItem: (recoveredValue7) notify: (false).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ab880; bytecode file offset 0xaa814c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setCurrentSimNodeDownForElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := simEnvironment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setCurrentSimNodeDownForElement: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) userInterface.
    recoveredValue4 := (recoveredValue3) outlineTree.
    (recoveredValue4) deselectAllItems.
    recoveredValue5 := (self) userInterface.
    recoveredValue6 := (recoveredValue5) outlineTree.
    recoveredValue7 := simEnvironment.
    recoveredValue8 := (recoveredValue7) currentSimNode.
    (recoveredValue6) selectItem: (recoveredValue8) notify: (false).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ad2f8; bytecode file offset 0xaa9bc4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsLog
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) selectedLoggableElementsCancelIfFoundOne: (false).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := ('hw') == ('call_2008403856').
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) getSimInstancesForNodes: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) dataLoggerCtrl.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) logElements: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201cb044; bytecode file offset 0xac790c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
isSimOff
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rnz') == ('EHI_79625').
    recoveredValue1 := (self) simulator.
    recoveredValue2 := [
    ^true
].
    (recoveredValue1) ifNil: (recoveredValue2).
    recoveredValue3 := (self) simulator.
    recoveredValue4 := (recoveredValue3) isSimOff.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f0814; bytecode file offset 0xaed0dc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
stopMeasurement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureFramework.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := measureSystemC.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureFramework.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) emergencyStopAcquisition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f239c; bytecode file offset 0xaeec68"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateCalibrationViewsForNewData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getViewList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d7e74Arg1 | 
    | block280d7e74Stack0 block280d7e74Stack1 block280d7e74Stack2 block280d7e74Stack3 block280d7e74Stack4 block280d7e74PC block280d7e74Step block280d7e74Done block280d7e74Result |
    block280d7e74Stack0 := self.
    block280d7e74PC := 4.
    block280d7e74Done := false.
    [block280d7e74Done not] whileTrue: [
        block280d7e74Step := block280d7e74PC.
        block280d7e74Step = 4 ifTrue: [
            block280d7e74Stack1 := nil.
            block280d7e74PC := 5.
        ].
        block280d7e74Step = 5 ifTrue: [
            block280d7e74Stack2 := block280d7e74Arg1.
            block280d7e74PC := 6.
        ].
        block280d7e74Step = 6 ifTrue: [
            block280d7e74Stack3 := 'updateContents'.
            block280d7e74PC := 8.
        ].
        block280d7e74Step = 8 ifTrue: [
            block280d7e74Stack2 := (block280d7e74Stack2) respondsTo: (block280d7e74Stack3).
            block280d7e74PC := 10.
        ].
        block280d7e74Step = 10 ifTrue: [
            (block280d7e74Stack2) ifTrue: [block280d7e74PC := 14] ifFalse: [block280d7e74PC := 17].
        ].
        block280d7e74Step = 14 ifTrue: [
            block280d7e74PC := 15.
        ].
        block280d7e74Step = 15 ifTrue: [
            block280d7e74Stack1 := block280d7e74Arg1.
            block280d7e74PC := 16.
        ].
        block280d7e74Step = 16 ifTrue: [
            block280d7e74Stack1 := (block280d7e74Stack1) updateContents.
            block280d7e74PC := 17.
        ].
        block280d7e74Step = 17 ifTrue: [
            block280d7e74Result := block280d7e74Stack1.
            block280d7e74Done := true.
        ].
    ].
    block280d7e74Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201fe1d8; bytecode file offset 0xafaa98"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    attributes := 0.
    recoveredValue0 := (500) @ (400).
    expandedViewSize := recoveredValue0.
    selectedElements := #().
    selectedComplexElements := #().
    (self) initTaskRemapDictionary.
    ^self
! !

"ASDBase.ic method 0x2020c024; bytecode file offset 0xb088f8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simEnd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) simEnd.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := EtasLicenseManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) setBlockingAllowed: (recoveredStack1).
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

"ASDBase.ic method 0x20271704; bytecode file offset 0xb6dff8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
reinitializeVariables: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rnz') == ('WHAT9218').
    recoveredValue1 := SGMonitorStreamDummy.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := simEnvironment.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) reinitializeVariables: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal1 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
    (recoveredValue2) measureTimeFor: (recoveredValue3) description: ('Reinitialize variables').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20271728; bytecode file offset 0xb6dff8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
reinitializeParameters: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Rnz') == ('WHAT9218').
    recoveredValue1 := SGMonitorStreamDummy.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := simEnvironment.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) reinitializeParameters: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal1 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
    (recoveredValue2) measureTimeFor: (recoveredValue3) description: ('Reinitialize parameters').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202867a4; bytecode file offset 0xb83080"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsMeasureCoverage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'mca'.
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
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e1ad4Arg1 | 
    | block280e1ad4Value0 block280e1ad4Value1 |
    block280e1ad4Value0 := block280e1ad4Arg1.
    block280e1ad4Value1 := (block280e1ad4Value0) isMeasureNode.
    block280e1ad4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstancesForNodes: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) changeDataSelection: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := eeInstrumentationManager.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addMeasureDatasToView: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202899dc; bytecode file offset 0xb862e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsMeasure
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedMeasureableElementsCancelIfFoundOne: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSelectionSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) promptMaxSelectionMessageCurrentSize: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstancesForNodes: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) changeDataSelection: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) measure.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20289a08; bytecode file offset 0xb862e0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsCalibrate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCalibrateableElementsCancelIfFoundOne: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSelectionSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) promptMaxSelectionMessageCurrentSize: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstancesForNodes: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) changeDataSelection: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustSystemC.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) calibrate.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291370; bytecode file offset 0xb8dc44"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsLogAll
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e2df4Arg1 | 
    | block280e2df4Stack0 block280e2df4Stack1 block280e2df4Stack2 block280e2df4Stack3 block280e2df4PC block280e2df4Step block280e2df4Done block280e2df4Result |
    block280e2df4Stack0 := self.
    block280e2df4PC := 4.
    block280e2df4Done := false.
    [block280e2df4Done not] whileTrue: [
        block280e2df4Step := block280e2df4PC.
        block280e2df4Step = 4 ifTrue: [
            block280e2df4Stack1 := false.
            block280e2df4PC := 5.
        ].
        block280e2df4Step = 5 ifTrue: [
            block280e2df4Stack2 := block280e2df4Arg1.
            block280e2df4PC := 6.
        ].
        block280e2df4Step = 6 ifTrue: [
            block280e2df4Stack2 := (block280e2df4Stack2) isMeasureNode.
            block280e2df4PC := 7.
        ].
        block280e2df4Step = 7 ifTrue: [
            (block280e2df4Stack2) ifTrue: [block280e2df4PC := 10] ifFalse: [block280e2df4PC := 24].
        ].
        block280e2df4Step = 10 ifTrue: [
            block280e2df4PC := 11.
        ].
        block280e2df4Step = 11 ifTrue: [
            block280e2df4Stack1 := false.
            block280e2df4PC := 12.
        ].
        block280e2df4Step = 12 ifTrue: [
            block280e2df4Stack2 := block280e2df4Arg1.
            block280e2df4PC := 13.
        ].
        block280e2df4Step = 13 ifTrue: [
            block280e2df4Stack2 := (block280e2df4Stack2) reference.
            block280e2df4PC := 14.
        ].
        block280e2df4Step = 14 ifTrue: [
            block280e2df4Stack2 := (block280e2df4Stack2) isPrimitive.
            block280e2df4PC := 15.
        ].
        block280e2df4Step = 15 ifTrue: [
            (block280e2df4Stack2) ifTrue: [block280e2df4PC := 18] ifFalse: [block280e2df4PC := 24].
        ].
        block280e2df4Step = 18 ifTrue: [
            block280e2df4PC := 19.
        ].
        block280e2df4Step = 19 ifTrue: [
            block280e2df4Stack1 := block280e2df4Arg1.
            block280e2df4PC := 20.
        ].
        block280e2df4Step = 20 ifTrue: [
            block280e2df4Stack1 := (block280e2df4Stack1) reference.
            block280e2df4PC := 21.
        ].
        block280e2df4Step = 21 ifTrue: [
            block280e2df4Stack1 := (block280e2df4Stack1) isDeltaT.
            block280e2df4PC := 23.
        ].
        block280e2df4Step = 23 ifTrue: [
            block280e2df4Stack1 := (block280e2df4Stack1) not.
            block280e2df4PC := 24.
        ].
        block280e2df4Step = 24 ifTrue: [
            block280e2df4Result := block280e2df4Stack1.
            block280e2df4Done := true.
        ].
    ].
    block280e2df4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAllSimInstancesNodesCondition: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029a83c; bytecode file offset 0xb9711c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
elementsStimulate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'wb_sifting'.
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
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElements.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280e35d4Arg1 | 
    | block280e35d4Value0 block280e35d4Value1 |
    block280e35d4Value0 := block280e35d4Arg1.
    block280e35d4Value1 := (block280e35d4Value0) isDataGeneratorNode.
    block280e35d4Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstancesForNodes: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) stimulateElements: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c0e4; bytecode file offset 0xb989c8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createTargetDebuggerConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetDebuggerCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTarget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserDebugAccess.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) measureSystemC.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithAccess: (recoveredStack1) controller: (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) windowConfiguration: (recoveredStack1).
            recoveredPC := 36.
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
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
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

"ASDBase.ic method 0x202a5590; bytecode file offset 0xba1e70"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createDataloggerConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureSystemC.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForMeasureCtrl: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) windowConfiguration: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) createDataloggerConfig: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b18a8; bytecode file offset 0xbae190"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getPromptedMeasureLabelsWithDefault: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMeasureLabels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := CwListPrompter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Please Select Some Measure Elements'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280e4a80Arg1 | 
    | block280e4a80Value0 block280e4a80Value1 |
    block280e4a80Value0 := block280e4a80Arg1.
    block280e4a80Value1 := (block280e4a80Value0) printString.
    block280e4a80Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) selectionPolicy: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b1bb0; bytecode file offset 0xbae498"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getPromptedCalibrationLabelsForType: recoveredArg1 default: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCalibrationLabelsForType: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CwListPrompter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Please Select Some Calibration Elements'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280e4aa4Arg1 | 
    | block280e4aa4Value0 block280e4aa4Value1 |
    block280e4aa4Value0 := block280e4aa4Arg1.
    block280e4aa4Value1 := (block280e4aa4Value0) printString.
    block280e4aa4Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) selectionPolicy: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20300508; bytecode file offset 0xbfcdf4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
createNvramCockpitConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramCockpitCtrl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ASDAccessNVRamManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) measureSystemC.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForManager: (recoveredStack1) controller: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) windowConfiguration: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Call_63630'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) openWithParent: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a080; bytecode file offset 0xc06954"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
stimulateInstVars: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
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
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) simEnvironment.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getSimInstanceForInstVar: (recoveredBlock13Stack1).
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 43] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal2.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) simEnvironment.
    recoveredValue5 := (recoveredValue4) dataGenerator.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) stimulateElements: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2031ffd4; bytecode file offset 0xc1c8b0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
measureAtTime: recoveredArg1 step: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGAccessSmalltalkData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) newSimTimeStamp: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOfflineMeasureRate.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulator.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) stepsToGo.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) measureUpdate.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := measureSystemC.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) dataLoggingOffline: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033a8c4; bytecode file offset 0xc371ac"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
setMonitorBDEConfig
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGraphicSpecification.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorBDEConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) copy.
    recoveredBlock18Value2 := recoveredBlock18Value1.
    monitorConf := recoveredBlock18Value2.
    recoveredBlock18Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:block280ed600Arg1 | 
    | block280ed600Stack0 block280ed600Stack1 block280ed600Stack2 block280ed600Stack3 block280ed600PC block280ed600Step block280ed600Done block280ed600Result |
    block280ed600Stack0 := self.
    block280ed600PC := 4.
    block280ed600Done := false.
    [block280ed600Done not] whileTrue: [
        block280ed600Step := block280ed600PC.
        block280ed600Step = 4 ifTrue: [
            block280ed600Stack1 := nil.
            block280ed600PC := 5.
        ].
        block280ed600Step = 5 ifTrue: [
            block280ed600Stack2 := block280ed600Arg1.
            block280ed600PC := 6.
        ].
        block280ed600Step = 6 ifTrue: [
            block280ed600Stack2 := (block280ed600Stack2) isDestroyed.
            block280ed600PC := 8.
        ].
        block280ed600Step = 8 ifTrue: [
            (block280ed600Stack2) ifTrue: [block280ed600PC := 19] ifFalse: [block280ed600PC := 12].
        ].
        block280ed600Step = 12 ifTrue: [
            block280ed600PC := 13.
        ].
        block280ed600Step = 13 ifTrue: [
            block280ed600Stack1 := block280ed600Arg1.
            block280ed600PC := 14.
        ].
        block280ed600Step = 14 ifTrue: [
            (block280ed600Stack1) resetMonitorsLoaded.
            block280ed600PC := 16.
        ].
        block280ed600Step = 16 ifTrue: [
            block280ed600Stack1 := block280ed600Arg1.
            block280ed600PC := 17.
        ].
        block280ed600Step = 17 ifTrue: [
            block280ed600Stack1 := (block280ed600Stack1) loadMonitors.
            block280ed600PC := 19.
        ].
        block280ed600Step = 19 ifTrue: [
            block280ed600Result := block280ed600Stack1.
            block280ed600Done := true.
        ].
    ].
    block280ed600Result
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20356ce4; bytecode file offset 0xc535c0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getParameterSimInstances
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) getDAMOSLabelsSelectedOnly: (false) includeParameters: (true) includeNonVolatiles: (false).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) dataElements.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue1) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) dataElements.
    recoveredValue8 := [:recoveredBlock29Arg1 :recoveredBlock29Arg2 | 
    | recoveredBlock29Local1 recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 |
    recoveredBlock29Value0 := recoveredBlock29Arg2.
    recoveredBlock29Value1 := (recoveredBlock29Value0) duplicateWithNilAccess.
    recoveredBlock29Local1 := recoveredBlock29Value1.
    recoveredBlock29Value2 := recoveredBlock29Local1.
    recoveredBlock29Value3 := recoveredBlock29Arg1.
    (recoveredBlock29Value2) name: (recoveredBlock29Value3).
    recoveredBlock29Value4 := recoveredLocal1.
    recoveredBlock29Value5 := recoveredBlock29Local1.
    recoveredBlock29Value6 := (recoveredBlock29Value4) add: (recoveredBlock29Value5).
    recoveredBlock29Value6
].
    (recoveredValue7) keysAndValuesDo: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) dataElements: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20356d58; bytecode file offset 0xc53634"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getSelectedParameterSimInstances
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) getDAMOSLabelsSelectedOnly: (true) includeParameters: (true) includeNonVolatiles: (false).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (recoveredValue2) dataElements.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue1) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) dataElements.
    recoveredValue8 := [:recoveredBlock29Arg1 :recoveredBlock29Arg2 | 
    | recoveredBlock29Local1 recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 |
    recoveredBlock29Value0 := recoveredBlock29Arg2.
    recoveredBlock29Value1 := (recoveredBlock29Value0) duplicateWithNilAccess.
    recoveredBlock29Local1 := recoveredBlock29Value1.
    recoveredBlock29Value2 := recoveredBlock29Local1.
    recoveredBlock29Value3 := recoveredBlock29Arg1.
    (recoveredBlock29Value2) name: (recoveredBlock29Value3).
    recoveredBlock29Value4 := recoveredLocal1.
    recoveredBlock29Value5 := recoveredBlock29Local1.
    recoveredBlock29Value6 := (recoveredBlock29Value4) add: (recoveredBlock29Value5).
    recoveredBlock29Value6
].
    (recoveredValue7) keysAndValuesDo: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) dataElements: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x203669cc; bytecode file offset 0xc632a8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
logInstVars: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) simEnvironment.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getSimInstanceForInstVar: (recoveredBlock13Stack1).
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 43] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal2.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) activateOpenDataLogger.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataLoggerCtrl.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) logElements: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036f1ec; bytecode file offset 0xc6bacc"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
readDAMOSForSpecification: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'selectedOnlyFlag'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'includeParametersFlag'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'includeNonVolatilesFlag'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Call_73507'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDAMOSLabelsSelectedOnly: (recoveredStack1) includeParameters: (recoveredStack2) includeNonVolatiles: (recoveredStack3) includeDependentParameters: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) readDAMOSElements: (recoveredStack1) forSpecification: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036f264; bytecode file offset 0xc6bb44"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
writeDAMOSForSpecification: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'selectedOnlyFlag'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'includeParametersFlag'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'includeNonVolatilesFlag'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Call_73507'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDAMOSLabelsSelectedOnly: (recoveredStack1) includeParameters: (recoveredStack2) includeNonVolatiles: (recoveredStack3) includeDependentParameters: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeDAMOSElements: (recoveredStack1) forSpecification: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20370be8; bytecode file offset 0xc6d4d4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isCollapsedView.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isCollapsedView: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isElementsFlat.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isElementsFlat: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isFilterMeasure.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isFilterMeasure: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isFilterParameter.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isFilterParameter: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := (self) isFilterCalibrate.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('isFilterCalibrate: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    (recoveredValue20) cr.
    ^self
! !

"ASDBase.ic method 0x2039f58c; bytecode file offset 0xc9be60"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedWriteBackElementsCancelIfFoundOne: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('hw') == ('call_84108').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) selectedElements.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredLocal2.
    recoveredBlock24Value2 := recoveredArg1.
    recoveredBlock24Value3 := recoveredLocal1.
    recoveredBlock24Value4 := (recoveredBlock24Value0) addWriteBackElementsTo: (recoveredBlock24Value1) cancelIfFoundOne: (recoveredBlock24Value2) visited: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) selectedComplexElements.
    recoveredValue8 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := recoveredLocal2.
    recoveredBlock49Value2 := recoveredArg1.
    recoveredBlock49Value3 := recoveredLocal1.
    recoveredBlock49Value4 := (recoveredBlock49Value0) addWriteBackElementsTo: (recoveredBlock49Value1) cancelIfFoundOne: (recoveredBlock49Value2) visited: (recoveredBlock49Value3).
    recoveredBlock49Value4
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x203b621c; bytecode file offset 0xcb2b10"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
couldStimulateElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'wb_sifting'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'EHI_77693'.
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
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := false.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isDataGeneratorNode.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 50] ifFalse: [recoveredBlock36PC := 73].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := true.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) reference.
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isMethodParameter.
            recoveredBlock36PC := 57.
        ].
        recoveredBlock36Step = 57 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 60] ifFalse: [recoveredBlock36PC := 73].
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36PC := 61.
        ].
        recoveredBlock36Step = 61 ifTrue: [
            recoveredBlock36Stack1 := self.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) simEnvironment.
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) getTopClass.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) allMethodParameters.
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) reference.
            recoveredBlock36PC := 71.
        ].
        recoveredBlock36Step = 71 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) includes: (recoveredBlock36Stack2).
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203eaeec; bytecode file offset 0xce77ec"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getMonitorBDEConfig
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExperimentAutomaticMonitorMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExperiment.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorBDEConfig.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := userInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureDatas.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) hierarchy.
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := [
    | block280f8e14Value0 block280f8e14Value1 |
    block280f8e14Value0 := OrderedCollection.
    block280f8e14Value1 := (block280f8e14Value0) new.
    block280f8e14Value1
].
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) at: (recoveredBlock30Stack2) ifAbsentPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) manager.
            recoveredBlock30PC := 58.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) identifier.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) keysDo: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := monitorConf.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := monitorConf.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := monitorConf.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f9088; bytecode file offset 0xcf5988"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
saveData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNVRamLoadSaveDialogClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForSave.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := ASDDAMOSOptions.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) instance.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) optionDamosExtensionForOutput.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := 'sgm'.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) = (recoveredBlock18Stack2).
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 46].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack1) writePaCoData: (recoveredBlock18Stack2).
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            (recoveredBlock18Stack1) writeDAMOSForSpecification: (recoveredBlock18Stack2).
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack3 := 'showLogFile'.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack4 := [
    false
].
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18PC := 66.
        ].
        recoveredBlock18Step = 66 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) at: (recoveredBlock18Stack3) ifAbsent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 68.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 72] ifFalse: [recoveredBlock18PC := 88].
        ].
        recoveredBlock18Step = 72 ifTrue: [
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) getTextDialogClass.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack2 := ASDDAMOSOptions.
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) instance.
            recoveredBlock18PC := 80.
        ].
        recoveredBlock18Step = 80 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) optionDamosOutputLogFile.
            recoveredBlock18PC := 82.
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) asFilename.
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack3 := 'File Out Log File'.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) showFile: (recoveredBlock18Stack2) useTitle: (recoveredBlock18Stack3).
            recoveredBlock18PC := 88.
        ].
        recoveredBlock18Step = 88 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) suppressIdleTimerWhile: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20401c40; bytecode file offset 0xcfe528"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
updateSimControl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimOff.
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
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimPause.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimRun.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) resumeAcquisitionExternTrigger.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) resumeAcquisitionExternTrigger.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) stopAcquisitionExternTrigger.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'call_77428'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock68Stack0 recoveredBlock68Stack1 recoveredBlock68Stack2 recoveredBlock68Stack3 recoveredBlock68PC recoveredBlock68Step recoveredBlock68Done recoveredBlock68Result |
    recoveredBlock68Stack0 := self.
    recoveredBlock68PC := 74.
    recoveredBlock68Done := false.
    [recoveredBlock68Done not] whileTrue: [
        recoveredBlock68Step := recoveredBlock68PC.
        recoveredBlock68Step = 74 ifTrue: [
            recoveredBlock68Stack1 := nil.
            recoveredBlock68PC := 75.
        ].
        recoveredBlock68Step = 75 ifTrue: [
            recoveredBlock68Stack2 := self.
            recoveredBlock68PC := 76.
        ].
        recoveredBlock68Step = 76 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) userInterface.
            recoveredBlock68PC := 78.
        ].
        recoveredBlock68Step = 78 ifTrue: [
            recoveredBlock68Stack2 := (recoveredBlock68Stack2) isDestroyed.
            recoveredBlock68PC := 80.
        ].
        recoveredBlock68Step = 80 ifTrue: [
            (recoveredBlock68Stack2) ifTrue: [recoveredBlock68PC := 90] ifFalse: [recoveredBlock68PC := 84].
        ].
        recoveredBlock68Step = 84 ifTrue: [
            recoveredBlock68PC := 85.
        ].
        recoveredBlock68Step = 85 ifTrue: [
            recoveredBlock68Stack1 := self.
            recoveredBlock68PC := 86.
        ].
        recoveredBlock68Step = 86 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) userInterface.
            recoveredBlock68PC := 88.
        ].
        recoveredBlock68Step = 88 ifTrue: [
            recoveredBlock68Stack1 := (recoveredBlock68Stack1) updateSimControl.
            recoveredBlock68PC := 90.
        ].
        recoveredBlock68Step = 90 ifTrue: [
            recoveredBlock68Result := recoveredBlock68Stack1.
            recoveredBlock68Done := true.
        ].
    ].
    recoveredBlock68Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20415648; bytecode file offset 0xd11f44"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
stopSimulation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOffline.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureSystemC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) measureSystemC.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) stopAcquisitionExternTrigger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) simEnd.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Call2000964'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := simEnvironment.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) simulator.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSimRunning.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) wait.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 42] ifFalse: [recoveredPC := 65]] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := simEnvironment.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) simulator.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimRunning.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'Internal error!! (#stopSimulation)
The simulation process is still running.'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) shutDownMeasurement.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) shutdown.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20426924; bytecode file offset 0xd23230"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
loadData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNVRamLoadSaveDialogClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForLoad.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := Smalltalk.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := 'SGMsrdocDamosToolbox'.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includesKey: (recoveredBlock18Stack2).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 34] ifFalse: [recoveredBlock18PC := 62].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := ASDDAMOSOptions.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) instance.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) optionDamosExtensionForOutput.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := 'sgm'.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) = (recoveredBlock18Stack2).
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 46] ifFalse: [recoveredBlock18PC := 56].
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            (recoveredBlock18Stack1) readPaCoData: (recoveredBlock18Stack2).
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            (recoveredBlock18Stack1) readDAMOSForSpecification: (recoveredBlock18Stack2).
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 66.
        ].
        recoveredBlock18Step = 66 ifTrue: [
            recoveredBlock18Stack3 := 'showLogFile'.
            recoveredBlock18PC := 68.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack4 := [
    false
].
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) at: (recoveredBlock18Stack3) ifAbsent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 82] ifFalse: [recoveredBlock18PC := 98].
        ].
        recoveredBlock18Step = 82 ifTrue: [
            recoveredBlock18PC := 83.
        ].
        recoveredBlock18Step = 83 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 84.
        ].
        recoveredBlock18Step = 84 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) getTextDialogClass.
            recoveredBlock18PC := 86.
        ].
        recoveredBlock18Step = 86 ifTrue: [
            recoveredBlock18Stack2 := ASDDAMOSOptions.
            recoveredBlock18PC := 88.
        ].
        recoveredBlock18Step = 88 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) instance.
            recoveredBlock18PC := 90.
        ].
        recoveredBlock18Step = 90 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) optionDamosInputLogFile.
            recoveredBlock18PC := 92.
        ].
        recoveredBlock18Step = 92 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) asFilename.
            recoveredBlock18PC := 94.
        ].
        recoveredBlock18Step = 94 ifTrue: [
            recoveredBlock18Stack3 := 'File In Log File'.
            recoveredBlock18PC := 96.
        ].
        recoveredBlock18Step = 96 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) showFile: (recoveredBlock18Stack2) useTitle: (recoveredBlock18Stack3).
            recoveredBlock18PC := 98.
        ].
        recoveredBlock18Step = 98 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) suppressIdleTimerWhile: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042cad4; bytecode file offset 0xd293d4"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
checkForDoubleStimulation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280fd368Arg1 | 
    | block280fd368Value0 block280fd368Value1 block280fd368Value2 |
    block280fd368Value0 := block280fd368Arg1.
    block280fd368Value1 := (block280fd368Value0) output.
    block280fd368Value2 := (block280fd368Value1) name.
    block280fd368Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal3.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) wName.
    recoveredBlock24Value3 := (recoveredBlock24Value0) includes: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 |
    recoveredBlock60Value0 := recoveredLocal1.
    recoveredBlock60Value1 := (recoveredBlock60Value0) , ('
 ->').
    recoveredBlock60Value2 := recoveredBlock60Arg1.
    recoveredBlock60Value3 := (recoveredBlock60Value2) wName.
    recoveredBlock60Value4 := (recoveredBlock60Value1) , (recoveredBlock60Value3).
    recoveredBlock60Value5 := recoveredBlock60Value4.
    recoveredLocal1 := recoveredBlock60Value5.
    recoveredBlock60Value4
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'Data Element(s): 
'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := '

is (are) already included in Data Generator!!
The calibration may have no effect on these elements!!'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043ca34; bytecode file offset 0xd39314"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedMeasureableElementsCancelIfFoundOne: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84108'.
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredLocal2.
    recoveredBlock24Value2 := recoveredArg1.
    recoveredBlock24Value3 := recoveredLocal1.
    recoveredBlock24Value4 := (recoveredBlock24Value0) addMeasureableElementsTo: (recoveredBlock24Value1) cancelIfFoundOne: (recoveredBlock24Value2) visited: (recoveredBlock24Value3).
    recoveredBlock24Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedComplexElements.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 |
    recoveredBlock77Value0 := recoveredBlock77Arg1.
    recoveredBlock77Value1 := recoveredLocal2.
    recoveredBlock77Value2 := recoveredArg1.
    recoveredBlock77Value3 := recoveredLocal1.
    recoveredBlock77Value4 := (recoveredBlock77Value0) addMeasureableElementsTo: (recoveredBlock77Value1) cancelIfFoundOne: (recoveredBlock77Value2) visited: (recoveredBlock77Value3).
    recoveredBlock77Value4
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20459a58; bytecode file offset 0xd5635c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedLoggableElementsCancelIfFoundOne: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('hw') == ('call_84108').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) selectedElements.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack4 := recoveredLocal1.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            (recoveredBlock24Stack1) addLoggableElementsTo: (recoveredBlock24Stack2) cancelIfFoundOne: (recoveredBlock24Stack3) visited: (recoveredBlock24Stack4).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 50] ifFalse: [recoveredBlock24PC := 63].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) notEmpty.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 58] ifFalse: [recoveredBlock24PC := 63].
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) selectedComplexElements.
    recoveredValue8 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
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
            recoveredBlock69Stack2 := recoveredLocal2.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack3 := recoveredArg1.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack4 := recoveredLocal1.
            recoveredBlock69PC := 86.
        ].
        recoveredBlock69Step = 86 ifTrue: [
            (recoveredBlock69Stack1) addLoggableElementsTo: (recoveredBlock69Stack2) cancelIfFoundOne: (recoveredBlock69Stack3) visited: (recoveredBlock69Stack4).
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack2 := recoveredArg1.
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 96] ifFalse: [recoveredBlock69PC := 109].
        ].
        recoveredBlock69Step = 96 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal2.
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) notEmpty.
            recoveredBlock69PC := 101.
        ].
        recoveredBlock69Step = 101 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 104] ifFalse: [recoveredBlock69PC := 109].
        ].
        recoveredBlock69Step = 104 ifTrue: [
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 108.
        ].
        recoveredBlock69Step = 108 ifTrue: [
            ^recoveredBlock69Stack1
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20459a84; bytecode file offset 0xd5635c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
selectedCalibrateableElementsCancelIfFoundOne: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('hw') == ('call_84108').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) selectedElements.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack4 := recoveredLocal1.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            (recoveredBlock24Stack1) addCalibrateableElementsTo: (recoveredBlock24Stack2) cancelIfFoundOne: (recoveredBlock24Stack3) visited: (recoveredBlock24Stack4).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredArg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 50] ifFalse: [recoveredBlock24PC := 63].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) notEmpty.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 58] ifFalse: [recoveredBlock24PC := 63].
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 63 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) selectedComplexElements.
    recoveredValue8 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69Stack5 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
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
            recoveredBlock69Stack2 := recoveredLocal2.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack3 := recoveredArg1.
            recoveredBlock69PC := 83.
        ].
        recoveredBlock69Step = 83 ifTrue: [
            recoveredBlock69Stack4 := recoveredLocal1.
            recoveredBlock69PC := 86.
        ].
        recoveredBlock69Step = 86 ifTrue: [
            (recoveredBlock69Stack1) addCalibrateableElementsTo: (recoveredBlock69Stack2) cancelIfFoundOne: (recoveredBlock69Stack3) visited: (recoveredBlock69Stack4).
            recoveredBlock69PC := 89.
        ].
        recoveredBlock69Step = 89 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 90.
        ].
        recoveredBlock69Step = 90 ifTrue: [
            recoveredBlock69Stack2 := recoveredArg1.
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 96] ifFalse: [recoveredBlock69PC := 109].
        ].
        recoveredBlock69Step = 96 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal2.
            recoveredBlock69PC := 99.
        ].
        recoveredBlock69Step = 99 ifTrue: [
            recoveredBlock69Stack2 := (recoveredBlock69Stack2) notEmpty.
            recoveredBlock69PC := 101.
        ].
        recoveredBlock69Step = 101 ifTrue: [
            (recoveredBlock69Stack2) ifTrue: [recoveredBlock69PC := 104] ifFalse: [recoveredBlock69PC := 109].
        ].
        recoveredBlock69Step = 104 ifTrue: [
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal2.
            recoveredBlock69PC := 108.
        ].
        recoveredBlock69Step = 108 ifTrue: [
            ^recoveredBlock69Stack1
        ].
        recoveredBlock69Step = 109 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20461254; bytecode file offset 0xd5db44"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getDAMOSLabelsSelectedOnly: recoveredArg1 includeParameters: recoveredArg2 includeNonVolatiles: recoveredArg3 includeDependentParameters: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) allNodesFlat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'Call_73507'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block28100810Arg1 | 
    | block28100810Value0 block28100810Value1 |
    block28100810Value0 := block28100810Arg1.
    block28100810Value1 := (block28100810Value0) isDependentParameter.
    block28100810Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:block28100834Arg1 | 
    | block28100834Stack0 block28100834Stack1 block28100834Stack2 block28100834Stack3 block28100834Stack4 block28100834PC block28100834Step block28100834Done block28100834Result |
    block28100834Stack0 := self.
    block28100834PC := 4.
    block28100834Done := false.
    [block28100834Done not] whileTrue: [
        block28100834Step := block28100834PC.
        block28100834Step = 4 ifTrue: [
            block28100834Stack1 := true.
            block28100834PC := 5.
        ].
        block28100834Step = 5 ifTrue: [
            block28100834Stack2 := SGSimEnvironment.
            block28100834PC := 7.
        ].
        block28100834Step = 7 ifTrue: [
            block28100834Stack2 := (block28100834Stack2) filterBlockForCalibrationParameters.
            block28100834PC := 9.
        ].
        block28100834Step = 9 ifTrue: [
            block28100834Stack3 := block28100834Arg1.
            block28100834PC := 10.
        ].
        block28100834Step = 10 ifTrue: [
            block28100834Stack2 := (block28100834Stack2) value: (block28100834Stack3).
            block28100834PC := 12.
        ].
        block28100834Step = 12 ifTrue: [
            (block28100834Stack2) ifTrue: [block28100834PC := 24] ifFalse: [block28100834PC := 16].
        ].
        block28100834Step = 16 ifTrue: [
            block28100834PC := 17.
        ].
        block28100834Step = 17 ifTrue: [
            block28100834Stack1 := SGSimEnvironment.
            block28100834PC := 19.
        ].
        block28100834Step = 19 ifTrue: [
            block28100834Stack1 := (block28100834Stack1) filterBlockForNoneVolatileVariables.
            block28100834PC := 21.
        ].
        block28100834Step = 21 ifTrue: [
            block28100834Stack2 := block28100834Arg1.
            block28100834PC := 22.
        ].
        block28100834Step = 22 ifTrue: [
            block28100834Stack1 := (block28100834Stack1) value: (block28100834Stack2).
            block28100834PC := 24.
        ].
        block28100834Step = 24 ifTrue: [
            block28100834Result := block28100834Stack1.
            block28100834Done := true.
        ].
    ].
    block28100834Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := SGSimEnvironment.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterBlockForCalibrationParameters.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := SGSimEnvironment.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterBlockForNoneVolatileVariables.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:block28100858Arg1 | 
    false
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDAMOSLabelsFromList: (recoveredStack1) forFilter: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046c158; bytecode file offset 0xd68a74"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getSimViewConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandedViewSize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'simViewPos'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'simViewSize'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'collapsedView'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCollapsedView.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'animatedStates'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) isAnimation.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'showSeqCalls'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) seqCallVisible.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'offlineMeasureRate'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := measureSystemC.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOfflineMeasureRate.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'measureTask'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := measureSystemC.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := measureSystemC.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectedTask.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) taskNameForId: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20493394; bytecode file offset 0xd8fc88"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
bypassStartStop: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := simEnvironment.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassStart.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := simEnvironment.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassStop.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := 20.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 500.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRomCodeRunning.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 'A timeout occured while starting the operating system on the target.'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := 'A timeout occured while stopping the operating system on the target.'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'This is probably due an exception, which caused your target software to crash.'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'Please exit the experiment.'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ea968; bytecode file offset 0xde728c"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
attributesTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setCollapsedView.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setCollapsedView--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue4).
    (self) setElementsFlat.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setElementsFlat--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue7).
    (self) setFilterMeasure.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setFilterMeasure--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue10).
    (self) setFilterParameter.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setFilterParameter--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue13).
    (self) setFilterCalibrate.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------setFilterCalibrate--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue16).
    (self) clearCollapsedView.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------clearCollapsedView--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue19).
    (self) clearElementsFlat.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('--------clearElementsFlat--------').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue22).
    (self) clearFilterMeasure.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('--------clearFilterMeasure--------').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue25).
    (self) clearFilterParameter.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) nextPutAll: ('--------clearFilterParameter--------').
    (recoveredValue26) cr.
    recoveredValue28 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue28).
    (self) clearFilterCalibrate.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) nextPutAll: ('--------clearFilterCalibrate--------').
    (recoveredValue29) cr.
    recoveredValue31 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue31).
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := (recoveredValue32) contents.
    (recoveredValue33) edit.
    ^self
! !

"ASDBase.ic method 0x2050a1c4; bytecode file offset 0xe06ac8"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
getEventForMethod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simEnvironment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOffline.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := simEnvironment.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTopClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) simulator.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) allEvents.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) eventName.
    recoveredBlock51Value2 := recoveredArg1.
    recoveredBlock51Value3 := (recoveredBlock51Value2) methodName.
    recoveredBlock51Value4 := (recoveredBlock51Value1) = (recoveredBlock51Value3).
    recoveredBlock51Value4
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
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcessClass.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := simEnvironment.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchicalModules.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Local1 recoveredBlock88Stack0 recoveredBlock88Stack1 recoveredBlock88Stack2 recoveredBlock88Stack3 recoveredBlock88Stack4 recoveredBlock88PC recoveredBlock88Step recoveredBlock88Done recoveredBlock88Result |
    recoveredBlock88Stack0 := self.
    recoveredBlock88PC := 94.
    recoveredBlock88Done := false.
    [recoveredBlock88Done not] whileTrue: [
        recoveredBlock88Step := recoveredBlock88PC.
        recoveredBlock88Step = 94 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 95.
        ].
        recoveredBlock88Step = 95 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 98.
        ].
        recoveredBlock88Step = 98 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) simNode.
            recoveredBlock88PC := 100.
        ].
        recoveredBlock88Step = 100 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) reference.
            recoveredBlock88PC := 102.
        ].
        recoveredBlock88Step = 102 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) sgClass.
            recoveredBlock88PC := 104.
        ].
        recoveredBlock88Step = 104 ifTrue: [
            recoveredBlock88Stack3 := recoveredLocal2.
            recoveredBlock88PC := 107.
        ].
        recoveredBlock88Step = 107 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) = (recoveredBlock88Stack3).
            recoveredBlock88PC := 108.
        ].
        recoveredBlock88Step = 108 ifTrue: [
            (recoveredBlock88Stack2) ifTrue: [recoveredBlock88PC := 112] ifFalse: [recoveredBlock88PC := 173].
        ].
        recoveredBlock88Step = 112 ifTrue: [
            recoveredBlock88PC := 113.
        ].
        recoveredBlock88Step = 113 ifTrue: [
            recoveredBlock88Stack1 := recoveredArg1.
            recoveredBlock88PC := 116.
        ].
        recoveredBlock88Step = 116 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) methodName.
            recoveredBlock88PC := 117.
        ].
        recoveredBlock88Step = 117 ifTrue: [
            recoveredBlock88Stack2 := simEnvironment.
            recoveredBlock88PC := 119.
        ].
        recoveredBlock88Step = 119 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) subProcessSeparator.
            recoveredBlock88PC := 121.
        ].
        recoveredBlock88Step = 121 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) , (recoveredBlock88Stack2).
            recoveredBlock88PC := 123.
        ].
        recoveredBlock88Step = 123 ifTrue: [
            recoveredBlock88Stack2 := recoveredBlock88Arg1.
            recoveredBlock88PC := 126.
        ].
        recoveredBlock88Step = 126 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) simNode.
            recoveredBlock88PC := 128.
        ].
        recoveredBlock88Step = 128 ifTrue: [
            recoveredBlock88Stack2 := (recoveredBlock88Stack2) label.
            recoveredBlock88PC := 130.
        ].
        recoveredBlock88Step = 130 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) , (recoveredBlock88Stack2).
            recoveredBlock88PC := 132.
        ].
        recoveredBlock88Step = 132 ifTrue: [
            recoveredBlock88Local1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 135.
        ].
        recoveredBlock88Step = 135 ifTrue: [
            recoveredBlock88Stack1 := recoveredBlock88Arg1.
            recoveredBlock88PC := 138.
        ].
        recoveredBlock88Step = 138 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) event.
            recoveredBlock88PC := 140.
        ].
        recoveredBlock88Step = 140 ifTrue: [
            recoveredBlock88Stack2 := [:recoveredBlock88Block140Arg1 | 
    | recoveredBlock88Block140Value0 recoveredBlock88Block140Value1 recoveredBlock88Block140Value2 recoveredBlock88Block140Value3 |
    recoveredBlock88Block140Value0 := recoveredBlock88Block140Arg1.
    recoveredBlock88Block140Value1 := (recoveredBlock88Block140Value0) eventName.
    recoveredBlock88Block140Value2 := recoveredBlock88Local1.
    recoveredBlock88Block140Value3 := (recoveredBlock88Block140Value1) = (recoveredBlock88Block140Value2).
    recoveredBlock88Block140Value3
].
            recoveredBlock88PC := 154.
        ].
        recoveredBlock88Step = 154 ifTrue: [
            recoveredBlock88Stack3 := [].
            recoveredBlock88PC := 156.
        ].
        recoveredBlock88Step = 156 ifTrue: [
            recoveredBlock88Stack1 := (recoveredBlock88Stack1) detect: (recoveredBlock88Stack2) ifNone: (recoveredBlock88Stack3).
            recoveredBlock88PC := 158.
        ].
        recoveredBlock88Step = 158 ifTrue: [
            recoveredLocal1 := recoveredBlock88Stack1.
            recoveredBlock88PC := 161.
        ].
        recoveredBlock88Step = 161 ifTrue: [
            recoveredBlock88Stack1 := nil.
            recoveredBlock88PC := 162.
        ].
        recoveredBlock88Step = 162 ifTrue: [
            recoveredBlock88Stack2 := recoveredLocal1.
            recoveredBlock88PC := 165.
        ].
        recoveredBlock88Step = 165 ifTrue: [
            (recoveredBlock88Stack2 == nil) ifTrue: [recoveredBlock88PC := 173] ifFalse: [recoveredBlock88PC := 168].
        ].
        recoveredBlock88Step = 168 ifTrue: [
            recoveredBlock88PC := 169.
        ].
        recoveredBlock88Step = 169 ifTrue: [
            recoveredBlock88Stack1 := recoveredLocal1.
            recoveredBlock88PC := 172.
        ].
        recoveredBlock88Step = 172 ifTrue: [
            ^recoveredBlock88Stack1
        ].
        recoveredBlock88Step = 173 ifTrue: [
            recoveredBlock88Result := recoveredBlock88Stack1.
            recoveredBlock88Done := true.
        ].
    ].
    recoveredBlock88Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205eaf3c; bytecode file offset 0xee7918"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
simStartInit
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeEvents.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) eventName.
    recoveredBlock12Value2 := recoveredLocal3.
    recoveredBlock12Value3 := (recoveredBlock12Value2) class.
    recoveredBlock12Value4 := (recoveredBlock12Value3) callLabel.
    recoveredBlock12Value5 := (recoveredBlock12Value1) = (recoveredBlock12Value4).
    recoveredBlock12Value5
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ASDDialogOptions.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'StartOfflineSimulation'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDialogDisabled: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Event Generator has no event to activate your code!!\Continue without any active event or open Event Generator to configure events?'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'StartOfflineSimulation'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'YESNOCANCEL'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := #('Continue' 'Open Editor' 'Cancel').
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) buttonText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) simEnd.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) activateOpenEventGenerator.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 'EHI15158'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSignalledChannels.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'Data Generator has no signal item defined for channel(s) with signalled mode.'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:block2811b294Arg1 | 
    | block2811b294Local1 block2811b294Local2 block2811b294Stack0 block2811b294Stack1 block2811b294Stack2 block2811b294Stack3 block2811b294Stack4 block2811b294PC block2811b294Step block2811b294Done block2811b294Result |
    block2811b294Stack0 := self.
    block2811b294PC := 4.
    block2811b294Done := false.
    [block2811b294Done not] whileTrue: [
        block2811b294Step := block2811b294PC.
        block2811b294Step = 4 ifTrue: [
            block2811b294Stack1 := nil.
            block2811b294PC := 5.
        ].
        block2811b294Step = 5 ifTrue: [
            block2811b294Stack2 := block2811b294Arg1.
            block2811b294PC := 6.
        ].
        block2811b294Step = 6 ifTrue: [
            block2811b294Stack2 := (block2811b294Stack2) isMDFFormat.
            block2811b294PC := 8.
        ].
        block2811b294Step = 8 ifTrue: [
            (block2811b294Stack2) ifTrue: [block2811b294PC := 12] ifFalse: [block2811b294PC := 79].
        ].
        block2811b294Step = 12 ifTrue: [
            block2811b294Stack2 := block2811b294Arg1.
            block2811b294PC := 13.
        ].
        block2811b294Step = 13 ifTrue: [
            block2811b294Stack2 := (block2811b294Stack2) fileObject.
            block2811b294PC := 15.
        ].
        block2811b294Step = 15 ifTrue: [
            block2811b294Stack2 := (block2811b294Stack2) unsupportedFormatVersion.
            block2811b294PC := 17.
        ].
        block2811b294Step = 17 ifTrue: [
            (block2811b294Stack2) ifTrue: [block2811b294PC := 20] ifFalse: [block2811b294PC := 79].
        ].
        block2811b294Step = 20 ifTrue: [
            block2811b294PC := 21.
        ].
        block2811b294Step = 21 ifTrue: [
            block2811b294Stack1 := block2811b294Arg1.
            block2811b294PC := 22.
        ].
        block2811b294Step = 22 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) fileObject.
            block2811b294PC := 24.
        ].
        block2811b294Step = 24 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) formatVersionString.
            block2811b294PC := 26.
        ].
        block2811b294Step = 26 ifTrue: [
            block2811b294Local1 := block2811b294Stack1.
            block2811b294PC := 27.
        ].
        block2811b294Step = 27 ifTrue: [
            block2811b294Stack1 := SGMonitorStreamDummy.
            block2811b294PC := 29.
        ].
        block2811b294Step = 29 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) create.
            block2811b294PC := 31.
        ].
        block2811b294Step = 31 ifTrue: [
            block2811b294Stack2 := '\Simulation using MDF data with version %1 running.\ASCET supports MDF V2.0 only.\Not all signal attributes/features will be supported.\'.
            block2811b294PC := 33.
        ].
        block2811b294Step = 33 ifTrue: [
            block2811b294Stack2 := (block2811b294Stack2) withCrs.
            block2811b294PC := 35.
        ].
        block2811b294Step = 35 ifTrue: [
            block2811b294Stack3 := block2811b294Local1.
            block2811b294PC := 36.
        ].
        block2811b294Step = 36 ifTrue: [
            block2811b294Stack2 := (block2811b294Stack2) bindWith: (block2811b294Stack3).
            block2811b294PC := 38.
        ].
        block2811b294Step = 38 ifTrue: [
            (block2811b294Stack1) addText: (block2811b294Stack2).
            block2811b294PC := 40.
        ].
        block2811b294Step = 40 ifTrue: [
            block2811b294Stack1 := 'You are running a simulation using MDF data with version %1.\ASCET supports MDF V2.0 only.\Not all signal attributes/features might be supported.'.
            block2811b294PC := 42.
        ].
        block2811b294Step = 42 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) withCrs.
            block2811b294PC := 44.
        ].
        block2811b294Step = 44 ifTrue: [
            block2811b294Stack2 := block2811b294Local1.
            block2811b294PC := 45.
        ].
        block2811b294Step = 45 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) bindWith: (block2811b294Stack2).
            block2811b294PC := 47.
        ].
        block2811b294Step = 47 ifTrue: [
            block2811b294Local2 := block2811b294Stack1.
            block2811b294PC := 48.
        ].
        block2811b294Step = 48 ifTrue: [
            block2811b294Stack1 := EtasUserHint.
            block2811b294PC := 50.
        ].
        block2811b294Step = 50 ifTrue: [
            block2811b294Stack2 := block2811b294Local2.
            block2811b294PC := 51.
        ].
        block2811b294Step = 51 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) message: (block2811b294Stack2).
            block2811b294PC := 53.
        ].
        block2811b294Step = 53 ifTrue: [
            block2811b294Stack2 := block2811b294Stack1.
            block2811b294PC := 54.
        ].
        block2811b294Step = 54 ifTrue: [
            block2811b294Stack3 := 'ASDExperimentWithMDFNewerThan200'.
            block2811b294PC := 56.
        ].
        block2811b294Step = 56 ifTrue: [
            (block2811b294Stack2) prompterID: (block2811b294Stack3).
            block2811b294Stack2 := block2811b294Stack1.
            block2811b294PC := 59.
        ].
        block2811b294Step = 59 ifTrue: [
            block2811b294Stack3 := 'OK'.
            block2811b294PC := 61.
        ].
        block2811b294Step = 61 ifTrue: [
            (block2811b294Stack2) buttonStyle: (block2811b294Stack3).
            block2811b294Stack2 := block2811b294Stack1.
            block2811b294PC := 64.
        ].
        block2811b294Step = 64 ifTrue: [
            block2811b294Stack3 := 'DONTSHOWHINTAGAIN'.
            block2811b294PC := 66.
        ].
        block2811b294Step = 66 ifTrue: [
            (block2811b294Stack2) nextTimeButtonText: (block2811b294Stack3).
            block2811b294Stack2 := block2811b294Stack1.
            block2811b294PC := 69.
        ].
        block2811b294Step = 69 ifTrue: [
            block2811b294Stack3 := 'info'.
            block2811b294PC := 71.
        ].
        block2811b294Step = 71 ifTrue: [
            (block2811b294Stack2) type: (block2811b294Stack3).
            block2811b294PC := 73.
        ].
        block2811b294Step = 73 ifTrue: [
            block2811b294Stack1 := (block2811b294Stack1) prompt.
            block2811b294PC := 75.
        ].
        block2811b294Step = 75 ifTrue: [
            block2811b294Stack2 := nil.
            block2811b294PC := 76.
        ].
        block2811b294Step = 76 ifTrue: [
            block2811b294Stack3 := block2811b294Stack2.
            block2811b294PC := 77.
        ].
        block2811b294Step = 77 ifTrue: [
            block2811b294Local2 := block2811b294Stack3.
            block2811b294PC := 78.
        ].
        block2811b294Step = 78 ifTrue: [
            block2811b294Local1 := block2811b294Stack2.
            block2811b294PC := 79.
        ].
        block2811b294Step = 79 ifTrue: [
            block2811b294Result := block2811b294Stack1.
            block2811b294Done := true.
        ].
    ].
    block2811b294Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) unmappedSignalledChannels.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 369].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 'Beautification'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 'The data generator contains channels with unmapped signal sources:'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := [:recoveredBlock296Arg1 :recoveredBlock296Arg2 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 recoveredBlock296Value2 recoveredBlock296Value3 recoveredBlock296Value4 recoveredBlock296Value5 recoveredBlock296Value6 |
    recoveredBlock296Value0 := recoveredLocal1.
    recoveredBlock296Value1 := recoveredBlock296Value0.
    recoveredBlock296Value2 := recoveredBlock296Arg1.
    recoveredBlock296Value3 := recoveredBlock296Arg2.
    recoveredBlock296Value4 := (recoveredBlock296Value3) matrixID.
    recoveredBlock296Value5 := ('- %1 (%2)') bindWith: (recoveredBlock296Value2) with: (recoveredBlock296Value4).
    (recoveredBlock296Value1) nextPutAll: (recoveredBlock296Value5).
    recoveredBlock296Value6 := (recoveredBlock296Value0) cr.
    recoveredBlock296Value6
].
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 'Stimulation will continue without these channels.'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureSystemC.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) startAcquisitionExternTrigger.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulator.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) addDependent: (recoveredStack1).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack0) simStartInit.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064419c; bytecode file offset 0xf40bb0"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
writeDAMOSElements: recoveredArg1 forSpecification: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'selectedOnlyFlag'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'includeParametersFlag'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'includeNonVolatilesFlag'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'filePathName'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [
    'damos.dcm'
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'File: '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionDamosOutputLogFile.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := (recoveredStack4) asFilename.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := 'Date: '.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := Date.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) today.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := 'Time: '.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := Time.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) now.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := 'File Out for Experiment: '.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := (recoveredStack4) getTopClass.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := 'Only selected elements:  '.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := 'Include parameters:      '.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := 'Include NV-variables:    '.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := 'Store in file:           '.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElements.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'There are no elements to file out. The specified data exchange file was not created.'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 604.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElements.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := [:recoveredBlock289Arg1 | 
    | recoveredBlock289Local1 recoveredBlock289Value0 recoveredBlock289Value1 recoveredBlock289Value2 recoveredBlock289Value3 recoveredBlock289Value4 recoveredBlock289Value5 recoveredBlock289Value6 recoveredBlock289Value7 recoveredBlock289Value8 recoveredBlock289Value9 |
    recoveredBlock289Value0 := recoveredArg1.
    recoveredBlock289Value1 := (recoveredBlock289Value0) dataElements.
    recoveredBlock289Value2 := recoveredBlock289Arg1.
    recoveredBlock289Value3 := (recoveredBlock289Value1) at: (recoveredBlock289Value2).
    recoveredBlock289Value4 := (recoveredBlock289Value3) duplicateWithNilAccess.
    recoveredBlock289Local1 := recoveredBlock289Value4.
    recoveredBlock289Value5 := recoveredBlock289Local1.
    recoveredBlock289Value6 := recoveredBlock289Arg1.
    (recoveredBlock289Value5) name: (recoveredBlock289Value6).
    recoveredBlock289Value7 := recoveredLocal1.
    recoveredBlock289Value8 := recoveredBlock289Local1.
    recoveredBlock289Value9 := (recoveredBlock289Value7) add: (recoveredBlock289Value8).
    recoveredBlock289Value9
].
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := 'Call_58067'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := 'Could not open file %1. System reports error %2'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := 'Writing Damos'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredPC := 596.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack3 := '* DAMOS format'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := '* Created by ASCET'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := '* Creation date: '.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack4 := Date.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack4 := (recoveredStack4) today.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack4 := Time.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack4 := (recoveredStack4) now.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := '*'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := SGDAMOSCWriterTB.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOn: (recoveredStack2).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) writeDCF: (recoveredStack2) with: (recoveredStack3) onStream: (recoveredStack4).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack3 := 'Exported elements: '.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := [:recoveredBlock504Arg1 | 
    | recoveredBlock504Value0 recoveredBlock504Value1 recoveredBlock504Value2 recoveredBlock504Value3 recoveredBlock504Value4 |
    recoveredBlock504Value0 := recoveredLocal4.
    recoveredBlock504Value1 := recoveredBlock504Value0.
    recoveredBlock504Value2 := recoveredBlock504Arg1.
    recoveredBlock504Value3 := (recoveredBlock504Value2) wName.
    (recoveredBlock504Value1) nextPutAll: (recoveredBlock504Value3).
    recoveredBlock504Value4 := (recoveredBlock504Value0) cr.
    recoveredBlock504Value4
].
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignoredParameterVariables.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 548] ifFalse: [recoveredPC := 596].
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := 'Not exported (ignored) parameters : '.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := [:recoveredBlock574Arg1 | 
    | recoveredBlock574Value0 recoveredBlock574Value1 recoveredBlock574Value2 recoveredBlock574Value3 recoveredBlock574Value4 |
    recoveredBlock574Value0 := recoveredLocal4.
    recoveredBlock574Value1 := recoveredBlock574Value0.
    recoveredBlock574Value2 := recoveredBlock574Arg1.
    recoveredBlock574Value3 := (recoveredBlock574Value2) wName.
    (recoveredBlock574Value1) nextPutAll: (recoveredBlock574Value3).
    recoveredBlock574Value4 := (recoveredBlock574Value0) cr.
    recoveredBlock574Value4
].
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := 'done'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := 'Call_58457'.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDamosOutputLogFile.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 668] ifFalse: [recoveredPC := 696].
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := 'Could not open out log file <'.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionDamosOutputLogFile.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFilename.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack3 := '> !!'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredPC := 717.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066448c; bytecode file offset 0xf60eec"
!SGSimEnvironmentMainCtrl methodsFor: 'recovered'!
readDAMOSElements: recoveredArg1 forSpecification: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'selectedOnlyFlag'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'includeParametersFlag'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'includeNonVolatilesFlag'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := [
    false
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'filePathName'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [
    'damos.dcm'
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 'File: '.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) optionDamosInputLogFile.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := (recoveredStack4) asFilename.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 'Date: '.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := Date.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) today.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 'Time: '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := Time.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := (recoveredStack4) now.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := 'File In for Experiment: '.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := (recoveredStack4) getTopClass.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := 'Only selected elements:  '.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := 'Include parameters:      '.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := 'Include NV-variables:    '.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := recoveredLocal11.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := 'Read from file:          '.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 'EHI2007401591'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 842].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 'Call_2007402817'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := SGDAMOSCReaderTB.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := SGDAMOSCFileInOutTB.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := ASCETSD.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOn: (recoveredStack3).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOn: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) readParseAllParametersFromFile: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := 'There are no elements to file in. The specified data exchange file seems to be empty.'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 831.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := 'EHI_72777'.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsWithMonotonyViolation: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 376] ifFalse: [recoveredPC := 486].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := 'Monotony violation has occured during File In.'.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformLineDelimiter.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := 'File in aborted. See input Log file<'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDamosInputLogFile.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := '> for further details'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := 'Monotony violation has occured during File In. Operation aborted.'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := 'Monotonic violation has occured in the foll. elements'.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := [:recoveredBlock453Arg1 | 
    | recoveredBlock453Value0 recoveredBlock453Value1 recoveredBlock453Value2 recoveredBlock453Value3 recoveredBlock453Value4 |
    recoveredBlock453Value0 := recoveredLocal7.
    recoveredBlock453Value1 := recoveredBlock453Value0.
    recoveredBlock453Value2 := recoveredBlock453Arg1.
    recoveredBlock453Value3 := (recoveredBlock453Value2) name.
    (recoveredBlock453Value1) nextPutAll: (recoveredBlock453Value3).
    recoveredBlock453Value4 := (recoveredBlock453Value0) cr.
    recoveredBlock453Value4
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredPC := 821.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) dpManager.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock507Local1 recoveredBlock507Local2 recoveredBlock507Local3 recoveredBlock507Local4 recoveredBlock507Local5 recoveredBlock507Stack0 recoveredBlock507Stack1 recoveredBlock507Stack2 recoveredBlock507Stack3 recoveredBlock507PC recoveredBlock507Step recoveredBlock507Done recoveredBlock507Result |
    recoveredBlock507Stack0 := self.
    recoveredBlock507PC := 514.
    recoveredBlock507Done := false.
    [recoveredBlock507Done not] whileTrue: [
        recoveredBlock507Step := recoveredBlock507PC.
        recoveredBlock507Step = 514 ifTrue: [
            recoveredBlock507Stack1 := 'Kk'.
            recoveredBlock507PC := 516.
        ].
        recoveredBlock507Step = 516 ifTrue: [
            recoveredBlock507Stack2 := 'Call_2007402817'.
            recoveredBlock507PC := 518.
        ].
        recoveredBlock507Step = 518 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) == (recoveredBlock507Stack2).
            recoveredBlock507PC := 519.
        ].
        recoveredBlock507Step = 519 ifTrue: [
            recoveredBlock507PC := 520.
        ].
        recoveredBlock507Step = 520 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal3.
            recoveredBlock507PC := 523.
        ].
        recoveredBlock507Step = 523 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) manager.
            recoveredBlock507PC := 527.
        ].
        recoveredBlock507Step = 527 ifTrue: [
            (recoveredBlock507Stack1) popupDialogForNotMatchedParameters.
            recoveredBlock507PC := 531.
        ].
        recoveredBlock507Step = 531 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal3.
            recoveredBlock507PC := 534.
        ].
        recoveredBlock507Step = 534 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) manager.
            recoveredBlock507PC := 539.
        ].
        recoveredBlock507Step = 539 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) parseErrorStream.
            recoveredBlock507PC := 543.
        ].
        recoveredBlock507Step = 543 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) contents.
            recoveredBlock507PC := 545.
        ].
        recoveredBlock507Step = 545 ifTrue: [
            recoveredBlock507Local1 := recoveredBlock507Stack1.
            recoveredBlock507PC := 548.
        ].
        recoveredBlock507Step = 548 ifTrue: [
            recoveredBlock507Stack1 := recoveredBlock507Local1.
            recoveredBlock507PC := 551.
        ].
        recoveredBlock507Step = 551 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) notEmpty.
            recoveredBlock507PC := 555.
        ].
        recoveredBlock507Step = 555 ifTrue: [
            (recoveredBlock507Stack1) ifTrue: [recoveredBlock507PC := 558] ifFalse: [recoveredBlock507PC := 572].
        ].
        recoveredBlock507Step = 558 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal7.
            recoveredBlock507PC := 561.
        ].
        recoveredBlock507Step = 561 ifTrue: [
            recoveredBlock507Stack2 := recoveredBlock507Stack1.
            recoveredBlock507PC := 562.
        ].
        recoveredBlock507Step = 562 ifTrue: [
            (recoveredBlock507Stack2) cr.
            recoveredBlock507Stack2 := recoveredBlock507Stack1.
            recoveredBlock507PC := 565.
        ].
        recoveredBlock507Step = 565 ifTrue: [
            (recoveredBlock507Stack2) cr.
            recoveredBlock507PC := 567.
        ].
        recoveredBlock507Step = 567 ifTrue: [
            recoveredBlock507Stack2 := recoveredBlock507Local1.
            recoveredBlock507PC := 570.
        ].
        recoveredBlock507Step = 570 ifTrue: [
            (recoveredBlock507Stack1) nextPutAll: (recoveredBlock507Stack2).
            recoveredBlock507PC := 572.
        ].
        recoveredBlock507Step = 572 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal9.
            recoveredBlock507PC := 575.
        ].
        recoveredBlock507Step = 575 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) optionDamosCaseSensitiveNames.
            recoveredBlock507PC := 579.
        ].
        recoveredBlock507Step = 579 ifTrue: [
            recoveredBlock507Local3 := recoveredBlock507Stack1.
            recoveredBlock507PC := 582.
        ].
        recoveredBlock507Step = 582 ifTrue: [
            recoveredBlock507Stack1 := recoveredArg1.
            recoveredBlock507PC := 585.
        ].
        recoveredBlock507Step = 585 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) dataElements.
            recoveredBlock507PC := 589.
        ].
        recoveredBlock507Step = 589 ifTrue: [
            recoveredBlock507Local5 := recoveredBlock507Stack1.
            recoveredBlock507PC := 592.
        ].
        recoveredBlock507Step = 592 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal4.
            recoveredBlock507PC := 595.
        ].
        recoveredBlock507Step = 595 ifTrue: [
            recoveredBlock507Stack2 := [:recoveredBlock507Block595Arg1 | 
    | recoveredBlock507Block595Stack0 recoveredBlock507Block595Stack1 recoveredBlock507Block595Stack2 recoveredBlock507Block595Stack3 recoveredBlock507Block595Stack4 recoveredBlock507Block595Stack5 recoveredBlock507Block595PC recoveredBlock507Block595Step recoveredBlock507Block595Done recoveredBlock507Block595Result |
    recoveredBlock507Block595Stack0 := nil.
    recoveredBlock507Block595PC := 602.
    recoveredBlock507Block595Done := false.
    [recoveredBlock507Block595Done not] whileTrue: [
        recoveredBlock507Block595Step := recoveredBlock507Block595PC.
        recoveredBlock507Block595Step = 602 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 603.
        ].
        recoveredBlock507Block595Step = 603 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) dmName.
            recoveredBlock507Block595PC := 607.
        ].
        recoveredBlock507Block595Step = 607 ifTrue: [
            recoveredBlock507Local2 := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595PC := 610.
        ].
        recoveredBlock507Block595Step = 610 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredBlock507Local5.
            recoveredBlock507Block595PC := 613.
        ].
        recoveredBlock507Block595Step = 613 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Local3.
            recoveredBlock507Block595PC := 616.
        ].
        recoveredBlock507Block595Step = 616 ifTrue: [
            (recoveredBlock507Block595Stack2) ifTrue: [recoveredBlock507Block595PC := 620] ifFalse: [recoveredBlock507Block595PC := 626].
        ].
        recoveredBlock507Block595Step = 620 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Local2.
            recoveredBlock507Block595PC := 623.
        ].
        recoveredBlock507Block595Step = 623 ifTrue: [
            recoveredBlock507Block595PC := 633.
        ].
        recoveredBlock507Block595Step = 626 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Local2.
            recoveredBlock507Block595PC := 629.
        ].
        recoveredBlock507Block595Step = 629 ifTrue: [
            recoveredBlock507Block595Stack2 := (recoveredBlock507Block595Stack2) asUppercase.
            recoveredBlock507Block595PC := 633.
        ].
        recoveredBlock507Block595Step = 633 ifTrue: [
            recoveredBlock507Block595Stack3 := [].
            recoveredBlock507Block595PC := 636.
        ].
        recoveredBlock507Block595Step = 636 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) at: (recoveredBlock507Block595Stack2) ifAbsent: (recoveredBlock507Block595Stack3).
            recoveredBlock507Block595PC := 638.
        ].
        recoveredBlock507Block595Step = 638 ifTrue: [
            recoveredBlock507Local4 := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595PC := 641.
        ].
        recoveredBlock507Block595Step = 641 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredBlock507Local4.
            recoveredBlock507Block595PC := 644.
        ].
        recoveredBlock507Block595Step = 644 ifTrue: [
            (recoveredBlock507Block595Stack1 == nil) ifTrue: [recoveredBlock507Block595PC := 736] ifFalse: [recoveredBlock507Block595PC := 648].
        ].
        recoveredBlock507Block595Step = 648 ifTrue: [
            recoveredBlock507Block595Stack1 := 'Kk'.
            recoveredBlock507Block595PC := 650.
        ].
        recoveredBlock507Block595Step = 650 ifTrue: [
            recoveredBlock507Block595Stack2 := 'Call_71590'.
            recoveredBlock507Block595PC := 654.
        ].
        recoveredBlock507Block595Step = 654 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) == (recoveredBlock507Block595Stack2).
            recoveredBlock507Block595PC := 655.
        ].
        recoveredBlock507Block595Step = 655 ifTrue: [
            recoveredBlock507Block595PC := 656.
        ].
        recoveredBlock507Block595Step = 656 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredBlock507Local4.
            recoveredBlock507Block595PC := 659.
        ].
        recoveredBlock507Block595Step = 659 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 660.
        ].
        recoveredBlock507Block595Step = 660 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) hasCompatibleTypeWith: (recoveredBlock507Block595Stack2).
            recoveredBlock507Block595PC := 665.
        ].
        recoveredBlock507Block595Step = 665 ifTrue: [
            (recoveredBlock507Block595Stack1) ifTrue: [recoveredBlock507Block595PC := 668] ifFalse: [recoveredBlock507Block595PC := 714].
        ].
        recoveredBlock507Block595Step = 668 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredLocal7.
            recoveredBlock507Block595PC := 671.
        ].
        recoveredBlock507Block595Step = 671 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595PC := 672.
        ].
        recoveredBlock507Block595Step = 672 ifTrue: [
            recoveredBlock507Block595Stack3 := 'Update Parameter '.
            recoveredBlock507Block595PC := 676.
        ].
        recoveredBlock507Block595Step = 676 ifTrue: [
            recoveredBlock507Block595Stack4 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 677.
        ].
        recoveredBlock507Block595Step = 677 ifTrue: [
            recoveredBlock507Block595Stack4 := (recoveredBlock507Block595Stack4) wName.
            recoveredBlock507Block595PC := 681.
        ].
        recoveredBlock507Block595Step = 681 ifTrue: [
            recoveredBlock507Block595Stack3 := (recoveredBlock507Block595Stack3) , (recoveredBlock507Block595Stack4).
            recoveredBlock507Block595PC := 683.
        ].
        recoveredBlock507Block595Step = 683 ifTrue: [
            recoveredBlock507Block595Stack4 := ' on Target... '.
            recoveredBlock507Block595PC := 686.
        ].
        recoveredBlock507Block595Step = 686 ifTrue: [
            recoveredBlock507Block595Stack3 := (recoveredBlock507Block595Stack3) , (recoveredBlock507Block595Stack4).
            recoveredBlock507Block595PC := 688.
        ].
        recoveredBlock507Block595Step = 688 ifTrue: [
            (recoveredBlock507Block595Stack2) nextPutAll: (recoveredBlock507Block595Stack3).
            recoveredBlock507Block595PC := 690.
        ].
        recoveredBlock507Block595Step = 690 ifTrue: [
            (recoveredBlock507Block595Stack1) cr.
            recoveredBlock507Block595PC := 692.
        ].
        recoveredBlock507Block595Step = 692 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredBlock507Local4.
            recoveredBlock507Block595PC := 695.
        ].
        recoveredBlock507Block595Step = 695 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 696.
        ].
        recoveredBlock507Block595Step = 696 ifTrue: [
            (recoveredBlock507Block595Stack1) updateWithDataElement: (recoveredBlock507Block595Stack2).
            recoveredBlock507Block595PC := 701.
        ].
        recoveredBlock507Block595Step = 701 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredLocal1.
            recoveredBlock507Block595PC := 704.
        ].
        recoveredBlock507Block595Step = 704 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Local4.
            recoveredBlock507Block595PC := 707.
        ].
        recoveredBlock507Block595Step = 707 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) add: (recoveredBlock507Block595Stack2).
            recoveredBlock507Block595PC := 711.
        ].
        recoveredBlock507Block595Step = 711 ifTrue: [
            recoveredBlock507Block595PC := 733.
        ].
        recoveredBlock507Block595Step = 714 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredLocal7.
            recoveredBlock507Block595PC := 717.
        ].
        recoveredBlock507Block595Step = 717 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595PC := 718.
        ].
        recoveredBlock507Block595Step = 718 ifTrue: [
            recoveredBlock507Block595Stack3 := 'Incompatible Parameter '.
            recoveredBlock507Block595PC := 722.
        ].
        recoveredBlock507Block595Step = 722 ifTrue: [
            recoveredBlock507Block595Stack4 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 723.
        ].
        recoveredBlock507Block595Step = 723 ifTrue: [
            recoveredBlock507Block595Stack4 := (recoveredBlock507Block595Stack4) wName.
            recoveredBlock507Block595PC := 727.
        ].
        recoveredBlock507Block595Step = 727 ifTrue: [
            recoveredBlock507Block595Stack3 := (recoveredBlock507Block595Stack3) , (recoveredBlock507Block595Stack4).
            recoveredBlock507Block595PC := 729.
        ].
        recoveredBlock507Block595Step = 729 ifTrue: [
            (recoveredBlock507Block595Stack2) nextPutAll: (recoveredBlock507Block595Stack3).
            recoveredBlock507Block595PC := 731.
        ].
        recoveredBlock507Block595Step = 731 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) cr.
            recoveredBlock507Block595PC := 733.
        ].
        recoveredBlock507Block595Step = 733 ifTrue: [
            recoveredBlock507Block595PC := 763.
        ].
        recoveredBlock507Block595Step = 736 ifTrue: [
            recoveredBlock507Block595Stack1 := 'Kk'.
            recoveredBlock507Block595PC := 738.
        ].
        recoveredBlock507Block595Step = 738 ifTrue: [
            recoveredBlock507Block595Stack2 := 'Call_69939'.
            recoveredBlock507Block595PC := 742.
        ].
        recoveredBlock507Block595Step = 742 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) == (recoveredBlock507Block595Stack2).
            recoveredBlock507Block595PC := 743.
        ].
        recoveredBlock507Block595Step = 743 ifTrue: [
            recoveredBlock507Block595PC := 744.
        ].
        recoveredBlock507Block595Step = 744 ifTrue: [
            recoveredBlock507Block595Stack1 := recoveredLocal7.
            recoveredBlock507Block595PC := 747.
        ].
        recoveredBlock507Block595Step = 747 ifTrue: [
            recoveredBlock507Block595Stack2 := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595PC := 748.
        ].
        recoveredBlock507Block595Step = 748 ifTrue: [
            recoveredBlock507Block595Stack3 := 'Ignore Parameter '.
            recoveredBlock507Block595PC := 752.
        ].
        recoveredBlock507Block595Step = 752 ifTrue: [
            recoveredBlock507Block595Stack4 := recoveredBlock507Block595Arg1.
            recoveredBlock507Block595PC := 753.
        ].
        recoveredBlock507Block595Step = 753 ifTrue: [
            recoveredBlock507Block595Stack4 := (recoveredBlock507Block595Stack4) wName.
            recoveredBlock507Block595PC := 757.
        ].
        recoveredBlock507Block595Step = 757 ifTrue: [
            recoveredBlock507Block595Stack3 := (recoveredBlock507Block595Stack3) , (recoveredBlock507Block595Stack4).
            recoveredBlock507Block595PC := 759.
        ].
        recoveredBlock507Block595Step = 759 ifTrue: [
            (recoveredBlock507Block595Stack2) nextPutAll: (recoveredBlock507Block595Stack3).
            recoveredBlock507Block595PC := 761.
        ].
        recoveredBlock507Block595Step = 761 ifTrue: [
            recoveredBlock507Block595Stack1 := (recoveredBlock507Block595Stack1) cr.
            recoveredBlock507Block595PC := 763.
        ].
        recoveredBlock507Block595Step = 763 ifTrue: [
            recoveredBlock507Block595Result := recoveredBlock507Block595Stack1.
            recoveredBlock507Block595Done := true.
        ].
    ].
    recoveredBlock507Block595Result
].
            recoveredBlock507PC := 764.
        ].
        recoveredBlock507Step = 764 ifTrue: [
            (recoveredBlock507Stack1) do: (recoveredBlock507Stack2).
            recoveredBlock507PC := 769.
        ].
        recoveredBlock507Step = 769 ifTrue: [
            recoveredBlock507Stack1 := recoveredLocal1.
            recoveredBlock507PC := 772.
        ].
        recoveredBlock507Step = 772 ifTrue: [
            recoveredBlock507Stack2 := [:recoveredBlock507Block772Arg1 | 
    | recoveredBlock507Block772Stack0 recoveredBlock507Block772Stack1 recoveredBlock507Block772Stack2 recoveredBlock507Block772Stack3 recoveredBlock507Block772Stack4 recoveredBlock507Block772PC recoveredBlock507Block772Step recoveredBlock507Block772Done recoveredBlock507Block772Result |
    recoveredBlock507Block772Stack0 := self.
    recoveredBlock507Block772PC := 778.
    recoveredBlock507Block772Done := false.
    [recoveredBlock507Block772Done not] whileTrue: [
        recoveredBlock507Block772Step := recoveredBlock507Block772PC.
        recoveredBlock507Block772Step = 778 ifTrue: [
            recoveredBlock507Block772Stack1 := nil.
            recoveredBlock507Block772PC := 779.
        ].
        recoveredBlock507Block772Step = 779 ifTrue: [
            recoveredBlock507Block772Stack2 := recoveredBlock507Block772Arg1.
            recoveredBlock507Block772PC := 780.
        ].
        recoveredBlock507Block772Step = 780 ifTrue: [
            recoveredBlock507Block772Stack2 := (recoveredBlock507Block772Stack2) isDependentParam.
            recoveredBlock507Block772PC := 785.
        ].
        recoveredBlock507Block772Step = 785 ifTrue: [
            (recoveredBlock507Block772Stack2) ifTrue: [recoveredBlock507Block772PC := 805] ifFalse: [recoveredBlock507Block772PC := 788].
        ].
        recoveredBlock507Block772Step = 788 ifTrue: [
            recoveredBlock507Block772PC := 789.
        ].
        recoveredBlock507Block772Step = 789 ifTrue: [
            recoveredBlock507Block772Stack1 := self.
            recoveredBlock507Block772PC := 790.
        ].
        recoveredBlock507Block772Step = 790 ifTrue: [
            recoveredBlock507Block772Stack1 := (recoveredBlock507Block772Stack1) simEnvironment.
            recoveredBlock507Block772PC := 795.
        ].
        recoveredBlock507Block772Step = 795 ifTrue: [
            recoveredBlock507Block772Stack1 := (recoveredBlock507Block772Stack1) dpManager.
            recoveredBlock507Block772PC := 799.
        ].
        recoveredBlock507Block772Step = 799 ifTrue: [
            recoveredBlock507Block772Stack2 := recoveredBlock507Block772Arg1.
            recoveredBlock507Block772PC := 800.
        ].
        recoveredBlock507Block772Step = 800 ifTrue: [
            recoveredBlock507Block772Stack3 := nil.
            recoveredBlock507Block772PC := 801.
        ].
        recoveredBlock507Block772Step = 801 ifTrue: [
            recoveredBlock507Block772Stack1 := (recoveredBlock507Block772Stack1) evaluateValuesOfDependentParametersInfluencedBy: (recoveredBlock507Block772Stack2) experimentView: (recoveredBlock507Block772Stack3).
            recoveredBlock507Block772PC := 805.
        ].
        recoveredBlock507Block772Step = 805 ifTrue: [
            recoveredBlock507Block772Result := recoveredBlock507Block772Stack1.
            recoveredBlock507Block772Done := true.
        ].
    ].
    recoveredBlock507Block772Result
].
            recoveredBlock507PC := 806.
        ].
        recoveredBlock507Step = 806 ifTrue: [
            recoveredBlock507Stack1 := (recoveredBlock507Stack1) do: (recoveredBlock507Stack2).
            recoveredBlock507PC := 811.
        ].
        recoveredBlock507Step = 811 ifTrue: [
            recoveredBlock507Result := recoveredBlock507Stack1.
            recoveredBlock507Done := true.
        ].
    ].
    recoveredBlock507Result
].
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            (recoveredStack1) suppressUpdatesWhile: (recoveredStack2).
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack1) updateCalibrationViewsForNewData.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredPC := 873.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack1 := 'The specified file does not exist. Please choose an existing file.'.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack3 := 'done'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack2 := 'EHI2007401591'.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            (recoveredStack1) newline.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            recoveredStack2 := 'Call_58457'.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDamosInputLogFile.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAppend: (recoveredStack2).
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 954] ifFalse: [recoveredPC := 982].
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack2 := 'Could not open in log file <'.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack3 := (recoveredStack3) optionDamosInputLogFile.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFilename.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack3 := '> !!'.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredPC := 1015.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack2 := 'EHI2007401591'.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

