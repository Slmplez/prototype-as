"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200051e0; bytecode file offset 0x90206c"
!SGSimEnvironment methodsFor: 'recovered'!
disconnectFromTarget: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001f25c; bytecode file offset 0x92209c"
!SGSimEnvironment methodsFor: 'recovered'!
subProcessSeparator
    ^'/'
! !

"ASDBase.ic method 0x200255d4; bytecode file offset 0x92209c"
!SGSimEnvironment methodsFor: 'recovered'!
dotString
    ^'.'
! !

"ASDBase.ic method 0x20028414; bytecode file offset 0x934580"
!SGSimEnvironment methodsFor: 'recovered'!
getServer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTarget.
    recoveredValue1 := (recoveredValue0) getServer.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ade4; bytecode file offset 0x934580"
!SGSimEnvironment methodsFor: 'recovered'!
getAvailableTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTopClass.
    recoveredValue1 := (recoveredValue0) getAvailableTasks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bdf4; bytecode file offset 0x934580"
!SGSimEnvironment methodsFor: 'recovered'!
enableCTSolver
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSolvers.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e2c4; bytecode file offset 0x934580"
!SGSimEnvironment methodsFor: 'recovered'!
getTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039824; bytecode file offset 0x938608"
!SGSimEnvironment methodsFor: 'recovered'!
getDataElementForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getSimInstanceForNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004048c; bytecode file offset 0x93d278"
!SGSimEnvironment methodsFor: 'recovered'!
userInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simMainController.
    recoveredValue1 := (recoveredValue0) userInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040f60; bytecode file offset 0x93d83c"
!SGSimEnvironment methodsFor: 'recovered'!
getProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := context.
    recoveredValue1 := (recoveredValue0) project.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200422a4; bytecode file offset 0x93eb8c"
!SGSimEnvironment methodsFor: 'recovered'!
dataChannels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dataGenerator.
    recoveredValue1 := (recoveredValue0) channels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200422e8; bytecode file offset 0x93ebac"
!SGSimEnvironment methodsFor: 'recovered'!
isOffline
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042398; bytecode file offset 0x93ed34"
!SGSimEnvironment methodsFor: 'recovered'!
viewEventQueue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := (recoveredValue0) viewEventQueue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004777c; bytecode file offset 0x9451f8"
!SGSimEnvironment methodsFor: 'recovered'!
ticksPerSecond
    | recoveredValue0 |
    recoveredValue0 := (self) calculateSimulationTicksFromTime: (#[0 0 0 0 0 0 240 63]).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049184; bytecode file offset 0x945a50"
!SGSimEnvironment methodsFor: 'recovered'!
resetDataElementsTable
    dataElements := nil.
    ^self
! !

"ASDBase.ic method 0x2004f554; bytecode file offset 0x94d048"
!SGSimEnvironment methodsFor: 'recovered'!
shutDown
    (self) shutdown.
    ^self
! !

"ASDBase.ic method 0x20050e00; bytecode file offset 0x94d84c"
!SGSimEnvironment methodsFor: 'recovered'!
enableEventSimulator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getTopClass.
    recoveredValue1 := (recoveredValue0) isCTClass.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051010; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
codeGenPathLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    recoveredValue2 := (recoveredValue1) codeGenPathName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051a4c; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
getTopClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) topSimNode.
    recoveredValue1 := (recoveredValue0) reference.
    recoveredValue2 := (recoveredValue1) sgClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052000; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
isIntegerPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    recoveredValue2 := (recoveredValue1) isIntegerPath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005262c; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
isQuantFloatPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    recoveredValue2 := (recoveredValue1) isQuantFloatPath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052690; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
hasDataLoggerCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    recoveredValue2 := (recoveredValue1) dataLogging.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200526b8; bytecode file offset 0x94f0e0"
!SGSimEnvironment methodsFor: 'recovered'!
isFloatPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getProject.
    recoveredValue1 := (recoveredValue0) generatorSettings.
    recoveredValue2 := (recoveredValue1) isFloatPath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056ae0; bytecode file offset 0x9536dc"
!SGSimEnvironment methodsFor: 'recovered'!
getExistingDataElementForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getVirtualPseudoAddress.
    recoveredValue2 := (self) getEntryAtIndex: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f5e0; bytecode file offset 0x95c4f4"
!SGSimEnvironment methodsFor: 'recovered'!
currentSimTimeInTicks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) simulator.
    recoveredValue1 := (recoveredValue0) actualSimTime.
    recoveredValue2 := (self) calculateSimulationTicksFromTime: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200676a4; bytecode file offset 0x9646f8"
!SGSimEnvironment methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200688f4; bytecode file offset 0x965b90"
!SGSimEnvironment methodsFor: 'recovered'!
getTopMakeConfig
    | recoveredValue0 |
    recoveredValue0 := makeConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069370; bytecode file offset 0x966bdc"
!SGSimEnvironment methodsFor: 'recovered'!
getValueConfig
    | recoveredValue0 |
    recoveredValue0 := valueConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af6c; bytecode file offset 0x967a18"
!SGSimEnvironment methodsFor: 'recovered'!
getImplConfig
    | recoveredValue0 |
    recoveredValue0 := implConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bbd8; bytecode file offset 0x96873c"
!SGSimEnvironment methodsFor: 'recovered'!
getCodeDataTree
    | recoveredValue0 |
    recoveredValue0 := codeDataTree.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d63c; bytecode file offset 0x96a390"
!SGSimEnvironment methodsFor: 'recovered'!
topSimNode
    | recoveredValue0 |
    recoveredValue0 := topSimNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e0b8; bytecode file offset 0x96a9dc"
!SGSimEnvironment methodsFor: 'recovered'!
currentSimNode
    | recoveredValue0 |
    recoveredValue0 := currentSimNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e3ac; bytecode file offset 0x96af48"
!SGSimEnvironment methodsFor: 'recovered'!
getModel
    | recoveredValue0 |
    recoveredValue0 := model.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ea08; bytecode file offset 0x96b41c"
!SGSimEnvironment methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 |
    recoveredValue0 := errorHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec84; bytecode file offset 0x96b8a0"
!SGSimEnvironment methodsFor: 'recovered'!
dataGenerator
    | recoveredValue0 |
    recoveredValue0 := dataGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f268; bytecode file offset 0x96bc1c"
!SGSimEnvironment methodsFor: 'recovered'!
simulator
    | recoveredValue0 |
    recoveredValue0 := simulator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f780; bytecode file offset 0x96c1f4"
!SGSimEnvironment methodsFor: 'recovered'!
hierarchicalModules
    | recoveredValue0 |
    recoveredValue0 := hierarchicalModules.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083164; bytecode file offset 0x97fa18"
!SGSimEnvironment methodsFor: 'recovered'!
dataElementCompositions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    dataElementCompositions := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085428; bytecode file offset 0x981d1c"
!SGSimEnvironment methodsFor: 'recovered'!
setCurrentSimNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) currentSimNode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009014c; bytecode file offset 0x98ca08"
!SGSimEnvironment methodsFor: 'recovered'!
initErrorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTarget.
    recoveredValue1 := (recoveredValue0) getUserErrorAccess.
    errorHandler := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200903e8; bytecode file offset 0x98ccc4"
!SGSimEnvironment methodsFor: 'recovered'!
hierarchyPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentSimNode.
    recoveredValue1 := (recoveredValue0) getPathName.
    recoveredValue2 := (recoveredValue1) , ('\').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009310c; bytecode file offset 0x98fa00"
!SGSimEnvironment methodsFor: 'recovered'!
breakCondition: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) breakCondition: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20093148; bytecode file offset 0x98fa00"
!SGSimEnvironment methodsFor: 'recovered'!
changeSteps: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simulator.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) changeSteps: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098c04; bytecode file offset 0x995850"
!SGSimEnvironment methodsFor: 'recovered'!
removeExperiment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTopClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeSimulationConfig: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009be28; bytecode file offset 0x9986e4"
!SGSimEnvironment methodsFor: 'recovered'!
initializeDataGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDataGenerator.
    recoveredValue1 := (recoveredValue0) createForSimEnvironment: (self).
    dataGenerator := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a2cdc; bytecode file offset 0x99f5a0"
!SGSimEnvironment methodsFor: 'recovered'!
existingCTimportFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGSimModelNode.
    recoveredValue1 := (recoveredValue0) ImportedFromCT.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (recoveredValue1) includes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ab8dc; bytecode file offset 0x9a8250"
!SGSimEnvironment methodsFor: 'recovered'!
getDataElementForCompositionPartFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dataElementCompositions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200afaf0; bytecode file offset 0x9ac3a8"
!SGSimEnvironment methodsFor: 'recovered'!
loadExperiment: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    experiment := recoveredValue0.
    (self) readExperiment.
    ^self
! !

"ASDBase.ic method 0x200bdff4; bytecode file offset 0x9bb178"
!SGSimEnvironment methodsFor: 'recovered'!
simMainController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simMainController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3cec; bytecode file offset 0x9c0bf0"
!SGSimEnvironment methodsFor: 'recovered'!
topSimNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topSimNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4398; bytecode file offset 0x9c11bc"
!SGSimEnvironment methodsFor: 'recovered'!
currentSimNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentSimNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c44; bytecode file offset 0x9c16b0"
!SGSimEnvironment methodsFor: 'recovered'!
setModel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    model := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200df240; bytecode file offset 0x9dbafc"
!SGSimEnvironment methodsFor: 'recovered'!
startedWithoutHost
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGAccessElement.
    recoveredValue1 := (recoveredValue0) startedWithoutHost.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ef874; bytecode file offset 0x9ec138"
!SGSimEnvironment methodsFor: 'recovered'!
cleanUpAccessElementsFromServer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAccessElement.
    (recoveredValue0) initSGServer: (nil).
    recoveredValue1 := SGAccessSmalltalkData.
    (recoveredValue1) initDummyDevice: (nil).
    ^self
! !

"ASDBase.ic method 0x200fbed4; bytecode file offset 0x9f8798"
!SGSimEnvironment methodsFor: 'recovered'!
createDataChannel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := dataGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) key.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) value.
    recoveredValue5 := (self) getSimInstanceForNode: (recoveredValue4).
    (recoveredValue0) getOrCreateDataChannel: (recoveredValue2) dataElem: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2010c994; bytecode file offset 0xa09258"
!SGSimEnvironment methodsFor: 'recovered'!
virtualElementError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := simMainController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Invalid virtual element: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' !!').
    (recoveredValue0) monitorError: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20110d6c; bytecode file offset 0xa0d62c"
!SGSimEnvironment methodsFor: 'recovered'!
checkAndRegisterServer: recoveredArg1 makeConfig: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) register.
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
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116784; bytecode file offset 0xa13050"
!SGSimEnvironment methodsFor: 'recovered'!
activeEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeEvents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201207a8; bytecode file offset 0xa1d068"
!SGSimEnvironment methodsFor: 'recovered'!
getSimInstanceForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getSimNodeForLabel: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) getSimInstanceForNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := (recoveredValue1) ifNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20124d2c; bytecode file offset 0xa215ec"
!SGSimEnvironment methodsFor: 'recovered'!
exportExperiment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
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
            recoveredStack0 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportExperimentEnvironment: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a894; bytecode file offset 0xa271a0"
!SGSimEnvironment methodsFor: 'recovered'!
ctSolvers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ctSolvers.
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
            ctSolvers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ctSolvers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aa30; bytecode file offset 0xa272f0"
!SGSimEnvironment methodsFor: 'recovered'!
getExperimentLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := experiment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'None'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := experiment.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aa58; bytecode file offset 0xa27314"
!SGSimEnvironment methodsFor: 'recovered'!
getExperiment
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := experiment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultExperiment.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            experiment := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := experiment.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012adac; bytecode file offset 0xa27668"
!SGSimEnvironment methodsFor: 'recovered'!
labelTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := labelTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) topSimNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildLabelTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            labelTable := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := labelTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20136f9c; bytecode file offset 0xa33864"
!SGSimEnvironment methodsFor: 'recovered'!
maxSimulationTime
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal1 := #[141 237 181 160 247 198 176 62].
    recoveredValue0 := (self) microSecondsPerSimulationTick.
    recoveredValue1 := (4294967295) * (recoveredValue0).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue3) truncated.
    recoveredValue5 := (recoveredValue4) asFloat.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138468; bytecode file offset 0xa34d24"
!SGSimEnvironment methodsFor: 'recovered'!
getSimInstanceForInstVar: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getSimNodeForInstVar: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstanceForNode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139d20; bytecode file offset 0xa365f0"
!SGSimEnvironment methodsFor: 'recovered'!
initAccessElementsWithServer
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGAccessElement.
    recoveredValue1 := (self) getServer.
    (recoveredValue0) initSGServer: (recoveredValue1).
    recoveredValue2 := SGAccessSmalltalkData.
    recoveredValue3 := SGSimDummyDevice.
    recoveredValue4 := (recoveredValue3) create.
    (recoveredValue2) initDummyDevice: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013bb1c; bytecode file offset 0xa383dc"
!SGSimEnvironment methodsFor: 'recovered'!
simStartInit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDataGeneratorEventEnabled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dataGenerator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) simStartInit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013fa04; bytecode file offset 0xa3c2ec"
!SGSimEnvironment methodsFor: 'recovered'!
sendSetCTSolverMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSolvers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) setTargetCTSolver: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201504dc; bytecode file offset 0xa4cdac"
!SGSimEnvironment methodsFor: 'recovered'!
shutdown
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getTarget.
    (recoveredValue0) unregister.
    recoveredValue1 := (self) getProject.
    (recoveredValue1) resetTarget.
    (self) cleanUpAccessElementsFromServer.
    recoveredValue2 := SGSimModelNode.
    (recoveredValue2) resetExImportNodes.
    ^self
! !

"ASDBase.ic method 0x20153364; bytecode file offset 0xa4fc20"
!SGSimEnvironment methodsFor: 'recovered'!
getEntryAtIndex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataElements.
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
            recoveredStack1 := dataElements.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015911c; bytecode file offset 0xa559d8"
!SGSimEnvironment methodsFor: 'recovered'!
loadDefaultExperiment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultExperiment.
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
            experiment := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) readExperiment.
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

"ASDBase.ic method 0x20159a94; bytecode file offset 0xa56354"
!SGSimEnvironment methodsFor: 'recovered'!
isRomCodeRunning
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOperatingMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d3e4; bytecode file offset 0xa59ca0"
!SGSimEnvironment methodsFor: 'recovered'!
modelToSimTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modelToSimTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) topSimNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildModelToSimTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            modelToSimTable := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := modelToSimTable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015dc78; bytecode file offset 0xa5a538"
!SGSimEnvironment methodsFor: 'recovered'!
dataElementCompositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dataElementCompositions.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    dataElementCompositions := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20161c04; bytecode file offset 0xa5e4c8"
!SGSimEnvironment methodsFor: 'recovered'!
microSecondsPerSimulationTick
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOfflinePCTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) offlinePCMicroSecondsPerSimulationTick.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 64.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016d970; bytecode file offset 0xa6a234"
!SGSimEnvironment methodsFor: 'recovered'!
calculateSimulationTicksFromTime: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) microSecondsPerSimulationTick.
    recoveredLocal2 := recoveredValue0.
    recoveredLocal1 := 1000000.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (#[0 0 0 0 0 0 224 63]).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) / (recoveredValue5).
    recoveredValue7 := (recoveredValue6) // (1).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20190b64; bytecode file offset 0xa8d42c"
!SGSimEnvironment methodsFor: 'recovered'!
initTargetCode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) startedWithoutHost.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGAccessElement.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) initModel.
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

"ASDBase.ic method 0x201a1884; bytecode file offset 0xa9e14c"
!SGSimEnvironment methodsFor: 'recovered'!
updateDependentParameter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d293cArg1 | 
    | block280d293cStack0 block280d293cStack1 block280d293cStack2 block280d293cStack3 block280d293cPC block280d293cStep block280d293cDone block280d293cResult |
    block280d293cStack0 := self.
    block280d293cPC := 4.
    block280d293cDone := false.
    [block280d293cDone not] whileTrue: [
        block280d293cStep := block280d293cPC.
        block280d293cStep = 4 ifTrue: [
            block280d293cStack1 := nil.
            block280d293cPC := 5.
        ].
        block280d293cStep = 5 ifTrue: [
            block280d293cStack2 := block280d293cArg1.
            block280d293cPC := 6.
        ].
        block280d293cStep = 6 ifTrue: [
            block280d293cStack2 := (block280d293cStack2) model.
            block280d293cPC := 7.
        ].
        block280d293cStep = 7 ifTrue: [
            (block280d293cStack2 == nil) ifTrue: [block280d293cPC := 14] ifFalse: [block280d293cPC := 10].
        ].
        block280d293cStep = 10 ifTrue: [
            block280d293cPC := 11.
        ].
        block280d293cStep = 11 ifTrue: [
            block280d293cStack1 := block280d293cArg1.
            block280d293cPC := 12.
        ].
        block280d293cStep = 12 ifTrue: [
            block280d293cStack1 := (block280d293cStack1) model.
            block280d293cPC := 13.
        ].
        block280d293cStep = 13 ifTrue: [
            block280d293cStack1 := (block280d293cStack1) updateDependentParameter.
            block280d293cPC := 14.
        ].
        block280d293cStep = 14 ifTrue: [
            block280d293cResult := block280d293cStack1.
            block280d293cDone := true.
        ].
    ].
    block280d293cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a7100; bytecode file offset 0xaa39c4"
!SGSimEnvironment methodsFor: 'recovered'!
setTargetCTSolver: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) simulator.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualSimTime.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) setTargetCTSolverForTime: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setTargetCTSolverForTime: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c79dc; bytecode file offset 0xac42a4"
!SGSimEnvironment methodsFor: 'recovered'!
simEnd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) simEnd.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) terminateCTBlocks.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := dataGenerator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) closeSignal.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c8f84; bytecode file offset 0xac5850"
!SGSimEnvironment methodsFor: 'recovered'!
dataGeneratorDic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4d3cArg1 | 
    | block280d4d3cStack0 block280d4d3cStack1 block280d4d3cStack2 block280d4d3cStack3 block280d4d3cPC block280d4d3cStep block280d4d3cDone block280d4d3cResult |
    block280d4d3cStack0 := self.
    block280d4d3cPC := 4.
    block280d4d3cDone := false.
    [block280d4d3cDone not] whileTrue: [
        block280d4d3cStep := block280d4d3cPC.
        block280d4d3cStep = 4 ifTrue: [
            block280d4d3cStack1 := false.
            block280d4d3cPC := 5.
        ].
        block280d4d3cStep = 5 ifTrue: [
            block280d4d3cStack2 := block280d4d3cArg1.
            block280d4d3cPC := 6.
        ].
        block280d4d3cStep = 6 ifTrue: [
            block280d4d3cStack2 := (block280d4d3cStack2) value.
            block280d4d3cPC := 7.
        ].
        block280d4d3cStep = 7 ifTrue: [
            block280d4d3cStack2 := (block280d4d3cStack2) isReadable.
            block280d4d3cPC := 8.
        ].
        block280d4d3cStep = 8 ifTrue: [
            (block280d4d3cStack2) ifTrue: [block280d4d3cPC := 12] ifFalse: [block280d4d3cPC := 17].
        ].
        block280d4d3cStep = 12 ifTrue: [
            block280d4d3cPC := 13.
        ].
        block280d4d3cStep = 13 ifTrue: [
            block280d4d3cStack1 := block280d4d3cArg1.
            block280d4d3cPC := 14.
        ].
        block280d4d3cStep = 14 ifTrue: [
            block280d4d3cStack1 := (block280d4d3cStack1) value.
            block280d4d3cPC := 15.
        ].
        block280d4d3cStep = 15 ifTrue: [
            block280d4d3cStack1 := (block280d4d3cStack1) isDataGeneratorNode.
            block280d4d3cPC := 17.
        ].
        block280d4d3cStep = 17 ifTrue: [
            block280d4d3cResult := block280d4d3cStack1.
            block280d4d3cDone := true.
        ].
    ].
    block280d4d3cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cda88; bytecode file offset 0xaca34c"
!SGSimEnvironment methodsFor: 'recovered'!
getSimNodeForLabel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d5348Arg1 | 
    | block280d5348Stack0 block280d5348Stack1 block280d5348Stack2 block280d5348PC block280d5348Step block280d5348Done block280d5348Result |
    block280d5348Stack0 := self.
    block280d5348PC := 4.
    block280d5348Done := false.
    [block280d5348Done not] whileTrue: [
        block280d5348Step := block280d5348PC.
        block280d5348Step = 4 ifTrue: [
            block280d5348Stack1 := block280d5348Arg1.
            block280d5348PC := 5.
        ].
        block280d5348Step = 5 ifTrue: [
            block280d5348Stack1 := (block280d5348Stack1) isReadable.
            block280d5348PC := 6.
        ].
        block280d5348Step = 6 ifTrue: [
            (block280d5348Stack1) ifTrue: [block280d5348PC := 10] ifFalse: [block280d5348PC := 14].
        ].
        block280d5348Step = 10 ifTrue: [
            block280d5348Stack1 := block280d5348Arg1.
            block280d5348PC := 11.
        ].
        block280d5348Step = 11 ifTrue: [
            block280d5348PC := 15.
        ].
        block280d5348Step = 14 ifTrue: [
            block280d5348Stack1 := nil.
            block280d5348PC := 15.
        ].
        block280d5348Step = 15 ifTrue: [
            block280d5348Result := block280d5348Stack1.
            block280d5348Done := true.
        ].
    ].
    block280d5348Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0f34; bytecode file offset 0xacd804"
!SGSimEnvironment methodsFor: 'recovered'!
allNodesFlatAndParams
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := SGSimEnvironment.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterBlockForCalibrationParameters.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d53fcArg1 :block280d53fcArg2 | 
    | block280d53fcValue0 block280d53fcValue1 block280d53fcValue2 block280d53fcValue3 block280d53fcValue4 |
    block280d53fcValue0 := block280d53fcArg1.
    block280d53fcValue1 := (block280d53fcValue0) simPathLabel.
    block280d53fcValue2 := block280d53fcArg2.
    block280d53fcValue3 := (block280d53fcValue2) simPathLabel.
    block280d53fcValue4 := (block280d53fcValue1) < (block280d53fcValue3).
    block280d53fcValue4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d0fbc; bytecode file offset 0xacd88c"
!SGSimEnvironment methodsFor: 'recovered'!
getAvailableMeasureTasks
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack1 := 'Offline Call'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAvailableMeasureTasks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ddd20; bytecode file offset 0xada5ec"
!SGSimEnvironment methodsFor: 'recovered'!
saveDefaultExperiment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultExperiment.
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
            experiment := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SGTimeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) timeStamp: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) writeExperimentNotifyOwner: (recoveredStack1).
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

"ASDBase.ic method 0x201edb84; bytecode file offset 0xaea468"
!SGSimEnvironment methodsFor: 'recovered'!
isValidCalibrationLabel: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationNode.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201edba0; bytecode file offset 0xaea468"
!SGSimEnvironment methodsFor: 'recovered'!
isValidMeasureLabel: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMeasureNode.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f2740; bytecode file offset 0xaef008"
!SGSimEnvironment methodsFor: 'recovered'!
setCurrentSimNodeUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentSimNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Call_64973'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentSimNode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) currentSimNode: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd1cc; bytecode file offset 0xaf9a98"
!SGSimEnvironment methodsFor: 'recovered'!
initAdditionalInstrumentedNodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := labelTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Assertion failed: labelTable must not be initialized yet.'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) eeInstrumentationManager.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := topSimNode.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) initAdditionalMeasurementVariablesWith: (recoveredStack2) simNode: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd760; bytecode file offset 0xafa024"
!SGSimEnvironment methodsFor: 'recovered'!
dpManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dpManager.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := MCSDependentParameterManager.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create: (self).
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 |
    recoveredBlock6Block16Value0 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Value0.
    dpManager := recoveredBlock6Block16Value1.
    recoveredBlock6Block16Value0
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) ifNotNil: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ff4d8; bytecode file offset 0xafbda8"
!SGSimEnvironment methodsFor: 'recovered'!
simulatorClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGEventSimulatorCTHybrid.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := SGEventSimulatorCTClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGEventSimulator.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202063bc; bytecode file offset 0xb02c88"
!SGSimEnvironment methodsFor: 'recovered'!
saveExperiment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
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
            recoveredStack0 := (recoveredStack0) doProtectionCheck.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SGTimeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) timeStamp: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) writeExperimentNotifyOwner: (recoveredStack1).
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

"ASDBase.ic method 0x2020fc2c; bytecode file offset 0xb0c4f4"
!SGSimEnvironment methodsFor: 'recovered'!
setEntry: recoveredArg1 forIndex: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'kk'.
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
            recoveredStack1 := dataElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtHighCapacityLookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1024.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            dataElements := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := dataElements.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20216898; bytecode file offset 0xb1316c"
!SGSimEnvironment methodsFor: 'recovered'!
suspendSimulation
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
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
            recoveredStack0 := (recoveredStack0) suspendSimulation.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x202168ac; bytecode file offset 0xb1316c"
!SGSimEnvironment methodsFor: 'recovered'!
resumeSimulation
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
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
            recoveredStack0 := (recoveredStack0) resumeSimulation.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2021c930; bytecode file offset 0xb191f8"
!SGSimEnvironment methodsFor: 'recovered'!
storeDataElementCompositionPartsFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) compositionParts.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := (self) dataElementCompositions.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := recoveredArg1.
    recoveredBlock16Value3 := (recoveredBlock16Value0) at: (recoveredBlock16Value1) put: (recoveredBlock16Value2).
    recoveredBlock16Value3
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

"ASDBase.ic method 0x202367f4; bytecode file offset 0xb330d4"
!SGSimEnvironment methodsFor: 'recovered'!
initializeDefaultExperiment
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('Rnz') == ('EHI_79995').
    recoveredValue1 := SGSimExperiment.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue2) initialize.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) getTopClass.
    recoveredValue6 := (recoveredValue5) label.
    recoveredValue7 := ('Experiment for ') , (recoveredValue6).
    (recoveredValue4) comment: (recoveredValue7).
    recoveredValue8 := (self) getTopClass.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) addSimulationConfig: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20237650; bytecode file offset 0xb33f1c"
