"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c9a4; bytecode file offset 0x909658"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isSignedType: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000d2ac; bytecode file offset 0x909e08"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
putConfigurationObject: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d5b4; bytecode file offset 0x90a4b8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
measureDataAt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d5fc; bytecode file offset 0x90a4b8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkWhichDatasCanBeAdded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20031bc4; bytecode file offset 0x934580"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
ticksPerSecond
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interfaceManager.
    recoveredValue1 := (recoveredValue0) ticksPerSecond.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038760; bytecode file offset 0x935c54"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
configAcquisitionInDevice: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) configAcquisition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038ea4; bytecode file offset 0x935c54"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
mustRemoveMeasureDataFromDevice: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isActiveInDevice.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038f70; bytecode file offset 0x935c54"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
defaultWPAcquiLevelFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) defaultWPAcquiLevel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040504; bytecode file offset 0x93d278"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isAcquisitionListEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := acquisitionList.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041318; bytecode file offset 0x93dd2c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
numberOfOnlineDLLWindows
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceManager.
    recoveredValue1 := (recoveredValue0) numberOfOnlineDLLWindows.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042104; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isDuringAcquisitionInEnableLogging
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) storeDataDuringAcquisition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042110; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
getLogHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) header.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004211c; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeDataDuringAcquisition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) storeDataDuringAcquisition.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042140; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isLoggingActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) loggingActive.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042164; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
loggingRaster
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) loggingRaster.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042170; bytecode file offset 0x93ea4c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
getLogFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) fileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200489e4; bytecode file offset 0x945298"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
pauseAcquisitionExternTrigger
    onlineFlag := false.
    ^self
! !

"ASDBase.ic method 0x20051ee8; bytecode file offset 0x94f0e0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultOnlineDLLManagerClass.
    recoveredValue2 := (recoveredValue1) checkVersion.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005dfb4; bytecode file offset 0x95a870"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
mdfHeader
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) mdfHeader.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065f0c; bytecode file offset 0x963428"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
acquisitionList
    | recoveredValue0 |
    recoveredValue0 := acquisitionList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a44; bytecode file offset 0x9646f8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isOnline
    | recoveredValue0 |
    recoveredValue0 := onlineFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200686ac; bytecode file offset 0x965b90"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
interfaceManager
    | recoveredValue0 |
    recoveredValue0 := interfaceManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae8c; bytecode file offset 0x967a18"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
onlineDLLManager
    | recoveredValue0 |
    recoveredValue0 := onlineDLLManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b888; bytecode file offset 0x96873c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isOnlineInDevices
    | recoveredValue0 |
    recoveredValue0 := acquisitionInDevices.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d1b0; bytecode file offset 0x969c04"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
measureProcessPriority
    | recoveredValue0 |
    recoveredValue0 := measureProcessPrio.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d81c; bytecode file offset 0x96a390"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
autoStartingAcquisitionMode
    | recoveredValue0 |
    recoveredValue0 := dynamicMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eccc; bytecode file offset 0x96b8a0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
maxOnlineDLLDataNumber
    | recoveredValue0 |
    recoveredValue0 := maxDataNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073bb8; bytecode file offset 0x970b34"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
getConfigurationObject
    ^nil
! !

"ASDBase.ic method 0x20075cfc; bytecode file offset 0x9757c8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkDeviceBufferLevel
    ^true
! !

"ASDBase.ic method 0x20076a4c; bytecode file offset 0x9757c8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkDeviceConnected
    ^true
! !

"ASDBase.ic method 0x20076fb4; bytecode file offset 0x9757c8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkFreeLoggingDiskSpace
    ^true
! !

"ASDBase.ic method 0x200776fc; bytecode file offset 0x9757c8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
initOfflineBuffer
    ^true
! !

"ASDBase.ic method 0x2007790c; bytecode file offset 0x9757c8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
logDataInDevices
    ^true
! !

"ASDBase.ic method 0x20079804; bytecode file offset 0x97c330"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
autoEnableLogging
    ^false
! !

"ASDBase.ic method 0x2007cb14; bytecode file offset 0x97c330"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
autoDisableLogging
    ^false
! !

"ASDBase.ic method 0x2007e424; bytecode file offset 0x97c330"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
writeLoggingHeaderBeforeLogging
    ^false
! !

"ASDBase.ic method 0x2007fd4c; bytecode file offset 0x97c600"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
maxTimeToReadBufferEmpty
    ^30
! !

"ASDBase.ic method 0x20083214; bytecode file offset 0x97fac8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
measureProcessPriority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureProcessPrio := recoveredValue0.
    ^true
! !

"ASDBase.ic method 0x2008bafc; bytecode file offset 0x9883b4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
externTrigger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := triggerMode.
    recoveredValue1 := (recoveredValue0) = ('extern').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093058; bytecode file offset 0x98f958"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
setLogFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20093064; bytecode file offset 0x98f958"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
loggingView: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) loggerView: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20093088; bytecode file offset 0x98f958"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
setLogHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) header: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200930a0; bytecode file offset 0x98f958"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
loggingRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) loggingRaster: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009dfa8; bytecode file offset 0x99a85c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
stopAcquisitionExternTrigger
    acquisitionInDevices := false.
    onlineFlag := false.
    ^self
! !

"ASDBase.ic method 0x200ac104; bytecode file offset 0x9a8ab4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
errorConfigAcquisitionFailed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorClass.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) configAcquisitionFailed: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ac1b8; bytecode file offset 0x9a8ab4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
errorStartAcquisitionFailed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorClass.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) startAcquisitionFailed: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200acb68; bytecode file offset 0x9a9420"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
newDefaultLoggingFileNameFrom: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) newDefaultFileNameFrom: (recoveredValue1) path: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af614; bytecode file offset 0x9abed4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storingButNotLoggingDevices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (false).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af668; bytecode file offset 0x9abf28"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
loggingDevices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (true).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c04bc; bytecode file offset 0x9bd228"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
interfaceManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interfaceManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4748; bytecode file offset 0x9c11bc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
minTimeRaster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minTimeRaster := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c51d8; bytecode file offset 0x9c1afc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
sendDisplayTriggerTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayTriggerReceiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c55e8; bytecode file offset 0x9c1f64"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
maxOnlineDLLDataNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxDataNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c981c; bytecode file offset 0x9c612c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
errorNoAcquisitionBecauseInactiveDataDevice: recoveredArg1 channelGroup: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultErrorClass.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) noAcquisitionBecauseInactiveDataDevice: (recoveredValue2) group: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200f0b70; bytecode file offset 0x9ed434"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
lastMeasureViewSwitchedFromOfflineMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) lastMeasureViewSwitchedFromOfflineMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f0b7c; bytecode file offset 0x9ed434"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f22c8; bytecode file offset 0x9eeb88"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
pauseAcquisition
    | recoveredValue0 |
    onlineFlag := false.
    recoveredValue0 := Processor.
    (recoveredValue0) yield.
    (self) stopShowingWorkingPoint.
    ^true
! !

"ASDBase.ic method 0x200f6f3c; bytecode file offset 0x9f37f4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
resumeAcquisitionExternTrigger
    | recoveredValue0 |
    recoveredValue0 := (self) createAcquisitionArray.
    orderedDeviceDataList := recoveredValue0.
    onlineFlag := true.
    acquisitionInDevices := true.
    ^true
! !

"ASDBase.ic method 0x2010df78; bytecode file offset 0xa0a834"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deviceAtKey: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) defaultNotConnectedDevice.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20113364; bytecode file offset 0xa0fc1c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
measureDataOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119338; bytecode file offset 0xa15bf4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
startDataAcquisitionProcess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) dataAcquisition.
    recoveredBlock4Value0
].
    recoveredValue1 := measureProcessPrio.
    (recoveredValue0) forkAt: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011e148; bytecode file offset 0xa1aa00"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
acqListClearedDevice: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acqListCleared.
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
            recoveredStack1 := acqListCleared.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20126a98; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
channelGroupOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) channelGroup.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126ab8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
xUnitOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) xUnit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126ac8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
wFormulaOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) wFormula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126ae8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deviceDataIdOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) deviceDataId.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126af8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
xNameOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) xName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b28; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isDigitalId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isDigital.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b38; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isBitDataId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b48; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isSymbolicId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isSymbolic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b58; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
isActiveInDeviceId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isActiveInDevice.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b68; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
wUnitOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) wUnit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b88; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
getConfigurationObjectOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) getConfigurationObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126b98; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
wMaxOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) wMax.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126bb8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
xFormulaOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) xFormula.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126bc8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
wMinOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) wMin.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126bd8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
dataTypeOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) dataType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126be8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deviceOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126bf8; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
wNameOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) wName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126c08; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
dataOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126c18; bytecode file offset 0xa234d4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
measureRateOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) measureRate.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129a9c; bytecode file offset 0xa26354"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
notificationNoDLLChannels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            onlineDLLManager := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ce10; bytecode file offset 0xa496d8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
canAddRemoveDataDuringAcquisition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceAtKey: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAddRemoveDataDuringAcquisition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015aeec; bytecode file offset 0xa577a8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
hasOnlineDLLOutputChannels: recoveredArg1 dataId: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) hasOnlineDLLOutputChannels: (recoveredStack1).
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

"ASDBase.ic method 0x2016c2f0; bytecode file offset 0xa68bac"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeLoggingOfId: recoveredArg1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLogData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) removeLoggedData: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016c62c; bytecode file offset 0xa68ef0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
baseDeviceOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) device.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceKeyOf: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceAtKey: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179e40; bytecode file offset 0xa766f8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeXWorkingPointNamed: recoveredArg1 yWorkingPointNamed: recoveredArg2 device: recoveredArg3 editChannel: recoveredArg4 editData: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := recoveredArg5.
    (self) removeXWorkingPointNamed: (recoveredValue0) device: (recoveredValue1) editChannel: (recoveredValue2) editData: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    (self) removeXWorkingPointNamed: (recoveredValue4) device: (recoveredValue5) editChannel: (recoveredValue6) editData: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2018bcd4; bytecode file offset 0xa88594"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeId: recoveredArg1 isLast: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := false.
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
            (recoveredStack0) removeAllOutputChannels.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeMeasureData: (recoveredStack1) isLast: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201991c8; bytecode file offset 0xa95a88"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
startAcquisitionExternTrigger
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := loggingInfo.
    (recoveredValue0) storedAfterAcquisition: (false).
    recoveredValue1 := (self) createAcquisitionArray.
    orderedDeviceDataList := recoveredValue1.
    triggerMode := 'extern'.
    onlineFlag := true.
    acquisitionInDevices := true.
    ^true
! !

"ASDBase.ic method 0x201a4a58; bytecode file offset 0xaa1314"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
autoStartingAcquisitionMode: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            dynamicMode := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := interfaceManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) startAcquisition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := interfaceManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) stopAcquisition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201abfa4; bytecode file offset 0xaa8864"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
bitPositionOfId: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitPosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201be2f4; bytecode file offset 0xababb4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addOutputChannel: recoveredArg1 id: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isOnlineDLLDisplayChannel.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addOutputChannel: (recoveredStack1).
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

"ASDBase.ic method 0x201d5898; bytecode file offset 0xad215c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
getCreateOnlineDLLManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOnlineDLLManagerClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            onlineDLLManager := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) acquisitionManager: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dca14; bytecode file offset 0xad92dc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createTimeChannelInGroup: recoveredArg1 device: recoveredArg2 handle: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNotConnectedDevice.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) canSupplyOnlineDLLData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTimeChannelInGroup: (recoveredStack2) handle: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e88f8; bytecode file offset 0xae51bc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeDataDuringAcquisition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) storeDataDuringAcquisition: (recoveredValue1).
    recoveredValue2 := loggingInfo.
    recoveredValue3 := (recoveredValue2) loggedDataIds.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) storeDuringAcquisition: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20204b10; bytecode file offset 0xb013d8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createChannelGroup: recoveredArg1 device: recoveredArg2 handle: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNotConnectedDevice.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) canSupplyOnlineDLLData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := maxDataNumber.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createChannelGroup: (recoveredStack2) handle: (recoveredStack3) maxData: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20209f10; bytecode file offset 0xb067f0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
xFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBFormulaLinear.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) c0: (0).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) ticksPerSecond.
    (recoveredValue3) c1: (recoveredValue4).
    recoveredValue5 := RBDataDescription.
    recoveredValue6 := (recoveredValue5) createDefault.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) name: ('CADI time formula').
    recoveredValue8 := (recoveredValue6) unit: ('s').
    recoveredValue9 := (recoveredValue1) description: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20217b7c; bytecode file offset 0xb14444"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
dataLoggingOffline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) loggingActive.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) loggingDevices.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getLoggedData.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2 ~~ nil) ifTrue: [recoveredBlock13PC := 29] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) disableLogging.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021d3b0; bytecode file offset 0xb19c7c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeFromAcquisition: recoveredArg1 isLast: recoveredArg2
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
            (recoveredStack0) removeFromAcquisitionList: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustRemoveMeasureDataFromDevice: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) canRemoveIndividualMeasureData.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) removeFromDevice.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) removeFromDeviceAndRewrite: (recoveredStack1) isLast: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202235a0; bytecode file offset 0xb1fe6c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeFromDeviceAndRewrite: recoveredArg1 isLast: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) device.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceKeyOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceAtKey: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) acqListClearedDevice: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) clearAcquisitionTablesFor: (recoveredStack1) freeOnlineDLLChannels: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) rewriteAcquisitionList.
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

"ASDBase.ic method 0x2022ac54; bytecode file offset 0xb2751c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
acquisitionDevices
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) deviceAtKey: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280dcb60Arg1 | 
    | block280dcb60Value0 block280dcb60Value1 |
    block280dcb60Value0 := block280dcb60Arg1.
    block280dcb60Value1 := (block280dcb60Value0) notNil.
    block280dcb60Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20238524; bytecode file offset 0xb34dec"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
baseIdOfId: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionListAtName: (recoveredStack1) baseName: (recoveredStack2) device: (recoveredStack3) group: (recoveredStack4) isBit: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024051c; bytecode file offset 0xb3cde4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
acqListCleared: recoveredArg1 device: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acqListCleared.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            acqListCleared := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := acqListCleared.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := acqListCleared.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202414c4; bytecode file offset 0xb3dd94"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createDataChannel: recoveredArg1 device: recoveredArg2 handle: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNotConnectedDevice.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) canSupplyOnlineDLLData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) channelGroupOfId: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) deviceDataIdOfId: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataChannelInGroup: (recoveredStack2) dataId: (recoveredStack3) handle: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20248594; bytecode file offset 0xb44e60"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
resumeAcquisition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAcquisitionArray.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            orderedDeviceDataList := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := interfaceManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) emergencyStopAcquisition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) startShowingWorkingPoint.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            onlineFlag := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) dataAcquisition.
    recoveredBlock22Value0
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := measureProcessPrio.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024e5e0; bytecode file offset 0xb4aeb4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
disableLogging
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoggingActive.
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
            recoveredStack0 := loggingInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) loggingActive: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) loggingDevices.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
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
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) disableLogging.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) yield.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273b94; bytecode file offset 0xb70464"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) access.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := (recoveredStack5) isBitData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionListAtName: (recoveredStack1) baseName: (recoveredStack2) device: (recoveredStack3) group: (recoveredStack4) isBit: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMeasureData: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028aa78; bytecode file offset 0xb87350"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addXWorkingPointData: recoveredArg1 editChannel: recoveredArg2 editData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) access.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWPAcquiLevelFor: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) channelGroup: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) addData: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := RBXWorkingPointChannel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForEditChannel: (recoveredStack1) editData: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
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
            (recoveredStack0) addOutputChannel: (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fd40; bytecode file offset 0xb8c63c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deleteGroup: recoveredArg1 device: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceKeyOf: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceAtKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) acqListClearedDevice: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNotConnectedDevice.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) canSupplyOnlineDLLData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteChannelGroup: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fd68; bytecode file offset 0xb8c63c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deleteTimeChannelInGroup: recoveredArg1 device: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceKeyOf: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceAtKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) acqListClearedDevice: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNotConnectedDevice.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) canSupplyOnlineDLLData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteTimeChannelInGroup: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab74c; bytecode file offset 0xba801c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeDataDuringAcquisitionDevice: recoveredArg1 channelGroup: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) loggedDataIds.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) loggingChannelGroup.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) device.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) deviceKeyOf: (recoveredBlock7Stack4).
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack4 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack5 := recoveredArg1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) deviceKeyOf: (recoveredBlock7Stack5).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) = (recoveredBlock7Stack4).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) & (recoveredBlock7Stack3).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 41].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) storeDuringAcquisition.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x202b6030; bytecode file offset 0xbb2900"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeDataDuringAcquisition: recoveredArg1 device: recoveredArg2 channelGroup: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := loggingInfo.
    recoveredValue1 := (recoveredValue0) loggedDataIds.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) loggingChannelGroup.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Arg1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) device.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) deviceKeyOf: (recoveredBlock7Stack4).
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack4 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack5 := recoveredArg2.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) deviceKeyOf: (recoveredBlock7Stack5).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) = (recoveredBlock7Stack4).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) & (recoveredBlock7Stack3).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 43].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) storeDuringAcquisition: (recoveredBlock7Stack2).
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202b6b2c; bytecode file offset 0xbb3400"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    onlineFlag := false.
    acquisitionInDevices := false.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    acquisitionList := recoveredValue1.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) userSchedulingPriority.
    measureProcessPrio := recoveredValue3.
    dynamicMode := false.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new.
    orderedDeviceDataList := recoveredValue5.
    minTimeRaster := 0.
    maxDataNumber := 50.
    triggerMode := 'intern'.
    recoveredValue6 := RBDataLoggingInformation.
    recoveredValue7 := (recoveredValue6) create.
    loggingInfo := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202d9d94; bytecode file offset 0xbd6670"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deleteDataChannel: recoveredArg1 device: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceKeyOf: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceAtKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) acqListClearedDevice: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultNotConnectedDevice.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) canSupplyOnlineDLLData.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroupOfId: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceDataIdOfId: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteDataChannelInGroup: (recoveredStack1) dataId: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203234c0; bytecode file offset 0xc1fdc4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
