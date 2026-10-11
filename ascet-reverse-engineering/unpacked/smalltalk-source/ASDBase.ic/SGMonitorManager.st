"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f91c; bytecode file offset 0x92209c"
!SGMonitorManager methodsFor: 'recovered'!
dummyKey
    ^'API'
! !

"ASDBase.ic method 0x2002b624; bytecode file offset 0x934580"
!SGMonitorManager methodsFor: 'recovered'!
isVerbose
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) verbose.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036104; bytecode file offset 0x934580"
!SGMonitorManager methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200385f8; bytecode file offset 0x935c54"
!SGMonitorManager methodsFor: 'recovered'!
showSimulationMessagesTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) showSimulationMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038808; bytecode file offset 0x935c54"
!SGMonitorManager methodsFor: 'recovered'!
showUnknownMessagesTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) showUnknownMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038958; bytecode file offset 0x935c54"
!SGMonitorManager methodsFor: 'recovered'!
showCompileLinkMessagesTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) showCompileLinkMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039060; bytecode file offset 0x935c54"
!SGMonitorManager methodsFor: 'recovered'!
showCodegenMessagesTitle: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) showCodegenMessagesTitle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e548; bytecode file offset 0x93bf94"
!SGMonitorManager methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdManager.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cdc0; bytecode file offset 0x959680"
!SGMonitorManager methodsFor: 'recovered'!
currentProjectCache
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGWorkspaceCache.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) currentProjectCache.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e588; bytecode file offset 0x95ae4c"
!SGMonitorManager methodsFor: 'recovered'!
setSimulationPhase
    currentPhase := 'Simulation'.
    ^self
! !

"ASDBase.ic method 0x2005e594; bytecode file offset 0x95ae4c"
!SGMonitorManager methodsFor: 'recovered'!
setGeneratePhase
    currentPhase := 'Generate'.
    ^self
! !

"ASDBase.ic method 0x20063f84; bytecode file offset 0x961970"
!SGMonitorManager methodsFor: 'recovered'!
showMonitorTab
    | recoveredValue0 |
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) showMonitorTab.
    ^self
! !

"ASDBase.ic method 0x20064164; bytecode file offset 0x961970"
!SGMonitorManager methodsFor: 'recovered'!
showBuildTab
    | recoveredValue0 |
    recoveredValue0 := (self) errorHandler.
    (recoveredValue0) showBuildTab.
    ^self
! !

"ASDBase.ic method 0x20066f5c; bytecode file offset 0x9646f8"
!SGMonitorManager methodsFor: 'recovered'!
memory
    | recoveredValue0 |
    recoveredValue0 := memory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006847c; bytecode file offset 0x965b90"
!SGMonitorManager methodsFor: 'recovered'!
currentAPI
    | recoveredValue0 |
    recoveredValue0 := currentAPI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a1a0; bytecode file offset 0x966bdc"
!SGMonitorManager methodsFor: 'recovered'!
operationAborted
    | recoveredValue0 |
    recoveredValue0 := operationAborted.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bcc8; bytecode file offset 0x96873c"
!SGMonitorManager methodsFor: 'recovered'!
memoryConsumption
    | recoveredValue0 |
    recoveredValue0 := memoryConsumption.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c5bc; bytecode file offset 0x9692b0"
!SGMonitorManager methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbe0; bytecode file offset 0x969c04"
!SGMonitorManager methodsFor: 'recovered'!
codeIsUpToDate
    | recoveredValue0 |
    recoveredValue0 := codeIsUpToDate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de68; bytecode file offset 0x96a9dc"
!SGMonitorManager methodsFor: 'recovered'!
genErrNum
    | recoveredValue0 |
    recoveredValue0 := genErrNum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e344; bytecode file offset 0x96af48"
!SGMonitorManager methodsFor: 'recovered'!
genWarnNum
    | recoveredValue0 |
    recoveredValue0 := genWarnNum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b424; bytecode file offset 0x987d00"
!SGMonitorManager methodsFor: 'recovered'!
isSimulationPhase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentPhase.
    recoveredValue1 := (recoveredValue0) == ('Simulation').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b43c; bytecode file offset 0x987d00"
!SGMonitorManager methodsFor: 'recovered'!
isGeneratePhase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentPhase.
    recoveredValue1 := (recoveredValue0) == ('Generate').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b448; bytecode file offset 0x987d00"
!SGMonitorManager methodsFor: 'recovered'!
isCompileLinkPhase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentPhase.
    recoveredValue1 := (recoveredValue0) == ('CompileLink').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097a84; bytecode file offset 0x995850"
!SGMonitorManager methodsFor: 'recovered'!
commandSummary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) monitorStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) newlinePutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a0ee4; bytecode file offset 0x99db8c"
!SGMonitorManager methodsFor: 'recovered'!
messageUpToDate
    | recoveredValue0 |
    recoveredValue0 := (self) monitorStream.
    (recoveredValue0) newlinePutAll: ('--> Up to date').
    ^self
! !

"ASDBase.ic method 0x200b3094; bytecode file offset 0x9af94c"
!SGMonitorManager methodsFor: 'recovered'!
monitoringResultOK
    (self) monitoringResultErrors: (0) warnings: (0).
    ^self
! !