!SGSimEnvironment methodsFor: 'recovered'!
minimumSolverDT
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := #[0 0 0 0 128 132 46 65].
    recoveredValue0 := (self) ctSolvers.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) ctParameter.
    recoveredBlock10Value3 := (recoveredBlock10Value2) dt.
    recoveredBlock10Value4 := (recoveredBlock10Value0) min: (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2024aac8; bytecode file offset 0xb47394"
!SGSimEnvironment methodsFor: 'recovered'!
resetLayoutConfigOutsideDesktopConfigs: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_82374'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280deae0Arg1 | 
    | block280deae0Stack0 block280deae0Stack1 block280deae0Stack2 block280deae0Stack3 block280deae0PC block280deae0Step block280deae0Done block280deae0Result |
    block280deae0Stack0 := self.
    block280deae0PC := 4.
    block280deae0Done := false.
    [block280deae0Done not] whileTrue: [
        block280deae0Step := block280deae0PC.
        block280deae0Step = 4 ifTrue: [
            block280deae0Stack1 := false.
            block280deae0PC := 5.
        ].
        block280deae0Step = 5 ifTrue: [
            block280deae0Stack2 := block280deae0Arg1.
            block280deae0PC := 6.
        ].
        block280deae0Step = 6 ifTrue: [
            block280deae0Stack2 := (block280deae0Stack2) layoutConfiguration.
            block280deae0PC := 7.
        ].
        block280deae0Step = 7 ifTrue: [
            (block280deae0Stack2 == nil) ifTrue: [block280deae0PC := 15] ifFalse: [block280deae0PC := 10].
        ].
        block280deae0Step = 10 ifTrue: [
            block280deae0PC := 11.
        ].
        block280deae0Step = 11 ifTrue: [
            block280deae0Stack1 := block280deae0Arg1.
            block280deae0PC := 12.
        ].
        block280deae0Step = 12 ifTrue: [
            block280deae0Stack1 := (block280deae0Stack1) layoutConfiguration.
            block280deae0PC := 13.
        ].
        block280deae0Step = 13 ifTrue: [
            block280deae0Stack1 := (block280deae0Stack1) resetLayoutConfigOutsideDesktop.
            block280deae0PC := 15.
        ].
        block280deae0Step = 15 ifTrue: [
            block280deae0Result := block280deae0Stack1.
            block280deae0Done := true.
        ].
    ].
    block280deae0Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025f6e4; bytecode file offset 0xb5bfb8"
!SGSimEnvironment methodsFor: 'recovered'!
initializeSimulator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForSimMainController: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentMethods.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEvents: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            simulator := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchicalModules.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchicalModules.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := simulator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchicalModules.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) createAllEventsForSubNodes: (recoveredStack1).
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

"ASDBase.ic method 0x2026f814; bytecode file offset 0xb6c0dc"
!SGSimEnvironment methodsFor: 'recovered'!
readTargetErrorHandler
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errorHandler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getServer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isActive.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := errorHandler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) readString.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Could not access target error handler'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202733b0; bytecode file offset 0xb6fc78"
!SGSimEnvironment methodsFor: 'recovered'!
bypassStart
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
            recoveredStack2 := 'ASCET_RTS'.
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
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) startERCOS.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
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
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20279de0; bytecode file offset 0xb766c0"
!SGSimEnvironment methodsFor: 'recovered'!
doProtectionCheck
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Could not save Experiment Environment.\'''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ''' is protected.\ \Please remove write protection.\(In case of a version create an edition.)'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287364; bytecode file offset 0xb83c40"
!SGSimEnvironment methodsFor: 'recovered'!
getSolverConfig
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) ctSolvers.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) simNode.
    recoveredBlock11Value3 := (self) topSimNode.
    recoveredBlock11Value4 := (recoveredBlock11Value2) getAliasName: (recoveredBlock11Value3).
    recoveredBlock11Value5 := recoveredBlock11Arg1.
    recoveredBlock11Value6 := (recoveredBlock11Value5) ctParameter.
    recoveredBlock11Value7 := (recoveredBlock11Value6) deepCopy.
    recoveredBlock11Value8 := (recoveredBlock11Value0) at: (recoveredBlock11Value4) put: (recoveredBlock11Value7).
    recoveredBlock11Value8
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20287410; bytecode file offset 0xb83cec"
!SGSimEnvironment methodsFor: 'recovered'!
hasDefaultExperiment
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('Rnz') == ('EHI_79995').
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) defaultExperimentName.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) getTopClass.
    recoveredValue4 := (recoveredValue3) getSimulationConfigs.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getObject.
    recoveredBlock20Value2 := (recoveredBlock20Value1) name.
    recoveredBlock20Value3 := recoveredLocal1.
    recoveredBlock20Value4 := (recoveredBlock20Value2) = (recoveredBlock20Value3).
    recoveredBlock20Value4
].
    recoveredValue6 := [].
    recoveredValue7 := (recoveredValue4) detect: (recoveredValue5) ifNone: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) notNil.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20289ca0; bytecode file offset 0xb8656c"
!SGSimEnvironment methodsFor: 'recovered'!
bypassStop
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
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
            recoveredStack0 := (recoveredStack0) stopERCOS.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) terminateCTBlocks.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'ASCET_RTS'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8f04; bytecode file offset 0xbc57e0"
!SGSimEnvironment methodsFor: 'recovered'!
getDefaultExperiment
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Rnz') == ('EHI_79995').
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) defaultExperimentName.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) getTopClass.
    recoveredValue4 := (recoveredValue3) getSimulationConfigs.
    recoveredValue5 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) getObject.
    recoveredBlock20Value2 := (recoveredBlock20Value1) name.
    recoveredBlock20Value3 := recoveredLocal1.
    recoveredBlock20Value4 := (recoveredBlock20Value2) = (recoveredBlock20Value3).
    recoveredBlock20Value4
].
    recoveredValue6 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) initializeDefaultExperiment.
    recoveredBlock36Value0
].
    recoveredValue7 := (recoveredValue4) detect: (recoveredValue5) ifNone: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202c94dc; bytecode file offset 0xbc5dac"
!SGSimEnvironment methodsFor: 'recovered'!
setClockScalingFactor: recoveredArg1
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
            recoveredStack2 := 'ASCET_RTS'.
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
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasExperimentClockDevice.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) setClockDeviceScalingFactor: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d6654; bytecode file offset 0xbd2f20"
!SGSimEnvironment methodsFor: 'recovered'!
getSourceModelFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForDataElementByLabel: (recoveredStack1).
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
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationNode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMeasureNode.
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'measureCalibrationScalar'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'measureScalar'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := 'calibrationScalar'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee1c0; bytecode file offset 0xbeaaa0"
!SGSimEnvironment methodsFor: 'recovered'!
getExperiments
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimulationConfigs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'EHI_79995'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDefaultExperiment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) initializeDefaultExperiment.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimulationConfigs.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntecrioBackanimation.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) enableAnimation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202efea8; bytecode file offset 0xbec774"
!SGSimEnvironment methodsFor: 'recovered'!
lastUsedExperiment: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimulationConfigs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
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
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f26fc; bytecode file offset 0xbeefd4"
!SGSimEnvironment methodsFor: 'recovered'!
getSimNodeForDataElementByLabel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArithmeticElementOfTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
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
            recoveredStack1 := (recoveredStack1) getSeparatorForTabIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asASDSimLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForLabel: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20300360; bytecode file offset 0xbfcc4c"
!SGSimEnvironment methodsFor: 'recovered'!
reinitializeVariables: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e9670Arg1 | 
    | block280e9670Stack0 block280e9670Stack1 block280e9670Stack2 block280e9670Stack3 block280e9670PC block280e9670Step block280e9670Done block280e9670Result |
    block280e9670Stack0 := self.
    block280e9670PC := 4.
    block280e9670Done := false.
    [block280e9670Done not] whileTrue: [
        block280e9670Step := block280e9670PC.
        block280e9670Step = 4 ifTrue: [
            block280e9670Stack1 := false.
            block280e9670PC := 5.
        ].
        block280e9670Step = 5 ifTrue: [
            block280e9670Stack2 := block280e9670Arg1.
            block280e9670PC := 6.
        ].
        block280e9670Step = 6 ifTrue: [
            block280e9670Stack2 := (block280e9670Stack2) isReinitializationPossible.
            block280e9670PC := 7.
        ].
        block280e9670Step = 7 ifTrue: [
            (block280e9670Stack2) ifTrue: [block280e9670PC := 10] ifFalse: [block280e9670PC := 16].
        ].
        block280e9670Step = 10 ifTrue: [
            block280e9670PC := 11.
        ].
        block280e9670Step = 11 ifTrue: [
            block280e9670Stack1 := block280e9670Arg1.
            block280e9670PC := 12.
        ].
        block280e9670Step = 12 ifTrue: [
            block280e9670Stack1 := (block280e9670Stack1) reference.
            block280e9670PC := 13.
        ].
        block280e9670Step = 13 ifTrue: [
            block280e9670Stack1 := (block280e9670Stack1) isParameter.
            block280e9670PC := 15.
        ].
        block280e9670Step = 15 ifTrue: [
            block280e9670Stack1 := (block280e9670Stack1) not.
            block280e9670PC := 16.
        ].
        block280e9670Step = 16 ifTrue: [
            block280e9670Result := block280e9670Stack1.
            block280e9670Done := true.
        ].
    ].
    block280e9670Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'Updating variable %1 on target'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) reinitializeSimNodeInList: (recoveredStack1) dialog: (recoveredStack2) messageString: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'Reinitializing statemachines'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) reinitSMStates.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) sendSetCTSolverMethod.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateDependentParameter.
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

"ASDBase.ic method 0x2030b4a4; bytecode file offset 0xc07d80"
!SGSimEnvironment methodsFor: 'recovered'!
labelList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := labelList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280ea21cArg1 :block280ea21cArg2 | 
    | block280ea21cValue0 block280ea21cValue1 block280ea21cValue2 block280ea21cValue3 block280ea21cValue4 |
    block280ea21cValue0 := block280ea21cArg1.
    block280ea21cValue1 := (block280ea21cValue0) key.
    block280ea21cValue2 := block280ea21cArg2.
    block280ea21cValue3 := (block280ea21cValue2) key.
    block280ea21cValue4 := (block280ea21cValue1) < (block280ea21cValue3).
    block280ea21cValue4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            labelList := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelTable.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 |
    recoveredBlock34Value0 := labelList.
    recoveredBlock34Value1 := Association.
    recoveredBlock34Value2 := recoveredBlock34Arg1.
    recoveredBlock34Value3 := recoveredBlock34Arg2.
    recoveredBlock34Value4 := (recoveredBlock34Value1) key: (recoveredBlock34Value2) value: (recoveredBlock34Value3).
    recoveredBlock34Value5 := (recoveredBlock34Value0) add: (recoveredBlock34Value4).
    recoveredBlock34Value5
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := labelList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20318270; bytecode file offset 0xc14b38"
!SGSimEnvironment methodsFor: 'recovered'!
checkAtLeastOneLayoutConfigOutsideDesktop: recoveredArg1
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
            recoveredStack1 := 'hw'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'call_82374'.
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
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
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
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) layoutConfiguration.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 50] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) layoutConfiguration.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) correctPositionIfOutsideDesktop.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 50].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack1 := true.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031f5bc; bytecode file offset 0xc1be94"
!SGSimEnvironment methodsFor: 'recovered'!
getAllSimInstancesNodesCondition: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) labelTable.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) labelTable.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Arg1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value: (recoveredBlock14Stack3).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 51].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getSimInstanceForNode: (recoveredBlock14Stack2).
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block35Arg1 | 
    | recoveredBlock14Block35Value0 recoveredBlock14Block35Value1 recoveredBlock14Block35Value2 |
    recoveredBlock14Block35Value0 := recoveredLocal1.
    recoveredBlock14Block35Value1 := recoveredBlock14Block35Arg1.
    recoveredBlock14Block35Value2 := (recoveredBlock14Block35Value0) add: (recoveredBlock14Block35Value1).
    recoveredBlock14Block35Value2
].
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) ifNotNil: (recoveredBlock14Stack2).
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2032e460; bytecode file offset 0xc2ad3c"
!SGSimEnvironment methodsFor: 'recovered'!
allNodesFlat
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) labelTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280ec9c4Arg1 :block280ec9c4Arg2 | 
    | block280ec9c4Value0 block280ec9c4Value1 block280ec9c4Value2 block280ec9c4Value3 block280ec9c4Value4 |
    block280ec9c4Value0 := block280ec9c4Arg1.
    block280ec9c4Value1 := (block280ec9c4Value0) simPathLabel.
    block280ec9c4Value2 := block280ec9c4Arg2.
    block280ec9c4Value3 := (block280ec9c4Value2) simPathLabel.
    block280ec9c4Value4 := (block280ec9c4Value1) < (block280ec9c4Value3).
    block280ec9c4Value4
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isReadable.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 53].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2033e4f8; bytecode file offset 0xc3add8"
!SGSimEnvironment methodsFor: 'recovered'!
initOnlineSimEnvironment: recoveredArg1 makeConfig: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) initSimEnvironment: (recoveredStack1) makeConfig: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) initSolversWithOnlineDT.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) startedWithoutHost.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) initERCOS.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setToOnlineMode.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034986c; bytecode file offset 0xc46140"
!SGSimEnvironment methodsFor: 'recovered'!
reMapOSTasks: recoveredArg1 taskDictionary: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
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
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) asRBDBReference.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) getExperiment.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) asRBDBReference.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ~= (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 59].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getObject.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) measureWindowsConfig.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredLocal7 := recoveredBlock7Stack3.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 59] ifFalse: [recoveredBlock7PC := 36].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack2 := simMainController.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) measureSystemC.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal7.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg2.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) reMapOSTasks: (recoveredBlock7Stack3) taskDictionary: (recoveredBlock7Stack4).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 59].
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) getObject.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) modified.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2034cbcc; bytecode file offset 0xc494e0"
!SGSimEnvironment methodsFor: 'recovered'!
getMeasureLabels
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) labelTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280eeb18Arg1 :block280eeb18Arg2 | 
    | block280eeb18Value0 block280eeb18Value1 block280eeb18Value2 |
    block280eeb18Value0 := block280eeb18Arg1.
    block280eeb18Value1 := block280eeb18Arg2.
    block280eeb18Value2 := (block280eeb18Value0) < (block280eeb18Value1).
    block280eeb18Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isReadable.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 42] ifFalse: [recoveredBlock28PC := 57].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isMeasureNode.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 48] ifFalse: [recoveredBlock28PC := 57].
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) asASDSimLabel.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034cc00; bytecode file offset 0xc494e0"
!SGSimEnvironment methodsFor: 'recovered'!
getCalibrationLabels
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) labelTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280eeb3cArg1 :block280eeb3cArg2 | 
    | block280eeb3cValue0 block280eeb3cValue1 block280eeb3cValue2 |
    block280eeb3cValue0 := block280eeb3cArg1.
    block280eeb3cValue1 := block280eeb3cArg2.
    block280eeb3cValue2 := (block280eeb3cValue0) < (block280eeb3cValue1).
    block280eeb3cValue2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isReadable.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 42] ifFalse: [recoveredBlock28PC := 57].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isCalibrationNode.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 48] ifFalse: [recoveredBlock28PC := 57].
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) asASDSimLabel.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036b540; bytecode file offset 0xc67e24"
!SGSimEnvironment methodsFor: 'recovered'!
allNodesFlatAndGlobal
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) labelTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280f13bcArg1 :block280f13bcArg2 | 
    | block280f13bcValue0 block280f13bcValue1 block280f13bcValue2 block280f13bcValue3 block280f13bcValue4 |
    block280f13bcValue0 := block280f13bcArg1.
    block280f13bcValue1 := (block280f13bcValue0) simPathLabel.
    block280f13bcValue2 := block280f13bcArg2.
    block280f13bcValue3 := (block280f13bcValue2) simPathLabel.
    block280f13bcValue4 := (block280f13bcValue1) < (block280f13bcValue3).
    block280f13bcValue4
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isReadable.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 61].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) reference.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isClassVariable.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 54] ifFalse: [recoveredBlock32PC := 61].
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
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
    ]
! !

"ASDBase.ic method 0x2036f178; bytecode file offset 0xc6ba54"
!SGSimEnvironment methodsFor: 'recovered'!
getImplConfigForNode: recoveredArg1
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
            recoveredStack2 := 'call_80102'.
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
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplConfiguredElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVirtualNode.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) realNode.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) ic.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) updateDataElement: (recoveredStack1) withProjectSpecificationForElement: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProject.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRescaleDataElementForNode: (recoveredStack1) dataElement: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203710d4; bytecode file offset 0xc6d9bc"
!SGSimEnvironment methodsFor: 'recovered'!
updateDependentParameters: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Bugfix'.
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
            recoveredStack0 := (recoveredStack0) getServer.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Target server not active, updates aborted.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) dpManager.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            (recoveredBlock30Stack0 ~~ nil) ifTrue: [recoveredBlock30PC := 44] ifFalse: [recoveredBlock30PC := 42].
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack0 := false.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            ^recoveredBlock30Stack0
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) dpManager.
            recoveredBlock30PC := 47.
        ].
        recoveredBlock30Step = 47 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) evaluateValuesOfDependentParameters.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 54] ifFalse: [recoveredBlock30PC := 52].
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack0 := false.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            ^recoveredBlock30Stack0
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) dpManager.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) updateValuesForDependentParameters1GEE: (recoveredBlock30Stack1).
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'Update dependent parameters'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203713a0; bytecode file offset 0xc6dc90"
!SGSimEnvironment methodsFor: 'recovered'!
getAliasForLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) labelTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isReadable.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 32].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack2 := self.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) topSimNode.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) aliasPath: (recoveredBlock12Stack2).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getEntryAtIndex: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 |
    recoveredBlock41Value0 := SGDataNameObject.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value1) table.
    recoveredBlock41Value3 := (recoveredBlock41Value2) wName.
    recoveredBlock41Value4 := (recoveredBlock41Value3) reversedASDSimLabel.
    recoveredBlock41Value5 := (self) getAliasForLabel: (recoveredBlock41Value4).
    recoveredBlock41Value6 := recoveredBlock41Arg1.
    recoveredBlock41Value7 := (recoveredBlock41Value6) index.
    recoveredBlock41Value8 := (recoveredBlock41Value0) createForTable: (recoveredBlock41Value5) index: (recoveredBlock41Value7).
    recoveredBlock41Value8
].
    recoveredValue8 := (recoveredValue6) ifNotNil: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2037af94; bytecode file offset 0xc77874"
!SGSimEnvironment methodsFor: 'recovered'!
getSimInstancesForNodes: recoveredArg1
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
            recoveredStack2 := [:block280f240cArg1 :block280f240cArg2 | 
    | block280f240cValue0 block280f240cValue1 block280f240cValue2 block280f240cValue3 block280f240cValue4 block280f240cValue5 block280f240cValue6 |
    block280f240cValue0 := EsString.
    block280f240cValue1 := (block280f240cValue0) sortBlockNumeric.
    block280f240cValue2 := block280f240cArg1.
    block280f240cValue3 := (block280f240cValue2) wName.
    block280f240cValue4 := block280f240cArg2.
    block280f240cValue5 := (block280f240cValue4) wName.
    block280f240cValue6 := (block280f240cValue1) value: (block280f240cValue3) value: (block280f240cValue5).
    block280f240cValue6
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 41.
        ].
        recoveredBlock33Step = 41 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) getSimInstanceForNode: (recoveredBlock33Stack1).
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock33Stack0.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredBlock33Stack0 := nil.
            recoveredBlock33PC := 47.
        ].
        recoveredBlock33Step = 47 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 50.
        ].
        recoveredBlock33Step = 50 ifTrue: [
            (recoveredBlock33Stack1 == nil) ifTrue: [recoveredBlock33PC := 63] ifFalse: [recoveredBlock33PC := 54].
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack0 := recoveredLocal2.
            recoveredBlock33PC := 58.
        ].
        recoveredBlock33Step = 58 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal1.
            recoveredBlock33PC := 61.
        ].
        recoveredBlock33Step = 61 ifTrue: [
            recoveredBlock33Stack0 := (recoveredBlock33Stack0) add: (recoveredBlock33Stack1).
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack0.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203816fc; bytecode file offset 0xc7dfe4"
!SGSimEnvironment methodsFor: 'recovered'!
buildMakeConfigStackForSimNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Kli') = ('Call_43370').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (recoveredValue1) instVarParents: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asArray.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := (self) getTopMakeConfig.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 recoveredBlock36Value5 recoveredBlock36Value6 recoveredBlock36Value7 recoveredBlock36Value8 recoveredBlock36Value9 |
    recoveredBlock36Value0 := recoveredLocal2.
    recoveredBlock36Value1 := Array.
    recoveredBlock36Value2 := recoveredLocal2.
    recoveredBlock36Value3 := recoveredBlock36Arg2.
    recoveredBlock36Value4 := (recoveredBlock36Value2) at: (recoveredBlock36Value3).
    recoveredBlock36Value5 := recoveredBlock36Arg1.
    recoveredBlock36Value6 := (recoveredBlock36Value4) checkedMakeConfigForElement: (recoveredBlock36Value5).
    recoveredBlock36Value7 := (recoveredBlock36Value1) with: (recoveredBlock36Value6).
    recoveredBlock36Value8 := (recoveredBlock36Value0) , (recoveredBlock36Value7).
    recoveredBlock36Value9 := recoveredBlock36Value8.
    recoveredLocal2 := recoveredBlock36Value9.
    recoveredBlock36Value8
].
    (recoveredValue9) doWithIndex: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    ^recoveredValue11
! !

"ASDBase.ic method 0x203850f4; bytecode file offset 0xc819e4"
!SGSimEnvironment methodsFor: 'recovered'!
reinitializeParameters: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f2e98Arg1 | 
    | block280f2e98Stack0 block280f2e98Stack1 block280f2e98Stack2 block280f2e98Stack3 block280f2e98PC block280f2e98Step block280f2e98Done block280f2e98Result |
    block280f2e98Stack0 := self.
    block280f2e98PC := 4.
    block280f2e98Done := false.
    [block280f2e98Done not] whileTrue: [
        block280f2e98Step := block280f2e98PC.
        block280f2e98Step = 4 ifTrue: [
            block280f2e98Stack1 := false.
            block280f2e98PC := 5.
        ].
        block280f2e98Step = 5 ifTrue: [
            block280f2e98Stack2 := block280f2e98Arg1.
            block280f2e98PC := 6.
        ].
        block280f2e98Step = 6 ifTrue: [
            block280f2e98Stack2 := (block280f2e98Stack2) isReinitializationPossible.
            block280f2e98PC := 7.
        ].
        block280f2e98Step = 7 ifTrue: [
            (block280f2e98Stack2) ifTrue: [block280f2e98PC := 10] ifFalse: [block280f2e98PC := 15].
        ].
        block280f2e98Step = 10 ifTrue: [
            block280f2e98PC := 11.
        ].
        block280f2e98Step = 11 ifTrue: [
            block280f2e98Stack1 := block280f2e98Arg1.
            block280f2e98PC := 12.
        ].
        block280f2e98Step = 12 ifTrue: [
            block280f2e98Stack1 := (block280f2e98Stack1) reference.
            block280f2e98PC := 13.
        ].
        block280f2e98Step = 13 ifTrue: [
            block280f2e98Stack1 := (block280f2e98Stack1) isParameter.
            block280f2e98PC := 15.
        ].
        block280f2e98Step = 15 ifTrue: [
            block280f2e98Result := block280f2e98Stack1.
            block280f2e98Done := true.
        ].
    ].
    block280f2e98Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReconnectedExperiment.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (self) getExistingDataElementForNode: (recoveredBlock35Value0).
    recoveredBlock35Value2 := (recoveredBlock35Value1) notNil.
    recoveredBlock35Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'Updating parameter %1 on target'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) reinitializeSimNodeInList: (recoveredStack1) dialog: (recoveredStack2) messageString: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'EHI_2008402269'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) sendSetCTSolverMethod.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) updateDependentParameter.
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

"ASDBase.ic method 0x2039194c; bytecode file offset 0xc8e21c"
!SGSimEnvironment methodsFor: 'recovered'!
setCurrentSimNodeDownForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentSimNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) reference.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentSimNode.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) reference.
    recoveredBlock36Value2 := recoveredArg1.
    recoveredBlock36Value3 := (recoveredBlock36Value1) = (recoveredBlock36Value2).
    recoveredBlock36Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
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
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) currentSimNode: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039d924; bytecode file offset 0xc9a20c"
!SGSimEnvironment methodsFor: 'recovered'!
getCalibrationLabelsForType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) labelTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280f4200Arg1 :block280f4200Arg2 | 
    | block280f4200Value0 block280f4200Value1 block280f4200Value2 |
    block280f4200Value0 := block280f4200Arg1.
    block280f4200Value1 := block280f4200Arg2.
    block280f4200Value2 := (block280f4200Value0) < (block280f4200Value1).
    block280f4200Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isReadable.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 42] ifFalse: [recoveredBlock28PC := 69].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg2.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isCalibrationNode.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 48] ifFalse: [recoveredBlock28PC := 69].
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg1.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg2.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) calibrationType.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) includes: (recoveredBlock28Stack3).
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 60] ifFalse: [recoveredBlock28PC := 69].
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) asASDSimLabel.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b1a78; bytecode file offset 0xcae364"
!SGSimEnvironment methodsFor: 'recovered'!
allNodes
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) topSimNode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCodeDataTree.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) expVars.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) topSimNode.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) topSimNode.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:block280f5c94Arg1 :block280f5c94Arg2 | 
    | block280f5c94Value0 block280f5c94Value1 block280f5c94Value2 block280f5c94Value3 block280f5c94Value4 |
    block280f5c94Value0 := block280f5c94Arg1.
    block280f5c94Value1 := (block280f5c94Value0) simLabel.
    block280f5c94Value2 := block280f5c94Arg2.
    block280f5c94Value3 := (block280f5c94Value2) simLabel.
    block280f5c94Value4 := (block280f5c94Value1) < (block280f5c94Value3).
    block280f5c94Value4
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c53e4; bytecode file offset 0xcc1ce4"
!SGSimEnvironment methodsFor: 'recovered'!
updateCTSolvers: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            ctSolvers := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) event.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            (recoveredBlock9Stack1 == nil) ifTrue: [recoveredBlock9PC := 30] ifFalse: [recoveredBlock9PC := 22].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) event.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) ctParameter.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) dt.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            (recoveredBlock9Stack1) delay: (recoveredBlock9Stack2).
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) setTargetCTSolver: (recoveredBlock9Stack1).
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeEvents.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block280f6a80Arg1 | 
    | block280f6a80Value0 block280f6a80Value1 block280f6a80Value2 block280f6a80Value3 block280f6a80Value4 |
    block280f6a80Value0 := block280f6a80Arg1.
    block280f6a80Value1 := (block280f6a80Value0) eventName.
    block280f6a80Value2 := SGDataGenerator.
    block280f6a80Value3 := (block280f6a80Value2) callLabel.
    block280f6a80Value4 := (block280f6a80Value1) = (block280f6a80Value3).
    block280f6a80Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := (self) minimumSolverDT.
    recoveredBlock65Value2 := (recoveredBlock65Value0) delay: (recoveredBlock65Value1).
    recoveredBlock65Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x203d1904; bytecode file offset 0xcce1ec"
!SGSimEnvironment methodsFor: 'recovered'!
initHierarchyModuls
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            hierarchicalModules := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProcessClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) reference.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) sgClass.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isProcessClass.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 51].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) walkThrough: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) topSimNode.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := hierarchicalModules.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (self) createModelForHierarchicalSubModul: (recoveredBlock65Value1).
    recoveredBlock65Value3 := (recoveredBlock65Value0) add: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x203d6014; bytecode file offset 0xcd28e8"