stopShowingWorkingPoint
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ebb24Arg1 | 
    | block280ebb24Stack0 block280ebb24Stack1 block280ebb24Stack2 block280ebb24Stack3 block280ebb24PC block280ebb24Step block280ebb24Done block280ebb24Result |
    block280ebb24Stack0 := self.
    block280ebb24PC := 4.
    block280ebb24Done := false.
    [block280ebb24Done not] whileTrue: [
        block280ebb24Step := block280ebb24PC.
        block280ebb24Step = 4 ifTrue: [
            block280ebb24Stack1 := block280ebb24Arg1.
            block280ebb24PC := 5.
        ].
        block280ebb24Step = 5 ifTrue: [
            block280ebb24Stack2 := [:block280ebb48Arg1 | 
    | block280ebb48Stack0 block280ebb48Stack1 block280ebb48Stack2 block280ebb48Stack3 block280ebb48PC block280ebb48Step block280ebb48Done block280ebb48Result |
    block280ebb48Stack0 := self.
    block280ebb48PC := 4.
    block280ebb48Done := false.
    [block280ebb48Done not] whileTrue: [
        block280ebb48Step := block280ebb48PC.
        block280ebb48Step = 4 ifTrue: [
            block280ebb48Stack1 := block280ebb48Arg1.
            block280ebb48PC := 5.
        ].
        block280ebb48Step = 5 ifTrue: [
            block280ebb48Stack2 := [:block280ebb6cArg1 | 
    | block280ebb6cStack0 block280ebb6cStack1 block280ebb6cStack2 block280ebb6cStack3 block280ebb6cPC block280ebb6cStep block280ebb6cDone block280ebb6cResult |
    block280ebb6cStack0 := self.
    block280ebb6cPC := 4.
    block280ebb6cDone := false.
    [block280ebb6cDone not] whileTrue: [
        block280ebb6cStep := block280ebb6cPC.
        block280ebb6cStep = 4 ifTrue: [
            block280ebb6cStack1 := block280ebb6cArg1.
            block280ebb6cPC := 5.
        ].
        block280ebb6cStep = 5 ifTrue: [
            block280ebb6cStack1 := (block280ebb6cStack1) outputChannels.
            block280ebb6cPC := 6.
        ].
        block280ebb6cStep = 6 ifTrue: [
            block280ebb6cStack2 := [:block280ebb90Arg1 | 
    | block280ebb90Stack0 block280ebb90Stack1 block280ebb90Stack2 block280ebb90Stack3 block280ebb90PC block280ebb90Step block280ebb90Done block280ebb90Result |
    block280ebb90Stack0 := self.
    block280ebb90PC := 4.
    block280ebb90Done := false.
    [block280ebb90Done not] whileTrue: [
        block280ebb90Step := block280ebb90PC.
        block280ebb90Step = 4 ifTrue: [
            block280ebb90Stack1 := nil.
            block280ebb90PC := 5.
        ].
        block280ebb90Step = 5 ifTrue: [
            block280ebb90Stack2 := block280ebb90Arg1.
            block280ebb90PC := 6.
        ].
        block280ebb90Step = 6 ifTrue: [
            block280ebb90Stack2 := (block280ebb90Stack2) isWorkingPointChannel.
            block280ebb90PC := 8.
        ].
        block280ebb90Step = 8 ifTrue: [
            (block280ebb90Stack2) ifTrue: [block280ebb90PC := 12] ifFalse: [block280ebb90PC := 18].
        ].
        block280ebb90Step = 12 ifTrue: [
            block280ebb90PC := 13.
        ].
        block280ebb90Step = 13 ifTrue: [
            block280ebb90Stack1 := block280ebb90Arg1.
            block280ebb90PC := 14.
        ].
        block280ebb90Step = 14 ifTrue: [
            block280ebb90Stack1 := (block280ebb90Stack1) editChannel.
            block280ebb90PC := 16.
        ].
        block280ebb90Step = 16 ifTrue: [
            block280ebb90Stack1 := (block280ebb90Stack1) stopDisplayingWP.
            block280ebb90PC := 18.
        ].
        block280ebb90Step = 18 ifTrue: [
            block280ebb90Result := block280ebb90Stack1.
            block280ebb90Done := true.
        ].
    ].
    block280ebb90Result
].
            block280ebb6cPC := 8.
        ].
        block280ebb6cStep = 8 ifTrue: [
            block280ebb6cPC := 27.
        ].
        block280ebb6cStep = 27 ifTrue: [
            block280ebb6cStack1 := (block280ebb6cStack1) do: (block280ebb6cStack2).
            block280ebb6cPC := 29.
        ].
        block280ebb6cStep = 29 ifTrue: [
            block280ebb6cResult := block280ebb6cStack1.
            block280ebb6cDone := true.
        ].
    ].
    block280ebb6cResult
].
            block280ebb48PC := 7.
        ].
        block280ebb48Step = 7 ifTrue: [
            block280ebb48PC := 36.
        ].
        block280ebb48Step = 36 ifTrue: [
            block280ebb48Stack1 := (block280ebb48Stack1) do: (block280ebb48Stack2).
            block280ebb48PC := 38.
        ].
        block280ebb48Step = 38 ifTrue: [
            block280ebb48Result := block280ebb48Stack1.
            block280ebb48Done := true.
        ].
    ].
    block280ebb48Result
].
            block280ebb24PC := 7.
        ].
        block280ebb24Step = 7 ifTrue: [
            block280ebb24PC := 45.
        ].
        block280ebb24Step = 45 ifTrue: [
            block280ebb24Stack1 := (block280ebb24Stack1) do: (block280ebb24Stack2).
            block280ebb24PC := 47.
        ].
        block280ebb24Step = 47 ifTrue: [
            block280ebb24Result := block280ebb24Stack1.
            block280ebb24Done := true.
        ].
    ].
    block280ebb24Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203234ec; bytecode file offset 0xc1fdc4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
startShowingWorkingPoint
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ebbb4Arg1 | 
    | block280ebbb4Stack0 block280ebbb4Stack1 block280ebbb4Stack2 block280ebbb4Stack3 block280ebbb4PC block280ebbb4Step block280ebbb4Done block280ebbb4Result |
    block280ebbb4Stack0 := self.
    block280ebbb4PC := 4.
    block280ebbb4Done := false.
    [block280ebbb4Done not] whileTrue: [
        block280ebbb4Step := block280ebbb4PC.
        block280ebbb4Step = 4 ifTrue: [
            block280ebbb4Stack1 := block280ebbb4Arg1.
            block280ebbb4PC := 5.
        ].
        block280ebbb4Step = 5 ifTrue: [
            block280ebbb4Stack2 := [:block280ebbd8Arg1 | 
    | block280ebbd8Stack0 block280ebbd8Stack1 block280ebbd8Stack2 block280ebbd8Stack3 block280ebbd8PC block280ebbd8Step block280ebbd8Done block280ebbd8Result |
    block280ebbd8Stack0 := self.
    block280ebbd8PC := 4.
    block280ebbd8Done := false.
    [block280ebbd8Done not] whileTrue: [
        block280ebbd8Step := block280ebbd8PC.
        block280ebbd8Step = 4 ifTrue: [
            block280ebbd8Stack1 := block280ebbd8Arg1.
            block280ebbd8PC := 5.
        ].
        block280ebbd8Step = 5 ifTrue: [
            block280ebbd8Stack2 := [:block280ebbfcArg1 | 
    | block280ebbfcStack0 block280ebbfcStack1 block280ebbfcStack2 block280ebbfcStack3 block280ebbfcPC block280ebbfcStep block280ebbfcDone block280ebbfcResult |
    block280ebbfcStack0 := self.
    block280ebbfcPC := 4.
    block280ebbfcDone := false.
    [block280ebbfcDone not] whileTrue: [
        block280ebbfcStep := block280ebbfcPC.
        block280ebbfcStep = 4 ifTrue: [
            block280ebbfcStack1 := block280ebbfcArg1.
            block280ebbfcPC := 5.
        ].
        block280ebbfcStep = 5 ifTrue: [
            block280ebbfcStack1 := (block280ebbfcStack1) outputChannels.
            block280ebbfcPC := 6.
        ].
        block280ebbfcStep = 6 ifTrue: [
            block280ebbfcStack2 := [:block280ebc20Arg1 | 
    | block280ebc20Stack0 block280ebc20Stack1 block280ebc20Stack2 block280ebc20Stack3 block280ebc20PC block280ebc20Step block280ebc20Done block280ebc20Result |
    block280ebc20Stack0 := self.
    block280ebc20PC := 4.
    block280ebc20Done := false.
    [block280ebc20Done not] whileTrue: [
        block280ebc20Step := block280ebc20PC.
        block280ebc20Step = 4 ifTrue: [
            block280ebc20Stack1 := nil.
            block280ebc20PC := 5.
        ].
        block280ebc20Step = 5 ifTrue: [
            block280ebc20Stack2 := block280ebc20Arg1.
            block280ebc20PC := 6.
        ].
        block280ebc20Step = 6 ifTrue: [
            block280ebc20Stack2 := (block280ebc20Stack2) isWorkingPointChannel.
            block280ebc20PC := 8.
        ].
        block280ebc20Step = 8 ifTrue: [
            (block280ebc20Stack2) ifTrue: [block280ebc20PC := 12] ifFalse: [block280ebc20PC := 18].
        ].
        block280ebc20Step = 12 ifTrue: [
            block280ebc20PC := 13.
        ].
        block280ebc20Step = 13 ifTrue: [
            block280ebc20Stack1 := block280ebc20Arg1.
            block280ebc20PC := 14.
        ].
        block280ebc20Step = 14 ifTrue: [
            block280ebc20Stack1 := (block280ebc20Stack1) editChannel.
            block280ebc20PC := 16.
        ].
        block280ebc20Step = 16 ifTrue: [
            block280ebc20Stack1 := (block280ebc20Stack1) startDisplayingWP.
            block280ebc20PC := 18.
        ].
        block280ebc20Step = 18 ifTrue: [
            block280ebc20Result := block280ebc20Stack1.
            block280ebc20Done := true.
        ].
    ].
    block280ebc20Result
].
            block280ebbfcPC := 8.
        ].
        block280ebbfcStep = 8 ifTrue: [
            block280ebbfcPC := 27.
        ].
        block280ebbfcStep = 27 ifTrue: [
            block280ebbfcStack1 := (block280ebbfcStack1) do: (block280ebbfcStack2).
            block280ebbfcPC := 29.
        ].
        block280ebbfcStep = 29 ifTrue: [
            block280ebbfcResult := block280ebbfcStack1.
            block280ebbfcDone := true.
        ].
    ].
    block280ebbfcResult
].
            block280ebbd8PC := 7.
        ].
        block280ebbd8Step = 7 ifTrue: [
            block280ebbd8PC := 36.
        ].
        block280ebbd8Step = 36 ifTrue: [
            block280ebbd8Stack1 := (block280ebbd8Stack1) do: (block280ebbd8Stack2).
            block280ebbd8PC := 38.
        ].
        block280ebbd8Step = 38 ifTrue: [
            block280ebbd8Result := block280ebbd8Stack1.
            block280ebbd8Done := true.
        ].
    ].
    block280ebbd8Result
].
            block280ebbb4PC := 7.
        ].
        block280ebbb4Step = 7 ifTrue: [
            block280ebbb4PC := 45.
        ].
        block280ebbb4Step = 45 ifTrue: [
            block280ebbb4Stack1 := (block280ebbb4Stack1) do: (block280ebbb4Stack2).
            block280ebbb4PC := 47.
        ].
        block280ebbb4Step = 47 ifTrue: [
            block280ebbb4Result := block280ebbb4Stack1.
            block280ebbb4Done := true.
        ].
    ].
    block280ebbb4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20397e4c; bytecode file offset 0xc94738"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
saveOnlineDLLData: recoveredArg1 toFile: recoveredArg2 header: recoveredArg3 format: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'MDF'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMDFStorageClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'MDF Format not supported!!'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'FAMOS'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFAMOSStorageClass.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'FAMOS Format not supported!!'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) ticksPerSecond.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) ticksPerSecond: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) saveOnlineDLLData: (recoveredStack2) in: (recoveredStack3) header: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2039e7ec; bytecode file offset 0xc9b0bc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
displayingWorkingPointNamed: recoveredArg1 device: recoveredArg2 editChannel: recoveredArg3 editData: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionListAtName: (recoveredStack1) baseName: (recoveredStack2) device: (recoveredStack3) group: (recoveredStack4) isBit: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputChannels.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isWorkingPointChannel.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 44] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) editChannel.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg3.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) == (recoveredBlock32Stack2).
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) editData.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg4.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) == (recoveredBlock32Stack3).
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) & (recoveredBlock32Stack2).
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := false.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a3be0; bytecode file offset 0xca04a8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
deviceKeyOf: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNotConnectedDevice.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) usesCommonChannelGroups.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) class.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) defaultNotConnectedDevice.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) = (recoveredBlock35Stack2).
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            (recoveredBlock35Stack1) ifTrue: [recoveredBlock35PC := 50] ifFalse: [recoveredBlock35PC := 54].
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack1 := false.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) usesCommonChannelGroups.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock57Value0 |
    recoveredBlock57Value0 := recoveredArg1.
    recoveredBlock57Value0
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203aaee4; bytecode file offset 0xca77cc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addLogData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) unfinished.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'call_84818'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) loggingChannelGroup.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) access.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) device.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) access.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) loggingChannelGroup.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) loggingListAtName: (recoveredStack1) device: (recoveredStack2) group: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLoggedMeasureData: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) addLogData.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) addLoggedData: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) storeDataDuringAcquisition.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) storeDuringAcquisition: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1028; bytecode file offset 0xcbd908"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
stopAcquisition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            onlineFlag := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := acquisitionInDevices.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack3 := self.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) class.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack3 := (recoveredBlock15Stack3) defaultNotConnectedDevice.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) = (recoveredBlock15Stack3).
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 70] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) deviceAtKey: (recoveredBlock15Stack2).
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) stopAcquisition.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 70] ifFalse: [recoveredBlock15PC := 48].
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) stopAcquisition.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 70] ifFalse: [recoveredBlock15PC := 58].
        ].
        recoveredBlock15Step = 58 ifTrue: [
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) class.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) defaultErrorClass.
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal1.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) name.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) stopAcquisitionFailed: (recoveredBlock15Stack2).
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            acquisitionInDevices := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c8ea0; bytecode file offset 0xcc57a8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createLoggedMeasureData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBitData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseData.
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := RBDataDescription.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) baseName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseUnit.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) unit: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplInterval.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := RBFormulaId.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) setFormula: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) access.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) access: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMultiBitMeasureDataClass.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForData: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMultiBitMeasureDataClass.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForData: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e267c; bytecode file offset 0xcdef50"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
savedOfflineDataNames
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (false).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 |
    recoveredBlock18Block25Value0 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value1 := [:recoveredBlock18Block25Block33Arg1 | 
    | recoveredBlock18Block25Block33Stack0 recoveredBlock18Block25Block33Stack1 recoveredBlock18Block25Block33Stack2 recoveredBlock18Block25Block33Stack3 recoveredBlock18Block25Block33PC recoveredBlock18Block25Block33Step recoveredBlock18Block25Block33Done recoveredBlock18Block25Block33Result |
    recoveredBlock18Block25Block33Stack0 := nil.
    recoveredBlock18Block25Block33PC := 40.
    recoveredBlock18Block25Block33Done := false.
    [recoveredBlock18Block25Block33Done not] whileTrue: [
        recoveredBlock18Block25Block33Step := recoveredBlock18Block25Block33PC.
        recoveredBlock18Block25Block33Step = 40 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 41.
        ].
        recoveredBlock18Block25Block33Step = 41 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) hasOutputChannels.
            recoveredBlock18Block25Block33PC := 42.
        ].
        recoveredBlock18Block25Block33Step = 42 ifTrue: [
            (recoveredBlock18Block25Block33Stack1) ifTrue: [recoveredBlock18Block25Block33PC := 46] ifFalse: [recoveredBlock18Block25Block33PC := 54].
        ].
        recoveredBlock18Block25Block33Step = 46 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredLocal1.
            recoveredBlock18Block25Block33PC := 49.
        ].
        recoveredBlock18Block25Block33Step = 49 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 50.
        ].
        recoveredBlock18Block25Block33Step = 50 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := (recoveredBlock18Block25Block33Stack2) wName.
            recoveredBlock18Block25Block33PC := 52.
        ].
        recoveredBlock18Block25Block33Step = 52 ifTrue: [
            (recoveredBlock18Block25Block33Stack1) add: (recoveredBlock18Block25Block33Stack2).
            recoveredBlock18Block25Block33PC := 54.
        ].
        recoveredBlock18Block25Block33Step = 54 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 55.
        ].
        recoveredBlock18Block25Block33Step = 55 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) bitDatas.
            recoveredBlock18Block25Block33PC := 57.
        ].
        recoveredBlock18Block25Block33Step = 57 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := [:recoveredBlock18Block25Block33Block57Arg1 | 
    | recoveredBlock18Block25Block33Block57Value0 recoveredBlock18Block25Block33Block57Value1 recoveredBlock18Block25Block33Block57Value2 recoveredBlock18Block25Block33Block57Value3 |
    recoveredBlock18Block25Block33Block57Value0 := recoveredLocal1.
    recoveredBlock18Block25Block33Block57Value1 := recoveredBlock18Block25Block33Block57Arg1.
    recoveredBlock18Block25Block33Block57Value2 := (recoveredBlock18Block25Block33Block57Value1) wName.
    recoveredBlock18Block25Block33Block57Value3 := (recoveredBlock18Block25Block33Block57Value0) add: (recoveredBlock18Block25Block33Block57Value2).
    recoveredBlock18Block25Block33Block57Value3
].
            recoveredBlock18Block25Block33PC := 73.
        ].
        recoveredBlock18Block25Block33Step = 73 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) do: (recoveredBlock18Block25Block33Stack2).
            recoveredBlock18Block25Block33PC := 75.
        ].
        recoveredBlock18Block25Block33Step = 75 ifTrue: [
            recoveredBlock18Block25Block33Result := recoveredBlock18Block25Block33Stack1.
            recoveredBlock18Block25Block33Done := true.
        ].
    ].
    recoveredBlock18Block25Block33Result
].
    recoveredBlock18Block25Value2 := (recoveredBlock18Block25Value0) do: (recoveredBlock18Block25Value1).
    recoveredBlock18Block25Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203e26fc; bytecode file offset 0xcdefd0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