"ASDBase.ic method 0x200bdd1c; bytecode file offset 0x9bb178"
!SGMonitorManager methodsFor: 'recovered'!
monitorStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitorStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c78; bytecode file offset 0x9bdf14"
!SGMonitorManager methodsFor: 'recovered'!
operationAborted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operationAborted := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2998; bytecode file offset 0x9bf474"
!SGMonitorManager methodsFor: 'recovered'!
memoryConsumption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryConsumption := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33b4; bytecode file offset 0x9bfde0"
!SGMonitorManager methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    context := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c35c0; bytecode file offset 0x9c058c"
!SGMonitorManager methodsFor: 'recovered'!
codeIsUpToDate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeIsUpToDate := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4888; bytecode file offset 0x9c11bc"
!SGMonitorManager methodsFor: 'recovered'!
genErrNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genErrNum := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4a7c; bytecode file offset 0x9c16b0"
!SGMonitorManager methodsFor: 'recovered'!
genWarnNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genWarnNum := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c872c; bytecode file offset 0x9c4fe4"
!SGMonitorManager methodsFor: 'recovered'!
startTiming: recoveredArg1 title: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) startTiming: (recoveredValue0) apiCommand: (false) title: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c8af8; bytecode file offset 0x9c53b0"
!SGMonitorManager methodsFor: 'recovered'!
execute: recoveredArg1 message: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) execute: (recoveredValue0) message: (recoveredValue1) showProgress: (false).
    ^self
! !

"ASDBase.ic method 0x200dde38; bytecode file offset 0x9da6f0"
!SGMonitorManager methodsFor: 'recovered'!
startTiming: recoveredArg1 title: recoveredArg2 max: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) startTiming: (recoveredValue0) apiCommand: (false) title: (recoveredValue1) max: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e4468; bytecode file offset 0x9e0d78"
!SGMonitorManager methodsFor: 'recovered'!
closeSourceObject
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) closeSourceObject.
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

"ASDBase.ic method 0x200e44b8; bytecode file offset 0x9e0d78"
!SGMonitorManager methodsFor: 'recovered'!
closeFileList
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) closeFileList.
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

"ASDBase.ic method 0x200ed430; bytecode file offset 0x9e9ce8"
!SGMonitorManager methodsFor: 'recovered'!
doTiming: recoveredArg1 title: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) doTiming: (recoveredValue0) title: (recoveredValue1) max: (-1) for: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ed6bc; bytecode file offset 0x9e9f74"
!SGMonitorManager methodsFor: 'recovered'!
startTiming: recoveredArg1 apiCommand: recoveredArg2 title: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) startTiming: (recoveredValue0) apiCommand: (recoveredValue1) title: (recoveredValue2) max: (-1).
    ^self
! !

"ASDBase.ic method 0x200fd2a0; bytecode file offset 0x9f9b60"
!SGMonitorManager methodsFor: 'recovered'!
endCommandBlock: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := '... up to date'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fefbc; bytecode file offset 0x9fb87c"
!SGMonitorManager methodsFor: 'recovered'!
addTextBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
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

"ASDBase.ic method 0x200feff4; bytecode file offset 0x9fb918"
!SGMonitorManager methodsFor: 'recovered'!
nextItemLabel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
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

"ASDBase.ic method 0x200ff008; bytecode file offset 0x9fb918"
!SGMonitorManager methodsFor: 'recovered'!
addText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
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

"ASDBase.ic method 0x200ff01c; bytecode file offset 0x9fb918"
!SGMonitorManager methodsFor: 'recovered'!
openSourceObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) openSourceObject: (recoveredStack1).
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

"ASDBase.ic method 0x200ff030; bytecode file offset 0x9fb918"
!SGMonitorManager methodsFor: 'recovered'!
openFileList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) openFileList: (recoveredStack1).
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

"ASDBase.ic method 0x201025e8; bytecode file offset 0x9feea0"
!SGMonitorManager methodsFor: 'recovered'!
doTiming: recoveredArg1 apiCommand: recoveredArg2 title: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) doTiming: (recoveredValue0) apiCommand: (recoveredValue1) title: (recoveredValue2) max: (-1) for: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010bfec; bytecode file offset 0xa08928"
!SGMonitorManager methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetTask.
    (self) setGeneratePhase.
    ^self
! !

"ASDBase.ic method 0x20110e34; bytecode file offset 0xa0d708"
!SGMonitorManager methodsFor: 'recovered'!
fileName: recoveredArg1 index: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
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
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1) index: (recoveredStack2).
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

"ASDBase.ic method 0x201360a4; bytecode file offset 0xa32978"
!SGMonitorManager methodsFor: 'recovered'!
fileName: recoveredArg1 extension: recoveredArg2 index: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
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
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1) extension: (recoveredStack2) index: (recoveredStack3).
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

"ASDBase.ic method 0x2013a95c; bytecode file offset 0xa3721c"
!SGMonitorManager methodsFor: 'recovered'!
monitorStream
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := monitorStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGLmManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWriteStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMonitorStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            monitorStream := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := monitorStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b37c; bytecode file offset 0xa37c3c"
!SGMonitorManager methodsFor: 'recovered'!
progressReporter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressReporter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGProgressReporter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            progressReporter := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := progressReporter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015c474; bytecode file offset 0xa58d30"
!SGMonitorManager methodsFor: 'recovered'!
resetTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    memory := recoveredValue1.
    memoryConsumption := nil.
    genErrNum := 0.
    genWarnNum := 0.
    ^self