!SGSimEnvironment methodsFor: 'recovered'!
getLabelForAlias: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) labelTable.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := 'Rnz'.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 'Call_65442'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
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
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) topSimNode.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) aliasPath: (recoveredBlock5Stack3).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 41].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isReadable.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 38] ifFalse: [recoveredBlock5PC := 41].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := (self) labelTable.
    recoveredValue3 := [:recoveredBlock46Arg1 :recoveredBlock46Arg2 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := 'Rnz'.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := 'Call_65442'.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) == (recoveredBlock46Stack2).
            recoveredBlock46PC := 57.
        ].
        recoveredBlock46Step = 57 ifTrue: [
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 59.
        ].
        recoveredBlock46Step = 59 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg2.
            recoveredBlock46PC := 60.
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46Stack3 := self.
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack3 := (recoveredBlock46Stack3) topSimNode.
            recoveredBlock46PC := 62.
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) oldStyleAliasPath: (recoveredBlock46Stack3).
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack3 := recoveredArg1.
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) = (recoveredBlock46Stack3).
            recoveredBlock46PC := 68.
        ].
        recoveredBlock46Step = 68 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 72] ifFalse: [recoveredBlock46PC := 81].
        ].
        recoveredBlock46Step = 72 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg2.
            recoveredBlock46PC := 73.
        ].
        recoveredBlock46Step = 73 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) isReadable.
            recoveredBlock46PC := 75.
        ].
        recoveredBlock46Step = 75 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 78] ifFalse: [recoveredBlock46PC := 81].
        ].
        recoveredBlock46Step = 78 ifTrue: [
            recoveredBlock46PC := 79.
        ].
        recoveredBlock46Step = 79 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Arg1.
            recoveredBlock46PC := 80.
        ].
        recoveredBlock46Step = 80 ifTrue: [
            ^recoveredBlock46Stack1
        ].
        recoveredBlock46Step = 81 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x203da478; bytecode file offset 0xcd6d58"
!SGSimEnvironment methodsFor: 'recovered'!
getIndexFromLabel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGSimEnvironment.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSeparatorForTabIndex.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'x'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'y'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203decdc; bytecode file offset 0xcdb5bc"
!SGSimEnvironment methodsFor: 'recovered'!
getDataElementForStoredName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDataConfigName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack2.
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForLabel: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForAlias: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) index.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataElementsForTable: (recoveredStack2) indices: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForLabel: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForAlias: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e2b20; bytecode file offset 0xcdf404"
!SGSimEnvironment methodsFor: 'recovered'!
checkExperimentContainsViewsOutsideDesktop: recoveredArg1
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
            experiment := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'call_82374'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureWindowsConfig.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationWindowsConfig.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataloggerConfig.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 |
    recoveredBlock65Value0 := recoveredLocal2.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value0) add: (recoveredBlock65Value1).
    recoveredBlock65Value2
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAtLeastOneLayoutConfigOutsideDesktop: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e540c; bytecode file offset 0xce1d00"
!SGSimEnvironment methodsFor: 'recovered'!
initOfflineSimEnvironment: recoveredArg1 makeConfig: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) initSimEnvironment: (recoveredStack1) makeConfig: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) initializeDataGenerator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) initializeSimulator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGenerator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setSimulator: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModel.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) initERCOS.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) setToOfflineMode.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := SGSimProject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTopClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForSGProject: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) setToOfflineMode.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204049a4; bytecode file offset 0xd01290"
!SGSimEnvironment methodsFor: 'recovered'!
createDataElementForNode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    ^nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'EHI_80102'.
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
            recoveredStack0 := (recoveredStack0) isFloatPath.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'EHI_84060'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplConfigForNode: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) isIntegerPath.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            (recoveredBlock60Stack0) ifTrue: [recoveredBlock60PC := 72] ifFalse: [recoveredBlock60PC := 79].
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal1.
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Arg1.
            recoveredBlock60PC := 76.
        ].
        recoveredBlock60Step = 76 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) createDataElementForSimTargetWithImpl: (recoveredBlock60Stack1).
            recoveredBlock60PC := 78.
        ].
        recoveredBlock60Step = 78 ifTrue: [
            ^recoveredBlock60Stack0
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Stack0 := recoveredLocal1.
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Arg1.
            recoveredBlock60PC := 83.
        ].
        recoveredBlock60Step = 83 ifTrue: [
            recoveredBlock60Stack0 := (recoveredBlock60Stack0) createDataElementForSimTargetPhysQuantWithImpl: (recoveredBlock60Stack1).
            recoveredBlock60PC := 85.
        ].
        recoveredBlock60Step = 85 ifTrue: [
            ^recoveredBlock60Stack0
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForSimTarget.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204053b8; bytecode file offset 0xd01cac"
!SGSimEnvironment methodsFor: 'recovered'!
buildMakeConfigStackStartingAtProjectForSimNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_43370'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarParents: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := context.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) makeConfig.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 recoveredBlock59Value8 recoveredBlock59Value9 |
    recoveredBlock59Value0 := recoveredLocal2.
    recoveredBlock59Value1 := Array.
    recoveredBlock59Value2 := recoveredLocal2.
    recoveredBlock59Value3 := recoveredBlock59Arg2.
    recoveredBlock59Value4 := (recoveredBlock59Value2) at: (recoveredBlock59Value3).
    recoveredBlock59Value5 := recoveredBlock59Arg1.
    recoveredBlock59Value6 := (recoveredBlock59Value4) checkedMakeConfigForElement: (recoveredBlock59Value5).
    recoveredBlock59Value7 := (recoveredBlock59Value1) with: (recoveredBlock59Value6).
    recoveredBlock59Value8 := (recoveredBlock59Value0) , (recoveredBlock59Value7).
    recoveredBlock59Value9 := recoveredBlock59Value8.
    recoveredLocal2 := recoveredBlock59Value9.
    recoveredBlock59Value8
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204058c0; bytecode file offset 0xd021bc"
!SGSimEnvironment methodsFor: 'recovered'!
buildMakeConfigStackToExit
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) currentSimNode.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := (self) topSimNode.
    (recoveredValue1) simEntry: (false).
    recoveredValue2 := ('Kli') = ('Call_43370').
    recoveredValue3 := recoveredLocal4.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue3) instVarParents: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asArray.
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) first.
    recoveredValue11 := (recoveredValue8) copyWithout: (recoveredValue10).
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := Array.
    recoveredValue13 := context.
    recoveredValue14 := (recoveredValue13) makeConfig.
    recoveredValue15 := (recoveredValue12) with: (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := [:recoveredBlock60Arg1 :recoveredBlock60Arg2 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 recoveredBlock60Value9 |
    recoveredBlock60Value0 := recoveredLocal2.
    recoveredBlock60Value1 := Array.
    recoveredBlock60Value2 := recoveredLocal2.
    recoveredBlock60Value3 := recoveredBlock60Arg2.
    recoveredBlock60Value4 := (recoveredBlock60Value2) at: (recoveredBlock60Value3).
    recoveredBlock60Value5 := recoveredBlock60Arg1.
    recoveredBlock60Value6 := (recoveredBlock60Value4) checkedMakeConfigForElement: (recoveredBlock60Value5).
    recoveredBlock60Value7 := (recoveredBlock60Value1) with: (recoveredBlock60Value6).
    recoveredBlock60Value8 := (recoveredBlock60Value0) , (recoveredBlock60Value7).
    recoveredBlock60Value9 := recoveredBlock60Value8.
    recoveredLocal2 := recoveredBlock60Value9.
    recoveredBlock60Value8
].
    (recoveredValue16) doWithIndex: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    ^recoveredValue18
! !

"ASDBase.ic method 0x20408f2c; bytecode file offset 0xd05830"
!SGSimEnvironment methodsFor: 'recovered'!
initSolversWithOnlineDT
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAvailableTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280faa7cArg1 | 
    | block280faa7cValue0 block280faa7cValue1 |
    block280faa7cValue0 := block280faa7cArg1.
    block280faa7cValue1 := (block280faa7cValue0) isCTTask.
    block280faa7cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
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
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) simNode.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) reference.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) getTopClass.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) simulateProcessNameForVariable: (recoveredBlock24Stack1).
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal2.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := [:recoveredBlock24Block47Arg1 | 
    | recoveredBlock24Block47Value0 recoveredBlock24Block47Value1 recoveredBlock24Block47Value2 recoveredBlock24Block47Value3 |
    recoveredBlock24Block47Value0 := recoveredBlock24Block47Arg1.
    recoveredBlock24Block47Value1 := (recoveredBlock24Block47Value0) name.
    recoveredBlock24Block47Value2 := recoveredLocal1.
    recoveredBlock24Block47Value3 := (recoveredBlock24Block47Value1) = (recoveredBlock24Block47Value2).
    recoveredBlock24Block47Value3
].
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack2 := [].
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) detect: (recoveredBlock24Stack1) ifNone: (recoveredBlock24Stack2).
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 67.
        ].
        recoveredBlock24Step = 67 ifTrue: [
            recoveredBlock24Stack0 := nil.
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 69.
        ].
        recoveredBlock24Step = 69 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 91] ifFalse: [recoveredBlock24PC := 72].
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) triggerObject.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isTimerTrigger.
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 80] ifFalse: [recoveredBlock24PC := 91].
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack0 := recoveredBlock24Arg1.
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) ctParameter.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) triggerObject.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) period.
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) dt: (recoveredBlock24Stack1).
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041afa0; bytecode file offset 0xd17890"
!SGSimEnvironment methodsFor: 'recovered'!
resolveVirtualityOfNode: recoveredArg1 visitedNodes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVirtualNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) realNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'call_84579'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) scopeCorrectedParentVc.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDescriptionName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) virtualElementError: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) reference.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) resolveFormula: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) brothersAndSistersNodeForLabel: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDescriptionName.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) virtualElementError: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVirtualNode.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveVirtualityOfNode: (recoveredStack2) visitedNodes: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) realNode: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20425b1c; bytecode file offset 0xd2241c"
!SGSimEnvironment methodsFor: 'recovered'!
updateSolversWithEvents: recoveredArg1
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
            recoveredStack2 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := (self) ctSolvers.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 recoveredBlock5Block13Value3 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := (recoveredBlock5Block13Value0) event.
    recoveredBlock5Block13Value2 := recoveredBlock5Arg1.
    recoveredBlock5Block13Value3 := (recoveredBlock5Block13Value1) = (recoveredBlock5Block13Value2).
    recoveredBlock5Block13Value3
].
    recoveredBlock5Value2 := [].
    recoveredBlock5Value3 := (recoveredBlock5Value0) detect: (recoveredBlock5Value1) ifNone: (recoveredBlock5Value2).
    recoveredBlock5Value4 := [:recoveredBlock5Block31Arg1 | 
    | recoveredBlock5Block31Value0 recoveredBlock5Block31Value1 recoveredBlock5Block31Value2 recoveredBlock5Block31Value3 recoveredBlock5Block31Value4 recoveredBlock5Block31Value5 recoveredBlock5Block31Value6 |
    recoveredBlock5Block31Value0 := recoveredBlock5Block31Arg1.
    recoveredBlock5Block31Value1 := (recoveredBlock5Block31Value0) ctParameter.
    recoveredBlock5Block31Value2 := recoveredBlock5Block31Arg1.
    recoveredBlock5Block31Value3 := (recoveredBlock5Block31Value2) event.
    recoveredBlock5Block31Value4 := (recoveredBlock5Block31Value3) delay.
    (recoveredBlock5Block31Value1) dt: (recoveredBlock5Block31Value4).
    recoveredBlock5Block31Value5 := recoveredBlock5Block31Arg1.
    recoveredBlock5Block31Value6 := (self) setTargetCTSolver: (recoveredBlock5Block31Value5).
    recoveredBlock5Block31Value6
].
    recoveredBlock5Value5 := (recoveredBlock5Value3) ifNotNil: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeEvents.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:block280fcad4Arg1 | 
    | block280fcad4Value0 block280fcad4Value1 block280fcad4Value2 block280fcad4Value3 block280fcad4Value4 |
    block280fcad4Value0 := block280fcad4Arg1.
    block280fcad4Value1 := (block280fcad4Value0) eventName.
    block280fcad4Value2 := SGDataGenerator.
    block280fcad4Value3 := (block280fcad4Value2) callLabel.
    block280fcad4Value4 := (block280fcad4Value1) = (block280fcad4Value3).
    block280fcad4Value4
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := recoveredBlock85Arg1.
    recoveredBlock85Value1 := (self) minimumSolverDT.
    recoveredBlock85Value2 := (recoveredBlock85Value0) delay: (recoveredBlock85Value1).
    recoveredBlock85Value2
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x20426e78; bytecode file offset 0xd23754"
!SGSimEnvironment methodsFor: 'recovered'!
getSimInstanceForAlias: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := 'Rnz'.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := 'Call_65442'.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) == (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) topSimNode.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) aliasPath: (recoveredBlock5Stack3).
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 36].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isReadable.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := (self) labelTable.
    recoveredBlock37Value1 := [:recoveredBlock37Block45Arg1 | 
    | recoveredBlock37Block45Stack0 recoveredBlock37Block45Stack1 recoveredBlock37Block45Stack2 recoveredBlock37Block45Stack3 recoveredBlock37Block45Stack4 recoveredBlock37Block45PC recoveredBlock37Block45Step recoveredBlock37Block45Done recoveredBlock37Block45Result |
    recoveredBlock37Block45Stack0 := self.
    recoveredBlock37Block45PC := 52.
    recoveredBlock37Block45Done := false.
    [recoveredBlock37Block45Done not] whileTrue: [
        recoveredBlock37Block45Step := recoveredBlock37Block45PC.
        recoveredBlock37Block45Step = 52 ifTrue: [
            recoveredBlock37Block45Stack1 := 'Rnz'.
            recoveredBlock37Block45PC := 54.
        ].
        recoveredBlock37Block45Step = 54 ifTrue: [
            recoveredBlock37Block45Stack2 := 'Call_65442'.
            recoveredBlock37Block45PC := 56.
        ].
        recoveredBlock37Block45Step = 56 ifTrue: [
            recoveredBlock37Block45Stack1 := (recoveredBlock37Block45Stack1) == (recoveredBlock37Block45Stack2).
            recoveredBlock37Block45PC := 57.
        ].
        recoveredBlock37Block45Step = 57 ifTrue: [
            recoveredBlock37Block45PC := 58.
        ].
        recoveredBlock37Block45Step = 58 ifTrue: [
            recoveredBlock37Block45Stack1 := false.
            recoveredBlock37Block45PC := 59.
        ].
        recoveredBlock37Block45Step = 59 ifTrue: [
            recoveredBlock37Block45Stack2 := recoveredBlock37Block45Arg1.
            recoveredBlock37Block45PC := 60.
        ].
        recoveredBlock37Block45Step = 60 ifTrue: [
            recoveredBlock37Block45Stack3 := self.
            recoveredBlock37Block45PC := 61.
        ].
        recoveredBlock37Block45Step = 61 ifTrue: [
            recoveredBlock37Block45Stack3 := (recoveredBlock37Block45Stack3) topSimNode.
            recoveredBlock37Block45PC := 62.
        ].
        recoveredBlock37Block45Step = 62 ifTrue: [
            recoveredBlock37Block45Stack2 := (recoveredBlock37Block45Stack2) oldStyleAliasPath: (recoveredBlock37Block45Stack3).
            recoveredBlock37Block45PC := 64.
        ].
        recoveredBlock37Block45Step = 64 ifTrue: [
            recoveredBlock37Block45Stack3 := recoveredArg1.
            recoveredBlock37Block45PC := 67.
        ].
        recoveredBlock37Block45Step = 67 ifTrue: [
            recoveredBlock37Block45Stack2 := (recoveredBlock37Block45Stack2) = (recoveredBlock37Block45Stack3).
            recoveredBlock37Block45PC := 68.
        ].
        recoveredBlock37Block45Step = 68 ifTrue: [
            (recoveredBlock37Block45Stack2) ifTrue: [recoveredBlock37Block45PC := 72] ifFalse: [recoveredBlock37Block45PC := 76].
        ].
        recoveredBlock37Block45Step = 72 ifTrue: [
            recoveredBlock37Block45PC := 73.
        ].
        recoveredBlock37Block45Step = 73 ifTrue: [
            recoveredBlock37Block45Stack1 := recoveredBlock37Block45Arg1.
            recoveredBlock37Block45PC := 74.
        ].
        recoveredBlock37Block45Step = 74 ifTrue: [
            recoveredBlock37Block45Stack1 := (recoveredBlock37Block45Stack1) isReadable.
            recoveredBlock37Block45PC := 76.
        ].
        recoveredBlock37Block45Step = 76 ifTrue: [
            recoveredBlock37Block45Result := recoveredBlock37Block45Stack1.
            recoveredBlock37Block45Done := true.
        ].
    ].
    recoveredBlock37Block45Result
].
    recoveredBlock37Value2 := [].
    recoveredBlock37Value3 := (recoveredBlock37Value0) detect: (recoveredBlock37Value1) ifNone: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimInstanceForNode: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046fe40; bytecode file offset 0xd6c740"
!SGSimEnvironment methodsFor: 'recovered'!
setSolverConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ctSolvers.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) simNode.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) topSimNode.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getAliasName: (recoveredBlock5Stack3).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack3 := [
    | recoveredBlock5Block22Value0 recoveredBlock5Block22Value1 recoveredBlock5Block22Value2 recoveredBlock5Block22Value3 recoveredBlock5Block22Value4 recoveredBlock5Block22Value5 |
    recoveredBlock5Block22Value0 := simMainController.
    recoveredBlock5Block22Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block22Value2 := (recoveredBlock5Block22Value1) simNode.
    recoveredBlock5Block22Value3 := (recoveredBlock5Block22Value2) label.
    recoveredBlock5Block22Value4 := ('No CT-Solver parameters found for: <') , (recoveredBlock5Block22Value3).
    recoveredBlock5Block22Value5 := (recoveredBlock5Block22Value4) , ('> Please check the solver settings in the experiment').
    (recoveredBlock5Block22Value0) monitorInfo: (recoveredBlock5Block22Value5).
    nil
].
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2) ifAbsent: (recoveredBlock5Stack3).
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 57.
        ].
        recoveredBlock5Step = 57 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 118] ifFalse: [recoveredBlock5PC := 60].
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 62.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isOffline.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 68] ifFalse: [recoveredBlock5PC := 80].
        ].
        recoveredBlock5Step = 68 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            (recoveredBlock5Stack1) ctParameter: (recoveredBlock5Stack2).
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ctParameter.
            recoveredBlock5PC := 85.
        ].
        recoveredBlock5Step = 85 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            (recoveredBlock5Stack1) updateCTParamsForOnline: (recoveredBlock5Stack2).
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) event.
            recoveredBlock5PC := 95.
        ].
        recoveredBlock5Step = 95 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 112] ifFalse: [recoveredBlock5PC := 98].
        ].
        recoveredBlock5Step = 98 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 101.
        ].
        recoveredBlock5Step = 101 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) event.
            recoveredBlock5PC := 103.
        ].
        recoveredBlock5Step = 103 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 106.
        ].
        recoveredBlock5Step = 106 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) ctParameter.
            recoveredBlock5PC := 108.
        ].
        recoveredBlock5Step = 108 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) dt.
            recoveredBlock5PC := 110.
        ].
        recoveredBlock5Step = 110 ifTrue: [
            (recoveredBlock5Stack1) delay: (recoveredBlock5Stack2).
            recoveredBlock5PC := 112.
        ].
        recoveredBlock5Step = 112 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 113.
        ].
        recoveredBlock5Step = 113 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 116.
        ].
        recoveredBlock5Step = 116 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) setTargetCTSolver: (recoveredBlock5Stack2).
            recoveredBlock5PC := 118.
        ].
        recoveredBlock5Step = 118 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20473038; bytecode file offset 0xd6f920"
!SGSimEnvironment methodsFor: 'recovered'!
instanciateDataElementForTable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) wName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) reversedASDSimLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSimNodeForLabel: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatPath.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForTableElement.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'call_80102'.
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
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplConfigForNode: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isIntegerPath.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForTableElementImplConfig: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementForTableElementImplConfigForPhysQuant: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048af38; bytecode file offset 0xd8784c"
!SGSimEnvironment methodsFor: 'recovered'!
createModelForHierarchicalSubModul: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGSimClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPseudoAddress.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForKey: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentMethods.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := 'Kk'.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := 'Call_74201'.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) == (recoveredBlock36Stack2).
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 49.
        ].
        recoveredBlock36Step = 49 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) isProcess.
            recoveredBlock36PC := 52.
        ].
        recoveredBlock36Step = 52 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 56] ifFalse: [recoveredBlock36PC := 95].
        ].
        recoveredBlock36Step = 56 ifTrue: [
            recoveredBlock36PC := 57.
        ].
        recoveredBlock36Step = 57 ifTrue: [
            recoveredBlock36Stack1 := SGSimProcedure.
            recoveredBlock36PC := 59.
        ].
        recoveredBlock36Step = 59 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) methodName.
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack3 := self.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) subProcessSeparator.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 67.
        ].
        recoveredBlock36Step = 67 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg1.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            recoveredBlock36Stack3 := (recoveredBlock36Stack3) label.
            recoveredBlock36PC := 72.
        ].
        recoveredBlock36Step = 72 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) , (recoveredBlock36Stack3).
            recoveredBlock36PC := 74.
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) createName: (recoveredBlock36Stack2).
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            recoveredLocal3 := recoveredBlock36Stack1.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            recoveredBlock36Stack2 := Array.
            recoveredBlock36PC := 84.
        ].
        recoveredBlock36Step = 84 ifTrue: [
            recoveredBlock36Stack3 := recoveredLocal3.
            recoveredBlock36PC := 87.
        ].
        recoveredBlock36Step = 87 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) with: (recoveredBlock36Stack3).
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) , (recoveredBlock36Stack2).
            recoveredBlock36PC := 91.
        ].
        recoveredBlock36Step = 91 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredLocal2 := recoveredBlock36Stack2.
            recoveredBlock36PC := 95.
        ].
        recoveredBlock36Step = 95 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) procedures: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) initCMethodDic.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := SGSimCTSolverObject.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForNode: (recoveredStack2) model: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048e594; bytecode file offset 0xd8aea4"
!SGSimEnvironment methodsFor: 'recovered'!
terminateCTBlocks
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
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
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctSolvers.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20Stack6 recoveredBlock20Stack7 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) simNode.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) reference.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) sgClass.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) terminateMethodName.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack1.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) model.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 62] ifFalse: [recoveredBlock20PC := 44].
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack1 := recoveredBlock20Arg1.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) model.
            recoveredBlock20PC := 48.
        ].
        recoveredBlock20Step = 48 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack3 := #().
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack4 := nil.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack5 := self.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) currentSimTimeInTicks.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack6 := 1000000000.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) performASG: (recoveredBlock20Stack2) withArguments: (recoveredBlock20Stack3) return: (recoveredBlock20Stack4) time: (recoveredBlock20Stack5) dt: (recoveredBlock20Stack6).
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) terminateMethodName.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAvailableTasks.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Local1 recoveredBlock79Stack0 recoveredBlock79Stack1 recoveredBlock79Stack2 recoveredBlock79Stack3 recoveredBlock79Stack4 recoveredBlock79Stack5 recoveredBlock79Stack6 recoveredBlock79PC recoveredBlock79Step recoveredBlock79Done recoveredBlock79Result |
    recoveredBlock79Stack0 := self.
    recoveredBlock79PC := 86.
    recoveredBlock79Done := false.
    [recoveredBlock79Done not] whileTrue: [
        recoveredBlock79Step := recoveredBlock79PC.
        recoveredBlock79Step = 86 ifTrue: [
            recoveredBlock79Stack1 := recoveredBlock79Arg1.
            recoveredBlock79PC := 87.
        ].
        recoveredBlock79Step = 87 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) key.
            recoveredBlock79PC := 89.
        ].
        recoveredBlock79Step = 89 ifTrue: [
            recoveredBlock79Local1 := recoveredBlock79Stack1.
            recoveredBlock79PC := 90.
        ].
        recoveredBlock79Step = 90 ifTrue: [
            recoveredBlock79Stack1 := nil.
            recoveredBlock79PC := 91.
        ].
        recoveredBlock79Step = 91 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Local1.
            recoveredBlock79PC := 92.
        ].
        recoveredBlock79Step = 92 ifTrue: [
            recoveredBlock79Stack2 := (recoveredBlock79Stack2) isCTTask.
            recoveredBlock79PC := 94.
        ].
        recoveredBlock79Step = 94 ifTrue: [
            (recoveredBlock79Stack2) ifTrue: [recoveredBlock79PC := 98] ifFalse: [recoveredBlock79PC := 127].
        ].
        recoveredBlock79Step = 98 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Local1.
            recoveredBlock79PC := 99.
        ].
        recoveredBlock79Step = 99 ifTrue: [
            recoveredBlock79Stack2 := (recoveredBlock79Stack2) name.
            recoveredBlock79PC := 101.
        ].
        recoveredBlock79Step = 101 ifTrue: [
            recoveredBlock79Stack3 := recoveredLocal1.
            recoveredBlock79PC := 104.
        ].
        recoveredBlock79Step = 104 ifTrue: [
            recoveredBlock79Stack2 := (recoveredBlock79Stack2) = (recoveredBlock79Stack3).
            recoveredBlock79PC := 105.
        ].
        recoveredBlock79Step = 105 ifTrue: [
            (recoveredBlock79Stack2) ifTrue: [recoveredBlock79PC := 108] ifFalse: [recoveredBlock79PC := 127].
        ].
        recoveredBlock79Step = 108 ifTrue: [
            recoveredBlock79PC := 109.
        ].
        recoveredBlock79Step = 109 ifTrue: [
            recoveredBlock79Stack1 := self.
            recoveredBlock79PC := 110.
        ].
        recoveredBlock79Step = 110 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) getModel.
            recoveredBlock79PC := 112.
        ].
        recoveredBlock79Step = 112 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) access.
            recoveredBlock79PC := 114.
        ].
        recoveredBlock79Step = 114 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Arg1.
            recoveredBlock79PC := 115.
        ].
        recoveredBlock79Step = 115 ifTrue: [
            recoveredBlock79Stack2 := (recoveredBlock79Stack2) value.
            recoveredBlock79PC := 117.
        ].
        recoveredBlock79Step = 117 ifTrue: [
            recoveredBlock79Stack3 := 0.
            recoveredBlock79PC := 119.
        ].
        recoveredBlock79Step = 119 ifTrue: [
            recoveredBlock79Stack4 := 1000000000.
            recoveredBlock79PC := 121.
        ].
        recoveredBlock79Step = 121 ifTrue: [
            recoveredBlock79Stack5 := recoveredBlock79Arg1.
            recoveredBlock79PC := 122.
        ].
        recoveredBlock79Step = 122 ifTrue: [
            recoveredBlock79Stack5 := (recoveredBlock79Stack5) value.
            recoveredBlock79PC := 124.
        ].
        recoveredBlock79Step = 124 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) activateTaskWithId: (recoveredBlock79Stack2) time: (recoveredBlock79Stack3) dt: (recoveredBlock79Stack4) name: (recoveredBlock79Stack5).
            recoveredBlock79PC := 127.
        ].
        recoveredBlock79Step = 127 ifTrue: [
            recoveredBlock79Result := recoveredBlock79Stack1.
            recoveredBlock79Done := true.
        ].
    ].
    recoveredBlock79Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048e7f8; bytecode file offset 0xd8b0e8"