loggedDataNames
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (true).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 |
    recoveredBlock18Block25Value0 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value1 := [:recoveredBlock18Block25Block33Arg1 | 
    | recoveredBlock18Block25Block33Stack0 recoveredBlock18Block25Block33Stack1 recoveredBlock18Block25Block33Stack2 recoveredBlock18Block25Block33Stack3 recoveredBlock18Block25Block33PC recoveredBlock18Block25Block33Step recoveredBlock18Block25Block33Done recoveredBlock18Block25Block33Result |
    recoveredBlock18Block25Block33Stack0 := nil.
    recoveredBlock18Block25Block33PC := 40.
    recoveredBlock18Block25Block33Done := false.
    [recoveredBlock18Block25Block33Done not] whileTrue: [
        recoveredBlock18Block25Block33Step := recoveredBlock18Block25Block33PC.
        recoveredBlock18Block25Block33Step = 40 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 41.
        ].
        recoveredBlock18Block25Block33Step = 41 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) hasOutputChannels.
            recoveredBlock18Block25Block33PC := 42.
        ].
        recoveredBlock18Block25Block33Step = 42 ifTrue: [
            (recoveredBlock18Block25Block33Stack1) ifTrue: [recoveredBlock18Block25Block33PC := 46] ifFalse: [recoveredBlock18Block25Block33PC := 54].
        ].
        recoveredBlock18Block25Block33Step = 46 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredLocal1.
            recoveredBlock18Block25Block33PC := 49.
        ].
        recoveredBlock18Block25Block33Step = 49 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 50.
        ].
        recoveredBlock18Block25Block33Step = 50 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := (recoveredBlock18Block25Block33Stack2) wName.
            recoveredBlock18Block25Block33PC := 52.
        ].
        recoveredBlock18Block25Block33Step = 52 ifTrue: [
            (recoveredBlock18Block25Block33Stack1) add: (recoveredBlock18Block25Block33Stack2).
            recoveredBlock18Block25Block33PC := 54.
        ].
        recoveredBlock18Block25Block33Step = 54 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := recoveredBlock18Block25Block33Arg1.
            recoveredBlock18Block25Block33PC := 55.
        ].
        recoveredBlock18Block25Block33Step = 55 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) bitDatas.
            recoveredBlock18Block25Block33PC := 57.
        ].
        recoveredBlock18Block25Block33Step = 57 ifTrue: [
            recoveredBlock18Block25Block33Stack2 := [:recoveredBlock18Block25Block33Block57Arg1 | 
    | recoveredBlock18Block25Block33Block57Value0 recoveredBlock18Block25Block33Block57Value1 recoveredBlock18Block25Block33Block57Value2 recoveredBlock18Block25Block33Block57Value3 |
    recoveredBlock18Block25Block33Block57Value0 := recoveredLocal1.
    recoveredBlock18Block25Block33Block57Value1 := recoveredBlock18Block25Block33Block57Arg1.
    recoveredBlock18Block25Block33Block57Value2 := (recoveredBlock18Block25Block33Block57Value1) wName.
    recoveredBlock18Block25Block33Block57Value3 := (recoveredBlock18Block25Block33Block57Value0) add: (recoveredBlock18Block25Block33Block57Value2).
    recoveredBlock18Block25Block33Block57Value3
].
            recoveredBlock18Block25Block33PC := 73.
        ].
        recoveredBlock18Block25Block33Step = 73 ifTrue: [
            recoveredBlock18Block25Block33Stack1 := (recoveredBlock18Block25Block33Stack1) do: (recoveredBlock18Block25Block33Stack2).
            recoveredBlock18Block25Block33PC := 75.
        ].
        recoveredBlock18Block25Block33Step = 75 ifTrue: [
            recoveredBlock18Block25Block33Result := recoveredBlock18Block25Block33Stack1.
            recoveredBlock18Block25Block33Done := true.
        ].
    ].
    recoveredBlock18Block25Block33Result
].
    recoveredBlock18Block25Value2 := (recoveredBlock18Block25Value0) do: (recoveredBlock18Block25Value1).
    recoveredBlock18Block25Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203e7ec8; bytecode file offset 0xce479c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeXWorkingPointNamed: recoveredArg1 device: recoveredArg2 editChannel: recoveredArg3 editData: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionListAtName: (recoveredStack1) baseName: (recoveredStack2) device: (recoveredStack3) group: (recoveredStack4) isBit: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputChannels.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isWorkingPointChannel.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 44] ifFalse: [recoveredBlock32PC := 62].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) editChannel.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg3.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) == (recoveredBlock32Stack2).
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) editData.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg4.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) == (recoveredBlock32Stack3).
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) & (recoveredBlock32Stack2).
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := false.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOutputChannel: (recoveredStack1) id: (recoveredStack2) isLast: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fcac8; bytecode file offset 0xcf93b8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) removeAll.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := acquisitionList.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) someElement.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) someElement.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) device.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 73] ifFalse: [recoveredBlock16PC := 34].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) canRemoveIndividualMeasureData.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 40] ifFalse: [recoveredBlock16PC := 68].
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := acquisitionList.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack2 := [:block280f9e40Arg1 | 
    | block280f9e40Stack0 block280f9e40Stack1 block280f9e40Stack2 block280f9e40Stack3 block280f9e40PC block280f9e40Step block280f9e40Done block280f9e40Result |
    block280f9e40Stack0 := self.
    block280f9e40PC := 4.
    block280f9e40Done := false.
    [block280f9e40Done not] whileTrue: [
        block280f9e40Step := block280f9e40PC.
        block280f9e40Step = 4 ifTrue: [
            block280f9e40Stack1 := block280f9e40Arg1.
            block280f9e40PC := 5.
        ].
        block280f9e40Step = 5 ifTrue: [
            block280f9e40Stack2 := [:block280f9e64Arg1 | 
    | block280f9e64Value0 block280f9e64Value1 |
    block280f9e64Value0 := block280f9e64Arg1.
    block280f9e64Value1 := (block280f9e64Value0) removeFromDevice.
    block280f9e64Value1
].
            block280f9e40PC := 7.
        ].
        block280f9e40Step = 7 ifTrue: [
            block280f9e40PC := 14.
        ].
        block280f9e40Step = 14 ifTrue: [
            block280f9e40Stack1 := (block280f9e40Stack1) do: (block280f9e40Stack2).
            block280f9e40PC := 16.
        ].
        block280f9e40Step = 16 ifTrue: [
            block280f9e40Result := block280f9e40Stack1.
            block280f9e40Done := true.
        ].
    ].
    block280f9e40Result
].
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            (recoveredBlock16Stack1) do: (recoveredBlock16Stack2).
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16PC := 73.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local1.
            recoveredBlock16PC := 70.
        ].
        recoveredBlock16Step = 70 ifTrue: [
            recoveredBlock16Stack3 := true.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            (recoveredBlock16Stack1) clearAcquisitionTablesFor: (recoveredBlock16Stack2) freeOnlineDLLChannels: (recoveredBlock16Stack3).
            recoveredBlock16PC := 73.
        ].
        recoveredBlock16Step = 73 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isOnlineInDevices.
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 80] ifFalse: [recoveredBlock16PC := 84].
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16PC := 81.
        ].
        recoveredBlock16Step = 81 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) stopAcquisition.
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) keysDo: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            acquisitionList := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400844; bytecode file offset 0xcfd128"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeFromAcquisitionList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) device.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceKeyOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) checkDeviceKeyValidityOf: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041edd8; bytecode file offset 0xd1b6bc"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
dataAcquisition
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := orderedDeviceDataList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) checkFreeLoggingDiskSpace.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) checkDeviceBufferLevel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 |
    recoveredBlock40Value0 := recoveredLocal1.
    recoveredBlock40Value1 := (self) readMeasureDatasWithRation: (recoveredBlock40Value0).
    recoveredBlock40Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondsToRun: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := minTimeRaster.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := minTimeRaster.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := onlineFlag.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) stopShowingWorkingPoint.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042d4ec; bytecode file offset 0xd29dd8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addXWorkingPointData: recoveredArg1 yWorkingPointData: recoveredArg2 editChannel: recoveredArg3 editData: recoveredArg4
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
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) access.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWPAcquiLevelFor: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) channelGroup: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) access.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultWPAcquiLevelFor: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) channelGroup: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) addData: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) addData: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := RBXWorkingPointChannel.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForEditChannel: (recoveredStack1) editData: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) addOutputChannel: (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBYWorkingPointChannel.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForEditChannel: (recoveredStack1) editData: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) addOutputChannel: (recoveredStack1) id: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := Point.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20443d34; bytecode file offset 0xd40614"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeLoggedDataWithHeader
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLoggingActive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeDataDuringAcquisition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 100.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 1000000.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) loggingDevices.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Local1 recoveredBlock47Local2 recoveredBlock47Local3 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := false.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Local3 := recoveredBlock47Stack1.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack1 := 1.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) getLoggedData.
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack2.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            (recoveredBlock47Stack1 == nil) ifTrue: [recoveredBlock47PC := 76] ifFalse: [recoveredBlock47PC := 70].
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local1.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Local3 := recoveredBlock47Stack1.
            recoveredBlock47PC := 72.
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 76 ifTrue: [
            recoveredBlock47Stack1 := true.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Local3 := recoveredBlock47Stack1.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local2.
            recoveredBlock47PC := 79.
        ].
        recoveredBlock47Step = 79 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) + (1).
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Local2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 82.
        ].
        recoveredBlock47Step = 82 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Local3.
            recoveredBlock47PC := 84.
        ].
        recoveredBlock47Step = 84 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local2.
            recoveredBlock47PC := 85.
        ].
        recoveredBlock47Step = 85 ifTrue: [
            recoveredBlock47Stack3 := recoveredLocal1.
            recoveredBlock47PC := 88.
        ].
        recoveredBlock47Step = 88 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) > (recoveredBlock47Stack3).
            recoveredBlock47PC := 89.
        ].
        recoveredBlock47Step = 89 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) | (recoveredBlock47Stack2).
            recoveredBlock47PC := 91.
        ].
        recoveredBlock47Step = 91 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 93] ifFalse: [recoveredBlock47PC := 62].
        ].
        recoveredBlock47Step = 93 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 94.
        ].
        recoveredBlock47Step = 94 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) storeLoggedDataWithHeader: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20448714; bytecode file offset 0xd45020"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
addToAcquisition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) xFormula.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) xFormula: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) addToDevice.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultErrorClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) device.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) channelGroupName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) wName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addToDevice: (recoveredStack2) level: (recoveredStack3) failedFor: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) device.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) acqListCleared: (recoveredStack1) device: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) device.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceKeyOf: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroup.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045e938; bytecode file offset 0xd5b210"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
checkDeviceKeyValidityOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceAtKey: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesCommonChannelGroups.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := [:recoveredBlock46Block53Arg1 | 
    | recoveredBlock46Block53Value0 recoveredBlock46Block53Value1 recoveredBlock46Block53Value2 recoveredBlock46Block53Value3 |
    recoveredBlock46Block53Value0 := recoveredBlock46Block53Arg1.
    recoveredBlock46Block53Value1 := (recoveredBlock46Block53Value0) device.
    recoveredBlock46Block53Value2 := recoveredLocal4.
    recoveredBlock46Block53Value3 := (recoveredBlock46Block53Value1) = (recoveredBlock46Block53Value2).
    recoveredBlock46Block53Value3
].
    recoveredBlock46Value2 := [].
    recoveredBlock46Value3 := (recoveredBlock46Value0) detect: (recoveredBlock46Value1) ifNone: (recoveredBlock46Value2).
    recoveredBlock46Value4 := (recoveredBlock46Value3) notNil.
    recoveredBlock46Value4
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047a4a0; bytecode file offset 0xd76d90"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeMeasureData: recoveredArg1 isLast: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isBitData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseIdOfId: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) removeBitData: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) channelGroup.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) device.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasNoDisplayChannels: (recoveredStack2) acqLevel: (recoveredStack3) device: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitDatas.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) outputChannels.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFromAcquisition: (recoveredStack1) isLast: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := acquisitionInDevices.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) device.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceKeyOf: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) stopAcquisition.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            acquisitionInDevices := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20496880; bytecode file offset 0xd9315c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
notSavedOfflineDataNames
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (false).
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 |
    recoveredBlock18Block25Value0 := recoveredLocal2.
    recoveredBlock18Block25Value1 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value2 := (recoveredBlock18Block25Value0) addAll: (recoveredBlock18Block25Value1).
    recoveredBlock18Block25Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := acquisitionList.
    recoveredValue8 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := [:recoveredBlock51Block59Arg1 | 
    | recoveredBlock51Block59Value0 recoveredBlock51Block59Value1 recoveredBlock51Block59Value2 |
    recoveredBlock51Block59Value0 := recoveredBlock51Block59Arg1.
    recoveredBlock51Block59Value1 := [:recoveredBlock51Block59Block67Arg1 | 
    | recoveredBlock51Block59Block67Stack0 recoveredBlock51Block59Block67Stack1 recoveredBlock51Block59Block67Stack2 recoveredBlock51Block59Block67Stack3 recoveredBlock51Block59Block67Stack4 recoveredBlock51Block59Block67PC recoveredBlock51Block59Block67Step recoveredBlock51Block59Block67Done recoveredBlock51Block59Block67Result |
    recoveredBlock51Block59Block67Stack0 := nil.
    recoveredBlock51Block59Block67PC := 74.
    recoveredBlock51Block59Block67Done := false.
    [recoveredBlock51Block59Block67Done not] whileTrue: [
        recoveredBlock51Block59Block67Step := recoveredBlock51Block59Block67PC.
        recoveredBlock51Block59Block67Step = 74 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := nil.
            recoveredBlock51Block59Block67PC := 75.
        ].
        recoveredBlock51Block59Block67Step = 75 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := recoveredLocal2.
            recoveredBlock51Block59Block67PC := 78.
        ].
        recoveredBlock51Block59Block67Step = 78 ifTrue: [
            recoveredBlock51Block59Block67Stack3 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 79.
        ].
        recoveredBlock51Block59Block67Step = 79 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := (recoveredBlock51Block59Block67Stack2) includes: (recoveredBlock51Block59Block67Stack3).
            recoveredBlock51Block59Block67PC := 81.
        ].
        recoveredBlock51Block59Block67Step = 81 ifTrue: [
            (recoveredBlock51Block59Block67Stack2) ifTrue: [recoveredBlock51Block59Block67PC := 121] ifFalse: [recoveredBlock51Block59Block67PC := 84].
        ].
        recoveredBlock51Block59Block67Step = 84 ifTrue: [
            recoveredBlock51Block59Block67PC := 85.
        ].
        recoveredBlock51Block59Block67Step = 85 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 86.
        ].
        recoveredBlock51Block59Block67Step = 86 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) hasOutputChannels.
            recoveredBlock51Block59Block67PC := 88.
        ].
        recoveredBlock51Block59Block67Step = 88 ifTrue: [
            (recoveredBlock51Block59Block67Stack1) ifTrue: [recoveredBlock51Block59Block67PC := 92] ifFalse: [recoveredBlock51Block59Block67PC := 100].
        ].
        recoveredBlock51Block59Block67Step = 92 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredLocal1.
            recoveredBlock51Block59Block67PC := 95.
        ].
        recoveredBlock51Block59Block67Step = 95 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 96.
        ].
        recoveredBlock51Block59Block67Step = 96 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := (recoveredBlock51Block59Block67Stack2) wName.
            recoveredBlock51Block59Block67PC := 98.
        ].
        recoveredBlock51Block59Block67Step = 98 ifTrue: [
            (recoveredBlock51Block59Block67Stack1) add: (recoveredBlock51Block59Block67Stack2).
            recoveredBlock51Block59Block67PC := 100.
        ].
        recoveredBlock51Block59Block67Step = 100 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 101.
        ].
        recoveredBlock51Block59Block67Step = 101 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) bitDatas.
            recoveredBlock51Block59Block67PC := 103.
        ].
        recoveredBlock51Block59Block67Step = 103 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := [:recoveredBlock51Block59Block67Block103Arg1 | 
    | recoveredBlock51Block59Block67Block103Value0 recoveredBlock51Block59Block67Block103Value1 recoveredBlock51Block59Block67Block103Value2 recoveredBlock51Block59Block67Block103Value3 |
    recoveredBlock51Block59Block67Block103Value0 := recoveredLocal1.
    recoveredBlock51Block59Block67Block103Value1 := recoveredBlock51Block59Block67Block103Arg1.
    recoveredBlock51Block59Block67Block103Value2 := (recoveredBlock51Block59Block67Block103Value1) wName.
    recoveredBlock51Block59Block67Block103Value3 := (recoveredBlock51Block59Block67Block103Value0) add: (recoveredBlock51Block59Block67Block103Value2).
    recoveredBlock51Block59Block67Block103Value3
].
            recoveredBlock51Block59Block67PC := 119.
        ].
        recoveredBlock51Block59Block67Step = 119 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) do: (recoveredBlock51Block59Block67Stack2).
            recoveredBlock51Block59Block67PC := 121.
        ].
        recoveredBlock51Block59Block67Step = 121 ifTrue: [
            recoveredBlock51Block59Block67Result := recoveredBlock51Block59Block67Stack1.
            recoveredBlock51Block59Block67Done := true.
        ].
    ].
    recoveredBlock51Block59Block67Result
].
    recoveredBlock51Block59Value2 := (recoveredBlock51Block59Value0) do: (recoveredBlock51Block59Value1).
    recoveredBlock51Block59Value2
].
    recoveredBlock51Value2 := (recoveredBlock51Value0) do: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20496938; bytecode file offset 0xd93214"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
notLoggedDataNames
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) createLoggedDataDictDuringAcquisition: (true).
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 |
    recoveredBlock18Block25Value0 := recoveredLocal2.
    recoveredBlock18Block25Value1 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value2 := (recoveredBlock18Block25Value0) addAll: (recoveredBlock18Block25Value1).
    recoveredBlock18Block25Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) do: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := acquisitionList.
    recoveredValue8 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := [:recoveredBlock51Block59Arg1 | 
    | recoveredBlock51Block59Value0 recoveredBlock51Block59Value1 recoveredBlock51Block59Value2 |
    recoveredBlock51Block59Value0 := recoveredBlock51Block59Arg1.
    recoveredBlock51Block59Value1 := [:recoveredBlock51Block59Block67Arg1 | 
    | recoveredBlock51Block59Block67Stack0 recoveredBlock51Block59Block67Stack1 recoveredBlock51Block59Block67Stack2 recoveredBlock51Block59Block67Stack3 recoveredBlock51Block59Block67Stack4 recoveredBlock51Block59Block67PC recoveredBlock51Block59Block67Step recoveredBlock51Block59Block67Done recoveredBlock51Block59Block67Result |
    recoveredBlock51Block59Block67Stack0 := nil.
    recoveredBlock51Block59Block67PC := 74.
    recoveredBlock51Block59Block67Done := false.
    [recoveredBlock51Block59Block67Done not] whileTrue: [
        recoveredBlock51Block59Block67Step := recoveredBlock51Block59Block67PC.
        recoveredBlock51Block59Block67Step = 74 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := nil.
            recoveredBlock51Block59Block67PC := 75.
        ].
        recoveredBlock51Block59Block67Step = 75 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := recoveredLocal2.
            recoveredBlock51Block59Block67PC := 78.
        ].
        recoveredBlock51Block59Block67Step = 78 ifTrue: [
            recoveredBlock51Block59Block67Stack3 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 79.
        ].
        recoveredBlock51Block59Block67Step = 79 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := (recoveredBlock51Block59Block67Stack2) includes: (recoveredBlock51Block59Block67Stack3).
            recoveredBlock51Block59Block67PC := 81.
        ].
        recoveredBlock51Block59Block67Step = 81 ifTrue: [
            (recoveredBlock51Block59Block67Stack2) ifTrue: [recoveredBlock51Block59Block67PC := 121] ifFalse: [recoveredBlock51Block59Block67PC := 84].
        ].
        recoveredBlock51Block59Block67Step = 84 ifTrue: [
            recoveredBlock51Block59Block67PC := 85.
        ].
        recoveredBlock51Block59Block67Step = 85 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 86.
        ].
        recoveredBlock51Block59Block67Step = 86 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) hasOutputChannels.
            recoveredBlock51Block59Block67PC := 88.
        ].
        recoveredBlock51Block59Block67Step = 88 ifTrue: [
            (recoveredBlock51Block59Block67Stack1) ifTrue: [recoveredBlock51Block59Block67PC := 92] ifFalse: [recoveredBlock51Block59Block67PC := 100].
        ].
        recoveredBlock51Block59Block67Step = 92 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredLocal1.
            recoveredBlock51Block59Block67PC := 95.
        ].
        recoveredBlock51Block59Block67Step = 95 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 96.
        ].
        recoveredBlock51Block59Block67Step = 96 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := (recoveredBlock51Block59Block67Stack2) wName.
            recoveredBlock51Block59Block67PC := 98.
        ].
        recoveredBlock51Block59Block67Step = 98 ifTrue: [
            (recoveredBlock51Block59Block67Stack1) add: (recoveredBlock51Block59Block67Stack2).
            recoveredBlock51Block59Block67PC := 100.
        ].
        recoveredBlock51Block59Block67Step = 100 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := recoveredBlock51Block59Block67Arg1.
            recoveredBlock51Block59Block67PC := 101.
        ].
        recoveredBlock51Block59Block67Step = 101 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) bitDatas.
            recoveredBlock51Block59Block67PC := 103.
        ].
        recoveredBlock51Block59Block67Step = 103 ifTrue: [
            recoveredBlock51Block59Block67Stack2 := [:recoveredBlock51Block59Block67Block103Arg1 | 
    | recoveredBlock51Block59Block67Block103Value0 recoveredBlock51Block59Block67Block103Value1 recoveredBlock51Block59Block67Block103Value2 recoveredBlock51Block59Block67Block103Value3 |
    recoveredBlock51Block59Block67Block103Value0 := recoveredLocal1.
    recoveredBlock51Block59Block67Block103Value1 := recoveredBlock51Block59Block67Block103Arg1.
    recoveredBlock51Block59Block67Block103Value2 := (recoveredBlock51Block59Block67Block103Value1) wName.
    recoveredBlock51Block59Block67Block103Value3 := (recoveredBlock51Block59Block67Block103Value0) add: (recoveredBlock51Block59Block67Block103Value2).
    recoveredBlock51Block59Block67Block103Value3
].
            recoveredBlock51Block59Block67PC := 119.
        ].
        recoveredBlock51Block59Block67Step = 119 ifTrue: [
            recoveredBlock51Block59Block67Stack1 := (recoveredBlock51Block59Block67Stack1) do: (recoveredBlock51Block59Block67Stack2).
            recoveredBlock51Block59Block67PC := 121.
        ].
        recoveredBlock51Block59Block67Step = 121 ifTrue: [
            recoveredBlock51Block59Block67Result := recoveredBlock51Block59Block67Stack1.
            recoveredBlock51Block59Block67Done := true.
        ].
    ].
    recoveredBlock51Block59Block67Result
].
    recoveredBlock51Block59Value2 := (recoveredBlock51Block59Value0) do: (recoveredBlock51Block59Value1).
    recoveredBlock51Block59Value2
].
    recoveredBlock51Value2 := (recoveredBlock51Value0) do: (recoveredBlock51Value1).
    recoveredBlock51Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20496fa0; bytecode file offset 0xd938b8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createMeasureData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBitData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseData.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) access.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) device.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) acquisitionListAtName: (recoveredStack2) baseName: (recoveredStack3) device: (recoveredStack4) group: (recoveredStack5) isBit: (recoveredStack6).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := RBDataDescription.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := (recoveredStack5) baseName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack4) name: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseUnit.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) unit: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) setImplType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplInterval.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) setImplInterval: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := RBFormulaId.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) setFormula: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) access.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) access: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMultiBitMeasureDataClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForData: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) addToAcquisition: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) addBitData: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMultiBitMeasureDataClass.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForData: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) addToAcquisition: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049ed48; bytecode file offset 0xd9b63c"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
