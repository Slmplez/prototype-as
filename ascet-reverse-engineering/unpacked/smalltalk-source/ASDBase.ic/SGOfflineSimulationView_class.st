"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013fe0; bytecode file offset 0x912098"
!SGOfflineSimulationView class methodsFor: 'recovered'!
defaultDataConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBDataDisplayConfigurationObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015360; bytecode file offset 0x912098"
!SGOfflineSimulationView class methodsFor: 'recovered'!
controllerClass
    | recoveredValue0 |
    recoveredValue0 := SGSimBlockDiagramViewerC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016238; bytecode file offset 0x92209c"
!SGOfflineSimulationView class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('activateCalibrateFilter' 'activateExitSimulation' 'activateExpandCollapse' 'activateFlat' 'activateHierarchy' 'activateLoadExperiment' 'activateFilterGlobals' 'activateFilterParams' 'activateOpenDataGenerator' 'activateOpenDataLogger' 'activateOpenEventGenerator' 'activateOpenEventTracer' 'activatePauseSimulation' 'activateSaveAsExperiment' 'activateSaveExperiment' 'activateStartSimulation' 'activateStepSimulation' 'activateStopSimulation')
! !

"ASDBase.ic method 0x20021ddc; bytecode file offset 0x92209c"
!SGOfflineSimulationView class methodsFor: 'recovered'!
switchString
    ^'Switch to Component Editor...'
! !

"ASDBase.ic method 0x2007540c; bytecode file offset 0x9757c8"
!SGOfflineSimulationView class methodsFor: 'recovered'!
usesAsynchronousAcquisition
    ^true
! !

"ASDBase.ic method 0x2007fc5c; bytecode file offset 0x97c540"
!SGOfflineSimulationView class methodsFor: 'recovered'!
toolBarHeightW311
    ^28
! !

"ASDBase.ic method 0x2007fd2c; bytecode file offset 0x97c600"
!SGOfflineSimulationView class methodsFor: 'recovered'!
toolBarHeightW95
    ^30
! !

"ASDBase.ic method 0x2007fd3c; bytecode file offset 0x97c600"
!SGOfflineSimulationView class methodsFor: 'recovered'!
collapsedHeight
    ^30
! !

"ASDBase.ic method 0x200810cc; bytecode file offset 0x97d980"
!SGOfflineSimulationView class methodsFor: 'recovered'!
defaultDelayTime
    ^750
! !

"ASDBase.ic method 0x200b0200; bytecode file offset 0x9acadc"
!SGOfflineSimulationView class methodsFor: 'recovered'!
initTimerDelay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Delay.
    recoveredValue1 := (self) defaultDelayTime.
    recoveredValue2 := (recoveredValue0) forMilliseconds: (recoveredValue1).
    TimerDelay := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2010519c; bytecode file offset 0xa01b38"
!SGOfflineSimulationView class methodsFor: 'recovered'!
TimerDelay
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TimerDelay.
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
            (recoveredStack1) initTimerDelay.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := TimerDelay.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