!SGSimEnvironment methodsFor: 'recovered'!
resetLayoutConfigsOutsideDesktop: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) getExperiment.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) measureWindowsConfig.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) resetLayoutConfigOutsideDesktopConfigs: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) calibrationWindowsConfig.
    recoveredValue6 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (self) resetLayoutConfigOutsideDesktopConfigs: (recoveredBlock28Value0).
    recoveredBlock28Value1
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) dataloggerConfig.
    recoveredValue9 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := Array.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value0) with: (recoveredBlock44Value1).
    recoveredBlock44Value3 := (self) resetLayoutConfigOutsideDesktopConfigs: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) nvramCockpitConfig.
    recoveredValue12 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := Array.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value0) with: (recoveredBlock64Value1).
    recoveredBlock64Value3 := (self) resetLayoutConfigOutsideDesktopConfigs: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
    (recoveredValue11) ifNotNil: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) targetDebuggerConfig.
    recoveredValue15 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 |
    recoveredBlock84Value0 := Array.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := (recoveredBlock84Value0) with: (recoveredBlock84Value1).
    recoveredBlock84Value3 := (self) resetLayoutConfigOutsideDesktopConfigs: (recoveredBlock84Value2).
    recoveredBlock84Value3
].
    (recoveredValue14) ifNotNil: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) simViewConfig.
    recoveredValue18 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 |
    recoveredBlock104Value0 := recoveredBlock104Arg1.
    recoveredBlock104Value1 := (0) @ (0).
    (recoveredBlock104Value0) at: ('simViewPos') put: (recoveredBlock104Value1).
    recoveredBlock104Value2 := recoveredLocal1.
    recoveredBlock104Value3 := recoveredBlock104Arg1.
    recoveredBlock104Value4 := (recoveredBlock104Value2) simViewConfig: (recoveredBlock104Value3).
    recoveredBlock104Value4
].
    (recoveredValue17) ifNotNil: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x2049baec; bytecode file offset 0xd983dc"
!SGSimEnvironment methodsFor: 'recovered'!
initCTSolvers
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ctSolvers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVars.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
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
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) reference.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) sgClass.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isCTClass.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 44] ifFalse: [recoveredBlock25PC := 62].
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            (recoveredBlock25Stack1) initForCTModul.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := ctSolvers.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) createSolverForCTNode: (recoveredBlock25Stack3).
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) add: (recoveredBlock25Stack2).
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVars.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 77.
        ].
        recoveredBlock70Step = 77 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) reference.
            recoveredBlock70PC := 80.
        ].
        recoveredBlock70Step = 80 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) sgClass.
            recoveredBlock70PC := 82.
        ].
        recoveredBlock70Step = 82 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) isCTClass.
            recoveredBlock70PC := 84.
        ].
        recoveredBlock70Step = 84 ifTrue: [
            (recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 88] ifFalse: [recoveredBlock70PC := 110].
        ].
        recoveredBlock70Step = 88 ifTrue: [
            recoveredBlock70Stack2 := recoveredLocal1.
            recoveredBlock70PC := 91.
        ].
        recoveredBlock70Step = 91 ifTrue: [
            recoveredBlock70Stack3 := recoveredBlock70Arg1.
            recoveredBlock70PC := 92.
        ].
        recoveredBlock70Step = 92 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) includes: (recoveredBlock70Stack3).
            recoveredBlock70PC := 94.
        ].
        recoveredBlock70Step = 94 ifTrue: [
            (recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 110] ifFalse: [recoveredBlock70PC := 98].
        ].
        recoveredBlock70Step = 98 ifTrue: [
            recoveredBlock70PC := 99.
        ].
        recoveredBlock70Step = 99 ifTrue: [
            recoveredBlock70Stack1 := recoveredBlock70Arg1.
            recoveredBlock70PC := 100.
        ].
        recoveredBlock70Step = 100 ifTrue: [
            (recoveredBlock70Stack1) initForCTModul.
            recoveredBlock70PC := 102.
        ].
        recoveredBlock70Step = 102 ifTrue: [
            recoveredBlock70Stack1 := ctSolvers.
            recoveredBlock70PC := 104.
        ].
        recoveredBlock70Step = 104 ifTrue: [
            recoveredBlock70Stack2 := self.
            recoveredBlock70PC := 105.
        ].
        recoveredBlock70Step = 105 ifTrue: [
            recoveredBlock70Stack3 := recoveredBlock70Arg1.
            recoveredBlock70PC := 106.
        ].
        recoveredBlock70Step = 106 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) createSolverForCTNode: (recoveredBlock70Stack3).
            recoveredBlock70PC := 108.
        ].
        recoveredBlock70Step = 108 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) add: (recoveredBlock70Stack2).
            recoveredBlock70PC := 110.
        ].
        recoveredBlock70Step = 110 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCTClass.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := ctSolvers.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) topSimNode.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSolverForCTNode: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c5844; bytecode file offset 0xdc2138"
!SGSimEnvironment methodsFor: 'recovered'!
getDAMOSParameterDicForLabels: recoveredArg1 hierarchicalNames: recoveredArg2 caseSensitive: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block28106c0cArg1 | 
    | block28106c0cValue0 block28106c0cValue1 |
    block28106c0cValue0 := block28106c0cArg1.
    block28106c0cValue1 := (block28106c0cValue0) asUppercase.
    block28106c0cValue1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelTable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isReadable.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 54] ifFalse: [recoveredBlock40PC := 144].
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg2.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 62] ifFalse: [recoveredBlock40PC := 68].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) asAsap2HierarchicalName.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) asAsap2Name.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg3.
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 87] ifFalse: [recoveredBlock40PC := 80].
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 83.
        ].
        recoveredBlock40Step = 83 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) asUppercase.
            recoveredBlock40PC := 84.
        ].
        recoveredBlock40Step = 84 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 88.
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 89.
        ].
        recoveredBlock40Step = 89 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) reference.
            recoveredBlock40PC := 91.
        ].
        recoveredBlock40Step = 91 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isMethodParameter.
            recoveredBlock40PC := 93.
        ].
        recoveredBlock40Step = 93 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 144] ifFalse: [recoveredBlock40PC := 96].
        ].
        recoveredBlock40Step = 96 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) reference.
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isParameter.
            recoveredBlock40PC := 101.
        ].
        recoveredBlock40Step = 101 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 104] ifFalse: [recoveredBlock40PC := 144].
        ].
        recoveredBlock40Step = 104 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 107.
        ].
        recoveredBlock40Step = 107 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal2.
            recoveredBlock40PC := 110.
        ].
        recoveredBlock40Step = 110 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) includes: (recoveredBlock40Stack3).
            recoveredBlock40PC := 112.
        ].
        recoveredBlock40Step = 112 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 116] ifFalse: [recoveredBlock40PC := 144].
        ].
        recoveredBlock40Step = 116 ifTrue: [
            recoveredBlock40PC := 117.
        ].
        recoveredBlock40Step = 117 ifTrue: [
            recoveredBlock40Stack1 := self.
            recoveredBlock40PC := 118.
        ].
        recoveredBlock40Step = 118 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 119.
        ].
        recoveredBlock40Step = 119 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) getSimInstanceForNode: (recoveredBlock40Stack2).
            recoveredBlock40PC := 121.
        ].
        recoveredBlock40Step = 121 ifTrue: [
            recoveredLocal4 := recoveredBlock40Stack1.
            recoveredBlock40PC := 124.
        ].
        recoveredBlock40Step = 124 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 125.
        ].
        recoveredBlock40Step = 125 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal4.
            recoveredBlock40PC := 128.
        ].
        recoveredBlock40Step = 128 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 144] ifFalse: [recoveredBlock40PC := 132].
        ].
        recoveredBlock40Step = 132 ifTrue: [
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal3.
            recoveredBlock40PC := 136.
        ].
        recoveredBlock40Step = 136 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal2.
            recoveredBlock40PC := 139.
        ].
        recoveredBlock40Step = 139 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal4.
            recoveredBlock40PC := 142.
        ].
        recoveredBlock40Step = 142 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 144.
        ].
        recoveredBlock40Step = 144 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c5b0c; bytecode file offset 0xdc241c"
!SGSimEnvironment methodsFor: 'recovered'!
searchSimNodeForMakeConfig: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCodeDataTree.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimNodeForSGClass: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCodeDataTree.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNodesForSGClass: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) buildMakeConfigStackStartingAtProjectForSimNode: (recoveredBlock37Stack1).
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredLocal2 := recoveredBlock37Stack0.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack0 := recoveredLocal2.
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) last.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) reference.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) checkedMakeConfigForElement: (recoveredBlock37Stack1).
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock37Stack0.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Stack0 := self.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack0 := (recoveredBlock37Stack0) isFloatPath.
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            (recoveredBlock37Stack0) ifTrue: [recoveredBlock37PC := 70] ifFalse: [recoveredBlock37PC := 92].
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack0 := nil.
            recoveredBlock37PC := 71.
        ].
        recoveredBlock37Step = 71 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 74.
        ].
        recoveredBlock37Step = 74 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) data.
            recoveredBlock37PC := 76.
        ].
        recoveredBlock37Step = 76 ifTrue: [
            recoveredBlock37Stack2 := recoveredLocal1.
            recoveredBlock37PC := 79.
        ].
        recoveredBlock37Step = 79 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) data.
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 82.
        ].
        recoveredBlock37Step = 82 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 86] ifFalse: [recoveredBlock37PC := 89].
        ].
        recoveredBlock37Step = 86 ifTrue: [
            recoveredBlock37PC := 87.
        ].
        recoveredBlock37Step = 87 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Arg1.
            recoveredBlock37PC := 88.
        ].
        recoveredBlock37Step = 88 ifTrue: [
            ^recoveredBlock37Stack0
        ].
        recoveredBlock37Step = 89 ifTrue: [
            recoveredBlock37PC := 123.
        ].
        recoveredBlock37Step = 92 ifTrue: [
            recoveredBlock37Stack0 := nil.
            recoveredBlock37PC := 93.
        ].
        recoveredBlock37Step = 93 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 96.
        ].
        recoveredBlock37Step = 96 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) data.
            recoveredBlock37PC := 98.
        ].
        recoveredBlock37Step = 98 ifTrue: [
            recoveredBlock37Stack2 := recoveredLocal1.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) data.
            recoveredBlock37PC := 103.
        ].
        recoveredBlock37Step = 103 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 104.
        ].
        recoveredBlock37Step = 104 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 107.
        ].
        recoveredBlock37Step = 107 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) implementation.
            recoveredBlock37PC := 109.
        ].
        recoveredBlock37Step = 109 ifTrue: [
            recoveredBlock37Stack3 := recoveredLocal1.
            recoveredBlock37PC := 112.
        ].
        recoveredBlock37Step = 112 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) implementation.
            recoveredBlock37PC := 114.
        ].
        recoveredBlock37Step = 114 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) = (recoveredBlock37Stack3).
            recoveredBlock37PC := 115.
        ].
        recoveredBlock37Step = 115 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) & (recoveredBlock37Stack2).
            recoveredBlock37PC := 117.
        ].
        recoveredBlock37Step = 117 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 120] ifFalse: [recoveredBlock37PC := 123].
        ].
        recoveredBlock37Step = 120 ifTrue: [
            recoveredBlock37PC := 121.
        ].
        recoveredBlock37Step = 121 ifTrue: [
            recoveredBlock37Stack0 := recoveredBlock37Arg1.
            recoveredBlock37PC := 122.
        ].
        recoveredBlock37Step = 122 ifTrue: [
            ^recoveredBlock37Stack0
        ].
        recoveredBlock37Step = 123 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack0.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := 'Class <'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := '> not found!!'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'May be your model is not consistent. Please touch recursive and try again.'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) advice: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d73bc; bytecode file offset 0xdd3cac"
!SGSimEnvironment methodsFor: 'recovered'!
correctDataInCaseOfComplexElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVectoredType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDataVector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDataElementsForTable: (recoveredStack3) indices: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) someElement.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 24] ifFalse: [recoveredLocal3 := nil. recoveredPC := 67]] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDataMatrix.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack6 := (recoveredStack6) @ (recoveredStack7).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDataElementsForTable: (recoveredStack4) indices: (recoveredStack5).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) notEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack6 := (recoveredStack6) someElement.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := (recoveredStack6) value.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 94] ifFalse: [recoveredLocal2 := nil. recoveredPC := 141]] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 84] ifFalse: [recoveredLocal3 := nil. recoveredPC := 156]] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f4a54; bytecode file offset 0xdf1348"
!SGSimEnvironment methodsFor: 'recovered'!
getSimNodeForInstVar: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassVariable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappedGlobalVarFor: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 |
    recoveredBlock28Value0 := (self) labelTable.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := (recoveredBlock28Value1) label.
    recoveredBlock28Value3 := [].
    recoveredBlock28Value4 := (recoveredBlock28Value0) at: (recoveredBlock28Value2) ifAbsent: (recoveredBlock28Value3).
    recoveredBlock28Value5 := [:recoveredBlock28Block43Arg1 | 
    | recoveredBlock28Block43Stack0 recoveredBlock28Block43Stack1 recoveredBlock28Block43Stack2 recoveredBlock28Block43Stack3 recoveredBlock28Block43PC recoveredBlock28Block43Step recoveredBlock28Block43Done recoveredBlock28Block43Result |
    recoveredBlock28Block43Stack0 := nil.
    recoveredBlock28Block43PC := 50.
    recoveredBlock28Block43Done := false.
    [recoveredBlock28Block43Done not] whileTrue: [
        recoveredBlock28Block43Step := recoveredBlock28Block43PC.
        recoveredBlock28Block43Step = 50 ifTrue: [
            recoveredBlock28Block43Stack1 := nil.
            recoveredBlock28Block43PC := 51.
        ].
        recoveredBlock28Block43Step = 51 ifTrue: [
            recoveredBlock28Block43Stack2 := recoveredBlock28Block43Arg1.
            recoveredBlock28Block43PC := 52.
        ].
        recoveredBlock28Block43Step = 52 ifTrue: [
            recoveredBlock28Block43Stack2 := (recoveredBlock28Block43Stack2) isReadable.
            recoveredBlock28Block43PC := 54.
        ].
        recoveredBlock28Block43Step = 54 ifTrue: [
            (recoveredBlock28Block43Stack2) ifTrue: [recoveredBlock28Block43PC := 58] ifFalse: [recoveredBlock28Block43PC := 64].
        ].
        recoveredBlock28Block43Step = 58 ifTrue: [
            recoveredBlock28Block43PC := 59.
        ].
        recoveredBlock28Block43Step = 59 ifTrue: [
            recoveredBlock28Block43Stack1 := recoveredBlock28Block43Arg1.
            recoveredBlock28Block43PC := 60.
        ].
        recoveredBlock28Block43Step = 60 ifTrue: [
            recoveredBlock28Block43Stack2 := recoveredBlock28Block43Stack1.
            recoveredBlock28Block43PC := 61.
        ].
        recoveredBlock28Block43Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock28Block43Stack2.
            recoveredBlock28Block43PC := 64.
        ].
        recoveredBlock28Block43Step = 64 ifTrue: [
            recoveredBlock28Block43Result := recoveredBlock28Block43Stack1.
            recoveredBlock28Block43Done := true.
        ].
    ].
    recoveredBlock28Block43Result
].
    recoveredBlock28Value6 := (recoveredBlock28Value4) ifNotNil: (recoveredBlock28Value5).
    recoveredBlock28Value6
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := topSimNode.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) argVars.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 |
    recoveredBlock78Value0 := recoveredBlock78Arg1.
    recoveredBlock78Value1 := (recoveredBlock78Value0) reference.
    recoveredBlock78Value2 := recoveredArg1.
    recoveredBlock78Value3 := (recoveredBlock78Value1) = (recoveredBlock78Value2).
    recoveredBlock78Value3
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 147] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelTable.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) hierarchyPath.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := nil.
            recoveredBlock123PC := 131.
        ].
        recoveredBlock123Step = 131 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 132.
        ].
        recoveredBlock123Step = 132 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) isReadable.
            recoveredBlock123PC := 134.
        ].
        recoveredBlock123Step = 134 ifTrue: [
            (recoveredBlock123Stack2) ifTrue: [recoveredBlock123PC := 138] ifFalse: [recoveredBlock123PC := 144].
        ].
        recoveredBlock123Step = 138 ifTrue: [
            recoveredBlock123PC := 139.
        ].
        recoveredBlock123Step = 139 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 140.
        ].
        recoveredBlock123Step = 140 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 141.
        ].
        recoveredBlock123Step = 141 ifTrue: [
            recoveredLocal1 := recoveredBlock123Stack2.
            recoveredBlock123PC := 144.
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 167] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelToSimTable.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20522260; bytecode file offset 0xe1eb58"
!SGSimEnvironment methodsFor: 'recovered'!
getOriginalImplForNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueImplConfigured.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOrCreateClassImplConfig.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplementation.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonPrimitiveParent.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEntry.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClassVariable.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplConfig.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Stack0 recoveredBlock122Stack1 recoveredBlock122Stack2 recoveredBlock122Stack3 recoveredBlock122PC recoveredBlock122Step recoveredBlock122Done recoveredBlock122Result |
    recoveredBlock122Stack0 := self.
    recoveredBlock122PC := 128.
    recoveredBlock122Done := false.
    [recoveredBlock122Done not] whileTrue: [
        recoveredBlock122Step := recoveredBlock122PC.
        recoveredBlock122Step = 128 ifTrue: [
            recoveredBlock122Stack1 := recoveredBlock122Arg1.
            recoveredBlock122PC := 129.
        ].
        recoveredBlock122Step = 129 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) reference.
            recoveredBlock122PC := 130.
        ].
        recoveredBlock122Step = 130 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) isUniqueImplConfigured.
            recoveredBlock122PC := 131.
        ].
        recoveredBlock122Step = 131 ifTrue: [
            (recoveredBlock122Stack1) ifTrue: [recoveredBlock122PC := 134] ifFalse: [recoveredBlock122PC := 152].
        ].
        recoveredBlock122Step = 134 ifTrue: [
            recoveredBlock122Stack1 := recoveredBlock122Arg1.
            recoveredBlock122PC := 135.
        ].
        recoveredBlock122Step = 135 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) parent.
            recoveredBlock122PC := 136.
        ].
        recoveredBlock122Step = 136 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) reference.
            recoveredBlock122PC := 137.
        ].
        recoveredBlock122Step = 137 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) sgClass.
            recoveredBlock122PC := 138.
        ].
        recoveredBlock122Step = 138 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) getOrCreateClassImplConfig.
            recoveredBlock122PC := 140.
        ].
        recoveredBlock122Step = 140 ifTrue: [
            recoveredBlock122Stack2 := recoveredBlock122Arg1.
            recoveredBlock122PC := 141.
        ].
        recoveredBlock122Step = 141 ifTrue: [
            recoveredBlock122Stack2 := (recoveredBlock122Stack2) reference.
            recoveredBlock122PC := 142.
        ].
        recoveredBlock122Step = 142 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) configForElement: (recoveredBlock122Stack2).
            recoveredBlock122PC := 144.
        ].
        recoveredBlock122Step = 144 ifTrue: [
            recoveredBlock122Stack2 := recoveredBlock122Stack1.
            recoveredBlock122PC := 145.
        ].
        recoveredBlock122Step = 145 ifTrue: [
            recoveredLocal5 := recoveredBlock122Stack2.
            recoveredBlock122PC := 148.
        ].
        recoveredBlock122Step = 148 ifTrue: [
            recoveredBlock122PC := 163.
        ].
        recoveredBlock122Step = 152 ifTrue: [
            recoveredBlock122Stack1 := recoveredLocal5.
            recoveredBlock122PC := 155.
        ].
        recoveredBlock122Step = 155 ifTrue: [
            recoveredBlock122Stack2 := recoveredBlock122Arg1.
            recoveredBlock122PC := 156.
        ].
        recoveredBlock122Step = 156 ifTrue: [
            recoveredBlock122Stack2 := (recoveredBlock122Stack2) reference.
            recoveredBlock122PC := 157.
        ].
        recoveredBlock122Step = 157 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) configForElement: (recoveredBlock122Stack2).
            recoveredBlock122PC := 159.
        ].
        recoveredBlock122Step = 159 ifTrue: [
            recoveredBlock122Stack2 := recoveredBlock122Stack1.
            recoveredBlock122PC := 160.
        ].
        recoveredBlock122Step = 160 ifTrue: [
            recoveredLocal5 := recoveredBlock122Stack2.
            recoveredBlock122PC := 163.
        ].
        recoveredBlock122Step = 163 ifTrue: [
            recoveredBlock122Result := recoveredBlock122Stack1.
            recoveredBlock122Done := true.
        ].
    ].
    recoveredBlock122Result
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) createImplementation.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2052683c; bytecode file offset 0xe23134"
!SGSimEnvironment methodsFor: 'recovered'!
getOriginalDataForNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUniqueDataConfigured.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOrCreateClassDataConfig.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) createData.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonPrimitiveParent.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonPrimitiveParent.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEntry.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClassVariable.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueConfig.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Stack0 recoveredBlock123Stack1 recoveredBlock123Stack2 recoveredBlock123Stack3 recoveredBlock123PC recoveredBlock123Step recoveredBlock123Done recoveredBlock123Result |
    recoveredBlock123Stack0 := self.
    recoveredBlock123PC := 130.
    recoveredBlock123Done := false.
    [recoveredBlock123Done not] whileTrue: [
        recoveredBlock123Step := recoveredBlock123PC.
        recoveredBlock123Step = 130 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 131.
        ].
        recoveredBlock123Step = 131 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) reference.
            recoveredBlock123PC := 132.
        ].
        recoveredBlock123Step = 132 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) isUniqueDataConfigured.
            recoveredBlock123PC := 133.
        ].
        recoveredBlock123Step = 133 ifTrue: [
            (recoveredBlock123Stack1) ifTrue: [recoveredBlock123PC := 136] ifFalse: [recoveredBlock123PC := 154].
        ].
        recoveredBlock123Step = 136 ifTrue: [
            recoveredBlock123Stack1 := recoveredBlock123Arg1.
            recoveredBlock123PC := 137.
        ].
        recoveredBlock123Step = 137 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) parent.
            recoveredBlock123PC := 138.
        ].
        recoveredBlock123Step = 138 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) reference.
            recoveredBlock123PC := 139.
        ].
        recoveredBlock123Step = 139 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) sgClass.
            recoveredBlock123PC := 140.
        ].
        recoveredBlock123Step = 140 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) getOrCreateClassDataConfig.
            recoveredBlock123PC := 142.
        ].
        recoveredBlock123Step = 142 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 143.
        ].
        recoveredBlock123Step = 143 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) reference.
            recoveredBlock123PC := 144.
        ].
        recoveredBlock123Step = 144 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) configForElement: (recoveredBlock123Stack2).
            recoveredBlock123PC := 146.
        ].
        recoveredBlock123Step = 146 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 147.
        ].
        recoveredBlock123Step = 147 ifTrue: [
            recoveredLocal5 := recoveredBlock123Stack2.
            recoveredBlock123PC := 150.
        ].
        recoveredBlock123Step = 150 ifTrue: [
            recoveredBlock123PC := 165.
        ].
        recoveredBlock123Step = 154 ifTrue: [
            recoveredBlock123Stack1 := recoveredLocal5.
            recoveredBlock123PC := 157.
        ].
        recoveredBlock123Step = 157 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Arg1.
            recoveredBlock123PC := 158.
        ].
        recoveredBlock123Step = 158 ifTrue: [
            recoveredBlock123Stack2 := (recoveredBlock123Stack2) reference.
            recoveredBlock123PC := 159.
        ].
        recoveredBlock123Step = 159 ifTrue: [
            recoveredBlock123Stack1 := (recoveredBlock123Stack1) configForElement: (recoveredBlock123Stack2).
            recoveredBlock123PC := 161.
        ].
        recoveredBlock123Step = 161 ifTrue: [
            recoveredBlock123Stack2 := recoveredBlock123Stack1.
            recoveredBlock123PC := 162.
        ].
        recoveredBlock123Step = 162 ifTrue: [
            recoveredLocal5 := recoveredBlock123Stack2.
            recoveredBlock123PC := 165.
        ].
        recoveredBlock123Step = 165 ifTrue: [
            recoveredBlock123Result := recoveredBlock123Stack1.
            recoveredBlock123Done := true.
        ].
    ].
    recoveredBlock123Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) configForElement: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) createData.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20542ca8; bytecode file offset 0xe3f5cc"