rewriteAcquisitionList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Local2 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) deviceAtKey: (recoveredBlock10Stack1).
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Local2 := recoveredBlock10Stack0.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack0 := nil.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local2.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) acqListClearedDevice: (recoveredBlock10Stack2).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 121].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack0 := acquisitionList.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := [
    ^nil
].
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) at: (recoveredBlock10Stack1) ifAbsent: (recoveredBlock10Stack2).
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack0 := recoveredBlock10Local1.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := [:recoveredBlock10Block42Arg1 | 
    | recoveredBlock10Block42Value0 recoveredBlock10Block42Value1 recoveredBlock10Block42Value2 |
    recoveredBlock10Block42Value0 := recoveredBlock10Block42Arg1.
    recoveredBlock10Block42Value1 := [:recoveredBlock10Block42Block49Arg1 | 
    | recoveredBlock10Block42Block49Stack0 recoveredBlock10Block42Block49Stack1 recoveredBlock10Block42Block49Stack2 recoveredBlock10Block42Block49Stack3 recoveredBlock10Block42Block49Stack4 recoveredBlock10Block42Block49Stack5 recoveredBlock10Block42Block49PC recoveredBlock10Block42Block49Step recoveredBlock10Block42Block49Done recoveredBlock10Block42Block49Result |
    recoveredBlock10Block42Block49Stack0 := self.
    recoveredBlock10Block42Block49PC := 56.
    recoveredBlock10Block42Block49Done := false.
    [recoveredBlock10Block42Block49Done not] whileTrue: [
        recoveredBlock10Block42Block49Step := recoveredBlock10Block42Block49PC.
        recoveredBlock10Block42Block49Step = 56 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := nil.
            recoveredBlock10Block42Block49PC := 57.
        ].
        recoveredBlock10Block42Block49Step = 57 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := recoveredLocal1.
            recoveredBlock10Block42Block49PC := 60.
        ].
        recoveredBlock10Block42Block49Step = 60 ifTrue: [
            (recoveredBlock10Block42Block49Stack2) ifTrue: [recoveredBlock10Block42Block49PC := 110] ifFalse: [recoveredBlock10Block42Block49PC := 64].
        ].
        recoveredBlock10Block42Block49Step = 64 ifTrue: [
            recoveredBlock10Block42Block49PC := 65.
        ].
        recoveredBlock10Block42Block49Step = 65 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := nil.
            recoveredBlock10Block42Block49PC := 66.
        ].
        recoveredBlock10Block42Block49Step = 66 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := recoveredBlock10Block42Block49Arg1.
            recoveredBlock10Block42Block49PC := 67.
        ].
        recoveredBlock10Block42Block49Step = 67 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) addToDevice.
            recoveredBlock10Block42Block49PC := 68.
        ].
        recoveredBlock10Block42Block49Step = 68 ifTrue: [
            (recoveredBlock10Block42Block49Stack2) ifTrue: [recoveredBlock10Block42Block49PC := 110] ifFalse: [recoveredBlock10Block42Block49PC := 72].
        ].
        recoveredBlock10Block42Block49Step = 72 ifTrue: [
            recoveredBlock10Block42Block49PC := 73.
        ].
        recoveredBlock10Block42Block49Step = 73 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := self.
            recoveredBlock10Block42Block49PC := 74.
        ].
        recoveredBlock10Block42Block49Step = 74 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := (recoveredBlock10Block42Block49Stack1) class.
            recoveredBlock10Block42Block49PC := 76.
        ].
        recoveredBlock10Block42Block49Step = 76 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := (recoveredBlock10Block42Block49Stack1) defaultErrorClass.
            recoveredBlock10Block42Block49PC := 78.
        ].
        recoveredBlock10Block42Block49Step = 78 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := recoveredBlock10Block42Block49Arg1.
            recoveredBlock10Block42Block49PC := 79.
        ].
        recoveredBlock10Block42Block49Step = 79 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) device.
            recoveredBlock10Block42Block49PC := 81.
        ].
        recoveredBlock10Block42Block49Step = 81 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) name.
            recoveredBlock10Block42Block49PC := 83.
        ].
        recoveredBlock10Block42Block49Step = 83 ifTrue: [
            recoveredBlock10Block42Block49Stack3 := recoveredBlock10Block42Block49Arg1.
            recoveredBlock10Block42Block49PC := 84.
        ].
        recoveredBlock10Block42Block49Step = 84 ifTrue: [
            recoveredBlock10Block42Block49Stack3 := (recoveredBlock10Block42Block49Stack3) channelGroupName.
            recoveredBlock10Block42Block49PC := 86.
        ].
        recoveredBlock10Block42Block49Step = 86 ifTrue: [
            recoveredBlock10Block42Block49Stack4 := recoveredBlock10Block42Block49Arg1.
            recoveredBlock10Block42Block49PC := 87.
        ].
        recoveredBlock10Block42Block49Step = 87 ifTrue: [
            recoveredBlock10Block42Block49Stack4 := (recoveredBlock10Block42Block49Stack4) wName.
            recoveredBlock10Block42Block49PC := 89.
        ].
        recoveredBlock10Block42Block49Step = 89 ifTrue: [
            (recoveredBlock10Block42Block49Stack1) addToDevice: (recoveredBlock10Block42Block49Stack2) level: (recoveredBlock10Block42Block49Stack3) failedFor: (recoveredBlock10Block42Block49Stack4).
            recoveredBlock10Block42Block49PC := 92.
        ].
        recoveredBlock10Block42Block49Step = 92 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := nil.
            recoveredBlock10Block42Block49PC := 93.
        ].
        recoveredBlock10Block42Block49Step = 93 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := self.
            recoveredBlock10Block42Block49PC := 94.
        ].
        recoveredBlock10Block42Block49Step = 94 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) class.
            recoveredBlock10Block42Block49PC := 96.
        ].
        recoveredBlock10Block42Block49Step = 96 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) defaultErrorClass.
            recoveredBlock10Block42Block49PC := 98.
        ].
        recoveredBlock10Block42Block49Step = 98 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := (recoveredBlock10Block42Block49Stack2) confirmAddOtherMeasureData.
            recoveredBlock10Block42Block49PC := 100.
        ].
        recoveredBlock10Block42Block49Step = 100 ifTrue: [
            (recoveredBlock10Block42Block49Stack2) ifTrue: [recoveredBlock10Block42Block49PC := 110] ifFalse: [recoveredBlock10Block42Block49PC := 104].
        ].
        recoveredBlock10Block42Block49Step = 104 ifTrue: [
            recoveredBlock10Block42Block49PC := 105.
        ].
        recoveredBlock10Block42Block49Step = 105 ifTrue: [
            recoveredBlock10Block42Block49Stack1 := true.
            recoveredBlock10Block42Block49PC := 106.
        ].
        recoveredBlock10Block42Block49Step = 106 ifTrue: [
            recoveredBlock10Block42Block49Stack2 := recoveredBlock10Block42Block49Stack1.
            recoveredBlock10Block42Block49PC := 107.
        ].
        recoveredBlock10Block42Block49Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock10Block42Block49Stack2.
            recoveredBlock10Block42Block49PC := 110.
        ].
        recoveredBlock10Block42Block49Step = 110 ifTrue: [
            recoveredBlock10Block42Block49Result := recoveredBlock10Block42Block49Stack1.
            recoveredBlock10Block42Block49Done := true.
        ].
    ].
    recoveredBlock10Block42Block49Result
].
    recoveredBlock10Block42Value2 := (recoveredBlock10Block42Value0) do: (recoveredBlock10Block42Value1).
    recoveredBlock10Block42Value2
].
            recoveredBlock10PC := 114.
        ].
        recoveredBlock10Step = 114 ifTrue: [
            (recoveredBlock10Stack0) do: (recoveredBlock10Stack1).
            recoveredBlock10PC := 116.
        ].
        recoveredBlock10Step = 116 ifTrue: [
            recoveredBlock10Stack0 := self.
            recoveredBlock10PC := 117.
        ].
        recoveredBlock10Step = 117 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 118.
        ].
        recoveredBlock10Step = 118 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local2.
            recoveredBlock10PC := 119.
        ].
        recoveredBlock10Step = 119 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) acqListCleared: (recoveredBlock10Stack1) device: (recoveredBlock10Stack2).
            recoveredBlock10PC := 121.
        ].
        recoveredBlock10Step = 121 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) keysDo: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := acquisitionList.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) rewriteAcquisitionList: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204aa5ec; bytecode file offset 0xda6ed0"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
clearAcquisitionTablesFor: recoveredArg1 freeOnlineDLLChannels: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) freeDataChannelsForDevice: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultNotConnectedDevice.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) canRemoveIndividualMeasureData.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) deviceKeyOf: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 |
    recoveredBlock62Value0 := recoveredBlock62Arg1.
    recoveredBlock62Value1 := [:recoveredBlock62Block69Arg1 | 
    | recoveredBlock62Block69Value0 recoveredBlock62Block69Value1 recoveredBlock62Block69Value2 |
    recoveredBlock62Block69Value0 := recoveredBlock62Block69Arg1.
    recoveredBlock62Block69Value1 := [:recoveredBlock62Block69Block77Arg1 | 
    | recoveredBlock62Block69Block77Stack0 recoveredBlock62Block69Block77Stack1 recoveredBlock62Block69Block77Stack2 recoveredBlock62Block69Block77Stack3 recoveredBlock62Block69Block77PC recoveredBlock62Block69Block77Step recoveredBlock62Block69Block77Done recoveredBlock62Block69Block77Result |
    recoveredBlock62Block69Block77Stack0 := nil.
    recoveredBlock62Block69Block77PC := 84.
    recoveredBlock62Block69Block77Done := false.
    [recoveredBlock62Block69Block77Done not] whileTrue: [
        recoveredBlock62Block69Block77Step := recoveredBlock62Block69Block77PC.
        recoveredBlock62Block69Block77Step = 84 ifTrue: [
            recoveredBlock62Block69Block77Stack1 := nil.
            recoveredBlock62Block69Block77PC := 85.
        ].
        recoveredBlock62Block69Block77Step = 85 ifTrue: [
            recoveredBlock62Block69Block77Stack2 := recoveredBlock62Block69Block77Arg1.
            recoveredBlock62Block69Block77PC := 86.
        ].
        recoveredBlock62Block69Block77Step = 86 ifTrue: [
            recoveredBlock62Block69Block77Stack2 := (recoveredBlock62Block69Block77Stack2) removeFromDevice.
            recoveredBlock62Block69Block77PC := 88.
        ].
        recoveredBlock62Block69Block77Step = 88 ifTrue: [
            (recoveredBlock62Block69Block77Stack2) ifTrue: [recoveredBlock62Block69Block77PC := 98] ifFalse: [recoveredBlock62Block69Block77PC := 92].
        ].
        recoveredBlock62Block69Block77Step = 92 ifTrue: [
            recoveredBlock62Block69Block77PC := 93.
        ].
        recoveredBlock62Block69Block77Step = 93 ifTrue: [
            recoveredBlock62Block69Block77Stack1 := false.
            recoveredBlock62Block69Block77PC := 94.
        ].
        recoveredBlock62Block69Block77Step = 94 ifTrue: [
            recoveredBlock62Block69Block77Stack2 := recoveredBlock62Block69Block77Stack1.
            recoveredBlock62Block69Block77PC := 95.
        ].
        recoveredBlock62Block69Block77Step = 95 ifTrue: [
            recoveredLocal1 := recoveredBlock62Block69Block77Stack2.
            recoveredBlock62Block69Block77PC := 98.
        ].
        recoveredBlock62Block69Block77Step = 98 ifTrue: [
            recoveredBlock62Block69Block77Result := recoveredBlock62Block69Block77Stack1.
            recoveredBlock62Block69Block77Done := true.
        ].
    ].
    recoveredBlock62Block69Block77Result
].
    recoveredBlock62Block69Value2 := (recoveredBlock62Block69Value0) do: (recoveredBlock62Block69Value1).
    recoveredBlock62Block69Value2
].
    recoveredBlock62Value2 := (recoveredBlock62Value0) do: (recoveredBlock62Value1).
    recoveredBlock62Value2
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) acqListCleared: (recoveredStack2) device: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) clearAcquisitionTables.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) acqListCleared: (recoveredStack2) device: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e4250; bytecode file offset 0xde0b48"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
dataLogging
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) loggingDevices.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
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
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) getLoggedData.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack2 ~~ nil) ifTrue: [recoveredBlock24PC := 39] ifFalse: [recoveredBlock24PC := 36].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) disableLogging.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := loggingInfo.
    recoveredBlock44Value1 := (recoveredBlock44Value0) loggingDevices.
    recoveredBlock44Value2 := [:recoveredBlock44Block53Arg1 | 
    | recoveredBlock44Block53Stack0 recoveredBlock44Block53Stack1 recoveredBlock44Block53Stack2 recoveredBlock44Block53Stack3 recoveredBlock44Block53PC recoveredBlock44Block53Step recoveredBlock44Block53Done recoveredBlock44Block53Result |
    recoveredBlock44Block53Stack0 := self.
    recoveredBlock44Block53PC := 60.
    recoveredBlock44Block53Done := false.
    [recoveredBlock44Block53Done not] whileTrue: [
        recoveredBlock44Block53Step := recoveredBlock44Block53PC.
        recoveredBlock44Block53Step = 60 ifTrue: [
            recoveredBlock44Block53Stack1 := nil.
            recoveredBlock44Block53PC := 61.
        ].
        recoveredBlock44Block53Step = 61 ifTrue: [
            recoveredBlock44Block53Stack2 := recoveredBlock44Block53Arg1.
            recoveredBlock44Block53PC := 62.
        ].
        recoveredBlock44Block53Step = 62 ifTrue: [
            recoveredBlock44Block53Stack2 := (recoveredBlock44Block53Stack2) getLoggedData.
            recoveredBlock44Block53PC := 63.
        ].
        recoveredBlock44Block53Step = 63 ifTrue: [
            (recoveredBlock44Block53Stack2 ~~ nil) ifTrue: [recoveredBlock44Block53PC := 69] ifFalse: [recoveredBlock44Block53PC := 66].
        ].
        recoveredBlock44Block53Step = 66 ifTrue: [
            recoveredBlock44Block53PC := 67.
        ].
        recoveredBlock44Block53Step = 67 ifTrue: [
            recoveredBlock44Block53Stack1 := self.
            recoveredBlock44Block53PC := 68.
        ].
        recoveredBlock44Block53Step = 68 ifTrue: [
            recoveredBlock44Block53Stack1 := (recoveredBlock44Block53Stack1) disableLogging.
            recoveredBlock44Block53PC := 69.
        ].
        recoveredBlock44Block53Step = 69 ifTrue: [
            recoveredBlock44Block53Result := recoveredBlock44Block53Stack1.
            recoveredBlock44Block53Done := true.
        ].
    ].
    recoveredBlock44Block53Result
].
    recoveredBlock44Value3 := (recoveredBlock44Value1) do: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondsToRun: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := loggingInfo.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) loggingRaster.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceManager.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationController.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataLoggerCtrl.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) actualCycleTime: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceManager.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationController.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataLoggerCtrl.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) actualCycleTime: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := loggingInfo.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) loggingRaster.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) loggingActive.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e9778; bytecode file offset 0xde6074"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeOutputChannel: recoveredArg1 id: recoveredArg2 isLast: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureDataAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseIdOfId: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeOutputChannel: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) channelGroup.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOnlineDLLDisplayChannel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) removeData: (recoveredStack1) acqLevel: (recoveredStack2) displayChannel: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitPosition.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) device.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasNoBitDisplayChannels: (recoveredStack1) bitPosition: (recoveredStack2) acqLevel: (recoveredStack3) device: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) device.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasNoDisplayChannels: (recoveredStack1) acqLevel: (recoveredStack2) device: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitData.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitDatas.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputChannels.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeMeasureData: (recoveredStack1) isLast: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) device.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) canRemoveIndividualMeasureData.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 163] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) rewriteAcquisitionList.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f5c0c; bytecode file offset 0xdf24e8"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