! !

"ASDBase.ic method 0x201b71e0; bytecode file offset 0xab3aac"
!SGMonitorManager methodsFor: 'recovered'!
makeFileName: recoveredArg1 extension: recoveredArg2 index: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVerbose.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Makefile for external usage'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) openFileList: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) index: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) closeFileList.
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

"ASDBase.ic method 0x201d5700; bytecode file offset 0xad1fc8"
!SGMonitorManager methodsFor: 'recovered'!
decreaseStackOverflowWarningSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentAPI.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := currentAPI.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldStackSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280d5540Arg1 | 
    | block280d5540Value0 block280d5540Value1 block280d5540Value2 |
    block280d5540Value0 := Process.
    block280d5540Value1 := block280d5540Arg1.
    block280d5540Value2 := (block280d5540Value0) stackOverflowWarningSize: (block280d5540Value1).
    block280d5540Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eafd8; bytecode file offset 0xae78a0"
!SGMonitorManager methodsFor: 'recovered'!
startTiming: recoveredArg1 apiCommand: recoveredArg2 title: recoveredArg3 max: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCommand: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) startTiming: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) startNextStage: (recoveredStack1) label: (recoveredStack2).
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

"ASDBase.ic method 0x201f0850; bytecode file offset 0xaed118"
!SGMonitorManager methodsFor: 'recovered'!
increaseStackOverflowWarningSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentAPI.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := currentAPI.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Process.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) stackOverflowWarningSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) oldStackSize: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Process.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := currentAPI.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) oldStackSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) stackOverflowWarningSize: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8f58; bytecode file offset 0xaf582c"
!SGMonitorManager methodsFor: 'recovered'!
createGeneralUnit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneratePhase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCodeGenGeneralUnit.
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
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Compile/Link General'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGeneralUnit: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SGPathSource.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
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

"ASDBase.ic method 0x20206e1c; bytecode file offset 0xb036f0"
!SGMonitorManager methodsFor: 'recovered'!
currentWorkingPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('Current working directory: "').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue2) nextPutAll: ('"').
    recoveredValue6 := (self) monitorStream.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) releaseGetContents.
    (recoveredValue6) nextPutAll: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202344ec; bytecode file offset 0xb30dc4"
!SGMonitorManager methodsFor: 'recovered'!
createAPICommand: recoveredArg1 title: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGCgAPICommandInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) startTimeSecs: (-1).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) startTimeMilliSecs: (-1).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) key: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) memory.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue8) + (1).
    (recoveredValue6) index: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) title: (recoveredValue11).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20235f80; bytecode file offset 0xb32840"
!SGMonitorManager methodsFor: 'recovered'!
doTiming: recoveredArg1 title: recoveredArg2 max: recoveredArg3 for: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) startTiming: (recoveredValue0) apiCommand: (false) title: (recoveredValue1) max: (recoveredValue2).
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := (self) endTiming: (recoveredBlock20Value0).
    recoveredBlock20Value1
].
    (recoveredValue3) ensure: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2024d9b4; bytecode file offset 0xb4a274"
!SGMonitorManager methodsFor: 'recovered'!
doTiming: recoveredArg1 apiCommand: recoveredArg2 title: recoveredArg3 max: recoveredArg4 for: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    (self) startTiming: (recoveredValue0) apiCommand: (recoveredValue1) title: (recoveredValue2) max: (recoveredValue3).
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (self) endTiming: (recoveredBlock22Value0).
    recoveredBlock22Value1
].
    (recoveredValue4) ensure: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20251b08; bytecode file offset 0xb4e3cc"
!SGMonitorManager methodsFor: 'recovered'!
collectErrors: recoveredArg1 warnings: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) genErrNum.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) genWarnNum.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentAPI.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) collectErrors: (recoveredStack2) warnings: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025f884; bytecode file offset 0xb5c160"
!SGMonitorManager methodsFor: 'recovered'!
setCompileLinkPhase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneratePhase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) numOfErrors.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) genErrNum: (recoveredStack1).
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
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) numOfWarnings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) genWarnNum: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) showCodegenMessagesTitle: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 'CompileLink'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            currentPhase := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) createGeneralUnit.
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

"ASDBase.ic method 0x20262ab0; bytecode file offset 0xb5f38c"
!SGMonitorManager methodsFor: 'recovered'!
createCommand: recoveredArg1 title: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGCgCommandInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) startTimeSecs: (-1).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) startTimeMilliSecs: (-1).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) key: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) apiCommand: (false).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) memory.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (recoveredValue9) + (1).
    (recoveredValue7) index: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg2.
    (recoveredValue11) title: (recoveredValue12).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2028a8d0; bytecode file offset 0xb8719c"