!SGSimEnvironment methodsFor: 'recovered'!
saveAsExperiment
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) doProtectionCheck.
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
            recoveredStack0 := SortedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block2810e520Arg1 :block2810e520Arg2 | 
    | block2810e520Value0 block2810e520Value1 block2810e520Value2 |
    block2810e520Value0 := block2810e520Arg1.
    block2810e520Value1 := block2810e520Arg2.
    block2810e520Value2 := (block2810e520Value0) < (block2810e520Value1).
    block2810e520Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiments.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 |
    recoveredBlock38Value0 := recoveredLocal4.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value1) getObject.
    recoveredBlock38Value3 := (recoveredBlock38Value2) name.
    recoveredBlock38Value4 := (recoveredBlock38Value0) add: (recoveredBlock38Value3).
    recoveredBlock38Value4
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExperiment.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExperiment.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) comment.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) openExperimentCommentWindow: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock112Stack0 recoveredBlock112Stack1 recoveredBlock112Stack2 recoveredBlock112Stack3 recoveredBlock112PC recoveredBlock112Step recoveredBlock112Done recoveredBlock112Result |
    recoveredBlock112Stack0 := self.
    recoveredBlock112PC := 118.
    recoveredBlock112Done := false.
    [recoveredBlock112Done not] whileTrue: [
        recoveredBlock112Step := recoveredBlock112PC.
        recoveredBlock112Step = 118 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) getExperiments.
            recoveredBlock112PC := 120.
        ].
        recoveredBlock112Step = 120 ifTrue: [
            recoveredBlock112Stack1 := [:recoveredBlock112Block120Arg1 | 
    | recoveredBlock112Block120Value0 recoveredBlock112Block120Value1 recoveredBlock112Block120Value2 recoveredBlock112Block120Value3 recoveredBlock112Block120Value4 recoveredBlock112Block120Value5 |
    recoveredBlock112Block120Value0 := recoveredBlock112Block120Arg1.
    recoveredBlock112Block120Value1 := (recoveredBlock112Block120Value0) getObject.
    recoveredBlock112Block120Value2 := (recoveredBlock112Block120Value1) name.
    recoveredBlock112Block120Value3 := recoveredLocal2.
    recoveredBlock112Block120Value4 := (recoveredBlock112Block120Value3) at: (1).
    recoveredBlock112Block120Value5 := (recoveredBlock112Block120Value2) = (recoveredBlock112Block120Value4).
    recoveredBlock112Block120Value5
].
            recoveredBlock112PC := 140.
        ].
        recoveredBlock112Step = 140 ifTrue: [
            recoveredBlock112Stack2 := [].
            recoveredBlock112PC := 142.
        ].
        recoveredBlock112Step = 142 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) detect: (recoveredBlock112Stack1) ifNone: (recoveredBlock112Stack2).
            recoveredBlock112PC := 144.
        ].
        recoveredBlock112Step = 144 ifTrue: [
            recoveredLocal1 := recoveredBlock112Stack0.
            recoveredBlock112PC := 147.
        ].
        recoveredBlock112Step = 147 ifTrue: [
            recoveredBlock112Stack0 := recoveredLocal1.
            recoveredBlock112PC := 150.
        ].
        recoveredBlock112Step = 150 ifTrue: [
            (recoveredBlock112Stack0 ~~ nil) ifTrue: [recoveredBlock112PC := 188] ifFalse: [recoveredBlock112PC := 154].
        ].
        recoveredBlock112Step = 154 ifTrue: [
            recoveredBlock112Stack0 := SGSimExperiment.
            recoveredBlock112PC := 156.
        ].
        recoveredBlock112Step = 156 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) new.
            recoveredBlock112PC := 158.
        ].
        recoveredBlock112Step = 158 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) initialize.
            recoveredBlock112PC := 160.
        ].
        recoveredBlock112Step = 160 ifTrue: [
            recoveredLocal1 := recoveredBlock112Stack0.
            recoveredBlock112PC := 163.
        ].
        recoveredBlock112Step = 163 ifTrue: [
            recoveredBlock112Stack0 := recoveredLocal1.
            recoveredBlock112PC := 166.
        ].
        recoveredBlock112Step = 166 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal2.
            recoveredBlock112PC := 169.
        ].
        recoveredBlock112Step = 169 ifTrue: [
            recoveredBlock112Stack2 := 1.
            recoveredBlock112PC := 171.
        ].
        recoveredBlock112Step = 171 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) at: (recoveredBlock112Stack2).
            recoveredBlock112PC := 173.
        ].
        recoveredBlock112Step = 173 ifTrue: [
            (recoveredBlock112Stack0) name: (recoveredBlock112Stack1).
            recoveredBlock112PC := 175.
        ].
        recoveredBlock112Step = 175 ifTrue: [
            recoveredBlock112Stack0 := recoveredLocal1.
            recoveredBlock112PC := 178.
        ].
        recoveredBlock112Step = 178 ifTrue: [
            experiment := recoveredBlock112Stack0.
            recoveredBlock112PC := 180.
        ].
        recoveredBlock112Step = 180 ifTrue: [
            recoveredBlock112Stack0 := self.
            recoveredBlock112PC := 181.
        ].
        recoveredBlock112Step = 181 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) getTopClass.
            recoveredBlock112PC := 183.
        ].
        recoveredBlock112Step = 183 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal1.
            recoveredBlock112PC := 186.
        ].
        recoveredBlock112Step = 186 ifTrue: [
            (recoveredBlock112Stack0) addSimulationConfig: (recoveredBlock112Stack1).
            recoveredBlock112PC := 188.
        ].
        recoveredBlock112Step = 188 ifTrue: [
            recoveredBlock112Stack0 := recoveredLocal1.
            recoveredBlock112PC := 191.
        ].
        recoveredBlock112Step = 191 ifTrue: [
            experiment := recoveredBlock112Stack0.
            recoveredBlock112PC := 193.
        ].
        recoveredBlock112Step = 193 ifTrue: [
            recoveredBlock112Stack0 := self.
            recoveredBlock112PC := 194.
        ].
        recoveredBlock112Step = 194 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) getExperiment.
            recoveredBlock112PC := 196.
        ].
        recoveredBlock112Step = 196 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal2.
            recoveredBlock112PC := 199.
        ].
        recoveredBlock112Step = 199 ifTrue: [
            recoveredBlock112Stack2 := 2.
            recoveredBlock112PC := 201.
        ].
        recoveredBlock112Step = 201 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) at: (recoveredBlock112Stack2).
            recoveredBlock112PC := 203.
        ].
        recoveredBlock112Step = 203 ifTrue: [
            (recoveredBlock112Stack0) comment: (recoveredBlock112Stack1).
            recoveredBlock112PC := 205.
        ].
        recoveredBlock112Step = 205 ifTrue: [
            recoveredBlock112Stack0 := self.
            recoveredBlock112PC := 206.
        ].
        recoveredBlock112Step = 206 ifTrue: [
            recoveredBlock112Stack1 := true.
            recoveredBlock112PC := 207.
        ].
        recoveredBlock112Step = 207 ifTrue: [
            recoveredBlock112Stack0 := (recoveredBlock112Stack0) writeExperimentNotifyOwner: (recoveredBlock112Stack1).
            recoveredBlock112PC := 209.
        ].
        recoveredBlock112Step = 209 ifTrue: [
            recoveredBlock112Result := recoveredBlock112Stack0.
            recoveredBlock112Done := true.
        ].
    ].
    recoveredBlock112Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054d098; bytecode file offset 0xe499d4"
!SGSimEnvironment methodsFor: 'recovered'!
initSimEnvironment: recoveredArg1 makeConfig: recoveredArg2
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
            recoveredStack2 := 'ETAS_Library_Handling'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'Call_73184'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Kra'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Call_72892'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getServer.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) insistentlyLoadSimTargDll.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) dotString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) monitorInfo: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAndRegisterServer: (recoveredStack1) makeConfig: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            context := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) resetDataElementsTable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            makeConfig := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            valueConfig := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            implConfig := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := SGSimModelNode.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProject.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInstVar.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildSimModelFor: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            codeDataTree := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchSimNodeForMakeConfig: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            topSimNode := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) shutDown.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := topSimNode.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := valueConfig.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) vc: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := topSimNode.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := implConfig.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ic: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := topSimNode.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            currentSimNode := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) initAccessElementsWithServer.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) initTargetCode.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) buildModel.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntecrioBackanimation.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := topSimNode.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) initSMStates: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntecrioBackanimation.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) initCTSolvers.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) initHierarchyModuls.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) dotString.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) initErrorHandler.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) initAdditionalInstrumentedNodes.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055af1c; bytecode file offset 0xe57868"
!SGSimEnvironment methodsFor: 'recovered'!
createDataElementsForTable: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) checkForValidIndex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := 'Kk'.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack2 := 'Call_58320'.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) == (recoveredBlock13Stack2).
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) ~= (recoveredBlock13Stack2).
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 40] ifFalse: [recoveredBlock13PC := 71].
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := 'The entered index %1 for <%2> was croped to match the current size of %3'.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) printString.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack3 := recoveredArg1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) label.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg1.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) dim.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) printString.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) bindWith: (recoveredBlock13Stack2) with: (recoveredBlock13Stack3) with: (recoveredBlock13Stack4).
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack1 := SGMonitorStreamDummy.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) create.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            (recoveredBlock13Stack1) addWarningText: (recoveredBlock13Stack2).
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isRBDataMatrix.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 80] ifFalse: [recoveredBlock13PC := 120].
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack1 := 'x'.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local4.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) x.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) printString.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            recoveredBlock13Stack2 := 'y'.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local4.
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) y.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) printString.
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) class.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getSeparatorForTabIndex.
            recoveredBlock13PC := 105.
        ].
        recoveredBlock13Step = 105 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) wName.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack1 := 'x'.
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local4.
            recoveredBlock13PC := 123.
        ].
        recoveredBlock13Step = 123 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) printString.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) zapBlanks.
            recoveredBlock13PC := 127.
        ].
        recoveredBlock13Step = 127 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 129.
        ].
        recoveredBlock13Step = 129 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) class.
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getSeparatorForTabIndex.
            recoveredBlock13PC := 134.
        ].
        recoveredBlock13Step = 134 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 136.
        ].
        recoveredBlock13Step = 136 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg1.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) wName.
            recoveredBlock13PC := 141.
        ].
        recoveredBlock13Step = 141 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            recoveredBlock13Local5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 147.
        ].
        recoveredBlock13Step = 147 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reversedASDSimLabel.
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getEntryAtIndex: (recoveredBlock13Stack1).
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack0.
            recoveredBlock13PC := 152.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 153.
        ].
        recoveredBlock13Step = 153 ifTrue: [
            (recoveredBlock13Stack0 ~~ nil) ifTrue: [recoveredBlock13PC := 210] ifFalse: [recoveredBlock13PC := 156].
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 157.
        ].
        recoveredBlock13Step = 157 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) instanciateDataElementForTable: (recoveredBlock13Stack1).
            recoveredBlock13PC := 162.
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 163.
        ].
        recoveredBlock13Step = 163 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 164.
        ].
        recoveredBlock13Step = 164 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 210] ifFalse: [recoveredBlock13PC := 168].
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 169.
        ].
        recoveredBlock13Step = 169 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 172.
        ].
        recoveredBlock13Step = 172 ifTrue: [
            (recoveredBlock13Stack0) table: (recoveredBlock13Stack1).
            recoveredBlock13PC := 174.
        ].
        recoveredBlock13Step = 174 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 175.
        ].
        recoveredBlock13Step = 175 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 176.
        ].
        recoveredBlock13Step = 176 ifTrue: [
            (recoveredBlock13Stack0) index: (recoveredBlock13Stack1).
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 179.
        ].
        recoveredBlock13Step = 179 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local5.
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            (recoveredBlock13Stack0) name: (recoveredBlock13Stack1).
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 183 ifTrue: [
            recoveredBlock13Stack0 := SGAccessScalarForTableElement.
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) new.
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) initialize.
            recoveredBlock13PC := 188.
        ].
        recoveredBlock13Step = 188 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 189.
        ].
        recoveredBlock13Step = 189 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) charElement: (recoveredBlock13Stack1).
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack0.
            recoveredBlock13PC := 192.
        ].
        recoveredBlock13Step = 192 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 194.
        ].
        recoveredBlock13Step = 194 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getValuePointer.
            recoveredBlock13PC := 196.
        ].
        recoveredBlock13Step = 196 ifTrue: [
            (recoveredBlock13Stack0) oidNumber: (recoveredBlock13Stack1).
            recoveredBlock13PC := 198.
        ].
        recoveredBlock13Step = 198 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 200.
        ].
        recoveredBlock13Step = 200 ifTrue: [
            (recoveredBlock13Stack0) access: (recoveredBlock13Stack1).
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 204.
        ].
        recoveredBlock13Step = 204 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local5.
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) reversedASDSimLabel.
            recoveredBlock13PC := 208.
        ].
        recoveredBlock13Step = 208 ifTrue: [
            (recoveredBlock13Stack0) setEntry: (recoveredBlock13Stack1) forIndex: (recoveredBlock13Stack2).
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 211.
        ].
        recoveredBlock13Step = 211 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 212.
        ].
        recoveredBlock13Step = 212 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 223] ifFalse: [recoveredBlock13PC := 216].
        ].
        recoveredBlock13Step = 216 ifTrue: [
            recoveredBlock13PC := 217.
        ].
        recoveredBlock13Step = 217 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal1.
            recoveredBlock13PC := 220.
        ].
        recoveredBlock13Step = 220 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 221.
        ].
        recoveredBlock13Step = 221 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 223.
        ].
        recoveredBlock13Step = 223 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2057908c; bytecode file offset 0xe7598c"
!SGSimEnvironment methodsFor: 'recovered'!
createDistributionsFor: recoveredArg1 node: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := nil.
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
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 249].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getXDistributionElementFor: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappedClassVarFor: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVars.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 |
    recoveredBlock89Value0 := recoveredBlock89Arg1.
    recoveredBlock89Value1 := (recoveredBlock89Value0) reference.
    recoveredBlock89Value2 := recoveredLocal6.
    recoveredBlock89Value3 := (recoveredBlock89Value1) = (recoveredBlock89Value2).
    recoveredBlock89Value3
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForNode: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) xDistribution: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGTwoDCharTable.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) getYDistributionElementFor: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappedClassVarFor: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVars.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVars.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := (recoveredBlock199Value0) reference.
    recoveredBlock199Value2 := recoveredLocal3.
    recoveredBlock199Value3 := (recoveredBlock199Value1) = (recoveredBlock199Value2).
    recoveredBlock199Value3
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForNode: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) yDistribution: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) get.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057b05c; bytecode file offset 0xe779d8"
!SGSimEnvironment methodsFor: 'recovered'!
writeExperimentNotifyOwner: recoveredArg1
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
            recoveredStack2 := 'call_83829'.
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
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := dataGenerator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConfig.
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'EHI_2007400999'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'DataGenChannels'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock67Value0 |
    recoveredBlock67Value0 := recoveredLocal1.
    recoveredBlock67Value0
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:block28112978Arg1 | 
    | block28112978Stack0 block28112978Stack1 block28112978Stack2 block28112978Stack3 block28112978Stack4 block28112978PC block28112978Step block28112978Done block28112978Result |
    block28112978Stack0 := self.
    block28112978PC := 4.
    block28112978Done := false.
    [block28112978Done not] whileTrue: [
        block28112978Step := block28112978PC.
        block28112978Step = 4 ifTrue: [
            block28112978Stack1 := block28112978Arg1.
            block28112978PC := 5.
        ].
        block28112978Step = 5 ifTrue: [
            block28112978Stack2 := 1.
            block28112978PC := 7.
        ].
        block28112978Step = 7 ifTrue: [
            block28112978Stack1 := (block28112978Stack1) at: (block28112978Stack2).
            block28112978PC := 9.
        ].
        block28112978Step = 9 ifTrue: [
            block28112978Stack2 := 'signal'.
            block28112978PC := 11.
        ].
        block28112978Step = 11 ifTrue: [
            block28112978Stack1 := (block28112978Stack1) equalsLiteral: (block28112978Stack2).
            block28112978PC := 13.
        ].
        block28112978Step = 13 ifTrue: [
            (block28112978Stack1) ifTrue: [block28112978PC := 16] ifFalse: [block28112978PC := 23].
        ].
        block28112978Step = 16 ifTrue: [
            block28112978Stack1 := block28112978Arg1.
            block28112978PC := 17.
        ].
        block28112978Step = 17 ifTrue: [
            block28112978Stack2 := 1.
            block28112978PC := 19.
        ].
        block28112978Step = 19 ifTrue: [
            block28112978Stack3 := 'matrix'.
            block28112978PC := 21.
        ].
        block28112978Step = 21 ifTrue: [
            (block28112978Stack1) at: (block28112978Stack2) put: (block28112978Stack3).
            block28112978PC := 23.
        ].
        block28112978Step = 23 ifTrue: [
            block28112978Stack1 := nil.
            block28112978PC := 24.
        ].
        block28112978Step = 24 ifTrue: [
            block28112978Stack2 := block28112978Arg1.
            block28112978PC := 25.
        ].
        block28112978Step = 25 ifTrue: [
            block28112978Stack3 := 1.
            block28112978PC := 27.
        ].
        block28112978Step = 27 ifTrue: [
            block28112978Stack2 := (block28112978Stack2) at: (block28112978Stack3).
            block28112978PC := 29.
        ].
        block28112978Step = 29 ifTrue: [
            block28112978Stack3 := 'sine'.
            block28112978PC := 31.
        ].
        block28112978Step = 31 ifTrue: [
            block28112978Stack2 := (block28112978Stack2) equalsLiteral: (block28112978Stack3).
            block28112978PC := 33.
        ].
        block28112978Step = 33 ifTrue: [
            (block28112978Stack2) ifTrue: [block28112978PC := 36] ifFalse: [block28112978PC := 44].
        ].
        block28112978Step = 36 ifTrue: [
            block28112978PC := 37.
        ].
        block28112978Step = 37 ifTrue: [
            block28112978Stack1 := block28112978Arg1.
            block28112978PC := 38.
        ].
        block28112978Step = 38 ifTrue: [
            block28112978Stack2 := 1.
            block28112978PC := 40.
        ].
        block28112978Step = 40 ifTrue: [
            block28112978Stack3 := 'sinus'.
            block28112978PC := 42.
        ].
        block28112978Step = 42 ifTrue: [
            block28112978Stack1 := (block28112978Stack1) at: (block28112978Stack2) put: (block28112978Stack3).
            block28112978PC := 44.
        ].
        block28112978Step = 44 ifTrue: [
            block28112978Result := block28112978Stack1.
            block28112978Done := true.
        ].
    ].
    block28112978Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) dataGeneratorConfig: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := simulator.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) getConfig.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) eventGeneratorConfig: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMeasureConfig.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) measureWindowsConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCalibrationConfig.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) calibrationWindowsConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDataloggerConfig.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) dataloggerConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTargetDebuggerConfig.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) targetDebuggerConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSimViewConfig.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) simViewConfig: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := simMainController.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMonitorBDEConfig.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) monitorBDEConfig: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSolverConfig.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) solverConfig: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := 'Call_63630'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExperiment.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) nvramCockpitConfig.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) nvramCockpitConfig: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNvramCockpitConfig.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) nvramCockpitConfig: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := 'Call_93130'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) reference.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057d8e4; bytecode file offset 0xe7a214"
!SGSimEnvironment methodsFor: 'recovered'!
createSolverForCTNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGSimClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPseudoAddress.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForKey: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentMethods.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := false.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack1 := SGSimProcedure.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) methodName.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) createName: (recoveredBlock32Stack2).
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredLocal3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack2 := true.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            (recoveredBlock32Stack1) isCT: (recoveredBlock32Stack2).
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) arguments.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block61Arg1 | 
    | recoveredBlock32Block61Stack0 recoveredBlock32Block61Stack1 recoveredBlock32Block61Stack2 recoveredBlock32Block61Stack3 recoveredBlock32Block61Stack4 recoveredBlock32Block61PC recoveredBlock32Block61Step recoveredBlock32Block61Done recoveredBlock32Block61Result |
    recoveredBlock32Block61Stack0 := self.
    recoveredBlock32Block61PC := 68.
    recoveredBlock32Block61Done := false.
    [recoveredBlock32Block61Done not] whileTrue: [
        recoveredBlock32Block61Step := recoveredBlock32Block61PC.
        recoveredBlock32Block61Step = 68 ifTrue: [
            recoveredBlock32Block61Stack1 := recoveredBlock32Block61Arg1.
            recoveredBlock32Block61PC := 69.
        ].
        recoveredBlock32Block61Step = 69 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) isPrimitive.
            recoveredBlock32Block61PC := 71.
        ].
        recoveredBlock32Block61Step = 71 ifTrue: [
            (recoveredBlock32Block61Stack1) ifTrue: [recoveredBlock32Block61PC := 74] ifFalse: [recoveredBlock32Block61PC := 126].
        ].
        recoveredBlock32Block61Step = 74 ifTrue: [
            recoveredBlock32Block61Stack1 := recoveredBlock32Block61Arg1.
            recoveredBlock32Block61PC := 75.
        ].
        recoveredBlock32Block61Step = 75 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) sgClass.
            recoveredBlock32Block61PC := 77.
        ].
        recoveredBlock32Block61Step = 77 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) isComplexType.
            recoveredBlock32Block61PC := 79.
        ].
        recoveredBlock32Block61Step = 79 ifTrue: [
            (recoveredBlock32Block61Stack1) ifTrue: [recoveredBlock32Block61PC := 126] ifFalse: [recoveredBlock32Block61PC := 82].
        ].
        recoveredBlock32Block61Step = 82 ifTrue: [
            recoveredBlock32Block61Stack1 := recoveredBlock32Block61Arg1.
            recoveredBlock32Block61PC := 83.
        ].
        recoveredBlock32Block61Step = 83 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) parameterName.
            recoveredBlock32Block61PC := 85.
        ].
        recoveredBlock32Block61Step = 85 ifTrue: [
            recoveredLocal6 := recoveredBlock32Block61Stack1.
            recoveredBlock32Block61PC := 88.
        ].
        recoveredBlock32Block61Step = 88 ifTrue: [
            recoveredBlock32Block61Stack1 := self.
            recoveredBlock32Block61PC := 89.
        ].
        recoveredBlock32Block61Step = 89 ifTrue: [
            recoveredBlock32Block61Stack2 := recoveredArg1.
            recoveredBlock32Block61PC := 92.
        ].
        recoveredBlock32Block61Step = 92 ifTrue: [
            recoveredBlock32Block61Stack3 := recoveredLocal6.
            recoveredBlock32Block61PC := 95.
        ].
        recoveredBlock32Block61Step = 95 ifTrue: [
            recoveredBlock32Block61Stack2 := (recoveredBlock32Block61Stack2) argNodeNamed: (recoveredBlock32Block61Stack3).
            recoveredBlock32Block61PC := 97.
        ].
        recoveredBlock32Block61Step = 97 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) getSimInstanceForNode: (recoveredBlock32Block61Stack2).
            recoveredBlock32Block61PC := 99.
        ].
        recoveredBlock32Block61Step = 99 ifTrue: [
            recoveredLocal5 := recoveredBlock32Block61Stack1.
            recoveredBlock32Block61PC := 102.
        ].
        recoveredBlock32Block61Step = 102 ifTrue: [
            recoveredBlock32Block61Stack1 := recoveredLocal5.
            recoveredBlock32Block61PC := 105.
        ].
        recoveredBlock32Block61Step = 105 ifTrue: [
            recoveredBlock32Block61Stack2 := recoveredLocal6.
            recoveredBlock32Block61PC := 108.
        ].
        recoveredBlock32Block61Step = 108 ifTrue: [
            recoveredBlock32Block61Stack2 := (recoveredBlock32Block61Stack2) reversedASDSimLabel.
            recoveredBlock32Block61PC := 110.
        ].
        recoveredBlock32Block61Step = 110 ifTrue: [
            (recoveredBlock32Block61Stack1) name: (recoveredBlock32Block61Stack2).
            recoveredBlock32Block61PC := 112.
        ].
        recoveredBlock32Block61Step = 112 ifTrue: [
            recoveredBlock32Block61Stack1 := recoveredLocal3.
            recoveredBlock32Block61PC := 115.
        ].
        recoveredBlock32Block61Step = 115 ifTrue: [
            recoveredBlock32Block61Stack2 := recoveredLocal5.
            recoveredBlock32Block61PC := 118.
        ].
        recoveredBlock32Block61Step = 118 ifTrue: [
            recoveredBlock32Block61Stack3 := recoveredLocal6.
            recoveredBlock32Block61PC := 121.
        ].
        recoveredBlock32Block61Step = 121 ifTrue: [
            recoveredBlock32Block61Stack1 := (recoveredBlock32Block61Stack1) addArgument: (recoveredBlock32Block61Stack2) name: (recoveredBlock32Block61Stack3).
            recoveredBlock32Block61PC := 123.
        ].
        recoveredBlock32Block61Step = 123 ifTrue: [
            recoveredBlock32Block61PC := 131.
        ].
        recoveredBlock32Block61Step = 126 ifTrue: [
            recoveredBlock32Block61Stack1 := true.
            recoveredBlock32Block61PC := 127.
        ].
        recoveredBlock32Block61Step = 127 ifTrue: [
            recoveredBlock32Block61Stack2 := recoveredBlock32Block61Stack1.
            recoveredBlock32Block61PC := 128.
        ].
        recoveredBlock32Block61Step = 128 ifTrue: [
            recoveredLocal1 := recoveredBlock32Block61Stack2.
            recoveredBlock32Block61PC := 131.
        ].
        recoveredBlock32Block61Step = 131 ifTrue: [
            recoveredBlock32Block61Result := recoveredBlock32Block61Stack1.
            recoveredBlock32Block61Done := true.
        ].
    ].
    recoveredBlock32Block61Result
].
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            (recoveredBlock32Stack1) do: (recoveredBlock32Stack2).
            recoveredBlock32PC := 134.
        ].
        recoveredBlock32Step = 134 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 135.
        ].
        recoveredBlock32Step = 135 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) returnValue.
            recoveredBlock32PC := 137.
        ].
        recoveredBlock32Step = 137 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 198] ifFalse: [recoveredBlock32PC := 140].
        ].
        recoveredBlock32Step = 140 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 141.
        ].
        recoveredBlock32Step = 141 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) returnValue.
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isPrimitive.
            recoveredBlock32PC := 145.
        ].
        recoveredBlock32Step = 145 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 148] ifFalse: [recoveredBlock32PC := 194].
        ].
        recoveredBlock32Step = 148 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 149.
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) returnValue.
            recoveredBlock32PC := 151.
        ].
        recoveredBlock32Step = 151 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) parameterName.
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            recoveredLocal6 := recoveredBlock32Stack1.
            recoveredBlock32PC := 156.
        ].
        recoveredBlock32Step = 156 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 157.
        ].
        recoveredBlock32Step = 157 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 160.
        ].
        recoveredBlock32Step = 160 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal6.
            recoveredBlock32PC := 163.
        ].
        recoveredBlock32Step = 163 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) argNodeNamed: (recoveredBlock32Stack3).
            recoveredBlock32PC := 165.
        ].
        recoveredBlock32Step = 165 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) getSimInstanceForNode: (recoveredBlock32Stack2).
            recoveredBlock32PC := 167.
        ].
        recoveredBlock32Step = 167 ifTrue: [
            recoveredLocal4 := recoveredBlock32Stack1.
            recoveredBlock32PC := 170.
        ].
        recoveredBlock32Step = 170 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal4.
            recoveredBlock32PC := 173.
        ].
        recoveredBlock32Step = 173 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal6.
            recoveredBlock32PC := 176.
        ].
        recoveredBlock32Step = 176 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) reversedASDSimLabel.
            recoveredBlock32PC := 178.
        ].
        recoveredBlock32Step = 178 ifTrue: [
            (recoveredBlock32Stack1) name: (recoveredBlock32Stack2).
            recoveredBlock32PC := 180.
        ].
        recoveredBlock32Step = 180 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal3.
            recoveredBlock32PC := 183.
        ].
        recoveredBlock32Step = 183 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal4.
            recoveredBlock32PC := 186.
        ].
        recoveredBlock32Step = 186 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal6.
            recoveredBlock32PC := 189.
        ].
        recoveredBlock32Step = 189 ifTrue: [
            (recoveredBlock32Stack1) returnValue: (recoveredBlock32Stack2) name: (recoveredBlock32Stack3).
            recoveredBlock32PC := 191.
        ].
        recoveredBlock32Step = 191 ifTrue: [
            recoveredBlock32PC := 198.
        ].
        recoveredBlock32Step = 194 ifTrue: [
            recoveredBlock32Stack1 := true.
            recoveredBlock32PC := 195.
        ].
        recoveredBlock32Step = 195 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 198.
        ].
        recoveredBlock32Step = 198 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 199.
        ].
        recoveredBlock32Step = 199 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 202.
        ].
        recoveredBlock32Step = 202 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 223] ifFalse: [recoveredBlock32PC := 206].
        ].
        recoveredBlock32Step = 206 ifTrue: [
            recoveredBlock32PC := 207.
        ].
        recoveredBlock32Step = 207 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 210.
        ].
        recoveredBlock32Step = 210 ifTrue: [
            recoveredBlock32Stack2 := Array.
            recoveredBlock32PC := 212.
        ].
        recoveredBlock32Step = 212 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal3.
            recoveredBlock32PC := 215.
        ].
        recoveredBlock32Step = 215 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) with: (recoveredBlock32Stack3).
            recoveredBlock32PC := 217.
        ].
        recoveredBlock32Step = 217 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) , (recoveredBlock32Stack2).
            recoveredBlock32PC := 219.
        ].
        recoveredBlock32Step = 219 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 220.
        ].
        recoveredBlock32Step = 220 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 223.
        ].
        recoveredBlock32Step = 223 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) procedures: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 247] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) initCMethodDic.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := SGSimCTSolverObject.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForCTNode: (recoveredStack2) model: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a5448; bytecode file offset 0xea1d74"