acquisitionListAtName: recoveredArg1 baseName: recoveredArg2 device: recoveredArg3 group: recoveredArg4 isBit: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceKeyOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
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
            recoveredStack0 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
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
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal3.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack3 := [].
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2) ifAbsent: (recoveredBlock61Stack3).
            recoveredBlock61PC := 76.
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack2.
            recoveredBlock61PC := 78.
        ].
        recoveredBlock61Step = 78 ifTrue: [
            (recoveredBlock61Stack1 ~~ nil) ifTrue: [recoveredBlock61PC := 84] ifFalse: [recoveredBlock61PC := 82].
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            ^recoveredBlock61Stack1
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 85.
        ].
        recoveredBlock61Step = 85 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local1.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack3 := [:recoveredBlock61Block86Arg1 | 
    | recoveredBlock61Block86Value0 recoveredBlock61Block86Value1 recoveredBlock61Block86Value2 recoveredBlock61Block86Value3 |
    recoveredBlock61Block86Value0 := recoveredBlock61Block86Arg1.
    recoveredBlock61Block86Value1 := (recoveredBlock61Block86Value0) wName.
    recoveredBlock61Block86Value2 := recoveredArg2.
    recoveredBlock61Block86Value3 := (recoveredBlock61Block86Value1) = (recoveredBlock61Block86Value2).
    recoveredBlock61Block86Value3
].
            recoveredBlock61PC := 100.
        ].
        recoveredBlock61Step = 100 ifTrue: [
            recoveredBlock61Stack4 := [].
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) detect: (recoveredBlock61Stack3) ifNone: (recoveredBlock61Stack4).
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Stack2.
            recoveredBlock61PC := 105.
        ].
        recoveredBlock61Step = 105 ifTrue: [
            recoveredLocal1 := recoveredBlock61Stack3.
            recoveredBlock61PC := 108.
        ].
        recoveredBlock61Step = 108 ifTrue: [
            (recoveredBlock61Stack2 == nil) ifTrue: [recoveredBlock61PC := 164] ifFalse: [recoveredBlock61PC := 112].
        ].
        recoveredBlock61Step = 112 ifTrue: [
            recoveredBlock61PC := 113.
        ].
        recoveredBlock61Step = 113 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg5.
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 120] ifFalse: [recoveredBlock61PC := 160].
        ].
        recoveredBlock61Step = 120 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 121.
        ].
        recoveredBlock61Step = 121 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal1.
            recoveredBlock61PC := 124.
        ].
        recoveredBlock61Step = 124 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) bitDatas.
            recoveredBlock61PC := 126.
        ].
        recoveredBlock61Step = 126 ifTrue: [
            recoveredBlock61Stack3 := [:recoveredBlock61Block126Arg1 | 
    | recoveredBlock61Block126Value0 recoveredBlock61Block126Value1 recoveredBlock61Block126Value2 recoveredBlock61Block126Value3 |
    recoveredBlock61Block126Value0 := recoveredBlock61Block126Arg1.
    recoveredBlock61Block126Value1 := (recoveredBlock61Block126Value0) wName.
    recoveredBlock61Block126Value2 := recoveredArg1.
    recoveredBlock61Block126Value3 := (recoveredBlock61Block126Value1) = (recoveredBlock61Block126Value2).
    recoveredBlock61Block126Value3
].
            recoveredBlock61PC := 140.
        ].
        recoveredBlock61Step = 140 ifTrue: [
            recoveredBlock61Stack4 := [].
            recoveredBlock61PC := 142.
        ].
        recoveredBlock61Step = 142 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) detect: (recoveredBlock61Stack3) ifNone: (recoveredBlock61Stack4).
            recoveredBlock61PC := 144.
        ].
        recoveredBlock61Step = 144 ifTrue: [
            recoveredBlock61Stack3 := recoveredBlock61Stack2.
            recoveredBlock61PC := 145.
        ].
        recoveredBlock61Step = 145 ifTrue: [
            recoveredLocal1 := recoveredBlock61Stack3.
            recoveredBlock61PC := 148.
        ].
        recoveredBlock61Step = 148 ifTrue: [
            (recoveredBlock61Stack2 == nil) ifTrue: [recoveredBlock61PC := 157] ifFalse: [recoveredBlock61PC := 152].
        ].
        recoveredBlock61Step = 152 ifTrue: [
            recoveredBlock61PC := 153.
        ].
        recoveredBlock61Step = 153 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 156.
        ].
        recoveredBlock61Step = 156 ifTrue: [
            ^recoveredBlock61Stack1
        ].
        recoveredBlock61Step = 157 ifTrue: [
            recoveredBlock61PC := 164.
        ].
        recoveredBlock61Step = 160 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 163.
        ].
        recoveredBlock61Step = 163 ifTrue: [
            ^recoveredBlock61Stack1
        ].
        recoveredBlock61Step = 164 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204faea0; bytecode file offset 0xdf77a4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (String new: 10) at: 1 put: (Character value: 77); at: 2 put: (Character value: 101); at: 3 put: (Character value: 223); at: 4 put: (Character value: 108); at: 5 put: (Character value: 105); at: 6 put: (Character value: 115); at: 7 put: (Character value: 116); at: 8 put: (Character value: 101); at: 9 put: (Character value: 58); at: 10 put: (Character value: 32); yourself.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    (recoveredValue1) cr.
    recoveredValue5 := acquisitionList.
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    recoveredBlock26Value2 := recoveredBlock26Arg1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) printString.
    recoveredBlock26Value4 := ('   ') , (recoveredBlock26Value3).
    recoveredBlock26Value5 := (recoveredBlock26Value4) , (' -> ').
    (recoveredBlock26Value1) nextPutAll: (recoveredBlock26Value5).
    (recoveredBlock26Value0) cr.
    recoveredBlock26Value6 := acquisitionList.
    recoveredBlock26Value7 := recoveredBlock26Arg1.
    recoveredBlock26Value8 := (recoveredBlock26Value6) at: (recoveredBlock26Value7).
    recoveredBlock26Value9 := [:recoveredBlock26Block60Arg1 | 
    | recoveredBlock26Block60Value0 recoveredBlock26Block60Value1 recoveredBlock26Block60Value2 recoveredBlock26Block60Value3 recoveredBlock26Block60Value4 recoveredBlock26Block60Value5 recoveredBlock26Block60Value6 recoveredBlock26Block60Value7 recoveredBlock26Block60Value8 recoveredBlock26Block60Value9 recoveredBlock26Block60Value10 recoveredBlock26Block60Value11 recoveredBlock26Block60Value12 recoveredBlock26Block60Value13 |
    recoveredBlock26Block60Value0 := recoveredArg1.
    recoveredBlock26Block60Value1 := recoveredBlock26Block60Arg1.
    recoveredBlock26Block60Value2 := (recoveredBlock26Block60Value1) printString.
    recoveredBlock26Block60Value3 := ('       Gruppe ') , (recoveredBlock26Block60Value2).
    recoveredBlock26Block60Value4 := (recoveredBlock26Block60Value3) , (' -> (').
    (recoveredBlock26Block60Value0) nextPutAll: (recoveredBlock26Block60Value4).
    recoveredBlock26Block60Value5 := acquisitionList.
    recoveredBlock26Block60Value6 := recoveredBlock26Arg1.
    recoveredBlock26Block60Value7 := (recoveredBlock26Block60Value5) at: (recoveredBlock26Block60Value6).
    recoveredBlock26Block60Value8 := recoveredBlock26Block60Arg1.
    recoveredBlock26Block60Value9 := (recoveredBlock26Block60Value7) at: (recoveredBlock26Block60Value8).
    recoveredBlock26Block60Value10 := [:recoveredBlock26Block60Block92Arg1 | 
    | recoveredBlock26Block60Block92Value0 recoveredBlock26Block60Block92Value1 recoveredBlock26Block60Block92Value2 recoveredBlock26Block60Block92Value3 |
    recoveredBlock26Block60Block92Value0 := recoveredBlock26Block60Block92Arg1.
    recoveredBlock26Block60Block92Value1 := recoveredArg1.
    (recoveredBlock26Block60Block92Value0) printShortOn: (recoveredBlock26Block60Block92Value1).
    recoveredBlock26Block60Block92Value2 := recoveredArg1.
    recoveredBlock26Block60Block92Value3 := (recoveredBlock26Block60Block92Value2) nextPutAll: (' ').
    recoveredBlock26Block60Block92Value3
].
    (recoveredBlock26Block60Value9) do: (recoveredBlock26Block60Value10).
    recoveredBlock26Block60Value11 := recoveredArg1.
    recoveredBlock26Block60Value12 := recoveredBlock26Block60Value11.
    (recoveredBlock26Block60Value12) nextPutAll: (')').
    recoveredBlock26Block60Value13 := (recoveredBlock26Block60Value11) cr.
    recoveredBlock26Block60Value13
].
    recoveredBlock26Value10 := (recoveredBlock26Value8) keysDo: (recoveredBlock26Value9).
    recoveredBlock26Value10
].
    (recoveredValue5) keysDo: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPutAll: ('Geloggte Daten:').
    (recoveredValue7) cr.
    recoveredValue9 := loggingInfo.
    recoveredValue10 := (recoveredValue9) loggedDataIds.
    recoveredValue11 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 recoveredBlock143Value4 |
    recoveredBlock143Value0 := recoveredArg1.
    (recoveredBlock143Value0) nextPutAll: ('	 ').
    recoveredBlock143Value1 := recoveredBlock143Arg1.
    recoveredBlock143Value2 := recoveredArg1.
    (recoveredBlock143Value1) printShortOn: (recoveredBlock143Value2).
    recoveredBlock143Value3 := recoveredArg1.
    recoveredBlock143Value4 := (recoveredBlock143Value3) cr.
    recoveredBlock143Value4
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x204fd948; bytecode file offset 0xdfa248"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
rewriteAcquisitionListFreeOnlineDLLChannels: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) deviceAtKey: (recoveredBlock6Stack1).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            (recoveredBlock6Stack1 == nil) ifTrue: [recoveredBlock6PC := 159] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack0 := true.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack1 := 'isSerialDevice'.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) respondsTo: (recoveredBlock6Stack1).
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            (recoveredBlock6Stack0) ifTrue: [recoveredBlock6PC := 40] ifFalse: [recoveredBlock6PC := 48].
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack0 := recoveredBlock6Local1.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) isSerialDevice.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) not.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 56] ifFalse: [recoveredBlock6PC := 159].
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack0 := false.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack0.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 68.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            (recoveredBlock6Stack0) clearAcquisitionTablesFor: (recoveredBlock6Stack1) freeOnlineDLLChannels: (recoveredBlock6Stack2).
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredBlock6Stack0 := acquisitionList.
            recoveredBlock6PC := 72.
        ].
        recoveredBlock6Step = 72 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 75.
        ].
        recoveredBlock6Step = 75 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1).
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block77Arg1 | 
    | recoveredBlock6Block77Value0 recoveredBlock6Block77Value1 recoveredBlock6Block77Value2 |
    recoveredBlock6Block77Value0 := recoveredBlock6Block77Arg1.
    recoveredBlock6Block77Value1 := [:recoveredBlock6Block77Block85Arg1 | 
    | recoveredBlock6Block77Block85Stack0 recoveredBlock6Block77Block85Stack1 recoveredBlock6Block77Block85Stack2 recoveredBlock6Block77Block85Stack3 recoveredBlock6Block77Block85Stack4 recoveredBlock6Block77Block85Stack5 recoveredBlock6Block77Block85PC recoveredBlock6Block77Block85Step recoveredBlock6Block77Block85Done recoveredBlock6Block77Block85Result |
    recoveredBlock6Block77Block85Stack0 := self.
    recoveredBlock6Block77Block85PC := 92.
    recoveredBlock6Block77Block85Done := false.
    [recoveredBlock6Block77Block85Done not] whileTrue: [
        recoveredBlock6Block77Block85Step := recoveredBlock6Block77Block85PC.
        recoveredBlock6Block77Block85Step = 92 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := recoveredBlock6Block77Block85Arg1.
            recoveredBlock6Block77Block85PC := 93.
        ].
        recoveredBlock6Block77Block85Step = 93 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := false.
            recoveredBlock6Block77Block85PC := 94.
        ].
        recoveredBlock6Block77Block85Step = 94 ifTrue: [
            (recoveredBlock6Block77Block85Stack1) activeInDevice: (recoveredBlock6Block77Block85Stack2).
            recoveredBlock6Block77Block85PC := 96.
        ].
        recoveredBlock6Block77Block85Step = 96 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := nil.
            recoveredBlock6Block77Block85PC := 97.
        ].
        recoveredBlock6Block77Block85Step = 97 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := recoveredLocal2.
            recoveredBlock6Block77Block85PC := 100.
        ].
        recoveredBlock6Block77Block85Step = 100 ifTrue: [
            (recoveredBlock6Block77Block85Stack2) ifTrue: [recoveredBlock6Block77Block85PC := 153] ifFalse: [recoveredBlock6Block77Block85PC := 104].
        ].
        recoveredBlock6Block77Block85Step = 104 ifTrue: [
            recoveredBlock6Block77Block85PC := 105.
        ].
        recoveredBlock6Block77Block85Step = 105 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := recoveredBlock6Block77Block85Arg1.
            recoveredBlock6Block77Block85PC := 106.
        ].
        recoveredBlock6Block77Block85Step = 106 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) addToDevice.
            recoveredBlock6Block77Block85PC := 108.
        ].
        recoveredBlock6Block77Block85Step = 108 ifTrue: [
            (recoveredBlock6Block77Block85Stack1) ifTrue: [recoveredBlock6Block77Block85PC := 146] ifFalse: [recoveredBlock6Block77Block85PC := 112].
        ].
        recoveredBlock6Block77Block85Step = 112 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := self.
            recoveredBlock6Block77Block85PC := 113.
        ].
        recoveredBlock6Block77Block85Step = 113 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) class.
            recoveredBlock6Block77Block85PC := 115.
        ].
        recoveredBlock6Block77Block85Step = 115 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) defaultErrorClass.
            recoveredBlock6Block77Block85PC := 117.
        ].
        recoveredBlock6Block77Block85Step = 117 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := recoveredBlock6Block77Block85Arg1.
            recoveredBlock6Block77Block85PC := 118.
        ].
        recoveredBlock6Block77Block85Step = 118 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := (recoveredBlock6Block77Block85Stack2) device.
            recoveredBlock6Block77Block85PC := 120.
        ].
        recoveredBlock6Block77Block85Step = 120 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := (recoveredBlock6Block77Block85Stack2) name.
            recoveredBlock6Block77Block85PC := 122.
        ].
        recoveredBlock6Block77Block85Step = 122 ifTrue: [
            recoveredBlock6Block77Block85Stack3 := recoveredBlock6Block77Block85Arg1.
            recoveredBlock6Block77Block85PC := 123.
        ].
        recoveredBlock6Block77Block85Step = 123 ifTrue: [
            recoveredBlock6Block77Block85Stack3 := (recoveredBlock6Block77Block85Stack3) channelGroupName.
            recoveredBlock6Block77Block85PC := 125.
        ].
        recoveredBlock6Block77Block85Step = 125 ifTrue: [
            recoveredBlock6Block77Block85Stack4 := recoveredBlock6Block77Block85Arg1.
            recoveredBlock6Block77Block85PC := 126.
        ].
        recoveredBlock6Block77Block85Step = 126 ifTrue: [
            recoveredBlock6Block77Block85Stack4 := (recoveredBlock6Block77Block85Stack4) wName.
            recoveredBlock6Block77Block85PC := 128.
        ].
        recoveredBlock6Block77Block85Step = 128 ifTrue: [
            (recoveredBlock6Block77Block85Stack1) addToDevice: (recoveredBlock6Block77Block85Stack2) level: (recoveredBlock6Block77Block85Stack3) failedFor: (recoveredBlock6Block77Block85Stack4).
            recoveredBlock6Block77Block85PC := 131.
        ].
        recoveredBlock6Block77Block85Step = 131 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := self.
            recoveredBlock6Block77Block85PC := 132.
        ].
        recoveredBlock6Block77Block85Step = 132 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) class.
            recoveredBlock6Block77Block85PC := 134.
        ].
        recoveredBlock6Block77Block85Step = 134 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) defaultErrorClass.
            recoveredBlock6Block77Block85PC := 136.
        ].
        recoveredBlock6Block77Block85Step = 136 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) confirmAddOtherMeasureData.
            recoveredBlock6Block77Block85PC := 138.
        ].
        recoveredBlock6Block77Block85Step = 138 ifTrue: [
            (recoveredBlock6Block77Block85Stack1) ifTrue: [recoveredBlock6Block77Block85PC := 146] ifFalse: [recoveredBlock6Block77Block85PC := 142].
        ].
        recoveredBlock6Block77Block85Step = 142 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := true.
            recoveredBlock6Block77Block85PC := 143.
        ].
        recoveredBlock6Block77Block85Step = 143 ifTrue: [
            recoveredLocal2 := recoveredBlock6Block77Block85Stack1.
            recoveredBlock6Block77Block85PC := 146.
        ].
        recoveredBlock6Block77Block85Step = 146 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := self.
            recoveredBlock6Block77Block85PC := 147.
        ].
        recoveredBlock6Block77Block85Step = 147 ifTrue: [
            recoveredBlock6Block77Block85Stack2 := false.
            recoveredBlock6Block77Block85PC := 148.
        ].
        recoveredBlock6Block77Block85Step = 148 ifTrue: [
            recoveredBlock6Block77Block85Stack3 := recoveredBlock6Local1.
            recoveredBlock6Block77Block85PC := 151.
        ].
        recoveredBlock6Block77Block85Step = 151 ifTrue: [
            recoveredBlock6Block77Block85Stack1 := (recoveredBlock6Block77Block85Stack1) acqListCleared: (recoveredBlock6Block77Block85Stack2) device: (recoveredBlock6Block77Block85Stack3).
            recoveredBlock6Block77Block85PC := 153.
        ].
        recoveredBlock6Block77Block85Step = 153 ifTrue: [
            recoveredBlock6Block77Block85Result := recoveredBlock6Block77Block85Stack1.
            recoveredBlock6Block77Block85Done := true.
        ].
    ].
    recoveredBlock6Block77Block85Result
].
    recoveredBlock6Block77Value2 := (recoveredBlock6Block77Value0) do: (recoveredBlock6Block77Value1).
    recoveredBlock6Block77Value2
].
            recoveredBlock6PC := 157.
        ].
        recoveredBlock6Step = 157 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 159.
        ].
        recoveredBlock6Step = 159 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) keysDo: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := acquisitionList.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) rewriteAcquisitionList: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205294d4; bytecode file offset 0xe25dec"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