!SGMonitorManager methodsFor: 'recovered'!
monitoringResultErrors: recoveredArg1 warnings: recoveredArg2
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) genErrNum.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) genWarnNum.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorStream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := ' --- '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) monitoringResultErrors: (recoveredStack2) warnings: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028ffc8; bytecode file offset 0xb8c8a8"
!SGMonitorManager methodsFor: 'recovered'!
notApplicable: recoveredArg1 title: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) memory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGCgCommandInfo.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) startTimeSecs: (-1).
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) startTimeMilliSecs: (-1).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) key: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) apiCommand: (false).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) title: (recoveredValue10).
    recoveredValue11 := recoveredValue3.
    recoveredValue12 := (self) memory.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue13) + (1).
    (recoveredValue11) index: (recoveredValue14).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2029d9f4; bytecode file offset 0xb9a2c0"
!SGMonitorManager methodsFor: 'recovered'!
milliSecondsNow
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) queryPerformanceFrequency: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) uint64At: (0).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := ByteArray.
    recoveredValue7 := (recoveredValue6) new: (8).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := (self) class.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue8) queryPerformanceCounter: (recoveredValue9).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) uint64At: (0).
    recoveredValue12 := (recoveredValue11) * (1000).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) // (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x202ab200; bytecode file offset 0xba7adc"
!SGMonitorManager methodsFor: 'recovered'!
collectMessagesInGeneralUnitDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneratePhase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectMessagesInCodeGenGeneralUnitDo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Compile/Link General'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := (self) errorHandler.
    recoveredBlock19Value1 := (recoveredBlock19Value0) currentUnit.
    recoveredBlock19Value2 := SGPathSource.
    recoveredBlock19Value3 := (recoveredBlock19Value2) new.
    (recoveredBlock19Value1) source: (recoveredBlock19Value3).
    recoveredBlock19Value4 := recoveredArg1.
    recoveredBlock19Value5 := (recoveredBlock19Value4) value.
    recoveredBlock19Value5
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectMessagesInGeneralUnit: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20310ac8; bytecode file offset 0xc0d3ac"
!SGMonitorManager methodsFor: 'recovered'!
beginCommandBlock: recoveredArg1 description: recoveredArg2 value: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) asUppercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '...'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'Current '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := ': "'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031860c; bytecode file offset 0xc14ef0"
!SGMonitorManager methodsFor: 'recovered'!
startNextStage: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) reserveTempStream.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ' ...'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) newlinePutAll: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) startNextStage: (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033521c; bytecode file offset 0xc31af8"
!SGMonitorManager methodsFor: 'recovered'!
execute: recoveredArg1 message: recoveredArg2 showProgress: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUI.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 'Code Manager'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_66606'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) argumentCount.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) value.
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

"ASDBase.ic method 0x20389be0; bytecode file offset 0xc864d8"
!SGMonitorManager methodsFor: 'recovered'!
beginApiCommand: recoveredArg1 title: recoveredArg2 stages: recoveredArg3
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
            recoveredStack2 := (recoveredStack2) dummyKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) showMonitorTab.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) setToEnd.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) operationAborted: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) resetTask.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) openTask: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) dummyKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) showCGenMessages.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createAPICommand: (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            currentAPI := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := currentAPI.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) initialize.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) maxStages: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) startTiming: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e9af4; bytecode file offset 0xce63e0"
!SGMonitorManager methodsFor: 'recovered'!
reportErrors: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationAborted.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) numOfErrors.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) operationAborted.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 88.
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
            recoveredStack1 := (recoveredStack1) numOfErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) numOfWarnings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) collectErrors: (recoveredStack1) warnings: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasErrors.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) operationAborted: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGeneratePhase.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
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
            (recoveredStack0) showCodegenMessagesTitle: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCompileLinkPhase.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
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
            (recoveredStack0) showCompileLinkMessagesTitle: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimulationPhase.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) showSimulationMessagesTitle: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) showUnknownMessagesTitle: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20416160; bytecode file offset 0xd12a68"
!SGMonitorManager methodsFor: 'recovered'!
endTiming: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := recoveredArg1.
    (self) startTiming: (recoveredBlock8Value0) title: ('<Unknown>').
    recoveredBlock8Value1 := (self) memory.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) at: (recoveredBlock8Value2).
    recoveredBlock8Value4 := recoveredBlock8Value3.
    recoveredLocal1 := recoveredBlock8Value4.
    recoveredBlock8Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSeconds.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) endTimeSecs: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) milliSecondsNow.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) endTimeMilliSecs: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) endMilliSecs: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCancelled.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiCommand.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := ExSGCodeManagerFatal.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'cancel'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressReporter.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) finishStage.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) durationInSecs.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20463478; bytecode file offset 0xd5fd88"