!SGSimEnvironment methodsFor: 'recovered'!
getDAMOSLabelsFromList: recoveredArg1 forFilter: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosCaseSensitiveNames.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosIncludeBooleans.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosIncludeDependentParameter.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := ASDDAMOSOptions.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDamosFormatVersion.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosV1WriteEnums.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Local1 recoveredBlock91Local2 recoveredBlock91Local3 recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 99.
        ].
        recoveredBlock91Step = 99 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg2.
            recoveredBlock91PC := 102.
        ].
        recoveredBlock91Step = 102 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Arg1.
            recoveredBlock91PC := 105.
        ].
        recoveredBlock91Step = 105 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) value: (recoveredBlock91Stack3).
            recoveredBlock91PC := 107.
        ].
        recoveredBlock91Step = 107 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 110] ifFalse: [recoveredBlock91PC := 277].
        ].
        recoveredBlock91Step = 110 ifTrue: [
            recoveredBlock91PC := 111.
        ].
        recoveredBlock91Step = 111 ifTrue: [
            recoveredBlock91Stack1 := false.
            recoveredBlock91PC := 112.
        ].
        recoveredBlock91Step = 112 ifTrue: [
            recoveredBlock91Local1 := recoveredBlock91Stack1.
            recoveredBlock91PC := 115.
        ].
        recoveredBlock91Step = 115 ifTrue: [
            recoveredBlock91Stack1 := [
    | recoveredBlock91Block115Value0 recoveredBlock91Block115Value1 recoveredBlock91Block115Value2 recoveredBlock91Block115Value3 |
    recoveredBlock91Block115Value0 := recoveredBlock91Arg1.
    recoveredBlock91Block115Value1 := (recoveredBlock91Block115Value0) reference.
    recoveredBlock91Block115Value2 := (recoveredBlock91Block115Value1) isDependent.
    recoveredBlock91Block115Value3 := recoveredBlock91Block115Value2.
    recoveredBlock91Local1 := recoveredBlock91Block115Value3.
    recoveredBlock91Block115Value2
].
            recoveredBlock91PC := 134.
        ].
        recoveredBlock91Step = 134 ifTrue: [
            recoveredBlock91Stack2 := [].
            recoveredBlock91PC := 136.
        ].
        recoveredBlock91Step = 136 ifTrue: [
            (recoveredBlock91Stack1) exWhenUndefinedKeyOrValue: (recoveredBlock91Stack2).
            recoveredBlock91PC := 138.
        ].
        recoveredBlock91Step = 138 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 139.
        ].
        recoveredBlock91Step = 139 ifTrue: [
            recoveredBlock91Stack2 := self.
            recoveredBlock91PC := 140.
        ].
        recoveredBlock91Step = 140 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Arg1.
            recoveredBlock91PC := 143.
        ].
        recoveredBlock91Step = 143 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) getSimInstanceForNode: (recoveredBlock91Stack3).
            recoveredBlock91PC := 145.
        ].
        recoveredBlock91Step = 145 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Stack2.
            recoveredBlock91PC := 146.
        ].
        recoveredBlock91Step = 146 ifTrue: [
            recoveredBlock91Local3 := recoveredBlock91Stack3.
            recoveredBlock91PC := 149.
        ].
        recoveredBlock91Step = 149 ifTrue: [
            (recoveredBlock91Stack2 == nil) ifTrue: [recoveredBlock91PC := 265] ifFalse: [recoveredBlock91PC := 152].
        ].
        recoveredBlock91Step = 152 ifTrue: [
            recoveredBlock91PC := 153.
        ].
        recoveredBlock91Step = 153 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 154.
        ].
        recoveredBlock91Step = 154 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local3.
            recoveredBlock91PC := 157.
        ].
        recoveredBlock91Step = 157 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) isRBDataBoolean.
            recoveredBlock91PC := 159.
        ].
        recoveredBlock91Step = 159 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 162] ifFalse: [recoveredBlock91PC := 168].
        ].
        recoveredBlock91Step = 162 ifTrue: [
            recoveredBlock91Stack2 := recoveredLocal2.
            recoveredBlock91PC := 165.
        ].
        recoveredBlock91Step = 165 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 168] ifFalse: [recoveredBlock91PC := 265].
        ].
        recoveredBlock91Step = 168 ifTrue: [
            recoveredBlock91PC := 169.
        ].
        recoveredBlock91Step = 169 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 170.
        ].
        recoveredBlock91Step = 170 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local3.
            recoveredBlock91PC := 173.
        ].
        recoveredBlock91Step = 173 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) isDataEnumeration.
            recoveredBlock91PC := 175.
        ].
        recoveredBlock91Step = 175 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 178] ifFalse: [recoveredBlock91PC := 184].
        ].
        recoveredBlock91Step = 178 ifTrue: [
            recoveredBlock91Stack2 := recoveredLocal1.
            recoveredBlock91PC := 181.
        ].
        recoveredBlock91Step = 181 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 184] ifFalse: [recoveredBlock91PC := 265].
        ].
        recoveredBlock91Step = 184 ifTrue: [
            recoveredBlock91PC := 185.
        ].
        recoveredBlock91Step = 185 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 186.
        ].
        recoveredBlock91Step = 186 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local1.
            recoveredBlock91PC := 189.
        ].
        recoveredBlock91Step = 189 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 192] ifFalse: [recoveredBlock91PC := 198].
        ].
        recoveredBlock91Step = 192 ifTrue: [
            recoveredBlock91Stack2 := recoveredLocal8.
            recoveredBlock91PC := 195.
        ].
        recoveredBlock91Step = 195 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 198] ifFalse: [recoveredBlock91PC := 265].
        ].
        recoveredBlock91Step = 198 ifTrue: [
            recoveredBlock91PC := 199.
        ].
        recoveredBlock91Step = 199 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Arg1.
            recoveredBlock91PC := 202.
        ].
        recoveredBlock91Step = 202 ifTrue: [
            recoveredBlock91Stack2 := false.
            recoveredBlock91PC := 203.
        ].
        recoveredBlock91Step = 203 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) asAsap2Hierarchical: (recoveredBlock91Stack2).
            recoveredBlock91PC := 205.
        ].
        recoveredBlock91Step = 205 ifTrue: [
            recoveredBlock91Local2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 208.
        ].
        recoveredBlock91Step = 208 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal3.
            recoveredBlock91PC := 211.
        ].
        recoveredBlock91Step = 211 ifTrue: [
            (recoveredBlock91Stack1) ifTrue: [recoveredBlock91PC := 222] ifFalse: [recoveredBlock91PC := 214].
        ].
        recoveredBlock91Step = 214 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Local2.
            recoveredBlock91PC := 217.
        ].
        recoveredBlock91Step = 217 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) asUppercase.
            recoveredBlock91PC := 219.
        ].
        recoveredBlock91Step = 219 ifTrue: [
            recoveredBlock91Local2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 222.
        ].
        recoveredBlock91Step = 222 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal4.
            recoveredBlock91PC := 225.
        ].
        recoveredBlock91Step = 225 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local2.
            recoveredBlock91PC := 228.
        ].
        recoveredBlock91Step = 228 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) includes: (recoveredBlock91Stack2).
            recoveredBlock91PC := 230.
        ].
        recoveredBlock91Step = 230 ifTrue: [
            (recoveredBlock91Stack1) ifTrue: [recoveredBlock91PC := 234] ifFalse: [recoveredBlock91PC := 246].
        ].
        recoveredBlock91Step = 234 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal5.
            recoveredBlock91PC := 237.
        ].
        recoveredBlock91Step = 237 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local3.
            recoveredBlock91PC := 240.
        ].
        recoveredBlock91Step = 240 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) add: (recoveredBlock91Stack2).
            recoveredBlock91PC := 242.
        ].
        recoveredBlock91Step = 242 ifTrue: [
            recoveredBlock91PC := 265.
        ].
        recoveredBlock91Step = 246 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal6.
            recoveredBlock91PC := 249.
        ].
        recoveredBlock91Step = 249 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local2.
            recoveredBlock91PC := 252.
        ].
        recoveredBlock91Step = 252 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Local3.
            recoveredBlock91PC := 255.
        ].
        recoveredBlock91Step = 255 ifTrue: [
            (recoveredBlock91Stack1) at: (recoveredBlock91Stack2) put: (recoveredBlock91Stack3).
            recoveredBlock91PC := 257.
        ].
        recoveredBlock91Step = 257 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal4.
            recoveredBlock91PC := 260.
        ].
        recoveredBlock91Step = 260 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local2.
            recoveredBlock91PC := 263.
        ].
        recoveredBlock91Step = 263 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) add: (recoveredBlock91Stack2).
            recoveredBlock91PC := 265.
        ].
        recoveredBlock91Step = 265 ifTrue: [
            recoveredBlock91Stack2 := nil.
            recoveredBlock91PC := 266.
        ].
        recoveredBlock91Step = 266 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Stack2.
            recoveredBlock91PC := 267.
        ].
        recoveredBlock91Step = 267 ifTrue: [
            recoveredBlock91Local3 := recoveredBlock91Stack3.
            recoveredBlock91PC := 270.
        ].
        recoveredBlock91Step = 270 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Stack2.
            recoveredBlock91PC := 271.
        ].
        recoveredBlock91Step = 271 ifTrue: [
            recoveredBlock91Local2 := recoveredBlock91Stack3.
            recoveredBlock91PC := 274.
        ].
        recoveredBlock91Step = 274 ifTrue: [
            recoveredBlock91Local1 := recoveredBlock91Stack2.
            recoveredBlock91PC := 277.
        ].
        recoveredBlock91Step = 277 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := SGDmReturnObject.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack2) dataElements: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack2) ignoredParameterVariables: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205a5a0c; bytecode file offset 0xea2370"
!SGSimEnvironment methodsFor: 'recovered'!
readExperiment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'EHI58864'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := dataGenerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) removeAllDataChannels.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGeneratorConfig.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'DataGenChannels'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Value0 |
    recoveredBlock45Value0 := recoveredLocal1.
    recoveredBlock45Value0
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block28115ec4Arg1 | 
    | block28115ec4Stack0 block28115ec4Stack1 block28115ec4Stack2 block28115ec4Stack3 block28115ec4Stack4 block28115ec4PC block28115ec4Step block28115ec4Done block28115ec4Result |
    block28115ec4Stack0 := self.
    block28115ec4PC := 4.
    block28115ec4Done := false.
    [block28115ec4Done not] whileTrue: [
        block28115ec4Step := block28115ec4PC.
        block28115ec4Step = 4 ifTrue: [
            block28115ec4Stack1 := block28115ec4Arg1.
            block28115ec4PC := 5.
        ].
        block28115ec4Step = 5 ifTrue: [
            block28115ec4Stack2 := 1.
            block28115ec4PC := 7.
        ].
        block28115ec4Step = 7 ifTrue: [
            block28115ec4Stack1 := (block28115ec4Stack1) at: (block28115ec4Stack2).
            block28115ec4PC := 9.
        ].
        block28115ec4Step = 9 ifTrue: [
            block28115ec4Stack2 := 'matrix'.
            block28115ec4PC := 11.
        ].
        block28115ec4Step = 11 ifTrue: [
            block28115ec4Stack1 := (block28115ec4Stack1) equalsLiteral: (block28115ec4Stack2).
            block28115ec4PC := 13.
        ].
        block28115ec4Step = 13 ifTrue: [
            (block28115ec4Stack1) ifTrue: [block28115ec4PC := 16] ifFalse: [block28115ec4PC := 23].
        ].
        block28115ec4Step = 16 ifTrue: [
            block28115ec4Stack1 := block28115ec4Arg1.
            block28115ec4PC := 17.
        ].
        block28115ec4Step = 17 ifTrue: [
            block28115ec4Stack2 := 1.
            block28115ec4PC := 19.
        ].
        block28115ec4Step = 19 ifTrue: [
            block28115ec4Stack3 := 'signal'.
            block28115ec4PC := 21.
        ].
        block28115ec4Step = 21 ifTrue: [
            (block28115ec4Stack1) at: (block28115ec4Stack2) put: (block28115ec4Stack3).
            block28115ec4PC := 23.
        ].
        block28115ec4Step = 23 ifTrue: [
            block28115ec4Stack1 := nil.
            block28115ec4PC := 24.
        ].
        block28115ec4Step = 24 ifTrue: [
            block28115ec4Stack2 := block28115ec4Arg1.
            block28115ec4PC := 25.
        ].
        block28115ec4Step = 25 ifTrue: [
            block28115ec4Stack3 := 1.
            block28115ec4PC := 27.
        ].
        block28115ec4Step = 27 ifTrue: [
            block28115ec4Stack2 := (block28115ec4Stack2) at: (block28115ec4Stack3).
            block28115ec4PC := 29.
        ].
        block28115ec4Step = 29 ifTrue: [
            block28115ec4Stack3 := 'sinus'.
            block28115ec4PC := 31.
        ].
        block28115ec4Step = 31 ifTrue: [
            block28115ec4Stack2 := (block28115ec4Stack2) equalsLiteral: (block28115ec4Stack3).
            block28115ec4PC := 33.
        ].
        block28115ec4Step = 33 ifTrue: [
            (block28115ec4Stack2) ifTrue: [block28115ec4PC := 36] ifFalse: [block28115ec4PC := 44].
        ].
        block28115ec4Step = 36 ifTrue: [
            block28115ec4PC := 37.
        ].
        block28115ec4Step = 37 ifTrue: [
            block28115ec4Stack1 := block28115ec4Arg1.
            block28115ec4PC := 38.
        ].
        block28115ec4Step = 38 ifTrue: [
            block28115ec4Stack2 := 1.
            block28115ec4PC := 40.
        ].
        block28115ec4Step = 40 ifTrue: [
            block28115ec4Stack3 := 'sine'.
            block28115ec4PC := 42.
        ].
        block28115ec4Step = 42 ifTrue: [
            block28115ec4Stack1 := (block28115ec4Stack1) at: (block28115ec4Stack2) put: (block28115ec4Stack3).
            block28115ec4PC := 44.
        ].
        block28115ec4Step = 44 ifTrue: [
            block28115ec4Result := block28115ec4Stack1.
            block28115ec4Done := true.
        ].
    ].
    block28115ec4Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := dataGenerator.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventGeneratorConfig.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := simulator.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureWindowsConfig.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) createMeasureConfig: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationWindowsConfig.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) createCalibrationConfig: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntecrioBackanimation.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataloggerConfig.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) createDataloggerConfig: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) nvramCockpitConfig.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 227] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := 'Call_58325'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTarget.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNvramAvailableOnTargetInstance.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) createNvramCockpitConfig: (recoveredStack1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetDebuggerConfig.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 249] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) createTargetDebuggerConfig: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) simViewConfig.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) simViewConfig: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExperiment.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) solverConfig.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) setSolverConfig: (recoveredStack1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) setMonitorBDEConfig.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205accac; bytecode file offset 0xea95fc"