startAcquisition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := acquisitionList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultErrorClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) noAcquisitionBecauseNoData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) storedAfterAcquisition: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAcquisitionArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            orderedDeviceDataList := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultErrorClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) noAcquisitionBecauseNoActiveDevices.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoEnableLogging.
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
            (recoveredStack0) enableLogging.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) startShowingWorkingPoint.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack3 := self.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) class.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) defaultNotConnectedDevice.
            recoveredBlock56PC := 68.
        ].
        recoveredBlock56Step = 68 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) = (recoveredBlock56Stack3).
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 106] ifFalse: [recoveredBlock56PC := 72].
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 74.
        ].
        recoveredBlock56Step = 74 ifTrue: [
            recoveredBlock56Stack2 := self.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack3 := self.
            recoveredBlock56PC := 76.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack4 := recoveredBlock56Arg1.
            recoveredBlock56PC := 77.
        ].
        recoveredBlock56Step = 77 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) deviceAtKey: (recoveredBlock56Stack4).
            recoveredBlock56PC := 79.
        ].
        recoveredBlock56Step = 79 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) configAcquisitionInDevice: (recoveredBlock56Stack3).
            recoveredBlock56PC := 81.
        ].
        recoveredBlock56Step = 81 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 106] ifFalse: [recoveredBlock56PC := 84].
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56PC := 85.
        ].
        recoveredBlock56Step = 85 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            (recoveredBlock56Stack1) stopShowingWorkingPoint.
            recoveredBlock56PC := 88.
        ].
        recoveredBlock56Step = 88 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 89.
        ].
        recoveredBlock56Step = 89 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) autoEnableLogging.
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 94] ifFalse: [recoveredBlock56PC := 97].
        ].
        recoveredBlock56Step = 94 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 95.
        ].
        recoveredBlock56Step = 95 ifTrue: [
            (recoveredBlock56Stack1) disableLogging.
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 98.
        ].
        recoveredBlock56Step = 98 ifTrue: [
            recoveredBlock56Stack2 := self.
            recoveredBlock56PC := 99.
        ].
        recoveredBlock56Step = 99 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Arg1.
            recoveredBlock56PC := 100.
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) deviceAtKey: (recoveredBlock56Stack3).
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 102 ifTrue: [
            (recoveredBlock56Stack1) errorConfigAcquisitionFailed: (recoveredBlock56Stack2).
            recoveredBlock56PC := 104.
        ].
        recoveredBlock56Step = 104 ifTrue: [
            recoveredBlock56Stack1 := false.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            ^recoveredBlock56Stack1
        ].
        recoveredBlock56Step = 106 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOfflineBuffer.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) stopShowingWorkingPoint.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoEnableLogging.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) disableLogging.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Stack0 recoveredBlock135Stack1 recoveredBlock135Stack2 recoveredBlock135Stack3 recoveredBlock135Stack4 recoveredBlock135PC recoveredBlock135Step recoveredBlock135Done recoveredBlock135Result |
    recoveredBlock135Stack0 := self.
    recoveredBlock135PC := 142.
    recoveredBlock135Done := false.
    [recoveredBlock135Done not] whileTrue: [
        recoveredBlock135Step := recoveredBlock135PC.
        recoveredBlock135Step = 142 ifTrue: [
            recoveredBlock135Stack1 := nil.
            recoveredBlock135PC := 143.
        ].
        recoveredBlock135Step = 143 ifTrue: [
            recoveredBlock135Stack2 := recoveredBlock135Arg1.
            recoveredBlock135PC := 144.
        ].
        recoveredBlock135Step = 144 ifTrue: [
            recoveredBlock135Stack3 := self.
            recoveredBlock135PC := 145.
        ].
        recoveredBlock135Step = 145 ifTrue: [
            recoveredBlock135Stack3 := (recoveredBlock135Stack3) class.
            recoveredBlock135PC := 146.
        ].
        recoveredBlock135Step = 146 ifTrue: [
            recoveredBlock135Stack3 := (recoveredBlock135Stack3) defaultNotConnectedDevice.
            recoveredBlock135PC := 148.
        ].
        recoveredBlock135Step = 148 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) = (recoveredBlock135Stack3).
            recoveredBlock135PC := 149.
        ].
        recoveredBlock135Step = 149 ifTrue: [
            (recoveredBlock135Stack2) ifTrue: [recoveredBlock135PC := 184] ifFalse: [recoveredBlock135PC := 152].
        ].
        recoveredBlock135Step = 152 ifTrue: [
            recoveredBlock135PC := 153.
        ].
        recoveredBlock135Step = 153 ifTrue: [
            recoveredBlock135Stack1 := self.
            recoveredBlock135PC := 154.
        ].
        recoveredBlock135Step = 154 ifTrue: [
            recoveredBlock135Stack2 := recoveredBlock135Arg1.
            recoveredBlock135PC := 155.
        ].
        recoveredBlock135Step = 155 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) deviceAtKey: (recoveredBlock135Stack2).
            recoveredBlock135PC := 157.
        ].
        recoveredBlock135Step = 157 ifTrue: [
            recoveredBlock135Stack1 := (recoveredBlock135Stack1) startAcquisition.
            recoveredBlock135PC := 159.
        ].
        recoveredBlock135Step = 159 ifTrue: [
            (recoveredBlock135Stack1) ifTrue: [recoveredBlock135PC := 162] ifFalse: [recoveredBlock135PC := 170].
        ].
        recoveredBlock135Step = 162 ifTrue: [
            recoveredBlock135Stack1 := true.
            recoveredBlock135PC := 163.
        ].
        recoveredBlock135Step = 163 ifTrue: [
            recoveredBlock135Stack2 := recoveredBlock135Stack1.
            recoveredBlock135PC := 164.
        ].
        recoveredBlock135Step = 164 ifTrue: [
            acquisitionInDevices := recoveredBlock135Stack2.
            recoveredBlock135PC := 166.
        ].
        recoveredBlock135Step = 166 ifTrue: [
            recoveredBlock135PC := 184.
        ].
        recoveredBlock135Step = 170 ifTrue: [
            recoveredBlock135Stack1 := self.
            recoveredBlock135PC := 171.
        ].
        recoveredBlock135Step = 171 ifTrue: [
            recoveredBlock135Stack2 := self.
            recoveredBlock135PC := 172.
        ].
        recoveredBlock135Step = 172 ifTrue: [
            recoveredBlock135Stack3 := recoveredBlock135Arg1.
            recoveredBlock135PC := 173.
        ].
        recoveredBlock135Step = 173 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) deviceAtKey: (recoveredBlock135Stack3).
            recoveredBlock135PC := 175.
        ].
        recoveredBlock135Step = 175 ifTrue: [
            recoveredBlock135Stack2 := (recoveredBlock135Stack2) name.
            recoveredBlock135PC := 177.
        ].
        recoveredBlock135Step = 177 ifTrue: [
            (recoveredBlock135Stack1) errorStartAcquisitionFailed: (recoveredBlock135Stack2).
            recoveredBlock135PC := 179.
        ].
        recoveredBlock135Step = 179 ifTrue: [
            recoveredBlock135Stack1 := self.
            recoveredBlock135PC := 180.
        ].
        recoveredBlock135Step = 180 ifTrue: [
            (recoveredBlock135Stack1) stopAcquisition.
            recoveredBlock135PC := 182.
        ].
        recoveredBlock135Step = 182 ifTrue: [
            recoveredBlock135Stack1 := false.
            recoveredBlock135PC := 183.
        ].
        recoveredBlock135Step = 183 ifTrue: [
            ^recoveredBlock135Stack1
        ].
        recoveredBlock135Step = 184 ifTrue: [
            recoveredBlock135Result := recoveredBlock135Stack1.
            recoveredBlock135Done := true.
        ].
    ].
    recoveredBlock135Result
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := 'intern'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            triggerMode := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            onlineFlag := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) startDataAcquisitionProcess.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052c080; bytecode file offset 0xe28980"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
removeAllForDevice: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) deviceKeyOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) removeAllForDevice: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesCommonChannelGroups.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) at: (recoveredBlock55Stack2).
            recoveredBlock55PC := 68.
        ].
        recoveredBlock55Step = 68 ifTrue: [
            recoveredLocal2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 71.
        ].
        recoveredBlock55Step = 71 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal2.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack2 := [:recoveredBlock55Block74Arg1 | 
    | recoveredBlock55Block74Stack0 recoveredBlock55Block74Stack1 recoveredBlock55Block74Stack2 recoveredBlock55Block74Stack3 recoveredBlock55Block74Stack4 recoveredBlock55Block74PC recoveredBlock55Block74Step recoveredBlock55Block74Done recoveredBlock55Block74Result |
    recoveredBlock55Block74Stack0 := self.
    recoveredBlock55Block74PC := 80.
    recoveredBlock55Block74Done := false.
    [recoveredBlock55Block74Done not] whileTrue: [
        recoveredBlock55Block74Step := recoveredBlock55Block74PC.
        recoveredBlock55Block74Step = 80 ifTrue: [
            recoveredBlock55Block74Stack1 := nil.
            recoveredBlock55Block74PC := 81.
        ].
        recoveredBlock55Block74Step = 81 ifTrue: [
            recoveredBlock55Block74Stack2 := recoveredBlock55Block74Arg1.
            recoveredBlock55Block74PC := 82.
        ].
        recoveredBlock55Block74Step = 82 ifTrue: [
            recoveredBlock55Block74Stack2 := (recoveredBlock55Block74Stack2) device.
            recoveredBlock55Block74PC := 84.
        ].
        recoveredBlock55Block74Step = 84 ifTrue: [
            recoveredBlock55Block74Stack3 := recoveredArg1.
            recoveredBlock55Block74PC := 87.
        ].
        recoveredBlock55Block74Step = 87 ifTrue: [
            recoveredBlock55Block74Stack2 := (recoveredBlock55Block74Stack2) = (recoveredBlock55Block74Stack3).
            recoveredBlock55Block74PC := 88.
        ].
        recoveredBlock55Block74Step = 88 ifTrue: [
            (recoveredBlock55Block74Stack2) ifTrue: [recoveredBlock55Block74PC := 92] ifFalse: [recoveredBlock55Block74PC := 98].
        ].
        recoveredBlock55Block74Step = 92 ifTrue: [
            recoveredBlock55Block74PC := 93.
        ].
        recoveredBlock55Block74Step = 93 ifTrue: [
            recoveredBlock55Block74Stack1 := self.
            recoveredBlock55Block74PC := 94.
        ].
        recoveredBlock55Block74Step = 94 ifTrue: [
            recoveredBlock55Block74Stack2 := recoveredBlock55Block74Arg1.
            recoveredBlock55Block74PC := 95.
        ].
        recoveredBlock55Block74Step = 95 ifTrue: [
            recoveredBlock55Block74Stack3 := false.
            recoveredBlock55Block74PC := 96.
        ].
        recoveredBlock55Block74Step = 96 ifTrue: [
            recoveredBlock55Block74Stack1 := (recoveredBlock55Block74Stack1) removeMeasureData: (recoveredBlock55Block74Stack2) isLast: (recoveredBlock55Block74Stack3).
            recoveredBlock55Block74PC := 98.
        ].
        recoveredBlock55Block74Step = 98 ifTrue: [
            recoveredBlock55Block74Result := recoveredBlock55Block74Stack1.
            recoveredBlock55Block74Done := true.
        ].
    ].
    recoveredBlock55Block74Result
].
            recoveredBlock55PC := 99.
        ].
        recoveredBlock55Step = 99 ifTrue: [
            (recoveredBlock55Stack1) do: (recoveredBlock55Stack2).
            recoveredBlock55PC := 101.
        ].
        recoveredBlock55Step = 101 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 104.
        ].
        recoveredBlock55Step = 104 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) canRemoveIndividualMeasureData.
            recoveredBlock55PC := 106.
        ].
        recoveredBlock55Step = 106 ifTrue: [
            recoveredBlock55Stack2 := self.
            recoveredBlock55PC := 107.
        ].
        recoveredBlock55Step = 107 ifTrue: [
            recoveredBlock55Stack3 := recoveredArg1.
            recoveredBlock55PC := 110.
        ].
        recoveredBlock55Step = 110 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) acqListClearedDevice: (recoveredBlock55Stack3).
            recoveredBlock55PC := 112.
        ].
        recoveredBlock55Step = 112 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) & (recoveredBlock55Stack2).
            recoveredBlock55PC := 114.
        ].
        recoveredBlock55Step = 114 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 136] ifFalse: [recoveredBlock55PC := 118].
        ].
        recoveredBlock55Step = 118 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 121.
        ].
        recoveredBlock55Step = 121 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 122.
        ].
        recoveredBlock55Step = 122 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) at: (recoveredBlock55Stack2).
            recoveredBlock55PC := 124.
        ].
        recoveredBlock55Step = 124 ifTrue: [
            recoveredBlock55Stack2 := [:block2810cf30Arg1 | 
    | block2810cf30Value0 block2810cf30Value1 |
    block2810cf30Value0 := block2810cf30Arg1.
    block2810cf30Value1 := (block2810cf30Value0) addToDevice.
    block2810cf30Value1
].
            recoveredBlock55PC := 126.
        ].
        recoveredBlock55Step = 126 ifTrue: [
            recoveredBlock55PC := 134.
        ].
        recoveredBlock55Step = 134 ifTrue: [
            (recoveredBlock55Stack1) do: (recoveredBlock55Stack2).
            recoveredBlock55PC := 136.
        ].
        recoveredBlock55Step = 136 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 137.
        ].
        recoveredBlock55Step = 137 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) acqListClearedDevice: (recoveredBlock55Stack1).
            recoveredBlock55PC := 139.
        ].
        recoveredBlock55Step = 139 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack0.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) canRemoveIndividualMeasureData.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:block2810cf54Arg1 | 
    | block2810cf54Stack0 block2810cf54Stack1 block2810cf54Stack2 block2810cf54Stack3 block2810cf54PC block2810cf54Step block2810cf54Done block2810cf54Result |
    block2810cf54Stack0 := self.
    block2810cf54PC := 4.
    block2810cf54Done := false.
    [block2810cf54Done not] whileTrue: [
        block2810cf54Step := block2810cf54PC.
        block2810cf54Step = 4 ifTrue: [
            block2810cf54Stack1 := block2810cf54Arg1.
            block2810cf54PC := 5.
        ].
        block2810cf54Step = 5 ifTrue: [
            block2810cf54Stack2 := [:block2810cf78Arg1 | 
    | block2810cf78Value0 block2810cf78Value1 |
    block2810cf78Value0 := block2810cf78Arg1.
    block2810cf78Value1 := (block2810cf78Value0) removeFromDevice.
    block2810cf78Value1
].
            block2810cf54PC := 7.
        ].
        block2810cf54Step = 7 ifTrue: [
            block2810cf54PC := 14.
        ].
        block2810cf54Step = 14 ifTrue: [
            block2810cf54Stack1 := (block2810cf54Stack1) do: (block2810cf54Stack2).
            block2810cf54PC := 16.
        ].
        block2810cf54Step = 16 ifTrue: [
            block2810cf54Result := block2810cf54Stack1.
            block2810cf54Done := true.
        ].
    ].
    block2810cf54Result
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) clearAcquisitionTablesFor: (recoveredStack1) freeOnlineDLLChannels: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := acquisitionList.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054a544; bytecode file offset 0xe46e64"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
enableLogging
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDuringAcquisitionInEnableLogging.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLoggedDataDictDuringAcquisition: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) loggingDevices: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) size.
    recoveredBlock44Value3 := (recoveredBlock44Value0) + (recoveredBlock44Value2).
    recoveredBlock44Value4 := recoveredBlock44Value3.
    recoveredLocal1 := recoveredBlock44Value4.
    recoveredBlock44Value3
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) setLoggingFileName: (recoveredStack1) chnGrpNo: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeLoggingHeaderBeforeLogging.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) setLoggingHeader: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Local1 recoveredBlock109Value0 recoveredBlock109Value1 recoveredBlock109Value2 recoveredBlock109Value3 recoveredBlock109Value4 recoveredBlock109Value5 |
    recoveredBlock109Value0 := recoveredLocal2.
    recoveredBlock109Value1 := recoveredBlock109Arg1.
    recoveredBlock109Value2 := (recoveredBlock109Value0) at: (recoveredBlock109Value1).
    recoveredBlock109Value3 := recoveredBlock109Value2.
    recoveredBlock109Local1 := recoveredBlock109Value3.
    recoveredBlock109Value4 := [:recoveredBlock109Block128Arg1 | 
    | recoveredBlock109Block128Stack0 recoveredBlock109Block128Stack1 recoveredBlock109Block128Stack2 recoveredBlock109Block128Stack3 recoveredBlock109Block128Stack4 recoveredBlock109Block128Stack5 recoveredBlock109Block128Stack6 recoveredBlock109Block128PC recoveredBlock109Block128Step recoveredBlock109Block128Done recoveredBlock109Block128Result |
    recoveredBlock109Block128Stack0 := self.
    recoveredBlock109Block128PC := 134.
    recoveredBlock109Block128Done := false.
    [recoveredBlock109Block128Done not] whileTrue: [
        recoveredBlock109Block128Step := recoveredBlock109Block128PC.
        recoveredBlock109Block128Step = 134 ifTrue: [
            recoveredBlock109Block128Stack1 := nil.
            recoveredBlock109Block128PC := 135.
        ].
        recoveredBlock109Block128Step = 135 ifTrue: [
            recoveredBlock109Block128Stack2 := recoveredBlock109Arg1.
            recoveredBlock109Block128PC := 138.
        ].
        recoveredBlock109Block128Step = 138 ifTrue: [
            recoveredBlock109Block128Stack3 := recoveredBlock109Block128Arg1.
            recoveredBlock109Block128PC := 139.
        ].
        recoveredBlock109Block128Step = 139 ifTrue: [
            recoveredBlock109Block128Stack4 := recoveredBlock109Local1.
            recoveredBlock109Block128PC := 142.
        ].
        recoveredBlock109Block128Step = 142 ifTrue: [
            recoveredBlock109Block128Stack5 := recoveredBlock109Block128Arg1.
            recoveredBlock109Block128PC := 143.
        ].
        recoveredBlock109Block128Step = 143 ifTrue: [
            recoveredBlock109Block128Stack4 := (recoveredBlock109Block128Stack4) at: (recoveredBlock109Block128Stack5).
            recoveredBlock109Block128PC := 145.
        ].
        recoveredBlock109Block128Step = 145 ifTrue: [
            recoveredBlock109Block128Stack2 := (recoveredBlock109Block128Stack2) createLoggingChannelGroup: (recoveredBlock109Block128Stack3) dataList: (recoveredBlock109Block128Stack4).
            recoveredBlock109Block128PC := 147.
        ].
        recoveredBlock109Block128Step = 147 ifTrue: [
            (recoveredBlock109Block128Stack2) ifTrue: [recoveredBlock109Block128PC := 161] ifFalse: [recoveredBlock109Block128PC := 150].
        ].
        recoveredBlock109Block128Step = 150 ifTrue: [
            recoveredBlock109Block128PC := 151.
        ].
        recoveredBlock109Block128Step = 151 ifTrue: [
            recoveredBlock109Block128Stack1 := loggingInfo.
            recoveredBlock109Block128PC := 153.
        ].
        recoveredBlock109Block128Step = 153 ifTrue: [
            recoveredBlock109Block128Stack2 := Array.
            recoveredBlock109Block128PC := 155.
        ].
        recoveredBlock109Block128Step = 155 ifTrue: [
            recoveredBlock109Block128Stack2 := (recoveredBlock109Block128Stack2) new.
            recoveredBlock109Block128PC := 157.
        ].
        recoveredBlock109Block128Step = 157 ifTrue: [
            (recoveredBlock109Block128Stack1) loggingDevices: (recoveredBlock109Block128Stack2).
            recoveredBlock109Block128PC := 159.
        ].
        recoveredBlock109Block128Step = 159 ifTrue: [
            recoveredBlock109Block128Stack1 := false.
            recoveredBlock109Block128PC := 160.
        ].
        recoveredBlock109Block128Step = 160 ifTrue: [
            ^recoveredBlock109Block128Stack1
        ].
        recoveredBlock109Block128Step = 161 ifTrue: [
            recoveredBlock109Block128Result := recoveredBlock109Block128Stack1.
            recoveredBlock109Block128Done := true.
        ].
    ].
    recoveredBlock109Block128Result
].
    recoveredBlock109Value5 := (recoveredBlock109Value2) keysDo: (recoveredBlock109Value4).
    recoveredBlock109Value5
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableLogging.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) loggingActive: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceManager.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationController.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 217] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDuringAcquisitionInEnableLogging.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock204Value0 |
    recoveredBlock204Value0 := (self) dataLogging.
    recoveredBlock204Value0
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := measureProcessPrio.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056fbf4; bytecode file offset 0xe6c508"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
storeLoggedData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLoggedDataDictDuringAcquisition: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := loggingInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) storedAfterAcquisition: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredLocal1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) size.
    recoveredBlock40Value3 := (recoveredBlock40Value0) + (recoveredBlock40Value2).
    recoveredBlock40Value4 := recoveredBlock40Value3.
    recoveredLocal1 := recoveredBlock40Value4.
    recoveredBlock40Value3
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) setLoggingFileName: (recoveredStack1) chnGrpNo: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeLoggingHeaderBeforeLogging.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := loggingInfo.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) setLoggingHeader: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Local1 recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 |
    recoveredBlock105Value0 := recoveredLocal3.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (recoveredBlock105Value0) at: (recoveredBlock105Value1).
    recoveredBlock105Value3 := recoveredBlock105Value2.
    recoveredBlock105Local1 := recoveredBlock105Value3.
    recoveredBlock105Value4 := [:recoveredBlock105Block124Arg1 | 
    | recoveredBlock105Block124Stack0 recoveredBlock105Block124Stack1 recoveredBlock105Block124Stack2 recoveredBlock105Block124Stack3 recoveredBlock105Block124Stack4 recoveredBlock105Block124Stack5 recoveredBlock105Block124Stack6 recoveredBlock105Block124PC recoveredBlock105Block124Step recoveredBlock105Block124Done recoveredBlock105Block124Result |
    recoveredBlock105Block124Stack0 := self.
    recoveredBlock105Block124PC := 130.
    recoveredBlock105Block124Done := false.
    [recoveredBlock105Block124Done not] whileTrue: [
        recoveredBlock105Block124Step := recoveredBlock105Block124PC.
        recoveredBlock105Block124Step = 130 ifTrue: [
            recoveredBlock105Block124Stack1 := nil.
            recoveredBlock105Block124PC := 131.
        ].
        recoveredBlock105Block124Step = 131 ifTrue: [
            recoveredBlock105Block124Stack2 := recoveredBlock105Arg1.
            recoveredBlock105Block124PC := 134.
        ].
        recoveredBlock105Block124Step = 134 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredBlock105Block124Arg1.
            recoveredBlock105Block124PC := 135.
        ].
        recoveredBlock105Block124Step = 135 ifTrue: [
            recoveredBlock105Block124Stack4 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 138.
        ].
        recoveredBlock105Block124Step = 138 ifTrue: [
            recoveredBlock105Block124Stack5 := recoveredBlock105Block124Arg1.
            recoveredBlock105Block124PC := 139.
        ].
        recoveredBlock105Block124Step = 139 ifTrue: [
            recoveredBlock105Block124Stack4 := (recoveredBlock105Block124Stack4) at: (recoveredBlock105Block124Stack5).
            recoveredBlock105Block124PC := 141.
        ].
        recoveredBlock105Block124Step = 141 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) createLoggingChannelGroup: (recoveredBlock105Block124Stack3) dataList: (recoveredBlock105Block124Stack4).
            recoveredBlock105Block124PC := 143.
        ].
        recoveredBlock105Block124Step = 143 ifTrue: [
            (recoveredBlock105Block124Stack2) ifTrue: [recoveredBlock105Block124PC := 157] ifFalse: [recoveredBlock105Block124PC := 146].
        ].
        recoveredBlock105Block124Step = 146 ifTrue: [
            recoveredBlock105Block124PC := 147.
        ].
        recoveredBlock105Block124Step = 147 ifTrue: [
            recoveredBlock105Block124Stack1 := loggingInfo.
            recoveredBlock105Block124PC := 149.
        ].
        recoveredBlock105Block124Step = 149 ifTrue: [
            recoveredBlock105Block124Stack2 := Array.
            recoveredBlock105Block124PC := 151.
        ].
        recoveredBlock105Block124Step = 151 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) new.
            recoveredBlock105Block124PC := 153.
        ].
        recoveredBlock105Block124Step = 153 ifTrue: [
            (recoveredBlock105Block124Stack1) loggingDevices: (recoveredBlock105Block124Stack2).
            recoveredBlock105Block124PC := 155.
        ].
        recoveredBlock105Block124Step = 155 ifTrue: [
            recoveredBlock105Block124Stack1 := false.
            recoveredBlock105Block124PC := 156.
        ].
        recoveredBlock105Block124Step = 156 ifTrue: [
            ^recoveredBlock105Block124Stack1
        ].
        recoveredBlock105Block124Step = 157 ifTrue: [
            recoveredBlock105Block124Result := recoveredBlock105Block124Stack1.
            recoveredBlock105Block124Done := true.
        ].
    ].
    recoveredBlock105Block124Result
].
    recoveredBlock105Value5 := (recoveredBlock105Value2) keysDo: (recoveredBlock105Value4).
    recoveredBlock105Value5
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := interfaceManager.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [:recoveredBlock165Arg1 | 
    | recoveredBlock165Stack0 recoveredBlock165Stack1 recoveredBlock165Stack2 recoveredBlock165Stack3 recoveredBlock165PC recoveredBlock165Step recoveredBlock165Done recoveredBlock165Result |
    recoveredBlock165Stack0 := self.
    recoveredBlock165PC := 172.
    recoveredBlock165Done := false.
    [recoveredBlock165Done not] whileTrue: [
        recoveredBlock165Step := recoveredBlock165PC.
        recoveredBlock165Step = 172 ifTrue: [
            recoveredBlock165Stack1 := recoveredLocal2.
            recoveredBlock165PC := 175.
        ].
        recoveredBlock165Step = 175 ifTrue: [
            recoveredBlock165Stack2 := [:block28111b20Arg1 | 
    | block28111b20Local1 block28111b20Local2 block28111b20Stack0 block28111b20Stack1 block28111b20Stack2 block28111b20Stack3 block28111b20PC block28111b20Step block28111b20Done block28111b20Result |
    block28111b20Stack0 := self.
    block28111b20PC := 4.
    block28111b20Done := false.
    [block28111b20Done not] whileTrue: [
        block28111b20Step := block28111b20PC.
        block28111b20Step = 4 ifTrue: [
            block28111b20Stack1 := false.
            block28111b20PC := 5.
        ].
        block28111b20Step = 5 ifTrue: [
            block28111b20Local2 := block28111b20Stack1.
            block28111b20PC := 6.
        ].
        block28111b20Step = 6 ifTrue: [
            block28111b20PC := 28.
        ].
        block28111b20Step = 10 ifTrue: [
            block28111b20Stack1 := block28111b20Arg1.
            block28111b20PC := 11.
        ].
        block28111b20Step = 11 ifTrue: [
            block28111b20Stack1 := (block28111b20Stack1) getLoggedData.
            block28111b20PC := 13.
        ].
        block28111b20Step = 13 ifTrue: [
            block28111b20Stack2 := block28111b20Stack1.
            block28111b20PC := 14.
        ].
        block28111b20Step = 14 ifTrue: [
            block28111b20Local1 := block28111b20Stack2.
            block28111b20PC := 15.
        ].
        block28111b20Step = 15 ifTrue: [
            (block28111b20Stack1 == nil) ifTrue: [block28111b20PC := 24] ifFalse: [block28111b20PC := 18].
        ].
        block28111b20Step = 18 ifTrue: [
            block28111b20Stack1 := block28111b20Local1.
            block28111b20PC := 19.
        ].
        block28111b20Step = 19 ifTrue: [
            block28111b20Local2 := block28111b20Stack1.
            block28111b20PC := 20.
        ].
        block28111b20Step = 20 ifTrue: [
            block28111b20PC := 26.
        ].
        block28111b20Step = 24 ifTrue: [
            block28111b20Stack1 := true.
            block28111b20PC := 25.
        ].
        block28111b20Step = 25 ifTrue: [
            block28111b20Local2 := block28111b20Stack1.
            block28111b20PC := 26.
        ].
        block28111b20Step = 26 ifTrue: [
            block28111b20Stack1 := nil.
            block28111b20PC := 27.
        ].
        block28111b20Step = 27 ifTrue: [
            block28111b20Local1 := block28111b20Stack1.
            block28111b20PC := 28.
        ].
        block28111b20Step = 28 ifTrue: [
            block28111b20Stack1 := block28111b20Local2.
            block28111b20PC := 29.
        ].
        block28111b20Step = 29 ifTrue: [
            (block28111b20Stack1) ifTrue: [block28111b20PC := 31] ifFalse: [block28111b20PC := 10].
        ].
        block28111b20Step = 31 ifTrue: [
            block28111b20Stack1 := nil.
            block28111b20PC := 32.
        ].
        block28111b20Step = 32 ifTrue: [
            block28111b20Result := block28111b20Stack1.
            block28111b20Done := true.
        ].
    ].
    block28111b20Result
].
            recoveredBlock165PC := 177.
        ].
        recoveredBlock165Step = 177 ifTrue: [
            recoveredBlock165PC := 209.
        ].
        recoveredBlock165Step = 209 ifTrue: [
            (recoveredBlock165Stack1) do: (recoveredBlock165Stack2).
            recoveredBlock165PC := 211.
        ].
        recoveredBlock165Step = 211 ifTrue: [
            recoveredBlock165Stack0 := (recoveredBlock165Stack0) writeLoggingHeaderBeforeLogging.
            recoveredBlock165PC := 213.
        ].
        recoveredBlock165Step = 213 ifTrue: [
            (recoveredBlock165Stack0) ifTrue: [recoveredBlock165PC := 227] ifFalse: [recoveredBlock165PC := 216].
        ].
        recoveredBlock165Step = 216 ifTrue: [
            recoveredBlock165Stack0 := recoveredLocal2.
            recoveredBlock165PC := 219.
        ].
        recoveredBlock165Step = 219 ifTrue: [
            recoveredBlock165Stack0 := (recoveredBlock165Stack0) first.
            recoveredBlock165PC := 221.
        ].
        recoveredBlock165Step = 221 ifTrue: [
            recoveredBlock165Stack1 := loggingInfo.
            recoveredBlock165PC := 223.
        ].
        recoveredBlock165Step = 223 ifTrue: [
            recoveredBlock165Stack1 := (recoveredBlock165Stack1) header.
            recoveredBlock165PC := 225.
        ].
        recoveredBlock165Step = 225 ifTrue: [
            (recoveredBlock165Stack0) setLoggingHeader: (recoveredBlock165Stack1).
            recoveredBlock165PC := 227.
        ].
        recoveredBlock165Step = 227 ifTrue: [
            recoveredBlock165Stack0 := recoveredLocal2.
            recoveredBlock165PC := 230.
        ].
        recoveredBlock165Step = 230 ifTrue: [
            recoveredBlock165Stack0 := (recoveredBlock165Stack0) first.
            recoveredBlock165PC := 232.
        ].
        recoveredBlock165Step = 232 ifTrue: [
            recoveredBlock165Stack0 := (recoveredBlock165Stack0) closeLogging.
            recoveredBlock165PC := 234.
        ].
        recoveredBlock165Step = 234 ifTrue: [
            recoveredBlock165Result := recoveredBlock165Stack0.
            recoveredBlock165Done := true.
        ].
    ].
    recoveredBlock165Result
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'Data acquisition'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := 'Data acquisition'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20573db8; bytecode file offset 0xe706e4"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
readMeasureDatas
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := orderedDeviceDataList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := orderedDeviceDataList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) device.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) datasWithSmalltalkChannels.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack2 := [:block28112054Arg1 | 
    | block28112054Value0 block28112054Value1 |
    block28112054Value0 := block28112054Arg1.
    block28112054Value1 := (block28112054Value0) getAndOutputValue.
    block28112054Value1
].
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := onlineDLLManager.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 159] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) channelGroups.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack2 := [:recoveredBlock18Block58Arg1 | 
    | recoveredBlock18Block58Local1 recoveredBlock18Block58Local2 recoveredBlock18Block58Stack0 recoveredBlock18Block58Stack1 recoveredBlock18Block58Stack2 recoveredBlock18Block58Stack3 recoveredBlock18Block58Stack4 recoveredBlock18Block58PC recoveredBlock18Block58Step recoveredBlock18Block58Done recoveredBlock18Block58Result |
    recoveredBlock18Block58Stack0 := self.
    recoveredBlock18Block58PC := 64.
    recoveredBlock18Block58Done := false.
    [recoveredBlock18Block58Done not] whileTrue: [
        recoveredBlock18Block58Step := recoveredBlock18Block58PC.
        recoveredBlock18Block58Step = 64 ifTrue: [
            recoveredBlock18Block58Stack1 := onlineDLLManager.
            recoveredBlock18Block58PC := 66.
        ].
        recoveredBlock18Block58Step = 66 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredBlock18Block58Arg1.
            recoveredBlock18Block58PC := 67.
        ].
        recoveredBlock18Block58Step = 67 ifTrue: [
            recoveredBlock18Block58Stack3 := recoveredBlock18Local1.
            recoveredBlock18Block58PC := 70.
        ].
        recoveredBlock18Block58Step = 70 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) channelGroupAt: (recoveredBlock18Block58Stack2) device: (recoveredBlock18Block58Stack3).
            recoveredBlock18Block58PC := 72.
        ].
        recoveredBlock18Block58Step = 72 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58PC := 73.
        ].
        recoveredBlock18Block58Step = 73 ifTrue: [
            recoveredBlock18Block58Local1 := recoveredBlock18Block58Stack2.
            recoveredBlock18Block58PC := 74.
        ].
        recoveredBlock18Block58Step = 74 ifTrue: [
            (recoveredBlock18Block58Stack1 ~~ nil) ifTrue: [recoveredBlock18Block58PC := 84] ifFalse: [recoveredBlock18Block58PC := 78].
        ].
        recoveredBlock18Block58Step = 78 ifTrue: [
            recoveredBlock18Block58Stack1 := maxDataNumber.
            recoveredBlock18Block58PC := 80.
        ].
        recoveredBlock18Block58Step = 80 ifTrue: [
            recoveredBlock18Block58Local2 := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58PC := 81.
        ].
        recoveredBlock18Block58Step = 81 ifTrue: [
            recoveredBlock18Block58PC := 98.
        ].
        recoveredBlock18Block58Step = 84 ifTrue: [
            recoveredBlock18Block58Stack1 := maxDataNumber.
            recoveredBlock18Block58PC := 86.
        ].
        recoveredBlock18Block58Step = 86 ifTrue: [
            recoveredBlock18Block58Stack2 := #[0 0 0 0 0 64 175 64].
            recoveredBlock18Block58PC := 88.
        ].
        recoveredBlock18Block58Step = 88 ifTrue: [
            recoveredBlock18Block58Stack3 := recoveredBlock18Block58Local1.
            recoveredBlock18Block58PC := 89.
        ].
        recoveredBlock18Block58Step = 89 ifTrue: [
            recoveredBlock18Block58Stack3 := (recoveredBlock18Block58Stack3) dataChannels.
            recoveredBlock18Block58PC := 91.
        ].
        recoveredBlock18Block58Step = 91 ifTrue: [
            recoveredBlock18Block58Stack3 := (recoveredBlock18Block58Stack3) size.
            recoveredBlock18Block58PC := 93.
        ].
        recoveredBlock18Block58Step = 93 ifTrue: [
            recoveredBlock18Block58Stack2 := (recoveredBlock18Block58Stack2) / (recoveredBlock18Block58Stack3).
            recoveredBlock18Block58PC := 95.
        ].
        recoveredBlock18Block58Step = 95 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) min: (recoveredBlock18Block58Stack2).
            recoveredBlock18Block58PC := 97.
        ].
        recoveredBlock18Block58Step = 97 ifTrue: [
            recoveredBlock18Block58Local2 := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58PC := 98.
        ].
        recoveredBlock18Block58Step = 98 ifTrue: [
            recoveredBlock18Block58Stack1 := recoveredBlock18Local1.
            recoveredBlock18Block58PC := 101.
        ].
        recoveredBlock18Block58Step = 101 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredBlock18Block58Arg1.
            recoveredBlock18Block58PC := 102.
        ].
        recoveredBlock18Block58Step = 102 ifTrue: [
            recoveredBlock18Block58Stack3 := recoveredBlock18Block58Local2.
            recoveredBlock18Block58PC := 103.
        ].
        recoveredBlock18Block58Step = 103 ifTrue: [
            recoveredBlock18Block58Stack3 := (recoveredBlock18Block58Stack3) asInteger.
            recoveredBlock18Block58PC := 105.
        ].
        recoveredBlock18Block58Step = 105 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) getNewDataFromGroup: (recoveredBlock18Block58Stack2) maxData: (recoveredBlock18Block58Stack3).
            recoveredBlock18Block58PC := 107.
        ].
        recoveredBlock18Block58Step = 107 ifTrue: [
            recoveredLocal3 := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58PC := 110.
        ].
        recoveredBlock18Block58Step = 110 ifTrue: [
            recoveredBlock18Block58Stack1 := recoveredLocal3.
            recoveredBlock18Block58PC := 113.
        ].
        recoveredBlock18Block58Step = 113 ifTrue: [
            recoveredBlock18Block58Stack2 := 0.
            recoveredBlock18Block58PC := 115.
        ].
        recoveredBlock18Block58Step = 115 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) > (recoveredBlock18Block58Stack2).
            recoveredBlock18Block58PC := 116.
        ].
        recoveredBlock18Block58Step = 116 ifTrue: [
            recoveredBlock18Block58Stack2 := onlineDLLManager.
            recoveredBlock18Block58PC := 118.
        ].
        recoveredBlock18Block58Step = 118 ifTrue: [
            recoveredBlock18Block58Stack2 := (recoveredBlock18Block58Stack2) notNil.
            recoveredBlock18Block58PC := 119.
        ].
        recoveredBlock18Block58Step = 119 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) & (recoveredBlock18Block58Stack2).
            recoveredBlock18Block58PC := 121.
        ].
        recoveredBlock18Block58Step = 121 ifTrue: [
            (recoveredBlock18Block58Stack1) ifTrue: [recoveredBlock18Block58PC := 124] ifFalse: [recoveredBlock18Block58PC := 140].
        ].
        recoveredBlock18Block58Step = 124 ifTrue: [
            recoveredBlock18Block58Stack1 := onlineDLLManager.
            recoveredBlock18Block58PC := 126.
        ].
        recoveredBlock18Block58Step = 126 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredBlock18Block58Arg1.
            recoveredBlock18Block58PC := 127.
        ].
        recoveredBlock18Block58Step = 127 ifTrue: [
            recoveredBlock18Block58Stack3 := recoveredBlock18Local1.
            recoveredBlock18Block58PC := 130.
        ].
        recoveredBlock18Block58Step = 130 ifTrue: [
            (recoveredBlock18Block58Stack1) syncGroup: (recoveredBlock18Block58Stack2) device: (recoveredBlock18Block58Stack3).
            recoveredBlock18Block58PC := 132.
        ].
        recoveredBlock18Block58Step = 132 ifTrue: [
            recoveredBlock18Block58Stack1 := true.
            recoveredBlock18Block58PC := 133.
        ].
        recoveredBlock18Block58Step = 133 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58PC := 134.
        ].
        recoveredBlock18Block58Step = 134 ifTrue: [
            recoveredLocal2 := recoveredBlock18Block58Stack2.
            recoveredBlock18Block58PC := 137.
        ].
        recoveredBlock18Block58Step = 137 ifTrue: [
            recoveredBlock18Block58PC := 156.
        ].
        recoveredBlock18Block58Step = 140 ifTrue: [
            recoveredBlock18Block58Stack1 := nil.
            recoveredBlock18Block58PC := 141.
        ].
        recoveredBlock18Block58Step = 141 ifTrue: [
            recoveredBlock18Block58Stack2 := recoveredLocal3.
            recoveredBlock18Block58PC := 144.
        ].
        recoveredBlock18Block58Step = 144 ifTrue: [
            recoveredBlock18Block58Stack3 := 0.
            recoveredBlock18Block58PC := 146.
        ].
        recoveredBlock18Block58Step = 146 ifTrue: [
            recoveredBlock18Block58Stack2 := (recoveredBlock18Block58Stack2) < (recoveredBlock18Block58Stack3).
            recoveredBlock18Block58PC := 147.
        ].
        recoveredBlock18Block58Step = 147 ifTrue: [
            (recoveredBlock18Block58Stack2) ifTrue: [recoveredBlock18Block58PC := 150] ifFalse: [recoveredBlock18Block58PC := 156].
        ].
        recoveredBlock18Block58Step = 150 ifTrue: [
            recoveredBlock18Block58PC := 151.
        ].
        recoveredBlock18Block58Step = 151 ifTrue: [
            recoveredBlock18Block58Stack1 := interfaceManager.
            recoveredBlock18Block58PC := 153.
        ].
        recoveredBlock18Block58Step = 153 ifTrue: [
            recoveredBlock18Block58Stack1 := (recoveredBlock18Block58Stack1) emergencyStopAcquisition.
            recoveredBlock18Block58PC := 155.
        ].
        recoveredBlock18Block58Step = 155 ifTrue: [
            ^recoveredBlock18Block58Stack1
        ].
        recoveredBlock18Block58Step = 156 ifTrue: [
            recoveredBlock18Block58Result := recoveredBlock18Block58Stack1.
            recoveredBlock18Block58Done := true.
        ].
    ].
    recoveredBlock18Block58Result
].
            recoveredBlock18PC := 157.
        ].
        recoveredBlock18Step = 157 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) do: (recoveredBlock18Stack2).
            recoveredBlock18PC := 159.
        ].
        recoveredBlock18Step = 159 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) drawAllCurvesInc.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) notANumberOccured.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 'DET37360'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionInternalNonFatalNumericalSimulationErrors.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 211].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultErrorClass.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNotANumberOccured: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := interfaceManager.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) emergencyStopAcquisition.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultErrorClass.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNotANumberOccured: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) logDataInDevices.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := displayTriggerReceiver.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 247] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := displayTriggerReceiver.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) evaluateTrigger.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            displayTriggerReceiver := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205834d0; bytecode file offset 0xe7fdec"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createLoggedDataDictDuringAcquisition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := loggingInfo.
    recoveredValue3 := (recoveredValue2) loggedDataIds.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13Stack7 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) device.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) loggingChannelGroup.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 42] ifFalse: [recoveredBlock13PC := 68].
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isActiveInDevice.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) canStoreDataDuringAcquisition.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) & (recoveredBlock13Stack2).
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) storeDuringAcquisition.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) & (recoveredBlock13Stack2).
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isActiveInDevice.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) canStoreData.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) & (recoveredBlock13Stack2).
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isStoredDuringAcquisition.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) not.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) & (recoveredBlock13Stack2).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 92.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal2.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 98] ifFalse: [recoveredBlock13PC := 256].
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) usesCommonChannelGroups.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 108] ifFalse: [recoveredBlock13PC := 137].
        ].
        recoveredBlock13Step = 108 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal5.
            recoveredBlock13PC := 111.
        ].
        recoveredBlock13Step = 111 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) keys.
            recoveredBlock13PC := 113.
        ].
        recoveredBlock13Step = 113 ifTrue: [
            recoveredBlock13Stack2 := [:block2811320cArg1 | 
    | block2811320cValue0 block2811320cValue1 |
    block2811320cValue0 := block2811320cArg1.
    block2811320cValue1 := (block2811320cValue0) usesCommonChannelGroups.
    block2811320cValue1
].
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack3 := [
    | recoveredBlock13Block122Value0 |
    recoveredBlock13Block122Value0 := recoveredBlock13Local1.
    recoveredBlock13Block122Value0
].
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) detect: (recoveredBlock13Stack2) ifNone: (recoveredBlock13Stack3).
            recoveredBlock13PC := 134.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 137.
        ].
        recoveredBlock13Step = 137 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal5.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) includesKey: (recoveredBlock13Stack2).
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 159] ifFalse: [recoveredBlock13PC := 148].
        ].
        recoveredBlock13Step = 148 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal5.
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 154.
        ].
        recoveredBlock13Step = 154 ifTrue: [
            recoveredBlock13Stack3 := Dictionary.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) new.
            recoveredBlock13PC := 157.
        ].
        recoveredBlock13Step = 157 ifTrue: [
            (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 159.
        ].
        recoveredBlock13Step = 159 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal5.
            recoveredBlock13PC := 162.
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 173.
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 176.
        ].
        recoveredBlock13Step = 176 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) includesKey: (recoveredBlock13Stack2).
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 193] ifFalse: [recoveredBlock13PC := 182].
        ].
        recoveredBlock13Step = 182 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 188.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack3 := OrderedCollection.
            recoveredBlock13PC := 190.
        ].
        recoveredBlock13Step = 190 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) new.
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 196.
        ].
        recoveredBlock13Step = 196 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 201.
        ].
        recoveredBlock13Step = 201 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            recoveredBlock13Stack1 := onlineDLLManager.
            recoveredBlock13PC := 208.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            (recoveredBlock13Stack1 ~~ nil) ifTrue: [recoveredBlock13PC := 220] ifFalse: [recoveredBlock13PC := 212].
        ].
        recoveredBlock13Step = 212 ifTrue: [
            recoveredBlock13Stack1 := false.
            recoveredBlock13PC := 213.
        ].
        recoveredBlock13Step = 213 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 216.
        ].
        recoveredBlock13Step = 216 ifTrue: [
            recoveredBlock13PC := 245.
        ].
        recoveredBlock13Step = 220 ifTrue: [
            recoveredBlock13Stack1 := onlineDLLManager.
            recoveredBlock13PC := 222.
        ].
        recoveredBlock13Step = 222 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 225.
        ].
        recoveredBlock13Step = 225 ifTrue: [
            recoveredBlock13Stack3 := nil.
            recoveredBlock13PC := 226.
        ].
        recoveredBlock13Step = 226 ifTrue: [
            recoveredBlock13Stack4 := self.
            recoveredBlock13PC := 227.
        ].
        recoveredBlock13Step = 227 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Arg1.
            recoveredBlock13PC := 230.
        ].
        recoveredBlock13Step = 230 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) channelGroupOfId: (recoveredBlock13Stack5).
            recoveredBlock13PC := 232.
        ].
        recoveredBlock13Step = 232 ifTrue: [
            recoveredBlock13Stack5 := self.
            recoveredBlock13PC := 233.
        ].
        recoveredBlock13Step = 233 ifTrue: [
            recoveredBlock13Stack6 := recoveredBlock13Arg1.
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack5 := (recoveredBlock13Stack5) deviceOfId: (recoveredBlock13Stack6).
            recoveredBlock13PC := 238.
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasNoBitDisplayChannels: (recoveredBlock13Stack2) bitPosition: (recoveredBlock13Stack3) acqLevel: (recoveredBlock13Stack4) device: (recoveredBlock13Stack5).
            recoveredBlock13PC := 241.
        ].
        recoveredBlock13Step = 241 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) not.
            recoveredBlock13PC := 242.
        ].
        recoveredBlock13Step = 242 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 245.
        ].
        recoveredBlock13Step = 245 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 246.
        ].
        recoveredBlock13Step = 246 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 249.
        ].
        recoveredBlock13Step = 249 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) measureDataAt: (recoveredBlock13Stack2).
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 254.
        ].
        recoveredBlock13Step = 254 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasOnlineDLLOutputChannels: (recoveredBlock13Stack2).
            recoveredBlock13PC := 256.
        ].
        recoveredBlock13Step = 256 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal5.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20596f44; bytecode file offset 0xe93868"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