!SGMonitorManager methodsFor: 'recovered'!
startTiming: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ClassInterface'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) memory.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block28100b04Arg1 | 
    | block28100b04Stack0 block28100b04Stack1 block28100b04Stack2 block28100b04Stack3 block28100b04Stack4 block28100b04PC block28100b04Step block28100b04Done block28100b04Result |
    block28100b04Stack0 := self.
    block28100b04PC := 4.
    block28100b04Done := false.
    [block28100b04Done not] whileTrue: [
        block28100b04Step := block28100b04PC.
        block28100b04Step = 4 ifTrue: [
            block28100b04Stack1 := false.
            block28100b04PC := 5.
        ].
        block28100b04Step = 5 ifTrue: [
            block28100b04Stack2 := block28100b04Arg1.
            block28100b04PC := 6.
        ].
        block28100b04Step = 6 ifTrue: [
            block28100b04Stack2 := (block28100b04Stack2) startTimeSecs.
            block28100b04PC := 8.
        ].
        block28100b04Step = 8 ifTrue: [
            block28100b04Stack3 := 0.
            block28100b04PC := 10.
        ].
        block28100b04Step = 10 ifTrue: [
            block28100b04Stack2 := (block28100b04Stack2) > (block28100b04Stack3).
            block28100b04PC := 11.
        ].
        block28100b04Step = 11 ifTrue: [
            (block28100b04Stack2) ifTrue: [block28100b04PC := 14] ifFalse: [block28100b04PC := 21].
        ].
        block28100b04Step = 14 ifTrue: [
            block28100b04PC := 15.
        ].
        block28100b04Step = 15 ifTrue: [
            block28100b04Stack1 := block28100b04Arg1.
            block28100b04PC := 16.
        ].
        block28100b04Step = 16 ifTrue: [
            block28100b04Stack1 := (block28100b04Stack1) endTimeSecs.
            block28100b04PC := 18.
        ].
        block28100b04Step = 18 ifTrue: [
            block28100b04Stack2 := -1.
            block28100b04PC := 20.
        ].
        block28100b04Step = 20 ifTrue: [
            block28100b04Stack1 := (block28100b04Stack1) == (block28100b04Stack2).
            block28100b04PC := 21.
        ].
        block28100b04Step = 21 ifTrue: [
            block28100b04Result := block28100b04Stack1.
            block28100b04Done := true.
        ].
    ].
    block28100b04Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) size.
    recoveredBlock52Value2 := (recoveredBlock52Value1) <= (1).
    recoveredBlock52Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 'Multiple overlapping timing commands during code generation'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2) additionalInfo: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredArg1.
    recoveredBlock80Value1 := (self) createCommand: (recoveredBlock80Value0) title: ('unknown task').
    recoveredBlock80Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := Time.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) now.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSeconds.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) startTimeSecs: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) milliSecondsNow.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) startTimeMilliSecs: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) millisecondClockValue.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) startMilliSecs: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048cb28; bytecode file offset 0xd89434"