!SGSimEnvironment methodsFor: 'recovered'!
reinitializeSimNodeInList: recoveredArg1 dialog: recoveredArg2 messageString: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getServer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Target server not active, updates aborted.'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) dpManager.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := [:recoveredBlock43Block53Arg1 | 
    | recoveredBlock43Block53Local1 recoveredBlock43Block53Local2 recoveredBlock43Block53Local3 recoveredBlock43Block53Stack0 recoveredBlock43Block53Stack1 recoveredBlock43Block53Stack2 recoveredBlock43Block53Stack3 recoveredBlock43Block53Stack4 recoveredBlock43Block53Stack5 recoveredBlock43Block53PC recoveredBlock43Block53Step recoveredBlock43Block53Done recoveredBlock43Block53Result |
    recoveredBlock43Block53Stack0 := self.
    recoveredBlock43Block53PC := 60.
    recoveredBlock43Block53Done := false.
    [recoveredBlock43Block53Done not] whileTrue: [
        recoveredBlock43Block53Step := recoveredBlock43Block53PC.
        recoveredBlock43Block53Step = 60 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredArg2.
            recoveredBlock43Block53PC := 63.
        ].
        recoveredBlock43Block53Step = 63 ifTrue: [
            recoveredBlock43Block53Stack2 := recoveredLocal3.
            recoveredBlock43Block53PC := 66.
        ].
        recoveredBlock43Block53Step = 66 ifTrue: [
            recoveredBlock43Block53Stack3 := recoveredLocal5.
            recoveredBlock43Block53PC := 69.
        ].
        recoveredBlock43Block53Step = 69 ifTrue: [
            recoveredBlock43Block53Stack2 := (recoveredBlock43Block53Stack2) / (recoveredBlock43Block53Stack3).
            recoveredBlock43Block53PC := 71.
        ].
        recoveredBlock43Block53Step = 71 ifTrue: [
            recoveredBlock43Block53Stack3 := recoveredArg3.
            recoveredBlock43Block53PC := 74.
        ].
        recoveredBlock43Block53Step = 74 ifTrue: [
            recoveredBlock43Block53Stack4 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53PC := 77.
        ].
        recoveredBlock43Block53Step = 77 ifTrue: [
            recoveredBlock43Block53Stack4 := (recoveredBlock43Block53Stack4) label.
            recoveredBlock43Block53PC := 79.
        ].
        recoveredBlock43Block53Step = 79 ifTrue: [
            recoveredBlock43Block53Stack3 := (recoveredBlock43Block53Stack3) bindWith: (recoveredBlock43Block53Stack4).
            recoveredBlock43Block53PC := 81.
        ].
        recoveredBlock43Block53Step = 81 ifTrue: [
            (recoveredBlock43Block53Stack1) fractionComplete: (recoveredBlock43Block53Stack2) messageString: (recoveredBlock43Block53Stack3).
            recoveredBlock43Block53PC := 83.
        ].
        recoveredBlock43Block53Step = 83 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53PC := 86.
        ].
        recoveredBlock43Block53Step = 86 ifTrue: [
            recoveredBlock43Block53Local3 := recoveredBlock43Block53Stack1.
            recoveredBlock43Block53PC := 89.
        ].
        recoveredBlock43Block53Step = 89 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredBlock43Block53Local3.
            recoveredBlock43Block53PC := 92.
        ].
        recoveredBlock43Block53Step = 92 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) reference.
            recoveredBlock43Block53PC := 94.
        ].
        recoveredBlock43Block53Step = 94 ifTrue: [
            recoveredBlock43Block53Local2 := recoveredBlock43Block53Stack1.
            recoveredBlock43Block53PC := 97.
        ].
        recoveredBlock43Block53Step = 97 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredBlock43Block53Local2.
            recoveredBlock43Block53PC := 100.
        ].
        recoveredBlock43Block53Step = 100 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) sgClass.
            recoveredBlock43Block53PC := 102.
        ].
        recoveredBlock43Block53Step = 102 ifTrue: [
            recoveredBlock43Block53Local1 := recoveredBlock43Block53Stack1.
            recoveredBlock43Block53PC := 105.
        ].
        recoveredBlock43Block53Step = 105 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredBlock43Block53Local2.
            recoveredBlock43Block53PC := 108.
        ].
        recoveredBlock43Block53Step = 108 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) isPrimitive.
            recoveredBlock43Block53PC := 110.
        ].
        recoveredBlock43Block53Step = 110 ifTrue: [
            (recoveredBlock43Block53Stack1) ifTrue: [recoveredBlock43Block53PC := 114] ifFalse: [recoveredBlock43Block53PC := 235].
        ].
        recoveredBlock43Block53Step = 114 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredBlock43Block53Local1.
            recoveredBlock43Block53PC := 117.
        ].
        recoveredBlock43Block53Step = 117 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) isSGDeltaT.
            recoveredBlock43Block53PC := 119.
        ].
        recoveredBlock43Block53Step = 119 ifTrue: [
            (recoveredBlock43Block53Stack1) ifTrue: [recoveredBlock43Block53PC := 235] ifFalse: [recoveredBlock43Block53PC := 122].
        ].
        recoveredBlock43Block53Step = 122 ifTrue: [
            recoveredBlock43Block53Stack1 := self.
            recoveredBlock43Block53PC := 123.
        ].
        recoveredBlock43Block53Step = 123 ifTrue: [
            recoveredBlock43Block53Stack2 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53PC := 126.
        ].
        recoveredBlock43Block53Step = 126 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) getSimInstanceForNode: (recoveredBlock43Block53Stack2).
            recoveredBlock43Block53PC := 128.
        ].
        recoveredBlock43Block53Step = 128 ifTrue: [
            recoveredBlock43Block53Stack2 := [:recoveredBlock43Block53Block128Arg1 | 
    | recoveredBlock43Block53Block128Local1 recoveredBlock43Block53Block128Stack0 recoveredBlock43Block53Block128Stack1 recoveredBlock43Block53Block128Stack2 recoveredBlock43Block53Block128Stack3 recoveredBlock43Block53Block128Stack4 recoveredBlock43Block53Block128PC recoveredBlock43Block53Block128Step recoveredBlock43Block53Block128Done recoveredBlock43Block53Block128Result |
    recoveredBlock43Block53Block128Stack0 := nil.
    recoveredBlock43Block53Block128PC := 134.
    recoveredBlock43Block53Block128Done := false.
    [recoveredBlock43Block53Block128Done not] whileTrue: [
        recoveredBlock43Block53Block128Step := recoveredBlock43Block53Block128PC.
        recoveredBlock43Block53Block128Step = 134 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Local2.
            recoveredBlock43Block53Block128PC := 137.
        ].
        recoveredBlock43Block53Block128Step = 137 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) isDataConfiguredElement.
            recoveredBlock43Block53Block128PC := 139.
        ].
        recoveredBlock43Block53Block128Step = 139 ifTrue: [
            (recoveredBlock43Block53Block128Stack1) ifTrue: [recoveredBlock43Block53Block128PC := 142] ifFalse: [recoveredBlock43Block53Block128PC := 152].
        ].
        recoveredBlock43Block53Block128Step = 142 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53Block128PC := 145.
        ].
        recoveredBlock43Block53Block128Step = 145 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) vc.
            recoveredBlock43Block53Block128PC := 147.
        ].
        recoveredBlock43Block53Block128Step = 147 ifTrue: [
            recoveredBlock43Block53Block128Local1 := recoveredBlock43Block53Block128Stack1.
            recoveredBlock43Block53Block128PC := 148.
        ].
        recoveredBlock43Block53Block128Step = 148 ifTrue: [
            recoveredBlock43Block53Block128PC := 158.
        ].
        recoveredBlock43Block53Block128Step = 152 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Local1.
            recoveredBlock43Block53Block128PC := 155.
        ].
        recoveredBlock43Block53Block128Step = 155 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) createData.
            recoveredBlock43Block53Block128PC := 157.
        ].
        recoveredBlock43Block53Block128Step = 157 ifTrue: [
            recoveredBlock43Block53Block128Local1 := recoveredBlock43Block53Block128Stack1.
            recoveredBlock43Block53Block128PC := 158.
        ].
        recoveredBlock43Block53Block128Step = 158 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := nil.
            recoveredBlock43Block53Block128PC := 159.
        ].
        recoveredBlock43Block53Block128Step = 159 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredBlock43Block53Block128Local1.
            recoveredBlock43Block53Block128PC := 160.
        ].
        recoveredBlock43Block53Block128Step = 160 ifTrue: [
            (recoveredBlock43Block53Block128Stack2 == nil) ifTrue: [recoveredBlock43Block53Block128PC := 232] ifFalse: [recoveredBlock43Block53Block128PC := 164].
        ].
        recoveredBlock43Block53Block128Step = 164 ifTrue: [
            recoveredBlock43Block53Block128PC := 165.
        ].
        recoveredBlock43Block53Block128Step = 165 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Block128Local1.
            recoveredBlock43Block53Block128PC := 166.
        ].
        recoveredBlock43Block53Block128Step = 166 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) isReferenceData.
            recoveredBlock43Block53Block128PC := 168.
        ].
        recoveredBlock43Block53Block128Step = 168 ifTrue: [
            (recoveredBlock43Block53Block128Stack1) ifTrue: [recoveredBlock43Block53Block128PC := 172] ifFalse: [recoveredBlock43Block53Block128PC := 184].
        ].
        recoveredBlock43Block53Block128Step = 172 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredLocal4.
            recoveredBlock43Block53Block128PC := 175.
        ].
        recoveredBlock43Block53Block128Step = 175 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) + (1).
            recoveredBlock43Block53Block128PC := 176.
        ].
        recoveredBlock43Block53Block128Step = 176 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredBlock43Block53Block128Stack1.
            recoveredBlock43Block53Block128PC := 177.
        ].
        recoveredBlock43Block53Block128Step = 177 ifTrue: [
            recoveredLocal4 := recoveredBlock43Block53Block128Stack2.
            recoveredBlock43Block53Block128PC := 180.
        ].
        recoveredBlock43Block53Block128Step = 180 ifTrue: [
            recoveredBlock43Block53Block128PC := 232.
        ].
        recoveredBlock43Block53Block128Step = 184 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53Block128PC := 187.
        ].
        recoveredBlock43Block53Block128Step = 187 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) canEditSizeInExperiment.
            recoveredBlock43Block53Block128PC := 189.
        ].
        recoveredBlock43Block53Block128Step = 189 ifTrue: [
            (recoveredBlock43Block53Block128Stack1) ifTrue: [recoveredBlock43Block53Block128PC := 192] ifFalse: [recoveredBlock43Block53Block128PC := 200].
        ].
        recoveredBlock43Block53Block128Step = 192 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Block128Arg1.
            recoveredBlock43Block53Block128PC := 193.
        ].
        recoveredBlock43Block53Block128Step = 193 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredBlock43Block53Block128Local1.
            recoveredBlock43Block53Block128PC := 194.
        ].
        recoveredBlock43Block53Block128Step = 194 ifTrue: [
            (recoveredBlock43Block53Block128Stack1) updateWithConfig: (recoveredBlock43Block53Block128Stack2).
            recoveredBlock43Block53Block128PC := 196.
        ].
        recoveredBlock43Block53Block128Step = 196 ifTrue: [
            recoveredBlock43Block53Block128PC := 204.
        ].
        recoveredBlock43Block53Block128Step = 200 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredBlock43Block53Block128Arg1.
            recoveredBlock43Block53Block128PC := 201.
        ].
        recoveredBlock43Block53Block128Step = 201 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredBlock43Block53Block128Local1.
            recoveredBlock43Block53Block128PC := 202.
        ].
        recoveredBlock43Block53Block128Step = 202 ifTrue: [
            (recoveredBlock43Block53Block128Stack1) updateWithConfigKeepSize: (recoveredBlock43Block53Block128Stack2).
            recoveredBlock43Block53Block128PC := 204.
        ].
        recoveredBlock43Block53Block128Step = 204 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := nil.
            recoveredBlock43Block53Block128PC := 205.
        ].
        recoveredBlock43Block53Block128Step = 205 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredLocal1.
            recoveredBlock43Block53Block128PC := 208.
        ].
        recoveredBlock43Block53Block128Step = 208 ifTrue: [
            (recoveredBlock43Block53Block128Stack2 == nil) ifTrue: [recoveredBlock43Block53Block128PC := 232] ifFalse: [recoveredBlock43Block53Block128PC := 212].
        ].
        recoveredBlock43Block53Block128Step = 212 ifTrue: [
            recoveredBlock43Block53Block128PC := 213.
        ].
        recoveredBlock43Block53Block128Step = 213 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := recoveredLocal1.
            recoveredBlock43Block53Block128PC := 216.
        ].
        recoveredBlock43Block53Block128Step = 216 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) independentParameters.
            recoveredBlock43Block53Block128PC := 218.
        ].
        recoveredBlock43Block53Block128Step = 218 ifTrue: [
            recoveredBlock43Block53Block128Stack2 := recoveredBlock43Block53Arg1.
            recoveredBlock43Block53Block128PC := 221.
        ].
        recoveredBlock43Block53Block128Step = 221 ifTrue: [
            recoveredBlock43Block53Block128Stack3 := [:block28116734Arg1 | 
    | block28116734Value0 block28116734Value1 |
    block28116734Value0 := block28116734Arg1.
    block28116734Value1 := (block28116734Value0) updateOldValue.
    block28116734Value1
].
            recoveredBlock43Block53Block128PC := 223.
        ].
        recoveredBlock43Block53Block128Step = 223 ifTrue: [
            recoveredBlock43Block53Block128PC := 230.
        ].
        recoveredBlock43Block53Block128Step = 230 ifTrue: [
            recoveredBlock43Block53Block128Stack1 := (recoveredBlock43Block53Block128Stack1) at: (recoveredBlock43Block53Block128Stack2) ifPresent: (recoveredBlock43Block53Block128Stack3).
            recoveredBlock43Block53Block128PC := 232.
        ].
        recoveredBlock43Block53Block128Step = 232 ifTrue: [
            recoveredBlock43Block53Block128Result := recoveredBlock43Block53Block128Stack1.
            recoveredBlock43Block53Block128Done := true.
        ].
    ].
    recoveredBlock43Block53Block128Result
].
            recoveredBlock43Block53PC := 233.
        ].
        recoveredBlock43Block53Step = 233 ifTrue: [
            (recoveredBlock43Block53Stack1) ifNotNil: (recoveredBlock43Block53Stack2).
            recoveredBlock43Block53PC := 235.
        ].
        recoveredBlock43Block53Step = 235 ifTrue: [
            recoveredBlock43Block53Stack1 := recoveredLocal3.
            recoveredBlock43Block53PC := 238.
        ].
        recoveredBlock43Block53Step = 238 ifTrue: [
            recoveredBlock43Block53Stack1 := (recoveredBlock43Block53Stack1) + (1).
            recoveredBlock43Block53PC := 239.
        ].
        recoveredBlock43Block53Step = 239 ifTrue: [
            recoveredBlock43Block53Stack2 := recoveredBlock43Block53Stack1.
            recoveredBlock43Block53PC := 240.
        ].
        recoveredBlock43Block53Step = 240 ifTrue: [
            recoveredLocal3 := recoveredBlock43Block53Stack2.
            recoveredBlock43Block53PC := 243.
        ].
        recoveredBlock43Block53Step = 243 ifTrue: [
            recoveredBlock43Block53Result := recoveredBlock43Block53Stack1.
            recoveredBlock43Block53Done := true.
        ].
    ].
    recoveredBlock43Block53Result
].
    recoveredBlock43Value2 := (recoveredBlock43Value0) do: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock257Value0 recoveredBlock257Value1 recoveredBlock257Value2 |
    recoveredBlock257Value0 := recoveredLocal1.
    recoveredBlock257Value1 := recoveredLocal2.
    recoveredBlock257Value2 := (recoveredBlock257Value0) suppressUpdatesWhile: (recoveredBlock257Value1).
    recoveredBlock257Value2
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) ifTrue: (recoveredStack1) ifFalse: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 303].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := 'References ('.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := ' elements) have not been reinitialized.'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205aee80; bytecode file offset 0xeab7e8"
!SGSimEnvironment methodsFor: 'recovered'!
saveAsExperimentForComponent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28116998Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := MainController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptDatabaseDialogSelect: (recoveredStack1) multipleSelectAllowed: (recoveredStack2) filterClass: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGClass.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBReference.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) saveAsExperiment.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulationConfigs.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [:block281169bcArg1 :block281169bcArg2 | 
    | block281169bcValue0 block281169bcValue1 block281169bcValue2 |
    block281169bcValue0 := block281169bcArg1.
    block281169bcValue1 := block281169bcArg2.
    block281169bcValue2 := (block281169bcValue0) < (block281169bcValue1).
    block281169bcValue2
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 |
    recoveredBlock131Value0 := recoveredLocal7.
    recoveredBlock131Value1 := recoveredBlock131Arg1.
    recoveredBlock131Value2 := (recoveredBlock131Value1) name.
    recoveredBlock131Value3 := (recoveredBlock131Value0) add: (recoveredBlock131Value2).
    recoveredBlock131Value3
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExperiment.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExperiment.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) comment.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) openExperimentCommentWindow: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock204Local1 recoveredBlock204Local2 recoveredBlock204Value0 recoveredBlock204Value1 recoveredBlock204Value2 recoveredBlock204Value3 recoveredBlock204Value4 recoveredBlock204Value5 recoveredBlock204Value6 recoveredBlock204Value7 recoveredBlock204Value8 recoveredBlock204Value9 recoveredBlock204Value10 recoveredBlock204Value11 recoveredBlock204Value12 recoveredBlock204Value13 recoveredBlock204Value14 recoveredBlock204Value15 recoveredBlock204Value16 recoveredBlock204Value17 recoveredBlock204Value18 |
    recoveredBlock204Value0 := recoveredLocal5.
    recoveredBlock204Value1 := (recoveredBlock204Value0) at: (1).
    recoveredBlock204Value2 := recoveredLocal7.
    recoveredBlock204Value3 := (recoveredBlock204Value1) uniqueStringFor: (recoveredBlock204Value2).
    recoveredBlock204Local1 := recoveredBlock204Value3.
    recoveredBlock204Value4 := SGSimExperiment.
    recoveredBlock204Value5 := (recoveredBlock204Value4) new.
    recoveredBlock204Value6 := (recoveredBlock204Value5) initialize.
    recoveredLocal4 := recoveredBlock204Value6.
    recoveredBlock204Value7 := recoveredLocal4.
    recoveredBlock204Value8 := recoveredBlock204Local1.
    (recoveredBlock204Value7) name: (recoveredBlock204Value8).
    recoveredBlock204Value9 := recoveredLocal4.
    experiment := recoveredBlock204Value9.
    recoveredBlock204Value10 := recoveredLocal3.
    recoveredBlock204Value11 := recoveredLocal4.
    (recoveredBlock204Value10) addSimulationConfig: (recoveredBlock204Value11).
    recoveredBlock204Value12 := experiment.
    recoveredBlock204Local2 := recoveredBlock204Value12.
    recoveredBlock204Value13 := recoveredLocal4.
    experiment := recoveredBlock204Value13.
    recoveredBlock204Value14 := (self) getExperiment.
    recoveredBlock204Value15 := recoveredLocal5.
    recoveredBlock204Value16 := (recoveredBlock204Value15) at: (2).
    (recoveredBlock204Value14) comment: (recoveredBlock204Value16).
    (self) writeExperimentNotifyOwner: (false).
    recoveredBlock204Value17 := recoveredBlock204Local2.
    recoveredBlock204Value18 := recoveredBlock204Value17.
    experiment := recoveredBlock204Value18.
    recoveredBlock204Value17
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := 'Component '''.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := ''' is protected.\It is not possible to save experiment for this component!!'.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b4e84; bytecode file offset 0xeb17f0"
!SGSimEnvironment methodsFor: 'recovered'!
buildModel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGSimProject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForSGProject: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) simEntry: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) initTopSimNode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) topSimNode.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPseudoAddress.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := SGSimClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForKey: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) generatedExperimentMethods.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64Stack4 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := 'Rnz'.
            recoveredBlock64PC := 72.
        ].
        recoveredBlock64Step = 72 ifTrue: [
            recoveredBlock64Stack2 := 'EHI_83920'.
            recoveredBlock64PC := 74.
        ].
        recoveredBlock64Step = 74 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) == (recoveredBlock64Stack2).
            recoveredBlock64PC := 75.
        ].
        recoveredBlock64Step = 75 ifTrue: [
            recoveredBlock64PC := 76.
        ].
        recoveredBlock64Step = 76 ifTrue: [
            recoveredBlock64Stack1 := SGSimProcedure.
            recoveredBlock64PC := 78.
        ].
        recoveredBlock64Step = 78 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 79.
        ].
        recoveredBlock64Step = 79 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) methodName.
            recoveredBlock64PC := 81.
        ].
        recoveredBlock64Step = 81 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) createName: (recoveredBlock64Stack2).
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            recoveredLocal2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 86.
        ].
        recoveredBlock64Step = 86 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal2.
            recoveredBlock64PC := 89.
        ].
        recoveredBlock64Step = 89 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 90.
        ].
        recoveredBlock64Step = 90 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) canBeStimulated.
            recoveredBlock64PC := 92.
        ].
        recoveredBlock64Step = 92 ifTrue: [
            (recoveredBlock64Stack1) canBeStimulated: (recoveredBlock64Stack2).
            recoveredBlock64PC := 94.
        ].
        recoveredBlock64Step = 94 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal2.
            recoveredBlock64PC := 97.
        ].
        recoveredBlock64Step = 97 ifTrue: [
            recoveredBlock64Stack2 := self.
            recoveredBlock64PC := 98.
        ].
        recoveredBlock64Step = 98 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) getTopClass.
            recoveredBlock64PC := 99.
        ].
        recoveredBlock64Step = 99 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) isCTClass.
            recoveredBlock64PC := 101.
        ].
        recoveredBlock64Step = 101 ifTrue: [
            (recoveredBlock64Stack1) isCT: (recoveredBlock64Stack2).
            recoveredBlock64PC := 103.
        ].
        recoveredBlock64Step = 103 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 104.
        ].
        recoveredBlock64Step = 104 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) arguments.
            recoveredBlock64PC := 106.
        ].
        recoveredBlock64Step = 106 ifTrue: [
            recoveredBlock64Stack2 := [:recoveredBlock64Block106Arg1 | 
    | recoveredBlock64Block106Stack0 recoveredBlock64Block106Stack1 recoveredBlock64Block106Stack2 recoveredBlock64Block106Stack3 recoveredBlock64Block106Stack4 recoveredBlock64Block106PC recoveredBlock64Block106Step recoveredBlock64Block106Done recoveredBlock64Block106Result |
    recoveredBlock64Block106Stack0 := self.
    recoveredBlock64Block106PC := 112.
    recoveredBlock64Block106Done := false.
    [recoveredBlock64Block106Done not] whileTrue: [
        recoveredBlock64Block106Step := recoveredBlock64Block106PC.
        recoveredBlock64Block106Step = 112 ifTrue: [
            recoveredBlock64Block106Stack1 := 'hw'.
            recoveredBlock64Block106PC := 114.
        ].
        recoveredBlock64Block106Step = 114 ifTrue: [
            recoveredBlock64Block106Stack2 := 'call_70507'.
            recoveredBlock64Block106PC := 116.
        ].
        recoveredBlock64Block106Step = 116 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) == (recoveredBlock64Block106Stack2).
            recoveredBlock64Block106PC := 117.
        ].
        recoveredBlock64Block106Step = 117 ifTrue: [
            recoveredBlock64Block106PC := 118.
        ].
        recoveredBlock64Block106Step = 118 ifTrue: [
            recoveredBlock64Block106Stack1 := 'hw'.
            recoveredBlock64Block106PC := 120.
        ].
        recoveredBlock64Block106Step = 120 ifTrue: [
            recoveredBlock64Block106Stack2 := 'call_79679'.
            recoveredBlock64Block106PC := 122.
        ].
        recoveredBlock64Block106Step = 122 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) == (recoveredBlock64Block106Stack2).
            recoveredBlock64Block106PC := 123.
        ].
        recoveredBlock64Block106Step = 123 ifTrue: [
            recoveredBlock64Block106PC := 124.
        ].
        recoveredBlock64Block106Step = 124 ifTrue: [
            recoveredBlock64Block106Stack1 := 'hw'.
            recoveredBlock64Block106PC := 126.
        ].
        recoveredBlock64Block106Step = 126 ifTrue: [
            recoveredBlock64Block106Stack2 := 'call_84895'.
            recoveredBlock64Block106PC := 128.
        ].
        recoveredBlock64Block106Step = 128 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) == (recoveredBlock64Block106Stack2).
            recoveredBlock64Block106PC := 129.
        ].
        recoveredBlock64Block106Step = 129 ifTrue: [
            recoveredBlock64Block106PC := 130.
        ].
        recoveredBlock64Block106Step = 130 ifTrue: [
            recoveredBlock64Block106Stack1 := nil.
            recoveredBlock64Block106PC := 131.
        ].
        recoveredBlock64Block106Step = 131 ifTrue: [
            recoveredBlock64Block106Stack2 := recoveredBlock64Block106Arg1.
            recoveredBlock64Block106PC := 132.
        ].
        recoveredBlock64Block106Step = 132 ifTrue: [
            recoveredBlock64Block106Stack2 := (recoveredBlock64Block106Stack2) isPrimitive.
            recoveredBlock64Block106PC := 134.
        ].
        recoveredBlock64Block106Step = 134 ifTrue: [
            (recoveredBlock64Block106Stack2) ifTrue: [recoveredBlock64Block106PC := 138] ifFalse: [recoveredBlock64Block106PC := 187].
        ].
        recoveredBlock64Block106Step = 138 ifTrue: [
            recoveredBlock64Block106Stack2 := recoveredBlock64Block106Arg1.
            recoveredBlock64Block106PC := 139.
        ].
        recoveredBlock64Block106Step = 139 ifTrue: [
            recoveredBlock64Block106Stack2 := (recoveredBlock64Block106Stack2) sgClass.
            recoveredBlock64Block106PC := 141.
        ].
        recoveredBlock64Block106Step = 141 ifTrue: [
            recoveredBlock64Block106Stack2 := (recoveredBlock64Block106Stack2) isComplexType.
            recoveredBlock64Block106PC := 143.
        ].
        recoveredBlock64Block106Step = 143 ifTrue: [
            (recoveredBlock64Block106Stack2) ifTrue: [recoveredBlock64Block106PC := 187] ifFalse: [recoveredBlock64Block106PC := 146].
        ].
        recoveredBlock64Block106Step = 146 ifTrue: [
            recoveredBlock64Block106PC := 147.
        ].
        recoveredBlock64Block106Step = 147 ifTrue: [
            recoveredBlock64Block106Stack1 := recoveredBlock64Block106Arg1.
            recoveredBlock64Block106PC := 148.
        ].
        recoveredBlock64Block106Step = 148 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) parameterName.
            recoveredBlock64Block106PC := 150.
        ].
        recoveredBlock64Block106Step = 150 ifTrue: [
            recoveredLocal5 := recoveredBlock64Block106Stack1.
            recoveredBlock64Block106PC := 153.
        ].
        recoveredBlock64Block106Step = 153 ifTrue: [
            recoveredBlock64Block106Stack1 := self.
            recoveredBlock64Block106PC := 154.
        ].
        recoveredBlock64Block106Step = 154 ifTrue: [
            recoveredBlock64Block106Stack2 := topSimNode.
            recoveredBlock64Block106PC := 156.
        ].
        recoveredBlock64Block106Step = 156 ifTrue: [
            recoveredBlock64Block106Stack3 := recoveredLocal5.
            recoveredBlock64Block106PC := 159.
        ].
        recoveredBlock64Block106Step = 159 ifTrue: [
            recoveredBlock64Block106Stack2 := (recoveredBlock64Block106Stack2) argNodeNamed: (recoveredBlock64Block106Stack3).
            recoveredBlock64Block106PC := 161.
        ].
        recoveredBlock64Block106Step = 161 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) getSimInstanceForNode: (recoveredBlock64Block106Stack2).
            recoveredBlock64Block106PC := 163.
        ].
        recoveredBlock64Block106Step = 163 ifTrue: [
            recoveredLocal4 := recoveredBlock64Block106Stack1.
            recoveredBlock64Block106PC := 166.
        ].
        recoveredBlock64Block106Step = 166 ifTrue: [
            recoveredBlock64Block106Stack1 := recoveredLocal4.
            recoveredBlock64Block106PC := 169.
        ].
        recoveredBlock64Block106Step = 169 ifTrue: [
            recoveredBlock64Block106Stack2 := recoveredLocal5.
            recoveredBlock64Block106PC := 172.
        ].
        recoveredBlock64Block106Step = 172 ifTrue: [
            recoveredBlock64Block106Stack2 := (recoveredBlock64Block106Stack2) reversedASDSimLabel.
            recoveredBlock64Block106PC := 174.
        ].
        recoveredBlock64Block106Step = 174 ifTrue: [
            (recoveredBlock64Block106Stack1) name: (recoveredBlock64Block106Stack2).
            recoveredBlock64Block106PC := 176.
        ].
        recoveredBlock64Block106Step = 176 ifTrue: [
            recoveredBlock64Block106Stack1 := recoveredLocal2.
            recoveredBlock64Block106PC := 179.
        ].
        recoveredBlock64Block106Step = 179 ifTrue: [
            recoveredBlock64Block106Stack2 := recoveredLocal4.
            recoveredBlock64Block106PC := 182.
        ].
        recoveredBlock64Block106Step = 182 ifTrue: [
            recoveredBlock64Block106Stack3 := recoveredLocal5.
            recoveredBlock64Block106PC := 185.
        ].
        recoveredBlock64Block106Step = 185 ifTrue: [
            recoveredBlock64Block106Stack1 := (recoveredBlock64Block106Stack1) addArgument: (recoveredBlock64Block106Stack2) name: (recoveredBlock64Block106Stack3).
            recoveredBlock64Block106PC := 187.
        ].
        recoveredBlock64Block106Step = 187 ifTrue: [
            recoveredBlock64Block106Result := recoveredBlock64Block106Stack1.
            recoveredBlock64Block106Done := true.
        ].
    ].
    recoveredBlock64Block106Result
].
            recoveredBlock64PC := 188.
        ].
        recoveredBlock64Step = 188 ifTrue: [
            (recoveredBlock64Stack1) do: (recoveredBlock64Stack2).
            recoveredBlock64PC := 190.
        ].
        recoveredBlock64Step = 190 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 191.
        ].
        recoveredBlock64Step = 191 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) returnValue.
            recoveredBlock64PC := 193.
        ].
        recoveredBlock64Step = 193 ifTrue: [
            (recoveredBlock64Stack1 == nil) ifTrue: [recoveredBlock64PC := 264] ifFalse: [recoveredBlock64PC := 196].
        ].
        recoveredBlock64Step = 196 ifTrue: [
            recoveredBlock64Stack1 := 'hw'.
            recoveredBlock64PC := 198.
        ].
        recoveredBlock64Step = 198 ifTrue: [
            recoveredBlock64Stack2 := 'call_70507'.
            recoveredBlock64PC := 200.
        ].
        recoveredBlock64Step = 200 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) == (recoveredBlock64Stack2).
            recoveredBlock64PC := 201.
        ].
        recoveredBlock64Step = 201 ifTrue: [
            recoveredBlock64PC := 202.
        ].
        recoveredBlock64Step = 202 ifTrue: [
            recoveredBlock64Stack1 := 'hw'.
            recoveredBlock64PC := 204.
        ].
        recoveredBlock64Step = 204 ifTrue: [
            recoveredBlock64Stack2 := 'call_79679'.
            recoveredBlock64PC := 206.
        ].
        recoveredBlock64Step = 206 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) == (recoveredBlock64Stack2).
            recoveredBlock64PC := 207.
        ].
        recoveredBlock64Step = 207 ifTrue: [
            recoveredBlock64PC := 208.
        ].
        recoveredBlock64Step = 208 ifTrue: [
            recoveredBlock64Stack1 := 'hw'.
            recoveredBlock64PC := 210.
        ].
        recoveredBlock64Step = 210 ifTrue: [
            recoveredBlock64Stack2 := 'call_84895'.
            recoveredBlock64PC := 212.
        ].
        recoveredBlock64Step = 212 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) == (recoveredBlock64Stack2).
            recoveredBlock64PC := 213.
        ].
        recoveredBlock64Step = 213 ifTrue: [
            recoveredBlock64PC := 214.
        ].
        recoveredBlock64Step = 214 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 215.
        ].
        recoveredBlock64Step = 215 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) returnValue.
            recoveredBlock64PC := 217.
        ].
        recoveredBlock64Step = 217 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) isPrimitive.
            recoveredBlock64PC := 219.
        ].
        recoveredBlock64Step = 219 ifTrue: [
            (recoveredBlock64Stack1) ifTrue: [recoveredBlock64PC := 222] ifFalse: [recoveredBlock64PC := 264].
        ].
        recoveredBlock64Step = 222 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 223.
        ].
        recoveredBlock64Step = 223 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) returnValue.
            recoveredBlock64PC := 225.
        ].
        recoveredBlock64Step = 225 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) parameterName.
            recoveredBlock64PC := 227.
        ].
        recoveredBlock64Step = 227 ifTrue: [
            recoveredLocal5 := recoveredBlock64Stack1.
            recoveredBlock64PC := 230.
        ].
        recoveredBlock64Step = 230 ifTrue: [
            recoveredBlock64Stack1 := self.
            recoveredBlock64PC := 231.
        ].
        recoveredBlock64Step = 231 ifTrue: [
            recoveredBlock64Stack2 := topSimNode.
            recoveredBlock64PC := 233.
        ].
        recoveredBlock64Step = 233 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal5.
            recoveredBlock64PC := 236.
        ].
        recoveredBlock64Step = 236 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) argNodeNamed: (recoveredBlock64Stack3).
            recoveredBlock64PC := 238.
        ].
        recoveredBlock64Step = 238 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) getSimInstanceForNode: (recoveredBlock64Stack2).
            recoveredBlock64PC := 240.
        ].
        recoveredBlock64Step = 240 ifTrue: [
            recoveredLocal3 := recoveredBlock64Stack1.
            recoveredBlock64PC := 243.
        ].
        recoveredBlock64Step = 243 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal3.
            recoveredBlock64PC := 246.
        ].
        recoveredBlock64Step = 246 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal5.
            recoveredBlock64PC := 249.
        ].
        recoveredBlock64Step = 249 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) reversedASDSimLabel.
            recoveredBlock64PC := 251.
        ].
        recoveredBlock64Step = 251 ifTrue: [
            (recoveredBlock64Stack1) name: (recoveredBlock64Stack2).
            recoveredBlock64PC := 253.
        ].
        recoveredBlock64Step = 253 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal2.
            recoveredBlock64PC := 256.
        ].
        recoveredBlock64Step = 256 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal3.
            recoveredBlock64PC := 259.
        ].
        recoveredBlock64Step = 259 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal5.
            recoveredBlock64PC := 262.
        ].
        recoveredBlock64Step = 262 ifTrue: [
            (recoveredBlock64Stack1) returnValue: (recoveredBlock64Stack2) name: (recoveredBlock64Stack3).
            recoveredBlock64PC := 264.
        ].
        recoveredBlock64Step = 264 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal1.
            recoveredBlock64PC := 267.
        ].
        recoveredBlock64Step = 267 ifTrue: [
            recoveredBlock64Stack2 := Array.
            recoveredBlock64PC := 269.
        ].
        recoveredBlock64Step = 269 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal2.
            recoveredBlock64PC := 272.
        ].
        recoveredBlock64Step = 272 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) with: (recoveredBlock64Stack3).
            recoveredBlock64PC := 274.
        ].
        recoveredBlock64Step = 274 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) , (recoveredBlock64Stack2).
            recoveredBlock64PC := 276.
        ].
        recoveredBlock64Step = 276 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 277.
        ].
        recoveredBlock64Step = 277 ifTrue: [
            recoveredLocal1 := recoveredBlock64Stack2.
            recoveredBlock64PC := 280.
        ].
        recoveredBlock64Step = 280 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) procedures: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) access.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 305] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) initCMethodDic.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) setModel: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bccdc; bytecode file offset 0xeb9600"
!SGSimEnvironment methodsFor: 'recovered'!
updateImplConfigForNodes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isWriteable.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 284].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reference.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) isClassVariable.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 34] ifFalse: [recoveredBlock13PC := 110].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) parent.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reference.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sgClass.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getOrCreateClassImplConfig.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredLocal7 := recoveredBlock13Stack1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal7.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) reference.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) configForElement: (recoveredBlock13Stack2).
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredLocal6 := recoveredBlock13Stack2.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            (recoveredBlock13Stack1 ~~ nil) ifTrue: [recoveredBlock13PC := 69] ifFalse: [recoveredBlock13PC := 60].
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reference.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sgClass.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) createImplementation.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredLocal6 := recoveredBlock13Stack1.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getSimInstanceForNode: (recoveredBlock13Stack2).
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 77.
        ].
        recoveredBlock13Step = 77 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal2.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 106] ifFalse: [recoveredBlock13PC := 84].
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal6.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) writeImplToConfig: (recoveredBlock13Stack2).
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredLocal5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal7.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal5.
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) reference.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) setConfig: (recoveredBlock13Stack2) forElement: (recoveredBlock13Stack3).
            recoveredBlock13PC := 106.
        ].
        recoveredBlock13Step = 106 ifTrue: [
            recoveredBlock13PC := 280.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack1 := #().
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 116.
        ].
        recoveredBlock13Step = 116 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) parent.
            recoveredBlock13PC := 127.
        ].
        recoveredBlock13Step = 127 ifTrue: [
            recoveredLocal4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack1 := Array.
            recoveredBlock13PC := 132.
        ].
        recoveredBlock13Step = 132 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal4.
            recoveredBlock13PC := 135.
        ].
        recoveredBlock13Step = 135 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) with: (recoveredBlock13Stack2).
            recoveredBlock13PC := 137.
        ].
        recoveredBlock13Step = 137 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal3.
            recoveredBlock13PC := 140.
        ].
        recoveredBlock13Step = 140 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) , (recoveredBlock13Stack2).
            recoveredBlock13PC := 142.
        ].
        recoveredBlock13Step = 142 ifTrue: [
            recoveredLocal3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 145.
        ].
        recoveredBlock13Step = 145 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 148.
        ].
        recoveredBlock13Step = 148 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) parent.
            recoveredBlock13PC := 150.
        ].
        recoveredBlock13Step = 150 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) simEntry.
            recoveredBlock13PC := 152.
        ].
        recoveredBlock13Step = 152 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal4.
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) reference.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isClassVariable.
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) | (recoveredBlock13Stack2).
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 162] ifFalse: [recoveredBlock13PC := 122].
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 163.
        ].
        recoveredBlock13Step = 163 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getImplConfig.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredLocal7 := recoveredBlock13Stack1.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block171Arg1 | 
    | recoveredBlock13Block171Stack0 recoveredBlock13Block171Stack1 recoveredBlock13Block171Stack2 recoveredBlock13Block171Stack3 recoveredBlock13Block171PC recoveredBlock13Block171Step recoveredBlock13Block171Done recoveredBlock13Block171Result |
    recoveredBlock13Block171Stack0 := nil.
    recoveredBlock13Block171PC := 178.
    recoveredBlock13Block171Done := false.
    [recoveredBlock13Block171Done not] whileTrue: [
        recoveredBlock13Block171Step := recoveredBlock13Block171PC.
        recoveredBlock13Block171Step = 178 ifTrue: [
            recoveredBlock13Block171Stack1 := recoveredBlock13Block171Arg1.
            recoveredBlock13Block171PC := 179.
        ].
        recoveredBlock13Block171Step = 179 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) reference.
            recoveredBlock13Block171PC := 180.
        ].
        recoveredBlock13Block171Step = 180 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) isClassVariable.
            recoveredBlock13Block171PC := 182.
        ].
        recoveredBlock13Block171Step = 182 ifTrue: [
            (recoveredBlock13Block171Stack1) ifTrue: [recoveredBlock13Block171PC := 186] ifFalse: [recoveredBlock13Block171PC := 206].
        ].
        recoveredBlock13Block171Step = 186 ifTrue: [
            recoveredBlock13Block171Stack1 := recoveredBlock13Block171Arg1.
            recoveredBlock13Block171PC := 187.
        ].
        recoveredBlock13Block171Step = 187 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) parent.
            recoveredBlock13Block171PC := 189.
        ].
        recoveredBlock13Block171Step = 189 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) reference.
            recoveredBlock13Block171PC := 190.
        ].
        recoveredBlock13Block171Step = 190 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) sgClass.
            recoveredBlock13Block171PC := 192.
        ].
        recoveredBlock13Block171Step = 192 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) getOrCreateClassImplConfig.
            recoveredBlock13Block171PC := 194.
        ].
        recoveredBlock13Block171Step = 194 ifTrue: [
            recoveredBlock13Block171Stack2 := recoveredBlock13Block171Arg1.
            recoveredBlock13Block171PC := 195.
        ].
        recoveredBlock13Block171Step = 195 ifTrue: [
            recoveredBlock13Block171Stack2 := (recoveredBlock13Block171Stack2) reference.
            recoveredBlock13Block171PC := 196.
        ].
        recoveredBlock13Block171Step = 196 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) configForElement: (recoveredBlock13Block171Stack2).
            recoveredBlock13Block171PC := 198.
        ].
        recoveredBlock13Block171Step = 198 ifTrue: [
            recoveredBlock13Block171Stack2 := recoveredBlock13Block171Stack1.
            recoveredBlock13Block171PC := 199.
        ].
        recoveredBlock13Block171Step = 199 ifTrue: [
            recoveredLocal7 := recoveredBlock13Block171Stack2.
            recoveredBlock13Block171PC := 202.
        ].
        recoveredBlock13Block171Step = 202 ifTrue: [
            recoveredBlock13Block171PC := 217.
        ].
        recoveredBlock13Block171Step = 206 ifTrue: [
            recoveredBlock13Block171Stack1 := recoveredLocal7.
            recoveredBlock13Block171PC := 209.
        ].
        recoveredBlock13Block171Step = 209 ifTrue: [
            recoveredBlock13Block171Stack2 := recoveredBlock13Block171Arg1.
            recoveredBlock13Block171PC := 210.
        ].
        recoveredBlock13Block171Step = 210 ifTrue: [
            recoveredBlock13Block171Stack2 := (recoveredBlock13Block171Stack2) reference.
            recoveredBlock13Block171PC := 211.
        ].
        recoveredBlock13Block171Step = 211 ifTrue: [
            recoveredBlock13Block171Stack1 := (recoveredBlock13Block171Stack1) configForElement: (recoveredBlock13Block171Stack2).
            recoveredBlock13Block171PC := 213.
        ].
        recoveredBlock13Block171Step = 213 ifTrue: [
            recoveredBlock13Block171Stack2 := recoveredBlock13Block171Stack1.
            recoveredBlock13Block171PC := 214.
        ].
        recoveredBlock13Block171Step = 214 ifTrue: [
            recoveredLocal7 := recoveredBlock13Block171Stack2.
            recoveredBlock13Block171PC := 217.
        ].
        recoveredBlock13Block171Step = 217 ifTrue: [
            recoveredBlock13Block171Result := recoveredBlock13Block171Stack1.
            recoveredBlock13Block171Done := true.
        ].
    ].
    recoveredBlock13Block171Result
].
            recoveredBlock13PC := 218.
        ].
        recoveredBlock13Step = 218 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 220.
        ].
        recoveredBlock13Step = 220 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal7.
            recoveredBlock13PC := 223.
        ].
        recoveredBlock13Step = 223 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 224.
        ].
        recoveredBlock13Step = 224 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) reference.
            recoveredBlock13PC := 225.
        ].
        recoveredBlock13Step = 225 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) configForElement: (recoveredBlock13Stack2).
            recoveredBlock13PC := 227.
        ].
        recoveredBlock13Step = 227 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 228.
        ].
        recoveredBlock13Step = 228 ifTrue: [
            recoveredLocal6 := recoveredBlock13Stack2.
            recoveredBlock13PC := 231.
        ].
        recoveredBlock13Step = 231 ifTrue: [
            (recoveredBlock13Stack1 ~~ nil) ifTrue: [recoveredBlock13PC := 243] ifFalse: [recoveredBlock13PC := 234].
        ].
        recoveredBlock13Step = 234 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 235.
        ].
        recoveredBlock13Step = 235 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) reference.
            recoveredBlock13PC := 236.
        ].
        recoveredBlock13Step = 236 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) sgClass.
            recoveredBlock13PC := 238.
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) createImplementation.
            recoveredBlock13PC := 240.
        ].
        recoveredBlock13Step = 240 ifTrue: [
            recoveredLocal6 := recoveredBlock13Stack1.
            recoveredBlock13PC := 243.
        ].
        recoveredBlock13Step = 243 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 244.
        ].
        recoveredBlock13Step = 244 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 245.
        ].
        recoveredBlock13Step = 245 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getSimInstanceForNode: (recoveredBlock13Stack2).
            recoveredBlock13PC := 247.
        ].
        recoveredBlock13Step = 247 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 250.
        ].
        recoveredBlock13Step = 250 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 251.
        ].
        recoveredBlock13Step = 251 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal2.
            recoveredBlock13PC := 254.
        ].
        recoveredBlock13Step = 254 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 280] ifFalse: [recoveredBlock13PC := 258].
        ].
        recoveredBlock13Step = 258 ifTrue: [
            recoveredBlock13PC := 259.
        ].
        recoveredBlock13Step = 259 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 262.
        ].
        recoveredBlock13Step = 262 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal6.
            recoveredBlock13PC := 265.
        ].
        recoveredBlock13Step = 265 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) writeImplToConfig: (recoveredBlock13Stack2).
            recoveredBlock13PC := 267.
        ].
        recoveredBlock13Step = 267 ifTrue: [
            recoveredLocal5 := recoveredBlock13Stack1.
            recoveredBlock13PC := 270.
        ].
        recoveredBlock13Step = 270 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal7.
            recoveredBlock13PC := 273.
        ].
        recoveredBlock13Step = 273 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal5.
            recoveredBlock13PC := 276.
        ].
        recoveredBlock13Step = 276 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 277.
        ].
        recoveredBlock13Step = 277 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) reference.
            recoveredBlock13PC := 278.
        ].
        recoveredBlock13Step = 278 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) setConfig: (recoveredBlock13Stack2) forElement: (recoveredBlock13Stack3).
            recoveredBlock13PC := 280.
        ].
        recoveredBlock13Step = 280 ifTrue: [
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 284 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 287.
        ].
        recoveredBlock13Step = 287 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 288.
        ].
        recoveredBlock13Step = 288 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 290 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 321].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := 'Could not write data of '.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := ' Elements. (No write access!!)'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack1) monitorInfo: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d6aa4; bytecode file offset 0xed33e4"
!SGSimEnvironment methodsFor: 'recovered'!
updateValueConfigForNodes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_64973'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Local4 recoveredBlock19Local5 recoveredBlock19Local6 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isWriteable.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 320].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) reference.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isUniqueDataConfigured.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 44] ifFalse: [recoveredBlock19PC := 78].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) parent.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) reference.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) sgClass.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := 'Kk'.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack2 := 'Call_64973'.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) == (recoveredBlock19Stack2).
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getOrCreateClassDataConfig.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack1.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19PC := 197.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack1 := OrderedCollection.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) parent.
            recoveredBlock19PC := 99.
        ].
        recoveredBlock19Step = 99 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 102.
        ].
        recoveredBlock19Step = 102 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 105.
        ].
        recoveredBlock19Step = 105 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local2.
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            (recoveredBlock19Stack1) addFirst: (recoveredBlock19Stack2).
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 113.
        ].
        recoveredBlock19Step = 113 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) parent.
            recoveredBlock19PC := 115.
        ].
        recoveredBlock19Step = 115 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) simEntry.
            recoveredBlock19PC := 117.
        ].
        recoveredBlock19Step = 117 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 129] ifFalse: [recoveredBlock19PC := 120].
        ].
        recoveredBlock19Step = 120 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) reference.
            recoveredBlock19PC := 125.
        ].
        recoveredBlock19Step = 125 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isClassVariable.
            recoveredBlock19PC := 127.
        ].
        recoveredBlock19Step = 127 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 129] ifFalse: [recoveredBlock19PC := 94].
        ].
        recoveredBlock19Step = 129 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 130.
        ].
        recoveredBlock19Step = 130 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getValueConfig.
            recoveredBlock19PC := 132.
        ].
        recoveredBlock19Step = 132 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack1.
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 138.
        ].
        recoveredBlock19Step = 138 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block138Arg1 | 
    | recoveredBlock19Block138Stack0 recoveredBlock19Block138Stack1 recoveredBlock19Block138Stack2 recoveredBlock19Block138Stack3 recoveredBlock19Block138PC recoveredBlock19Block138Step recoveredBlock19Block138Done recoveredBlock19Block138Result |
    recoveredBlock19Block138Stack0 := nil.
    recoveredBlock19Block138PC := 144.
    recoveredBlock19Block138Done := false.
    [recoveredBlock19Block138Done not] whileTrue: [
        recoveredBlock19Block138Step := recoveredBlock19Block138PC.
        recoveredBlock19Block138Step = 144 ifTrue: [
            recoveredBlock19Block138Stack1 := recoveredBlock19Block138Arg1.
            recoveredBlock19Block138PC := 145.
        ].
        recoveredBlock19Block138Step = 145 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) reference.
            recoveredBlock19Block138PC := 147.
        ].
        recoveredBlock19Block138Step = 147 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) isClassVariable.
            recoveredBlock19Block138PC := 149.
        ].
        recoveredBlock19Block138Step = 149 ifTrue: [
            (recoveredBlock19Block138Stack1) ifTrue: [recoveredBlock19Block138PC := 152] ifFalse: [recoveredBlock19Block138PC := 174].
        ].
        recoveredBlock19Block138Step = 152 ifTrue: [
            recoveredBlock19Block138Stack1 := recoveredBlock19Block138Arg1.
            recoveredBlock19Block138PC := 153.
        ].
        recoveredBlock19Block138Step = 153 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) parent.
            recoveredBlock19Block138PC := 155.
        ].
        recoveredBlock19Block138Step = 155 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) reference.
            recoveredBlock19Block138PC := 157.
        ].
        recoveredBlock19Block138Step = 157 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) sgClass.
            recoveredBlock19Block138PC := 159.
        ].
        recoveredBlock19Block138Step = 159 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) getOrCreateClassDataConfig.
            recoveredBlock19Block138PC := 161.
        ].
        recoveredBlock19Block138Step = 161 ifTrue: [
            recoveredBlock19Block138Stack2 := recoveredBlock19Block138Arg1.
            recoveredBlock19Block138PC := 162.
        ].
        recoveredBlock19Block138Step = 162 ifTrue: [
            recoveredBlock19Block138Stack2 := (recoveredBlock19Block138Stack2) reference.
            recoveredBlock19Block138PC := 164.
        ].
        recoveredBlock19Block138Step = 164 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) configForElement: (recoveredBlock19Block138Stack2).
            recoveredBlock19Block138PC := 166.
        ].
        recoveredBlock19Block138Step = 166 ifTrue: [
            recoveredBlock19Block138Stack2 := recoveredBlock19Block138Stack1.
            recoveredBlock19Block138PC := 167.
        ].
        recoveredBlock19Block138Step = 167 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Block138Stack2.
            recoveredBlock19Block138PC := 170.
        ].
        recoveredBlock19Block138Step = 170 ifTrue: [
            recoveredBlock19Block138PC := 186.
        ].
        recoveredBlock19Block138Step = 174 ifTrue: [
            recoveredBlock19Block138Stack1 := recoveredBlock19Local6.
            recoveredBlock19Block138PC := 177.
        ].
        recoveredBlock19Block138Step = 177 ifTrue: [
            recoveredBlock19Block138Stack2 := recoveredBlock19Block138Arg1.
            recoveredBlock19Block138PC := 178.
        ].
        recoveredBlock19Block138Step = 178 ifTrue: [
            recoveredBlock19Block138Stack2 := (recoveredBlock19Block138Stack2) reference.
            recoveredBlock19Block138PC := 180.
        ].
        recoveredBlock19Block138Step = 180 ifTrue: [
            recoveredBlock19Block138Stack1 := (recoveredBlock19Block138Stack1) configForElement: (recoveredBlock19Block138Stack2).
            recoveredBlock19Block138PC := 182.
        ].
        recoveredBlock19Block138Step = 182 ifTrue: [
            recoveredBlock19Block138Stack2 := recoveredBlock19Block138Stack1.
            recoveredBlock19Block138PC := 183.
        ].
        recoveredBlock19Block138Step = 183 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Block138Stack2.
            recoveredBlock19Block138PC := 186.
        ].
        recoveredBlock19Block138Step = 186 ifTrue: [
            recoveredBlock19Block138Result := recoveredBlock19Block138Stack1.
            recoveredBlock19Block138Done := true.
        ].
    ].
    recoveredBlock19Block138Result
].
            recoveredBlock19PC := 187.
        ].
        recoveredBlock19Step = 187 ifTrue: [
            (recoveredBlock19Stack1) do: (recoveredBlock19Stack2).
            recoveredBlock19PC := 189.
        ].
        recoveredBlock19Step = 189 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 190.
        ].
        recoveredBlock19Step = 190 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 191.
        ].
        recoveredBlock19Step = 191 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack2.
            recoveredBlock19PC := 194.
        ].
        recoveredBlock19Step = 194 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 197.
        ].
        recoveredBlock19Step = 197 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local6.
            recoveredBlock19PC := 200.
        ].
        recoveredBlock19Step = 200 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 203.
        ].
        recoveredBlock19Step = 203 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) reference.
            recoveredBlock19PC := 205.
        ].
        recoveredBlock19Step = 205 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) configForElement: (recoveredBlock19Stack2).
            recoveredBlock19PC := 207.
        ].
        recoveredBlock19Step = 207 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 208.
        ].
        recoveredBlock19Step = 208 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack2.
            recoveredBlock19PC := 211.
        ].
        recoveredBlock19Step = 211 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 226] ifFalse: [recoveredBlock19PC := 214].
        ].
        recoveredBlock19Step = 214 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 217.
        ].
        recoveredBlock19Step = 217 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) reference.
            recoveredBlock19PC := 219.
        ].
        recoveredBlock19Step = 219 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) sgClass.
            recoveredBlock19PC := 221.
        ].
        recoveredBlock19Step = 221 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) createData.
            recoveredBlock19PC := 223.
        ].
        recoveredBlock19Step = 223 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack1.
            recoveredBlock19PC := 226.
        ].
        recoveredBlock19Step = 226 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 227.
        ].
        recoveredBlock19Step = 227 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 230.
        ].
        recoveredBlock19Step = 230 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getSimInstanceForNode: (recoveredBlock19Stack2).
            recoveredBlock19PC := 232.
        ].
        recoveredBlock19Step = 232 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack1.
            recoveredBlock19PC := 235.
        ].
        recoveredBlock19Step = 235 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 236.
        ].
        recoveredBlock19Step = 236 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local3.
            recoveredBlock19PC := 239.
        ].
        recoveredBlock19Step = 239 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 300] ifFalse: [recoveredBlock19PC := 242].
        ].
        recoveredBlock19Step = 242 ifTrue: [
            recoveredBlock19PC := 243.
        ].
        recoveredBlock19Step = 243 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local3.
            recoveredBlock19PC := 246.
        ].
        recoveredBlock19Step = 246 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) values.
            recoveredBlock19PC := 248.
        ].
        recoveredBlock19Step = 248 ifTrue: [
            (recoveredBlock19Stack1) readOnlineData.
            recoveredBlock19PC := 250.
        ].
        recoveredBlock19Step = 250 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local3.
            recoveredBlock19PC := 253.
        ].
        recoveredBlock19Step = 253 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local5.
            recoveredBlock19PC := 256.
        ].
        recoveredBlock19Step = 256 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) writeValuesToConfig: (recoveredBlock19Stack2).
            recoveredBlock19PC := 258.
        ].
        recoveredBlock19Step = 258 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack1.
            recoveredBlock19PC := 261.
        ].
        recoveredBlock19Step = 261 ifTrue: [
            recoveredBlock19Stack1 := 'hw'.
            recoveredBlock19PC := 263.
        ].
        recoveredBlock19Step = 263 ifTrue: [
            recoveredBlock19Stack2 := 'call_2009400993'.
            recoveredBlock19PC := 265.
        ].
        recoveredBlock19Step = 265 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) == (recoveredBlock19Stack2).
            recoveredBlock19PC := 266.
        ].
        recoveredBlock19Step = 266 ifTrue: [
            recoveredBlock19PC := 267.
        ].
        recoveredBlock19Step = 267 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 268.
        ].
        recoveredBlock19Step = 268 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 271.
        ].
        recoveredBlock19Step = 271 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isNaNFast.
            recoveredBlock19PC := 273.
        ].
        recoveredBlock19Step = 273 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 300] ifFalse: [recoveredBlock19PC := 276].
        ].
        recoveredBlock19Step = 276 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 279.
        ].
        recoveredBlock19Step = 279 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isInfinite.
            recoveredBlock19PC := 281.
        ].
        recoveredBlock19Step = 281 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 300] ifFalse: [recoveredBlock19PC := 284].
        ].
        recoveredBlock19Step = 284 ifTrue: [
            recoveredBlock19PC := 285.
        ].
        recoveredBlock19Step = 285 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local6.
            recoveredBlock19PC := 288.
        ].
        recoveredBlock19Step = 288 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 291.
        ].
        recoveredBlock19Step = 291 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) deepCopy.
            recoveredBlock19PC := 293.
        ].
        recoveredBlock19Step = 293 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 296.
        ].
        recoveredBlock19Step = 296 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) reference.
            recoveredBlock19PC := 298.
        ].
        recoveredBlock19Step = 298 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) setConfig: (recoveredBlock19Stack2) forElement: (recoveredBlock19Stack3).
            recoveredBlock19PC := 300.
        ].
        recoveredBlock19Step = 300 ifTrue: [
            recoveredBlock19Stack2 := nil.
            recoveredBlock19PC := 301.
        ].
        recoveredBlock19Step = 301 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 302.
        ].
        recoveredBlock19Step = 302 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack3.
            recoveredBlock19PC := 305.
        ].
        recoveredBlock19Step = 305 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 306.
        ].
        recoveredBlock19Step = 306 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack3.
            recoveredBlock19PC := 309.
        ].
        recoveredBlock19Step = 309 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 310.
        ].
        recoveredBlock19Step = 310 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 313.
        ].
        recoveredBlock19Step = 313 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 316.
        ].
        recoveredBlock19Step = 316 ifTrue: [
            recoveredBlock19PC := 328.
        ].
        recoveredBlock19Step = 320 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 323.
        ].
        recoveredBlock19Step = 323 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 326.
        ].
        recoveredBlock19Step = 326 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 328.
        ].
        recoveredBlock19Step = 328 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := 'Could not write back data of '.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := ' Elements. (No write access!!)'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) monitorInfo: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f86d4; bytecode file offset 0xef505c"
!SGSimEnvironment methodsFor: 'recovered'!
getSimInstanceForNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'call_84579'.
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
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveVirtualityOfNode: (recoveredStack2) visitedNodes: (recoveredStack3).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    ^nil
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) getVirtualPseudoAddress.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEntryAtIndex: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPseudoAddress.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDataElementForNode: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAndAddAccessForKey: (recoveredStack2) dataElem: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDescriptionName.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDistributionsFor: (recoveredStack2) node: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) reference.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) updateSourceNamesFor: (recoveredStack2) instVar: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDescriptionName.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'Call_73505'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) comment.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'WHAT9293'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) unit.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) unit: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := 'WHAT9292'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) setEntry: (recoveredStack2) forIndex: (recoveredStack3).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) storeDataElementCompositionPartsFor: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'mca'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) allAdapters.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) allAdapters.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:recoveredBlock257Arg1 | 
    | recoveredBlock257Local1 recoveredBlock257Stack0 recoveredBlock257Stack1 recoveredBlock257Stack2 recoveredBlock257Stack3 recoveredBlock257PC recoveredBlock257Step recoveredBlock257Done recoveredBlock257Result |
    recoveredBlock257Stack0 := self.
    recoveredBlock257PC := 264.
    recoveredBlock257Done := false.
    [recoveredBlock257Done not] whileTrue: [
        recoveredBlock257Step := recoveredBlock257PC.
        recoveredBlock257Step = 264 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Arg1.
            recoveredBlock257PC := 265.
        ].
        recoveredBlock257Step = 265 ifTrue: [
            recoveredBlock257Stack2 := self.
            recoveredBlock257PC := 266.
        ].
        recoveredBlock257Step = 266 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) getDerivedSimInstance: (recoveredBlock257Stack2).
            recoveredBlock257PC := 268.
        ].
        recoveredBlock257Step = 268 ifTrue: [
            recoveredBlock257Local1 := recoveredBlock257Stack1.
            recoveredBlock257PC := 269.
        ].
        recoveredBlock257Step = 269 ifTrue: [
            recoveredBlock257Stack1 := nil.
            recoveredBlock257PC := 270.
        ].
        recoveredBlock257Step = 270 ifTrue: [
            recoveredBlock257Stack2 := recoveredBlock257Local1.
            recoveredBlock257PC := 271.
        ].
        recoveredBlock257Step = 271 ifTrue: [
            (recoveredBlock257Stack2 == nil) ifTrue: [recoveredBlock257PC := 310] ifFalse: [recoveredBlock257PC := 274].
        ].
        recoveredBlock257Step = 274 ifTrue: [
            recoveredBlock257PC := 275.
        ].
        recoveredBlock257Step = 275 ifTrue: [
            recoveredBlock257Stack1 := recoveredBlock257Local1.
            recoveredBlock257PC := 276.
        ].
        recoveredBlock257Step = 276 ifTrue: [
            recoveredBlock257Stack2 := [:recoveredBlock257Block276Arg1 | 
    | recoveredBlock257Block276Stack0 recoveredBlock257Block276Stack1 recoveredBlock257Block276Stack2 recoveredBlock257Block276Stack3 recoveredBlock257Block276Stack4 recoveredBlock257Block276PC recoveredBlock257Block276Step recoveredBlock257Block276Done recoveredBlock257Block276Result |
    recoveredBlock257Block276Stack0 := nil.
    recoveredBlock257Block276PC := 282.
    recoveredBlock257Block276Done := false.
    [recoveredBlock257Block276Done not] whileTrue: [
        recoveredBlock257Block276Step := recoveredBlock257Block276PC.
        recoveredBlock257Block276Step = 282 ifTrue: [
            recoveredBlock257Block276Stack1 := nil.
            recoveredBlock257Block276PC := 283.
        ].
        recoveredBlock257Block276Step = 283 ifTrue: [
            recoveredBlock257Block276Stack2 := recoveredLocal2.
            recoveredBlock257Block276PC := 286.
        ].
        recoveredBlock257Block276Step = 286 ifTrue: [
            recoveredBlock257Block276Stack2 := (recoveredBlock257Block276Stack2) derivedDataElements.
            recoveredBlock257Block276PC := 288.
        ].
        recoveredBlock257Block276Step = 288 ifTrue: [
            recoveredBlock257Block276Stack3 := recoveredBlock257Block276Arg1.
            recoveredBlock257Block276PC := 289.
        ].
        recoveredBlock257Block276Step = 289 ifTrue: [
            recoveredBlock257Block276Stack2 := (recoveredBlock257Block276Stack2) includes: (recoveredBlock257Block276Stack3).
            recoveredBlock257Block276PC := 291.
        ].
        recoveredBlock257Block276Step = 291 ifTrue: [
            (recoveredBlock257Block276Stack2) ifTrue: [recoveredBlock257Block276PC := 307] ifFalse: [recoveredBlock257Block276PC := 294].
        ].
        recoveredBlock257Block276Step = 294 ifTrue: [
            recoveredBlock257Block276PC := 295.
        ].
        recoveredBlock257Block276Step = 295 ifTrue: [
            recoveredBlock257Block276Stack1 := recoveredLocal2.
            recoveredBlock257Block276PC := 298.
        ].
        recoveredBlock257Block276Step = 298 ifTrue: [
            recoveredBlock257Block276Stack2 := recoveredBlock257Block276Arg1.
            recoveredBlock257Block276PC := 299.
        ].
        recoveredBlock257Block276Step = 299 ifTrue: [
            (recoveredBlock257Block276Stack1) addDerived: (recoveredBlock257Block276Stack2).
            recoveredBlock257Block276PC := 301.
        ].
        recoveredBlock257Block276Step = 301 ifTrue: [
            recoveredBlock257Block276Stack1 := recoveredBlock257Block276Arg1.
            recoveredBlock257Block276PC := 302.
        ].
        recoveredBlock257Block276Step = 302 ifTrue: [
            recoveredBlock257Block276Stack2 := recoveredLocal2.
            recoveredBlock257Block276PC := 305.
        ].
        recoveredBlock257Block276Step = 305 ifTrue: [
            recoveredBlock257Block276Stack1 := (recoveredBlock257Block276Stack1) derivedFromDataElement: (recoveredBlock257Block276Stack2).
            recoveredBlock257Block276PC := 307.
        ].
        recoveredBlock257Block276Step = 307 ifTrue: [
            recoveredBlock257Block276Result := recoveredBlock257Block276Stack1.
            recoveredBlock257Block276Done := true.
        ].
    ].
    recoveredBlock257Block276Result
].
            recoveredBlock257PC := 308.
        ].
        recoveredBlock257Step = 308 ifTrue: [
            recoveredBlock257Stack1 := (recoveredBlock257Stack1) do: (recoveredBlock257Stack2).
            recoveredBlock257PC := 310.
        ].
        recoveredBlock257Step = 310 ifTrue: [
            recoveredBlock257Result := recoveredBlock257Stack1.
            recoveredBlock257Done := true.
        ].
    ].
    recoveredBlock257Result
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 335] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := (recoveredStack2) isApplicable.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) writeProtection: (recoveredStack2).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := 'EHI_36284'.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDependentParameter.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 355].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) setDependentParameter.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCalibrationParameters.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) dpManager.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := [:recoveredBlock367Arg1 | 
    | recoveredBlock367Value0 recoveredBlock367Value1 recoveredBlock367Value2 recoveredBlock367Value3 |
    recoveredBlock367Value0 := recoveredBlock367Arg1.
    recoveredBlock367Value1 := recoveredArg1.
    recoveredBlock367Value2 := recoveredLocal2.
    recoveredBlock367Value3 := (recoveredBlock367Value0) updateParameterForSimNode: (recoveredBlock367Value1) withDataElement: (recoveredBlock367Value2).
    recoveredBlock367Value3
].
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerSGClass.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTClass.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingCTimportFor: (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) access.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack1) dependent: (recoveredStack2).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