readMeasureDatasWithRation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := orderedDeviceDataList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) logDataInDevices.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := orderedDeviceDataList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := orderedDeviceDataList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) device.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) datasWithSmalltalkChannels.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := interfaceManager.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) \\ (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) getAndOutputValue.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIntecrioBackanimation.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) updateCalibrationValuesFromTarget: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := onlineDLLManager.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) channelGroups.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := onlineDLLManager.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := recoveredLocal11.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) channelGroupAt: (recoveredStack3) device: (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := maxDataNumber.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := maxDataNumber.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 64 175 64].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) dataChannels.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) / (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := (recoveredStack4) asInteger.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) getNewDataFromGroup: (recoveredStack3) maxData: (recoveredStack4).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := onlineDLLManager.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) notNil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := onlineDLLManager.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal11.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) syncGroup: (recoveredStack3) device: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := interfaceManager.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) emergencyStopAcquisition.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 108] ifFalse: [recoveredLocal3 := nil. recoveredPC := 217]] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 215] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 32] ifFalse: [recoveredLocal4 := nil. recoveredPC := 234]] ifFalse: [recoveredPC := 223].
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) drawAllCurvesInc.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := onlineDLLManager.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) notANumberOccured.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := interfaceManager.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) emergencyStopAcquisition.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultErrorClass.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNotANumberOccured: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := displayTriggerReceiver.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 281] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := displayTriggerReceiver.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) evaluateTrigger.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            displayTriggerReceiver := recoveredStack0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b48e4; bytecode file offset 0xeb1220"
!RBMeasureDataAcquisitionManager methodsFor: 'recovered'!
createAcquisitionArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := acquisitionList.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := acquisitionList.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15Stack5 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) deviceAtKey: (recoveredBlock15Stack1).
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack1 == nil) ifTrue: [recoveredBlock15PC := 304] ifFalse: [recoveredBlock15PC := 36].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack0 := acquisitionList.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) at: (recoveredBlock15Stack1).
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredLocal5 := recoveredBlock15Stack0.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack0 := OrderedCollection.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack1 := 20.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) new: (recoveredBlock15Stack1).
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredLocal6 := recoveredBlock15Stack0.
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack0 := OrderedCollection.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) new.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredLocal3 := recoveredBlock15Stack0.
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal5.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack1 := [:recoveredBlock15Block65Arg1 :recoveredBlock15Block65Arg2 | 
    | recoveredBlock15Block65Stack0 recoveredBlock15Block65Stack1 recoveredBlock15Block65Stack2 recoveredBlock15Block65Stack3 recoveredBlock15Block65Stack4 recoveredBlock15Block65Stack5 recoveredBlock15Block65PC recoveredBlock15Block65Step recoveredBlock15Block65Done recoveredBlock15Block65Result |
    recoveredBlock15Block65Stack0 := self.
    recoveredBlock15Block65PC := 72.
    recoveredBlock15Block65Done := false.
    [recoveredBlock15Block65Done not] whileTrue: [
        recoveredBlock15Block65Step := recoveredBlock15Block65PC.
        recoveredBlock15Block65Step = 72 ifTrue: [
            recoveredBlock15Block65Stack1 := false.
            recoveredBlock15Block65PC := 73.
        ].
        recoveredBlock15Block65Step = 73 ifTrue: [
            recoveredLocal1 := recoveredBlock15Block65Stack1.
            recoveredBlock15Block65PC := 76.
        ].
        recoveredBlock15Block65Step = 76 ifTrue: [
            recoveredBlock15Block65Stack1 := recoveredBlock15Local1.
            recoveredBlock15Block65PC := 79.
        ].
        recoveredBlock15Block65Step = 79 ifTrue: [
            recoveredBlock15Block65Stack1 := (recoveredBlock15Block65Stack1) usesCommonChannelGroups.
            recoveredBlock15Block65PC := 81.
        ].
        recoveredBlock15Block65Step = 81 ifTrue: [
            (recoveredBlock15Block65Stack1) ifTrue: [recoveredBlock15Block65PC := 84] ifFalse: [recoveredBlock15Block65PC := 113].
        ].
        recoveredBlock15Block65Step = 84 ifTrue: [
            recoveredBlock15Block65Stack1 := recoveredBlock15Block65Arg2.
            recoveredBlock15Block65PC := 85.
        ].
        recoveredBlock15Block65Step = 85 ifTrue: [
            recoveredBlock15Block65Stack2 := [:block28116ea8Arg1 | 
    | block28116ea8Value0 block28116ea8Value1 block28116ea8Value2 |
    block28116ea8Value0 := block28116ea8Arg1.
    block28116ea8Value1 := (block28116ea8Value0) isActiveInDevice.
    block28116ea8Value2 := (block28116ea8Value1) not.
    block28116ea8Value2
].
            recoveredBlock15Block65PC := 87.
        ].
        recoveredBlock15Block65Step = 87 ifTrue: [
            recoveredBlock15Block65PC := 95.
        ].
        recoveredBlock15Block65Step = 95 ifTrue: [
            recoveredBlock15Block65Stack3 := [].
            recoveredBlock15Block65PC := 97.
        ].
        recoveredBlock15Block65Step = 97 ifTrue: [
            recoveredBlock15Block65Stack1 := (recoveredBlock15Block65Stack1) detect: (recoveredBlock15Block65Stack2) ifNone: (recoveredBlock15Block65Stack3).
            recoveredBlock15Block65PC := 99.
        ].
        recoveredBlock15Block65Step = 99 ifTrue: [
            (recoveredBlock15Block65Stack1 == nil) ifTrue: [recoveredBlock15Block65PC := 113] ifFalse: [recoveredBlock15Block65PC := 102].
        ].
        recoveredBlock15Block65Step = 102 ifTrue: [
            recoveredBlock15Block65Stack1 := self.
            recoveredBlock15Block65PC := 103.
        ].
        recoveredBlock15Block65Step = 103 ifTrue: [
            recoveredBlock15Block65Stack2 := recoveredBlock15Local1.
            recoveredBlock15Block65PC := 106.
        ].
        recoveredBlock15Block65Step = 106 ifTrue: [
            recoveredBlock15Block65Stack3 := recoveredBlock15Block65Arg1.
            recoveredBlock15Block65PC := 107.
        ].
        recoveredBlock15Block65Step = 107 ifTrue: [
            (recoveredBlock15Block65Stack1) errorNoAcquisitionBecauseInactiveDataDevice: (recoveredBlock15Block65Stack2) channelGroup: (recoveredBlock15Block65Stack3).
            recoveredBlock15Block65PC := 109.
        ].
        recoveredBlock15Block65Step = 109 ifTrue: [
            recoveredBlock15Block65Stack1 := true.
            recoveredBlock15Block65PC := 110.
        ].
        recoveredBlock15Block65Step = 110 ifTrue: [
            recoveredLocal1 := recoveredBlock15Block65Stack1.
            recoveredBlock15Block65PC := 113.
        ].
        recoveredBlock15Block65Step = 113 ifTrue: [
            recoveredBlock15Block65Stack1 := nil.
            recoveredBlock15Block65PC := 114.
        ].
        recoveredBlock15Block65Step = 114 ifTrue: [
            recoveredBlock15Block65Stack2 := recoveredLocal1.
            recoveredBlock15Block65PC := 117.
        ].
        recoveredBlock15Block65Step = 117 ifTrue: [
            (recoveredBlock15Block65Stack2) ifTrue: [recoveredBlock15Block65PC := 235] ifFalse: [recoveredBlock15Block65PC := 120].
        ].
        recoveredBlock15Block65Step = 120 ifTrue: [
            recoveredBlock15Block65PC := 121.
        ].
        recoveredBlock15Block65Step = 121 ifTrue: [
            recoveredBlock15Block65Stack1 := false.
            recoveredBlock15Block65PC := 122.
        ].
        recoveredBlock15Block65Step = 122 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block65Stack1.
            recoveredBlock15Block65PC := 125.
        ].
        recoveredBlock15Block65Step = 125 ifTrue: [
            recoveredBlock15Block65Stack1 := recoveredBlock15Block65Arg2.
            recoveredBlock15Block65PC := 126.
        ].
        recoveredBlock15Block65Step = 126 ifTrue: [
            recoveredBlock15Block65Stack2 := [:recoveredBlock15Block65Block126Arg1 | 
    | recoveredBlock15Block65Block126Stack0 recoveredBlock15Block65Block126Stack1 recoveredBlock15Block65Block126Stack2 recoveredBlock15Block65Block126Stack3 recoveredBlock15Block65Block126Stack4 recoveredBlock15Block65Block126Stack5 recoveredBlock15Block65Block126Stack6 recoveredBlock15Block65Block126PC recoveredBlock15Block65Block126Step recoveredBlock15Block65Block126Done recoveredBlock15Block65Block126Result |
    recoveredBlock15Block65Block126Stack0 := nil.
    recoveredBlock15Block65Block126PC := 132.
    recoveredBlock15Block65Block126Done := false.
    [recoveredBlock15Block65Block126Done not] whileTrue: [
        recoveredBlock15Block65Block126Step := recoveredBlock15Block65Block126PC.
        recoveredBlock15Block65Block126Step = 132 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := nil.
            recoveredBlock15Block65Block126PC := 133.
        ].
        recoveredBlock15Block65Block126Step = 133 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 134.
        ].
        recoveredBlock15Block65Block126Step = 134 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) isActiveInDevice.
            recoveredBlock15Block65Block126PC := 136.
        ].
        recoveredBlock15Block65Block126Step = 136 ifTrue: [
            (recoveredBlock15Block65Block126Stack2) ifTrue: [recoveredBlock15Block65Block126PC := 140] ifFalse: [recoveredBlock15Block65Block126PC := 195].
        ].
        recoveredBlock15Block65Block126Step = 140 ifTrue: [
            recoveredBlock15Block65Block126PC := 141.
        ].
        recoveredBlock15Block65Block126Step = 141 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := true.
            recoveredBlock15Block65Block126PC := 142.
        ].
        recoveredBlock15Block65Block126Step = 142 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block65Block126Stack1.
            recoveredBlock15Block65Block126PC := 145.
        ].
        recoveredBlock15Block65Block126Step = 145 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 146.
        ].
        recoveredBlock15Block65Block126Step = 146 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 147.
        ].
        recoveredBlock15Block65Block126Step = 147 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) storeDuringAcquisition.
            recoveredBlock15Block65Block126PC := 149.
        ].
        recoveredBlock15Block65Block126Step = 149 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := recoveredBlock15Local1.
            recoveredBlock15Block65Block126PC := 152.
        ].
        recoveredBlock15Block65Block126Step = 152 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := (recoveredBlock15Block65Block126Stack3) canStoreDataDuringAcquisition.
            recoveredBlock15Block65Block126PC := 154.
        ].
        recoveredBlock15Block65Block126Step = 154 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) & (recoveredBlock15Block65Block126Stack3).
            recoveredBlock15Block65Block126PC := 156.
        ].
        recoveredBlock15Block65Block126Step = 156 ifTrue: [
            (recoveredBlock15Block65Block126Stack1) isStoredDuringAcquisition: (recoveredBlock15Block65Block126Stack2).
            recoveredBlock15Block65Block126PC := 158.
        ].
        recoveredBlock15Block65Block126Step = 158 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := nil.
            recoveredBlock15Block65Block126PC := 159.
        ].
        recoveredBlock15Block65Block126Step = 159 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 160.
        ].
        recoveredBlock15Block65Block126Step = 160 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) outputChannels.
            recoveredBlock15Block65Block126PC := 162.
        ].
        recoveredBlock15Block65Block126Step = 162 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) notEmpty.
            recoveredBlock15Block65Block126PC := 164.
        ].
        recoveredBlock15Block65Block126Step = 164 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 165.
        ].
        recoveredBlock15Block65Block126Step = 165 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := (recoveredBlock15Block65Block126Stack3) bitDatas.
            recoveredBlock15Block65Block126PC := 167.
        ].
        recoveredBlock15Block65Block126Step = 167 ifTrue: [
            recoveredBlock15Block65Block126Stack4 := [:block28116eccArg1 | 
    | block28116eccValue0 block28116eccValue1 block28116eccValue2 |
    block28116eccValue0 := block28116eccArg1.
    block28116eccValue1 := (block28116eccValue0) outputChannels.
    block28116eccValue2 := (block28116eccValue1) notEmpty.
    block28116eccValue2
].
            recoveredBlock15Block65Block126PC := 169.
        ].
        recoveredBlock15Block65Block126Step = 169 ifTrue: [
            recoveredBlock15Block65Block126PC := 178.
        ].
        recoveredBlock15Block65Block126Step = 178 ifTrue: [
            recoveredBlock15Block65Block126Stack5 := [].
            recoveredBlock15Block65Block126PC := 180.
        ].
        recoveredBlock15Block65Block126Step = 180 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := (recoveredBlock15Block65Block126Stack3) detect: (recoveredBlock15Block65Block126Stack4) ifNone: (recoveredBlock15Block65Block126Stack5).
            recoveredBlock15Block65Block126PC := 182.
        ].
        recoveredBlock15Block65Block126Step = 182 ifTrue: [
            recoveredBlock15Block65Block126Stack3 := (recoveredBlock15Block65Block126Stack3) notNil.
            recoveredBlock15Block65Block126PC := 183.
        ].
        recoveredBlock15Block65Block126Step = 183 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := (recoveredBlock15Block65Block126Stack2) | (recoveredBlock15Block65Block126Stack3).
            recoveredBlock15Block65Block126PC := 185.
        ].
        recoveredBlock15Block65Block126Step = 185 ifTrue: [
            (recoveredBlock15Block65Block126Stack2) ifTrue: [recoveredBlock15Block65Block126PC := 188] ifFalse: [recoveredBlock15Block65Block126PC := 195].
        ].
        recoveredBlock15Block65Block126Step = 188 ifTrue: [
            recoveredBlock15Block65Block126PC := 189.
        ].
        recoveredBlock15Block65Block126Step = 189 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := recoveredLocal6.
            recoveredBlock15Block65Block126PC := 192.
        ].
        recoveredBlock15Block65Block126Step = 192 ifTrue: [
            recoveredBlock15Block65Block126Stack2 := recoveredBlock15Block65Block126Arg1.
            recoveredBlock15Block65Block126PC := 193.
        ].
        recoveredBlock15Block65Block126Step = 193 ifTrue: [
            recoveredBlock15Block65Block126Stack1 := (recoveredBlock15Block65Block126Stack1) add: (recoveredBlock15Block65Block126Stack2).
            recoveredBlock15Block65Block126PC := 195.
        ].
        recoveredBlock15Block65Block126Step = 195 ifTrue: [
            recoveredBlock15Block65Block126Result := recoveredBlock15Block65Block126Stack1.
            recoveredBlock15Block65Block126Done := true.
        ].
    ].
    recoveredBlock15Block65Block126Result
].
            recoveredBlock15Block65PC := 196.
        ].
        recoveredBlock15Block65Step = 196 ifTrue: [
            (recoveredBlock15Block65Stack1) do: (recoveredBlock15Block65Stack2).
            recoveredBlock15Block65PC := 198.
        ].
        recoveredBlock15Block65Step = 198 ifTrue: [
            recoveredBlock15Block65Stack1 := nil.
            recoveredBlock15Block65PC := 199.
        ].
        recoveredBlock15Block65Step = 199 ifTrue: [
            recoveredBlock15Block65Stack2 := recoveredLocal2.
            recoveredBlock15Block65PC := 202.
        ].
        recoveredBlock15Block65Step = 202 ifTrue: [
            (recoveredBlock15Block65Stack2) ifTrue: [recoveredBlock15Block65PC := 206] ifFalse: [recoveredBlock15Block65PC := 235].
        ].
        recoveredBlock15Block65Step = 206 ifTrue: [
            recoveredBlock15Block65PC := 207.
        ].
        recoveredBlock15Block65Step = 207 ifTrue: [
            recoveredBlock15Block65Stack1 := nil.
            recoveredBlock15Block65PC := 208.
        ].
        recoveredBlock15Block65Step = 208 ifTrue: [
            recoveredBlock15Block65Stack2 := self.
            recoveredBlock15Block65PC := 209.
        ].
        recoveredBlock15Block65Step = 209 ifTrue: [
            recoveredBlock15Block65Stack2 := (recoveredBlock15Block65Stack2) onlineDLLManager.
            recoveredBlock15Block65PC := 211.
        ].
        recoveredBlock15Block65Step = 211 ifTrue: [
            (recoveredBlock15Block65Stack2 == nil) ifTrue: [recoveredBlock15Block65PC := 235] ifFalse: [recoveredBlock15Block65PC := 214].
        ].
        recoveredBlock15Block65Step = 214 ifTrue: [
            recoveredBlock15Block65PC := 215.
        ].
        recoveredBlock15Block65Step = 215 ifTrue: [
            recoveredBlock15Block65Stack1 := nil.
            recoveredBlock15Block65PC := 216.
        ].
        recoveredBlock15Block65Step = 216 ifTrue: [
            recoveredBlock15Block65Stack2 := self.
            recoveredBlock15Block65PC := 217.
        ].
        recoveredBlock15Block65Step = 217 ifTrue: [
            recoveredBlock15Block65Stack2 := (recoveredBlock15Block65Stack2) onlineDLLManager.
            recoveredBlock15Block65PC := 219.
        ].
        recoveredBlock15Block65Step = 219 ifTrue: [
            recoveredBlock15Block65Stack3 := recoveredBlock15Block65Arg1.
            recoveredBlock15Block65PC := 220.
        ].
        recoveredBlock15Block65Step = 220 ifTrue: [
            recoveredBlock15Block65Stack4 := recoveredBlock15Local1.
            recoveredBlock15Block65PC := 223.
        ].
        recoveredBlock15Block65Step = 223 ifTrue: [
            recoveredBlock15Block65Stack2 := (recoveredBlock15Block65Stack2) channelGroupAt: (recoveredBlock15Block65Stack3) device: (recoveredBlock15Block65Stack4).
            recoveredBlock15Block65PC := 225.
        ].
        recoveredBlock15Block65Step = 225 ifTrue: [
            (recoveredBlock15Block65Stack2 == nil) ifTrue: [recoveredBlock15Block65PC := 235] ifFalse: [recoveredBlock15Block65PC := 228].
        ].
        recoveredBlock15Block65Step = 228 ifTrue: [
            recoveredBlock15Block65PC := 229.
        ].
        recoveredBlock15Block65Step = 229 ifTrue: [
            recoveredBlock15Block65Stack1 := recoveredLocal3.
            recoveredBlock15Block65PC := 232.
        ].
        recoveredBlock15Block65Step = 232 ifTrue: [
            recoveredBlock15Block65Stack2 := recoveredBlock15Block65Arg1.
            recoveredBlock15Block65PC := 233.
        ].
        recoveredBlock15Block65Step = 233 ifTrue: [
            recoveredBlock15Block65Stack1 := (recoveredBlock15Block65Stack1) add: (recoveredBlock15Block65Stack2).
            recoveredBlock15Block65PC := 235.
        ].
        recoveredBlock15Block65Step = 235 ifTrue: [
            recoveredBlock15Block65Result := recoveredBlock15Block65Stack1.
            recoveredBlock15Block65Done := true.
        ].
    ].
    recoveredBlock15Block65Result
].
            recoveredBlock15PC := 236.
        ].
        recoveredBlock15Step = 236 ifTrue: [
            (recoveredBlock15Stack0) keysAndValuesDo: (recoveredBlock15Stack1).
            recoveredBlock15PC := 238.
        ].
        recoveredBlock15Step = 238 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 239.
        ].
        recoveredBlock15Step = 239 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal6.
            recoveredBlock15PC := 242.
        ].
        recoveredBlock15Step = 242 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isEmpty.
            recoveredBlock15PC := 244.
        ].
        recoveredBlock15Step = 244 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal3.
            recoveredBlock15PC := 247.
        ].
        recoveredBlock15Step = 247 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isEmpty.
            recoveredBlock15PC := 249.
        ].
        recoveredBlock15Step = 249 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) & (recoveredBlock15Stack2).
            recoveredBlock15PC := 251.
        ].
        recoveredBlock15Step = 251 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 304] ifFalse: [recoveredBlock15PC := 254].
        ].
        recoveredBlock15Step = 254 ifTrue: [
            recoveredBlock15PC := 255.
        ].
        recoveredBlock15Step = 255 ifTrue: [
            recoveredBlock15Stack0 := recoveredBlock15Local1.
            recoveredBlock15PC := 258.
        ].
        recoveredBlock15Step = 258 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) canSupplyOnlineDLLData.
            recoveredBlock15PC := 260.
        ].
        recoveredBlock15Step = 260 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 261.
        ].
        recoveredBlock15Step = 261 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) onlineDLLManager.
            recoveredBlock15PC := 263.
        ].
        recoveredBlock15Step = 263 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isNil.
            recoveredBlock15PC := 264.
        ].
        recoveredBlock15Step = 264 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) | (recoveredBlock15Stack1).
            recoveredBlock15PC := 266.
        ].
        recoveredBlock15Step = 266 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 283] ifFalse: [recoveredBlock15PC := 270].
        ].
        recoveredBlock15Step = 270 ifTrue: [
            recoveredBlock15Stack0 := RBOnlineDLLSimulationDevice.
            recoveredBlock15PC := 272.
        ].
        recoveredBlock15Step = 272 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 275.
        ].
        recoveredBlock15Step = 275 ifTrue: [
            recoveredBlock15Stack2 := self.
            recoveredBlock15PC := 276.
        ].
        recoveredBlock15Step = 276 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) onlineDLLManager.
            recoveredBlock15PC := 278.
        ].
        recoveredBlock15Step = 278 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) createForDevice: (recoveredBlock15Stack1) onlineDLLManager: (recoveredBlock15Stack2).
            recoveredBlock15PC := 280.
        ].
        recoveredBlock15Step = 280 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 283.
        ].
        recoveredBlock15Step = 283 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal4.
            recoveredBlock15PC := 286.
        ].
        recoveredBlock15Step = 286 ifTrue: [
            recoveredBlock15Stack1 := RBDataAcquisitionListItem.
            recoveredBlock15PC := 288.
        ].
        recoveredBlock15Step = 288 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 291.
        ].
        recoveredBlock15Step = 291 ifTrue: [
            recoveredBlock15Stack3 := recoveredLocal6.
            recoveredBlock15PC := 294.
        ].
        recoveredBlock15Step = 294 ifTrue: [
            recoveredBlock15Stack4 := recoveredLocal3.
            recoveredBlock15PC := 297.
        ].
        recoveredBlock15Step = 297 ifTrue: [
            recoveredBlock15Stack4 := (recoveredBlock15Stack4) asArray.
            recoveredBlock15PC := 299.
        ].
        recoveredBlock15Step = 299 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) createForDevice: (recoveredBlock15Stack2) smalltalkDatas: (recoveredBlock15Stack3) channelGroups: (recoveredBlock15Stack4).
            recoveredBlock15PC := 302.
        ].
        recoveredBlock15Step = 302 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) add: (recoveredBlock15Stack1).
            recoveredBlock15PC := 304.
        ].
        recoveredBlock15Step = 304 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) keysDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal4.
    recoveredValue7 := (recoveredValue6) asArray.
    ^recoveredValue7
! !