!SGMonitorManager methodsFor: 'recovered'!
monitoringEndTask
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentAPI.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) title.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) operationAborted.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'aborted'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'completed'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) endTask: (recoveredStack2) info: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) flush.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) resetTask.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentAPI.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) numErrs.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentAPI.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) numWarns.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeIsUpToDate.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeIsUpToDate.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Code is up to date'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := SGBasicTempWriteStream.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) reserveTempStream.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentAPI.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) numErrs.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := ' errors, '.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentAPI.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) numWarns.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := ' warnings'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) releaseGetContents.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationAborted.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) showBuildTab.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) operationAborted: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049c738; bytecode file offset 0xd99048"
!SGMonitorManager methodsFor: 'recovered'!
monitorMemoryConsumption
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memoryConsumption.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 recoveredBlock5Value10 recoveredBlock5Value11 recoveredBlock5Value12 recoveredBlock5Value13 recoveredBlock5Value14 recoveredBlock5Value15 |
    recoveredBlock5Value0 := SGBasicTempWriteStream.
    recoveredBlock5Value1 := (recoveredBlock5Value0) reserveTempStream.
    recoveredBlock5Value2 := recoveredBlock5Value1.
    recoveredLocal2 := recoveredBlock5Value2.
    (recoveredBlock5Value1) newlinePutAll: ('--> Estimated memory consumption (per memory class): ').
    recoveredBlock5Value3 := SGBasicTempWriteStream.
    recoveredBlock5Value4 := (recoveredBlock5Value3) reserveTempStream.
    recoveredLocal1 := recoveredBlock5Value4.
    recoveredBlock5Value5 := (self) memoryConsumption.
    recoveredBlock5Value6 := (recoveredBlock5Value5) keys.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asSortedCollection.
    recoveredBlock5Value8 := [:recoveredBlock5Block34Arg1 | 
    | recoveredBlock5Block34Local1 recoveredBlock5Block34Stack0 recoveredBlock5Block34Stack1 recoveredBlock5Block34Stack2 recoveredBlock5Block34Stack3 recoveredBlock5Block34Stack4 recoveredBlock5Block34PC recoveredBlock5Block34Step recoveredBlock5Block34Done recoveredBlock5Block34Result |
    recoveredBlock5Block34Stack0 := self.
    recoveredBlock5Block34PC := 40.
    recoveredBlock5Block34Done := false.
    [recoveredBlock5Block34Done not] whileTrue: [
        recoveredBlock5Block34Step := recoveredBlock5Block34PC.
        recoveredBlock5Block34Step = 40 ifTrue: [
            recoveredBlock5Block34Stack0 := (recoveredBlock5Block34Stack0) memoryConsumption.
            recoveredBlock5Block34PC := 41.
        ].
        recoveredBlock5Block34Step = 41 ifTrue: [
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Arg1.
            recoveredBlock5Block34PC := 42.
        ].
        recoveredBlock5Block34Step = 42 ifTrue: [
            recoveredBlock5Block34Stack0 := (recoveredBlock5Block34Stack0) at: (recoveredBlock5Block34Stack1).
            recoveredBlock5Block34PC := 44.
        ].
        recoveredBlock5Block34Step = 44 ifTrue: [
            recoveredBlock5Block34Local1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 45.
        ].
        recoveredBlock5Block34Step = 45 ifTrue: [
            recoveredBlock5Block34Stack0 := 'Default.*'.
            recoveredBlock5Block34PC := 47.
        ].
        recoveredBlock5Block34Step = 47 ifTrue: [
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Arg1.
            recoveredBlock5Block34PC := 48.
        ].
        recoveredBlock5Block34Step = 48 ifTrue: [
            recoveredBlock5Block34Stack0 := (recoveredBlock5Block34Stack0) match: (recoveredBlock5Block34Stack1).
            recoveredBlock5Block34PC := 50.
        ].
        recoveredBlock5Block34Step = 50 ifTrue: [
            (recoveredBlock5Block34Stack0) ifTrue: [recoveredBlock5Block34PC := 54] ifFalse: [recoveredBlock5Block34PC := 60].
        ].
        recoveredBlock5Block34Step = 54 ifTrue: [
            recoveredBlock5Block34Stack0 := recoveredLocal1.
            recoveredBlock5Block34PC := 57.
        ].
        recoveredBlock5Block34Step = 57 ifTrue: [
            recoveredBlock5Block34PC := 63.
        ].
        recoveredBlock5Block34Step = 60 ifTrue: [
            recoveredBlock5Block34Stack0 := recoveredLocal2.
            recoveredBlock5Block34PC := 63.
        ].
        recoveredBlock5Block34Step = 63 ifTrue: [
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 64.
        ].
        recoveredBlock5Block34Step = 64 ifTrue: [
            (recoveredBlock5Block34Stack1) newline.
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 67.
        ].
        recoveredBlock5Block34Step = 67 ifTrue: [
            recoveredBlock5Block34Stack2 := '  "'.
            recoveredBlock5Block34PC := 69.
        ].
        recoveredBlock5Block34Step = 69 ifTrue: [
            (recoveredBlock5Block34Stack1) nextPutAll: (recoveredBlock5Block34Stack2).
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 72.
        ].
        recoveredBlock5Block34Step = 72 ifTrue: [
            recoveredBlock5Block34Stack2 := recoveredBlock5Block34Arg1.
            recoveredBlock5Block34PC := 73.
        ].
        recoveredBlock5Block34Step = 73 ifTrue: [
            recoveredBlock5Block34Stack2 := (recoveredBlock5Block34Stack2) asString.
            recoveredBlock5Block34PC := 75.
        ].
        recoveredBlock5Block34Step = 75 ifTrue: [
            recoveredBlock5Block34Stack3 := 'Default'.
            recoveredBlock5Block34PC := 77.
        ].
        recoveredBlock5Block34Step = 77 ifTrue: [
            recoveredBlock5Block34Stack2 := (recoveredBlock5Block34Stack2) equals: (recoveredBlock5Block34Stack3).
            recoveredBlock5Block34PC := 79.
        ].
        recoveredBlock5Block34Step = 79 ifTrue: [
            (recoveredBlock5Block34Stack2) ifTrue: [recoveredBlock5Block34PC := 82] ifFalse: [recoveredBlock5Block34PC := 88].
        ].
        recoveredBlock5Block34Step = 82 ifTrue: [
            recoveredBlock5Block34Stack2 := 'Default.Total'.
            recoveredBlock5Block34PC := 84.
        ].
        recoveredBlock5Block34Step = 84 ifTrue: [
            recoveredBlock5Block34PC := 91.
        ].
        recoveredBlock5Block34Step = 88 ifTrue: [
            recoveredBlock5Block34Stack2 := recoveredBlock5Block34Arg1.
            recoveredBlock5Block34PC := 89.
        ].
        recoveredBlock5Block34Step = 89 ifTrue: [
            recoveredBlock5Block34Stack2 := (recoveredBlock5Block34Stack2) asString.
            recoveredBlock5Block34PC := 91.
        ].
        recoveredBlock5Block34Step = 91 ifTrue: [
            (recoveredBlock5Block34Stack1) nextPutAll: (recoveredBlock5Block34Stack2).
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 94.
        ].
        recoveredBlock5Block34Step = 94 ifTrue: [
            recoveredBlock5Block34Stack2 := '": '.
            recoveredBlock5Block34PC := 96.
        ].
        recoveredBlock5Block34Step = 96 ifTrue: [
            (recoveredBlock5Block34Stack1) nextPutAll: (recoveredBlock5Block34Stack2).
            recoveredBlock5Block34Stack1 := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34PC := 99.
        ].
        recoveredBlock5Block34Step = 99 ifTrue: [
            recoveredBlock5Block34Stack2 := recoveredBlock5Block34Local1.
            recoveredBlock5Block34PC := 100.
        ].
        recoveredBlock5Block34Step = 100 ifTrue: [
            recoveredBlock5Block34Stack2 := (recoveredBlock5Block34Stack2) asString.
            recoveredBlock5Block34PC := 102.
        ].
        recoveredBlock5Block34Step = 102 ifTrue: [
            (recoveredBlock5Block34Stack1) nextPutAll: (recoveredBlock5Block34Stack2).
            recoveredBlock5Block34PC := 104.
        ].
        recoveredBlock5Block34Step = 104 ifTrue: [
            recoveredBlock5Block34Stack1 := ' bytes'.
            recoveredBlock5Block34PC := 106.
        ].
        recoveredBlock5Block34Step = 106 ifTrue: [
            recoveredBlock5Block34Stack0 := (recoveredBlock5Block34Stack0) nextPutAll: (recoveredBlock5Block34Stack1).
            recoveredBlock5Block34PC := 108.
        ].
        recoveredBlock5Block34Step = 108 ifTrue: [
            recoveredBlock5Block34Result := recoveredBlock5Block34Stack0.
            recoveredBlock5Block34Done := true.
        ].
    ].
    recoveredBlock5Block34Result
].
    (recoveredBlock5Value7) do: (recoveredBlock5Value8).
    recoveredBlock5Value9 := recoveredLocal2.
    recoveredBlock5Value10 := recoveredLocal1.
    recoveredBlock5Value11 := (recoveredBlock5Value10) releaseGetContents.
    (recoveredBlock5Value9) nextPutAll: (recoveredBlock5Value11).
    recoveredBlock5Value12 := (self) monitorStream.
    recoveredBlock5Value13 := recoveredLocal2.
    recoveredBlock5Value14 := (recoveredBlock5Value13) releaseGetContents.
    recoveredBlock5Value15 := (recoveredBlock5Value12) nextPutAll: (recoveredBlock5Value14).
    recoveredBlock5Value15
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2049eb38; bytecode file offset 0xd9b460"
!SGMonitorManager methodsFor: 'recovered'!
updateCurrentBuildEnvironment
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredValue2 := (recoveredValue1) asMonitorStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) newlinePutAll: ('Current Project: ').
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := (self) currentBuildCache.
    recoveredValue7 := (recoveredValue6) buildEnvironmentInfo.
    recoveredValue8 := (recoveredValue7) projectDescription.
    (recoveredValue5) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) newlinePutAll: ('Current Target: ').
    recoveredValue10 := recoveredValue3.
    recoveredValue11 := (self) currentBuildCache.
    recoveredValue12 := (recoveredValue11) platform.
    recoveredValue13 := (recoveredValue12) target.
    recoveredValue14 := (recoveredValue13) targetLabel.
    (recoveredValue10) declLabel: (recoveredValue14).
    recoveredValue15 := recoveredValue3.
    recoveredValue16 := (self) currentBuildCache.
    recoveredValue17 := (recoveredValue16) platform.
    recoveredValue18 := (recoveredValue17) target.
    recoveredValue19 := (recoveredValue18) targetType.
    (recoveredValue15) declIdentifier: (recoveredValue19).
    recoveredValue20 := recoveredValue3.
    (recoveredValue20) newlinePutAll: ('Current Code Generator: ').
    recoveredValue21 := recoveredValue3.
    recoveredValue22 := (self) currentBuildCache.
    recoveredValue23 := (recoveredValue22) generatorSettings.
    recoveredValue24 := (recoveredValue23) codeGenPathName.
    recoveredValue25 := (recoveredValue24) asQuotation.
    (recoveredValue21) nextPutAll: (recoveredValue25).
    recoveredValue26 := recoveredValue3.
    (recoveredValue26) newlinePutAll: ('Current Compiler: ').
    recoveredValue27 := recoveredValue3.
    recoveredValue28 := (self) currentBuildCache.
    recoveredValue29 := (recoveredValue28) platform.
    recoveredValue30 := (recoveredValue29) compilerTool.
    recoveredValue31 := (recoveredValue30) compilerToolLabel.
    (recoveredValue27) declLabel: (recoveredValue31).
    recoveredValue32 := recoveredValue3.
    recoveredValue33 := (self) currentBuildCache.
    recoveredValue34 := (recoveredValue33) platform.
    recoveredValue35 := (recoveredValue34) compilerTool.
    recoveredValue36 := (recoveredValue35) identifier.
    (recoveredValue32) declIdentifier: (recoveredValue36).
    recoveredValue37 := recoveredValue3.
    (recoveredValue37) newlinePutAll: ('Current OS: ').
    recoveredValue38 := recoveredValue3.
    recoveredValue39 := (self) currentBuildCache.
    recoveredValue40 := (recoveredValue39) platform.
    recoveredValue41 := (recoveredValue40) osTool.
    recoveredValue42 := (recoveredValue41) toolLabel.
    (recoveredValue38) declLabel: (recoveredValue42).
    recoveredValue43 := (self) currentBuildCache.
    recoveredValue44 := (recoveredValue43) platform.
    recoveredValue45 := (recoveredValue44) osTool.
    recoveredValue46 := (recoveredValue45) identifier.
    (recoveredValue3) declIdentifier: (recoveredValue46).
    recoveredValue47 := (self) monitorStream.
    recoveredValue48 := recoveredLocal1.
    recoveredValue49 := (recoveredValue48) releaseGetContents.
    (recoveredValue47) nextPutAll: (recoveredValue49).
    ^self
! !

"ASDBase.ic method 0x2058305c; bytecode file offset 0xe7f9a8"
!SGMonitorManager methodsFor: 'recovered'!
monitoringTiming
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBasicTempWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dummyKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block281131a0Arg1 | 
    | block281131a0Value0 block281131a0Value1 |
    block281131a0Value0 := block281131a0Arg1.
    block281131a0Value1 := (block281131a0Value0) apiCommand.
    block281131a0Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) memory.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:block281131c4Arg1 | 
    | block281131c4Value0 block281131c4Value1 |
    block281131c4Value0 := block281131c4Arg1.
    block281131c4Value1 := (block281131c4Value0) apiCommand.
    block281131c4Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := '--> Processing time'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 's'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ':'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [:block281131e8Arg1 :block281131e8Arg2 | 
    | block281131e8Value0 block281131e8Value1 block281131e8Value2 block281131e8Value3 block281131e8Value4 |
    block281131e8Value0 := block281131e8Arg1.
    block281131e8Value1 := (block281131e8Value0) index.
    block281131e8Value2 := block281131e8Arg2.
    block281131e8Value3 := (block281131e8Value2) index.
    block281131e8Value4 := (block281131e8Value1) < (block281131e8Value3).
    block281131e8Value4
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Stack0 recoveredBlock116Stack1 recoveredBlock116Stack2 recoveredBlock116Stack3 recoveredBlock116Stack4 recoveredBlock116PC recoveredBlock116Step recoveredBlock116Done recoveredBlock116Result |
    recoveredBlock116Stack0 := self.
    recoveredBlock116PC := 122.
    recoveredBlock116Done := false.
    [recoveredBlock116Done not] whileTrue: [
        recoveredBlock116Step := recoveredBlock116PC.
        recoveredBlock116Step = 122 ifTrue: [
            recoveredBlock116Stack1 := nil.
            recoveredBlock116PC := 123.
        ].
        recoveredBlock116Step = 123 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 124.
        ].
        recoveredBlock116Step = 124 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) title.
            recoveredBlock116PC := 126.
        ].
        recoveredBlock116Step = 126 ifTrue: [
            (recoveredBlock116Stack2 == nil) ifTrue: [recoveredBlock116PC := 152] ifFalse: [recoveredBlock116PC := 130].
        ].
        recoveredBlock116Step = 130 ifTrue: [
            recoveredBlock116PC := 131.
        ].
        recoveredBlock116Step = 131 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 132.
        ].
        recoveredBlock116Step = 132 ifTrue: [
            recoveredBlock116Stack2 := recoveredLocal2.
            recoveredBlock116PC := 135.
        ].
        recoveredBlock116Step = 135 ifTrue: [
            (recoveredBlock116Stack1) printDurationOn: (recoveredBlock116Stack2).
            recoveredBlock116PC := 137.
        ].
        recoveredBlock116Step = 137 ifTrue: [
            recoveredBlock116Stack1 := recoveredLocal2.
            recoveredBlock116PC := 140.
        ].
        recoveredBlock116Step = 140 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Stack1.
            recoveredBlock116PC := 141.
        ].
        recoveredBlock116Step = 141 ifTrue: [
            recoveredBlock116Stack3 := Character.
            recoveredBlock116PC := 143.
        ].
        recoveredBlock116Step = 143 ifTrue: [
            recoveredBlock116Stack3 := (recoveredBlock116Stack3) tab.
            recoveredBlock116PC := 145.
        ].
        recoveredBlock116Step = 145 ifTrue: [
            (recoveredBlock116Stack2) nextPut: (recoveredBlock116Stack3).
            recoveredBlock116PC := 147.
        ].
        recoveredBlock116Step = 147 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 148.
        ].
        recoveredBlock116Step = 148 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) title.
            recoveredBlock116PC := 150.
        ].
        recoveredBlock116Step = 150 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) nextPutAll: (recoveredBlock116Stack2).
            recoveredBlock116PC := 152.
        ].
        recoveredBlock116Step = 152 ifTrue: [
            recoveredBlock116Result := recoveredBlock116Stack1.
            recoveredBlock116Done := true.
        ].
    ].
    recoveredBlock116Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) title.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) printDurationOn: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) tab.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'Total for '.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) title.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) printTimeOn: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 261] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) observer.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := [:recoveredBlock233Arg1 | 
    | recoveredBlock233Value0 recoveredBlock233Value1 recoveredBlock233Value2 recoveredBlock233Value3 recoveredBlock233Value4 recoveredBlock233Value5 recoveredBlock233Value6 |
    recoveredBlock233Value0 := recoveredBlock233Arg1.
    recoveredBlock233Value1 := recoveredLocal4.
    recoveredBlock233Value2 := recoveredLocal3.
    recoveredBlock233Value3 := recoveredLocal1.
    recoveredBlock233Value4 := (recoveredBlock233Value3) project.
    recoveredBlock233Value5 := (self) operationAborted.
    recoveredBlock233Value6 := (recoveredBlock233Value0) reportBuildTiming: (recoveredBlock233Value1) detail: (recoveredBlock233Value2) project: (recoveredBlock233Value4) aborted: (recoveredBlock233Value5).
    recoveredBlock233Value6
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

