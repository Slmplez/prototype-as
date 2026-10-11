"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200014d0; bytecode file offset 0x8ffcfc"
!SGEventSimulator methodsFor: 'recovered'!
test
    ^self
! !

"ASDBase.ic method 0x2002a5f4; bytecode file offset 0x934580"
!SGEventSimulator methodsFor: 'recovered'!
currentSimTimeInTicks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := (recoveredValue0) currentSimTimeInTicks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200405ac; bytecode file offset 0x93d278"
!SGEventSimulator methodsFor: 'recovered'!
simEnvironment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simMainController.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d19c; bytecode file offset 0x959af0"
!SGEventSimulator methodsFor: 'recovered'!
measureUpdate
    | recoveredValue0 |
    recoveredValue0 := simMainController.
    (recoveredValue0) measureUpdate.
    ^self
! !

"ASDBase.ic method 0x20060cec; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
stepModeIsStepTimed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stepMode.
    recoveredValue1 := (recoveredValue0) = ('Step [s]').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060d1c; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
stepModeIsStep
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stepMode.
    recoveredValue1 := (recoveredValue0) = ('Steps').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060d3c; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
isSimPause
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simState.
    recoveredValue1 := (recoveredValue0) = ('pause').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060e9c; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
isSimRun
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simState.
    recoveredValue1 := (recoveredValue0) = ('run').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060eac; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
stepModeIsStepBreaked
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stepMode.
    recoveredValue1 := (recoveredValue0) = ('Break At').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060ecc; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
isSimStep
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simState.
    recoveredValue1 := (recoveredValue0) = ('step').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060fdc; bytecode file offset 0x95d978"
!SGEventSimulator methodsFor: 'recovered'!
isSimOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) simState.
    recoveredValue1 := (recoveredValue0) = ('off').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200658cc; bytecode file offset 0x963428"
!SGEventSimulator methodsFor: 'recovered'!
simMainController
    | recoveredValue0 |
    recoveredValue0 := simMainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067374; bytecode file offset 0x9646f8"
!SGEventSimulator methodsFor: 'recovered'!
simState
    | recoveredValue0 |
    recoveredValue0 := simState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200696a8; bytecode file offset 0x966bdc"
!SGEventSimulator methodsFor: 'recovered'!
allEvents
    | recoveredValue0 |
    recoveredValue0 := allEvents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd68; bytecode file offset 0x96873c"
!SGEventSimulator methodsFor: 'recovered'!
eventTracer
    | recoveredValue0 |
    recoveredValue0 := eventTracer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d5bc; bytecode file offset 0x96a390"
!SGEventSimulator methodsFor: 'recovered'!
stepsLeft
    | recoveredValue0 |
    recoveredValue0 := remSteps.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e51c; bytecode file offset 0x96af48"
!SGEventSimulator methodsFor: 'recovered'!
stepMode
    | recoveredValue0 |
    recoveredValue0 := stepMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009dd34; bytecode file offset 0x99a610"
!SGEventSimulator methodsFor: 'recovered'!
setStepModeStepBreaked
    (self) stepMode: ('Break At').
    ^'Break At'
! !

"ASDBase.ic method 0x2009dd44; bytecode file offset 0x99a610"
!SGEventSimulator methodsFor: 'recovered'!
setStepModeStep
    (self) stepMode: ('Steps').
    ^'Steps'
! !

"ASDBase.ic method 0x2009dd54; bytecode file offset 0x99a610"
!SGEventSimulator methodsFor: 'recovered'!
setStepModeStepTimed
    (self) stepMode: ('Step [s]').
    ^'Step [s]'
! !

"ASDBase.ic method 0x200bdffc; bytecode file offset 0x9bb178"
!SGEventSimulator methodsFor: 'recovered'!
simMainController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simMainController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea30; bytecode file offset 0x9bc0b4"
!SGEventSimulator methodsFor: 'recovered'!
setSimState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfccc; bytecode file offset 0x9bd228"
!SGEventSimulator methodsFor: 'recovered'!
actualSimTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    actualSimTime := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2678; bytecode file offset 0x9bf474"
!SGEventSimulator methodsFor: 'recovered'!
eventTracer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventTracer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c496c; bytecode file offset 0x9c16b0"
!SGEventSimulator methodsFor: 'recovered'!
stepMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stepMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5060; bytecode file offset 0x9c1afc"
!SGEventSimulator methodsFor: 'recovered'!
breakCondition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    breakCondition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200da208; bytecode file offset 0x9d6ac0"
!SGEventSimulator methodsFor: 'recovered'!
changeSteps: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            stepsToGo := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e1978; bytecode file offset 0x9de234"
!SGEventSimulator methodsFor: 'recovered'!
isSimRunning
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call2000964').
    recoveredValue1 := simProcess.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e2034; bytecode file offset 0x9de910"
!SGEventSimulator methodsFor: 'recovered'!
simRun
    | recoveredValue0 |
    (self) setSimState: ('run').
    recoveredValue0 := MainController.
    (recoveredValue0) deactivateIdleTimer.
    ^self
! !

"ASDBase.ic method 0x200e204c; bytecode file offset 0x9de910"
!SGEventSimulator methodsFor: 'recovered'!
simStep
    | recoveredValue0 |
    (self) setSimState: ('step').
    recoveredValue0 := MainController.
    (recoveredValue0) deactivateIdleTimer.
    ^self
! !

"ASDBase.ic method 0x2010635c; bytecode file offset 0xa02c10"
!SGEventSimulator methodsFor: 'recovered'!
stepsToGo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stepsToGo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := stepsToGo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010ad04; bytecode file offset 0xa07614"
!SGEventSimulator methodsFor: 'recovered'!
getBreakConfig
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakCondition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCondition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakCondition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBreakConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201159d8; bytecode file offset 0xa122a4"
!SGEventSimulator methodsFor: 'recovered'!
actualSimTime
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := actualSimTime.
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) startTime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := actualSimTime.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115ca8; bytecode file offset 0xa125a4"
!SGEventSimulator methodsFor: 'recovered'!
activeEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6da4Arg1 | 
    | block280c6da4Value0 block280c6da4Value1 |
    block280c6da4Value0 := block280c6da4Arg1.
    block280c6da4Value1 := (block280c6da4Value0) isEnabled.
    block280c6da4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011663c; bytecode file offset 0xa12f08"
!SGEventSimulator methodsFor: 'recovered'!
breakCondition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := breakCondition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGSimBreakCondition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := breakCondition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a014; bytecode file offset 0xa16930"
!SGEventSimulator methodsFor: 'recovered'!
hasSignalledEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeEvents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c85d4Arg1 | 
    | block280c85d4Value0 block280c85d4Value1 |
    block280c85d4Value0 := block280c85d4Arg1.
    block280c85d4Value1 := (block280c85d4Value0) isSignalledMode.
    block280c85d4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20121020; bytecode file offset 0xa1d8e0"
!SGEventSimulator methodsFor: 'recovered'!
updateStepsClientData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) updateSteps.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) startStepUpdater.
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

"ASDBase.ic method 0x20128e18; bytecode file offset 0xa256d4"
!SGEventSimulator methodsFor: 'recovered'!
measure
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := simMainController.
    recoveredValue1 := (self) currentSimTimeInTicks.
    recoveredValue2 := step.
    (recoveredValue0) measureAtTime: (recoveredValue1) step: (recoveredValue2).
    recoveredValue3 := step.
    recoveredValue4 := (recoveredValue3) + (1).
    step := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2015d814; bytecode file offset 0xa5a0d4"
!SGEventSimulator methodsFor: 'recovered'!
stopStepUpdater
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stepUpdater.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := stepUpdater.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) removeTimeout: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            stepUpdater := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015eab8; bytecode file offset 0xa5b380"
!SGEventSimulator methodsFor: 'recovered'!
simPause
    | recoveredValue0 |
    (self) setSimState: ('pause').
    step := 0.
    (self) measureUpdate.
    recoveredValue0 := MainController.
    (recoveredValue0) reactivateIdleTimer.
    ^self
! !

"ASDBase.ic method 0x20180f5c; bytecode file offset 0xa7d824"
!SGEventSimulator methodsFor: 'recovered'!
startStepUpdater
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) stopStepUpdater.
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) addTimeout: (100) receiver: (self) selector: ('updateStepsClientData:') clientData: (nil).
    stepUpdater := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201b1bb8; bytecode file offset 0xaae474"
!SGEventSimulator methodsFor: 'recovered'!
hasEnabledEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := eventQueue.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isEnabled.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 21].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201d68b0; bytecode file offset 0xad3178"
!SGEventSimulator methodsFor: 'recovered'!
initEventQueue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEventQueue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            eventQueue := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := eventQueue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280d5858Arg1 | 
    | block280d5858Stack0 block280d5858Stack1 block280d5858Stack2 block280d5858Stack3 block280d5858PC block280d5858Step block280d5858Done block280d5858Result |
    block280d5858Stack0 := self.
    block280d5858PC := 4.
    block280d5858Done := false.
    [block280d5858Done not] whileTrue: [
        block280d5858Step := block280d5858PC.
        block280d5858Step = 4 ifTrue: [
            block280d5858Stack1 := nil.
            block280d5858PC := 5.
        ].
        block280d5858Step = 5 ifTrue: [
            block280d5858Stack2 := block280d5858Arg1.
            block280d5858PC := 6.
        ].
        block280d5858Step = 6 ifTrue: [
            block280d5858Stack2 := (block280d5858Stack2) isEnabled.
            block280d5858PC := 7.
        ].
        block280d5858Step = 7 ifTrue: [
            (block280d5858Stack2) ifTrue: [block280d5858PC := 10] ifFalse: [block280d5858PC := 13].
        ].
        block280d5858Step = 10 ifTrue: [
            block280d5858PC := 11.
        ].
        block280d5858Step = 11 ifTrue: [
            block280d5858Stack1 := block280d5858Arg1.
            block280d5858PC := 12.
        ].
        block280d5858Step = 12 ifTrue: [
            block280d5858Stack1 := (block280d5858Stack1) resetEvent.
            block280d5858PC := 13.
        ].
        block280d5858Step = 13 ifTrue: [
            block280d5858Result := block280d5858Stack1.
            block280d5858Done := true.
        ].
    ].
    block280d5858Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201d8bc0; bytecode file offset 0xad5490"
!SGEventSimulator methodsFor: 'recovered'!
initializeEvents: recoveredArg1
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
            recoveredStack2 := 'EHI_83920'.
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
            recoveredStack2 := [:block280d5c48Arg1 | 
    | block280d5c48Value0 block280d5c48Value1 |
    block280d5c48Value0 := block280d5c48Arg1.
    block280d5c48Value1 := (block280d5c48Value0) canBeStimulated.
    block280d5c48Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) createAllEvents: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) resetSimulator.
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

"ASDBase.ic method 0x2020a980; bytecode file offset 0xb07250"
!SGEventSimulator methodsFor: 'recovered'!
resetSimulator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'off'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) setSimState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            step := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) startTime.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) actualSimTime: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initEventQueue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := eventTracer.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := eventTracer.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) tracerReset.
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

"ASDBase.ic method 0x20217d40; bytecode file offset 0xb14600"
!SGEventSimulator methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280dabe0Arg1 :block280dabe0Arg2 | 
    | block280dabe0Stack0 block280dabe0Stack1 block280dabe0Stack2 block280dabe0Stack3 block280dabe0PC block280dabe0Step block280dabe0Done block280dabe0Result |
    block280dabe0Stack0 := self.
    block280dabe0PC := 4.
    block280dabe0Done := false.
    [block280dabe0Done not] whileTrue: [
        block280dabe0Step := block280dabe0PC.
        block280dabe0Step = 4 ifTrue: [
            block280dabe0Stack1 := block280dabe0Arg1.
            block280dabe0PC := 5.
        ].
        block280dabe0Step = 5 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) prio.
            block280dabe0PC := 6.
        ].
        block280dabe0Step = 6 ifTrue: [
            block280dabe0Stack2 := block280dabe0Arg2.
            block280dabe0PC := 7.
        ].
        block280dabe0Step = 7 ifTrue: [
            block280dabe0Stack2 := (block280dabe0Stack2) prio.
            block280dabe0PC := 8.
        ].
        block280dabe0Step = 8 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) > (block280dabe0Stack2).
            block280dabe0PC := 9.
        ].
        block280dabe0Step = 9 ifTrue: [
            (block280dabe0Stack1) ifTrue: [block280dabe0PC := 12] ifFalse: [block280dabe0PC := 20].
        ].
        block280dabe0Step = 12 ifTrue: [
            block280dabe0Stack1 := block280dabe0Arg1.
            block280dabe0PC := 13.
        ].
        block280dabe0Step = 13 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) prio.
            block280dabe0PC := 14.
        ].
        block280dabe0Step = 14 ifTrue: [
            block280dabe0Stack2 := block280dabe0Arg2.
            block280dabe0PC := 15.
        ].
        block280dabe0Step = 15 ifTrue: [
            block280dabe0Stack2 := (block280dabe0Stack2) prio.
            block280dabe0PC := 16.
        ].
        block280dabe0Step = 16 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) > (block280dabe0Stack2).
            block280dabe0PC := 17.
        ].
        block280dabe0Step = 17 ifTrue: [
            block280dabe0PC := 25.
        ].
        block280dabe0Step = 20 ifTrue: [
            block280dabe0Stack1 := block280dabe0Arg1.
            block280dabe0PC := 21.
        ].
        block280dabe0Step = 21 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) eventName.
            block280dabe0PC := 22.
        ].
        block280dabe0Step = 22 ifTrue: [
            block280dabe0Stack2 := block280dabe0Arg2.
            block280dabe0PC := 23.
        ].
        block280dabe0Step = 23 ifTrue: [
            block280dabe0Stack2 := (block280dabe0Stack2) eventName.
            block280dabe0PC := 24.
        ].
        block280dabe0Step = 24 ifTrue: [
            block280dabe0Stack1 := (block280dabe0Stack1) < (block280dabe0Stack2).
            block280dabe0PC := 25.
        ].
        block280dabe0Step = 25 ifTrue: [
            block280dabe0Result := block280dabe0Stack1.
            block280dabe0Done := true.
        ].
    ].
    block280dabe0Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20219d38; bytecode file offset 0xb16604"
!SGEventSimulator methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) startTime.
    actualSimTime := recoveredValue1.
    simState := 'off'.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) defaultStepMode.
    stepMode := recoveredValue3.
    stepsToGo := 1.
    step := 0.
    ^self
! !

"ASDBase.ic method 0x2021f538; bytecode file offset 0xb1be34"
!SGEventSimulator methodsFor: 'recovered'!
enableDataGeneratorEvent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEvents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dbb34Arg1 | 
    | block280dbb34Value0 block280dbb34Value1 block280dbb34Value2 block280dbb34Value3 block280dbb34Value4 |
    block280dbb34Value0 := block280dbb34Arg1.
    block280dbb34Value1 := (block280dbb34Value0) eventName.
    block280dbb34Value2 := SGDataGenerator.
    block280dbb34Value3 := (block280dbb34Value2) callLabel.
    block280dbb34Value4 := (block280dbb34Value1) = (block280dbb34Value3).
    block280dbb34Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) enable.
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

"ASDBase.ic method 0x2021f560; bytecode file offset 0xb1be34"
!SGEventSimulator methodsFor: 'recovered'!
disableDataGeneratorEvent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEvents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dbb58Arg1 | 
    | block280dbb58Value0 block280dbb58Value1 block280dbb58Value2 block280dbb58Value3 block280dbb58Value4 |
    block280dbb58Value0 := block280dbb58Arg1.
    block280dbb58Value1 := (block280dbb58Value0) eventName.
    block280dbb58Value2 := SGDataGenerator.
    block280dbb58Value3 := (block280dbb58Value2) callLabel.
    block280dbb58Value4 := (block280dbb58Value1) = (block280dbb58Value3).
    block280dbb58Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) disable.
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

"ASDBase.ic method 0x20248148; bytecode file offset 0xb44a1c"
!SGEventSimulator methodsFor: 'recovered'!
simEnd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'off'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) setSimState: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call2000964'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := simProcess.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := simProcess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) resume.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            step := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) measureUpdate.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) reactivateIdleTimer.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265248; bytecode file offset 0xb61b14"
!SGEventSimulator methodsFor: 'recovered'!
getValidGroupCount
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) simEnvironment.
    recoveredValue1 := (recoveredValue0) dataGenerator.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) signal.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
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
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) hasData.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 26] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getValidGroupCount.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    recoveredValue5 := (recoveredValue3) ifNotNil: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20269bdc; bytecode file offset 0xb664a8"
!SGEventSimulator methodsFor: 'recovered'!
checkSynchroEvents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e00f4Arg1 | 
    | block280e00f4Stack0 block280e00f4Stack1 block280e00f4Stack2 block280e00f4Stack3 block280e00f4Stack4 block280e00f4PC block280e00f4Step block280e00f4Done block280e00f4Result |
    block280e00f4Stack0 := self.
    block280e00f4PC := 4.
    block280e00f4Done := false.
    [block280e00f4Done not] whileTrue: [
        block280e00f4Step := block280e00f4PC.
        block280e00f4Step = 4 ifTrue: [
            block280e00f4Stack1 := nil.
            block280e00f4PC := 5.
        ].
        block280e00f4Step = 5 ifTrue: [
            block280e00f4Stack2 := block280e00f4Arg1.
            block280e00f4PC := 6.
        ].
        block280e00f4Step = 6 ifTrue: [
            block280e00f4Stack2 := (block280e00f4Stack2) delay.
            block280e00f4PC := 7.
        ].
        block280e00f4Step = 7 ifTrue: [
            block280e00f4Stack3 := nil.
            block280e00f4PC := 8.
        ].
        block280e00f4Step = 8 ifTrue: [
            block280e00f4Stack2 := (block280e00f4Stack2) = (block280e00f4Stack3).
            block280e00f4PC := 9.
        ].
        block280e00f4Step = 9 ifTrue: [
            (block280e00f4Stack2) ifTrue: [block280e00f4PC := 12] ifFalse: [block280e00f4PC := 28].
        ].
        block280e00f4Step = 12 ifTrue: [
            block280e00f4Stack2 := block280e00f4Arg1.
            block280e00f4PC := 13.
        ].
        block280e00f4Step = 13 ifTrue: [
            block280e00f4Stack2 := (block280e00f4Stack2) isSegmentMode.
            block280e00f4PC := 14.
        ].
        block280e00f4Step = 14 ifTrue: [
            (block280e00f4Stack2) ifTrue: [block280e00f4PC := 18] ifFalse: [block280e00f4PC := 28].
        ].
        block280e00f4Step = 18 ifTrue: [
            block280e00f4Stack2 := block280e00f4Arg1.
            block280e00f4PC := 19.
        ].
        block280e00f4Step = 19 ifTrue: [
            block280e00f4Stack2 := (block280e00f4Stack2) isEnabled.
            block280e00f4PC := 20.
        ].
        block280e00f4Step = 20 ifTrue: [
            (block280e00f4Stack2) ifTrue: [block280e00f4PC := 24] ifFalse: [block280e00f4PC := 28].
        ].
        block280e00f4Step = 24 ifTrue: [
            block280e00f4PC := 25.
        ].
        block280e00f4Step = 25 ifTrue: [
            block280e00f4Stack1 := block280e00f4Arg1.
            block280e00f4PC := 26.
        ].
        block280e00f4Step = 26 ifTrue: [
            block280e00f4Stack1 := (block280e00f4Stack1) reScheduleSegment.
            block280e00f4PC := 28.
        ].
        block280e00f4Step = 28 ifTrue: [
            block280e00f4Result := block280e00f4Stack1.
            block280e00f4Done := true.
        ].
    ].
    block280e00f4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027cdb0; bytecode file offset 0xb79674"
!SGEventSimulator methodsFor: 'recovered'!
updateEventQueue
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEventQueue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := eventQueue.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 38]] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028f224; bytecode file offset 0xb8bae8"
!SGEventSimulator methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    (recoveredBlock12Value0) printOn: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) cr.
    recoveredBlock12Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            super printOn: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad300; bytecode file offset 0xba9bd0"
!SGEventSimulator methodsFor: 'recovered'!
isDataGeneratorEventEnabled
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEvents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e47d4Arg1 | 
    | block280e47d4Value0 block280e47d4Value1 block280e47d4Value2 block280e47d4Value3 block280e47d4Value4 |
    block280e47d4Value0 := block280e47d4Arg1.
    block280e47d4Value1 := (block280e47d4Value0) eventName.
    block280e47d4Value2 := SGDataGenerator.
    block280e47d4Value3 := (block280e47d4Value2) callLabel.
    block280e47d4Value4 := (block280e47d4Value1) = (block280e47d4Value3).
    block280e47d4Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e155c; bytecode file offset 0xbdde34"
!SGEventSimulator methodsFor: 'recovered'!
simulateStep
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simMainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) enableSteps: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) stepModeIsStep.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) simulateSteps.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) stepModeIsStepTimed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) simulateStepsTimed.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stepModeIsStepBreaked.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) simulateStepsBreaked.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) simMainController.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) enableSteps: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) updateSimControl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20323dec; bytecode file offset 0xc206d4"
!SGEventSimulator methodsFor: 'recovered'!
simulateStepsBreaked
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakCondition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkCondition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulate.
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
            recoveredStack0 := Processor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) yield.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) measureUpdate.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakCondition.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluate.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'No valid Break Condition!!'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) simPause.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033613c; bytecode file offset 0xc32a20"
!SGEventSimulator methodsFor: 'recovered'!
simStartInit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetSimulator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEnabledEvents.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
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
            (recoveredStack0) simPause.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'call_77428'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionSimulationProcessSuspendCyle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := (self) simulationProcess: (recoveredBlock31Value0).
    recoveredBlock31Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := MeasureProcessPrio.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            simProcess := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := simProcess.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) simProcessName.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
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

"ASDBase.ic method 0x20359340; bytecode file offset 0xc55c1c"
!SGEventSimulator methodsFor: 'recovered'!
simulateSteps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stepsToGo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            remSteps := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) startStepUpdater.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) yield.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) simulate.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := remSteps.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            remSteps := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := remSteps.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) simPause.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimPause.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            step := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) measureUpdate.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) stopStepUpdater.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := simMainController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := stepsToGo.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) updateSteps: (recoveredStack1).
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

"ASDBase.ic method 0x2036d24c; bytecode file offset 0xc69b24"
!SGEventSimulator methodsFor: 'recovered'!
simulateStepsTimed
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTime.
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
            recoveredStack0 := stepsToGo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1000000.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulate.
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
            recoveredStack0 := Processor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) yield.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimStep.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) measureUpdate.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextTime.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1000000.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) simPause.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cdaf8; bytecode file offset 0xcca3c0"
!SGEventSimulator methodsFor: 'recovered'!
nextTime
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isEnabled.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) scheduleTime.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack3 := self.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) actualSimTime.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) >= (recoveredBlock10Stack3).
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 30] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal2.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            (recoveredBlock10Stack1 ~~ nil) ifTrue: [recoveredBlock10PC := 46] ifFalse: [recoveredBlock10PC := 38].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack2.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) scheduleTime.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal2.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) scheduleTime.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 58] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack2.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) simEnd.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) scheduleTime.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040a1b4; bytecode file offset 0xd06ab4"
!SGEventSimulator methodsFor: 'recovered'!
createBreakConditionFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
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
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) simMainController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) reversedASDSimLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForLabel: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Element named: >'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := '< is not available to create break condition for simulator'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) addWarningText: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SGSimBreakCondition.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) dataElement: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) operator: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) level: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) breakCondition: (recoveredStack1).
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

"ASDBase.ic method 0x2041e204; bytecode file offset 0xd1aaf4"
!SGEventSimulator methodsFor: 'recovered'!
createAllEventsForSubNodes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) model.
    recoveredBlock7Local2 := recoveredBlock7Value1.
    recoveredBlock7Value2 := recoveredBlock7Local2.
    recoveredBlock7Value3 := (recoveredBlock7Value2) experimentMethods.
    recoveredBlock7Local1 := recoveredBlock7Value3.
    recoveredBlock7Value4 := recoveredBlock7Local1.
    recoveredBlock7Value5 := [:recoveredBlock7Block31Arg1 | 
    | recoveredBlock7Block31Value0 recoveredBlock7Block31Value1 recoveredBlock7Block31Value2 recoveredBlock7Block31Value3 recoveredBlock7Block31Value4 recoveredBlock7Block31Value5 recoveredBlock7Block31Value6 recoveredBlock7Block31Value7 recoveredBlock7Block31Value8 recoveredBlock7Block31Value9 recoveredBlock7Block31Value10 recoveredBlock7Block31Value11 recoveredBlock7Block31Value12 recoveredBlock7Block31Value13 recoveredBlock7Block31Value14 recoveredBlock7Block31Value15 recoveredBlock7Block31Value16 recoveredBlock7Block31Value17 recoveredBlock7Block31Value18 |
    recoveredBlock7Block31Value0 := SGSimEventQueueEntry.
    recoveredBlock7Block31Value1 := (recoveredBlock7Block31Value0) createForSimulator: (self).
    recoveredLocal1 := recoveredBlock7Block31Value1.
    recoveredBlock7Block31Value2 := recoveredLocal1.
    recoveredBlock7Block31Value3 := recoveredBlock7Block31Value2.
    recoveredBlock7Block31Value4 := recoveredBlock7Block31Arg1.
    recoveredBlock7Block31Value5 := (recoveredBlock7Block31Value4) procedureName.
    (recoveredBlock7Block31Value3) eventName: (recoveredBlock7Block31Value5).
    recoveredBlock7Block31Value6 := recoveredBlock7Block31Value2.
    recoveredBlock7Block31Value7 := recoveredBlock7Block31Arg1.
    (recoveredBlock7Block31Value6) dmMethod: (recoveredBlock7Block31Value7).
    recoveredBlock7Block31Value8 := recoveredBlock7Block31Value2.
    recoveredBlock7Block31Value9 := recoveredBlock7Local2.
    (recoveredBlock7Block31Value8) receiver: (recoveredBlock7Block31Value9).
    recoveredBlock7Block31Value10 := recoveredBlock7Block31Value2.
    recoveredBlock7Block31Value11 := recoveredBlock7Block31Arg1.
    recoveredBlock7Block31Value12 := (recoveredBlock7Block31Value11) procedureName.
    (recoveredBlock7Block31Value10) selector: (recoveredBlock7Block31Value12).
    (recoveredBlock7Block31Value2) arguments: (#()).
    recoveredBlock7Block31Value13 := allEvents.
    recoveredBlock7Block31Value14 := recoveredLocal1.
    (recoveredBlock7Block31Value13) add: (recoveredBlock7Block31Value14).
    recoveredBlock7Block31Value15 := recoveredBlock7Arg1.
    recoveredBlock7Block31Value16 := (recoveredBlock7Block31Value15) event.
    recoveredBlock7Block31Value17 := recoveredLocal1.
    recoveredBlock7Block31Value18 := (recoveredBlock7Block31Value16) add: (recoveredBlock7Block31Value17).
    recoveredBlock7Block31Value18
].
    recoveredBlock7Value6 := (recoveredBlock7Value4) do: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    (recoveredValue0) do: (recoveredValue1).
    (self) initEventQueue.
    ^self
! !

"ASDBase.ic method 0x20459718; bytecode file offset 0xd56028"
!SGEventSimulator methodsFor: 'recovered'!
simulationProcess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMilliseconds.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) yield.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'call_77428'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMilliseconds.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMilliseconds.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) voYieldToNextLowerPriority.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimRun.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) simulate.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimPause.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'Call_70186'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := Delay.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) forMilliseconds: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) wait.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimStep.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) simulateStep.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimOff.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) updateSimControl.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'Call2000964'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := simProcess.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := simProcess.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            simProcess := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20486360; bytecode file offset 0xd82c58"
!SGEventSimulator methodsFor: 'recovered'!
createEventQueue
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := allEvents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28102c10Arg1 | 
    | block28102c10Value0 block28102c10Value1 |
    block28102c10Value0 := block28102c10Arg1.
    block28102c10Value1 := (block28102c10Value0) prio.
    block28102c10Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block28102c34Arg1 :block28102c34Arg2 | 
    | block28102c34Value0 block28102c34Value1 block28102c34Value2 |
    block28102c34Value0 := block28102c34Arg1.
    block28102c34Value1 := block28102c34Arg2.
    block28102c34Value2 := (block28102c34Value0) > (block28102c34Value1).
    block28102c34Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg2.
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack3 := allEvents.
            recoveredBlock44PC := 58.
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44Stack4 := [:recoveredBlock44Block58Arg1 | 
    | recoveredBlock44Block58Value0 recoveredBlock44Block58Value1 recoveredBlock44Block58Value2 recoveredBlock44Block58Value3 |
    recoveredBlock44Block58Value0 := recoveredBlock44Block58Arg1.
    recoveredBlock44Block58Value1 := (recoveredBlock44Block58Value0) prio.
    recoveredBlock44Block58Value2 := recoveredBlock44Arg1.
    recoveredBlock44Block58Value3 := (recoveredBlock44Block58Value1) = (recoveredBlock44Block58Value2).
    recoveredBlock44Block58Value3
].
            recoveredBlock44PC := 71.
        ].
        recoveredBlock44Step = 71 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) select: (recoveredBlock44Stack4).
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack4 := [:block28102c58Arg1 :block28102c58Arg2 | 
    | block28102c58Value0 block28102c58Value1 block28102c58Value2 block28102c58Value3 block28102c58Value4 |
    block28102c58Value0 := block28102c58Arg1.
    block28102c58Value1 := (block28102c58Value0) eventName.
    block28102c58Value2 := block28102c58Arg2.
    block28102c58Value3 := (block28102c58Value2) eventName.
    block28102c58Value4 := (block28102c58Value1) < (block28102c58Value3).
    block28102c58Value4
].
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44PC := 86.
        ].
        recoveredBlock44Step = 86 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) asSortedCollection: (recoveredBlock44Stack4).
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) at: (recoveredBlock44Stack2) put: (recoveredBlock44Stack3).
            recoveredBlock44PC := 90.
        ].
        recoveredBlock44Step = 90 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredLocal2.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (recoveredBlock105Value0) , (recoveredBlock105Value1).
    recoveredBlock105Value3 := recoveredBlock105Value2.
    recoveredLocal2 := recoveredBlock105Value3.
    recoveredBlock105Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20494484; bytecode file offset 0xd90d80"
!SGEventSimulator methodsFor: 'recovered'!
setConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) preConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'Call_54145'.
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Call_54145'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'EventSimChannels'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock33Value0 |
    recoveredBlock33Value0 := recoveredArg1.
    (self) setChannelConfig: (recoveredBlock33Value0).
    ^nil
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (self) setChannelConfig: (recoveredBlock47Value0).
    recoveredBlock47Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) updateEventQueue.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'StepMode'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 |
    recoveredBlock71Value0 := recoveredBlock71Arg1.
    recoveredBlock71Value1 := (self) stepMode: (recoveredBlock71Value0).
    recoveredBlock71Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'Steps'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 |
    recoveredBlock92Value0 := recoveredBlock92Arg1.
    recoveredBlock92Value1 := (self) changeSteps: (recoveredBlock92Value0).
    recoveredBlock92Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'BreakCondition'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := (self) createBreakConditionFor: (recoveredBlock112Value0).
    recoveredBlock112Value1
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) simMainController.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) updateStepMode.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204beb0c; bytecode file offset 0xdbb42c"
!SGEventSimulator methodsFor: 'recovered'!
createAllEvents: recoveredArg1
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
            recoveredStack2 := [:block281064e0Arg1 :block281064e0Arg2 | 
    | block281064e0Value0 block281064e0Value1 block281064e0Value2 block281064e0Value3 block281064e0Value4 |
    block281064e0Value0 := block281064e0Arg1.
    block281064e0Value1 := (block281064e0Value0) eventName.
    block281064e0Value2 := block281064e0Arg2.
    block281064e0Value3 := (block281064e0Value2) eventName.
    block281064e0Value4 := (block281064e0Value1) < (block281064e0Value3).
    block281064e0Value4
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
            allEvents := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGSimEventQueueEntry.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForSimulator: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := SGDataGenerator.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) callLabel.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) eventName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) dmMethod: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) simEnvironment.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataGenerator.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) receiver: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := SGDataGenerator.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) callSymbol.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) highPrio.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) prio: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := allEvents.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := SGSimEventQueueEntry.
            recoveredBlock75PC := 84.
        ].
        recoveredBlock75Step = 84 ifTrue: [
            recoveredBlock75Stack2 := self.
            recoveredBlock75PC := 85.
        ].
        recoveredBlock75Step = 85 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) createForSimulator: (recoveredBlock75Stack2).
            recoveredBlock75PC := 87.
        ].
        recoveredBlock75Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 90.
        ].
        recoveredBlock75Step = 90 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal1.
            recoveredBlock75PC := 93.
        ].
        recoveredBlock75Step = 93 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) procedureName.
            recoveredBlock75PC := 97.
        ].
        recoveredBlock75Step = 97 ifTrue: [
            (recoveredBlock75Stack2) eventName: (recoveredBlock75Stack3).
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 101.
        ].
        recoveredBlock75Step = 101 ifTrue: [
            (recoveredBlock75Stack2) dmMethod: (recoveredBlock75Stack3).
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 104.
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack3 := self.
            recoveredBlock75PC := 105.
        ].
        recoveredBlock75Step = 105 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) simEnvironment.
            recoveredBlock75PC := 107.
        ].
        recoveredBlock75Step = 107 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) getModel.
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            (recoveredBlock75Stack2) receiver: (recoveredBlock75Stack3).
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 112.
        ].
        recoveredBlock75Step = 112 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Arg1.
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            recoveredBlock75Stack3 := (recoveredBlock75Stack3) procedureName.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            (recoveredBlock75Stack2) selector: (recoveredBlock75Stack3).
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 118.
        ].
        recoveredBlock75Step = 118 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) allArgumentValues.
            recoveredBlock75PC := 120.
        ].
        recoveredBlock75Step = 120 ifTrue: [
            (recoveredBlock75Stack1) arguments: (recoveredBlock75Stack2).
            recoveredBlock75PC := 122.
        ].
        recoveredBlock75Step = 122 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 123 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) hasReturnValue.
            recoveredBlock75PC := 125.
        ].
        recoveredBlock75Step = 125 ifTrue: [
            (recoveredBlock75Stack1) ifTrue: [recoveredBlock75PC := 128] ifFalse: [recoveredBlock75PC := 136].
        ].
        recoveredBlock75Step = 128 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal1.
            recoveredBlock75PC := 131.
        ].
        recoveredBlock75Step = 131 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 132.
        ].
        recoveredBlock75Step = 132 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) returnValue.
            recoveredBlock75PC := 134.
        ].
        recoveredBlock75Step = 134 ifTrue: [
            (recoveredBlock75Stack1) return: (recoveredBlock75Stack2).
            recoveredBlock75PC := 136.
        ].
        recoveredBlock75Step = 136 ifTrue: [
            recoveredBlock75Stack1 := allEvents.
            recoveredBlock75PC := 138.
        ].
        recoveredBlock75Step = 138 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal1.
            recoveredBlock75PC := 141.
        ].
        recoveredBlock75Step = 141 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) add: (recoveredBlock75Stack2).
            recoveredBlock75PC := 143.
        ].
        recoveredBlock75Step = 143 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := allEvents.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204da2f8; bytecode file offset 0xdd6bf4"
!SGEventSimulator methodsFor: 'recovered'!
updateEvent: recoveredArg1 withOld: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 180.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 90.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 180.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) parameter: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) delay: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) prio: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForLabel: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'Event Generator: Variable >> '.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := ' << for segment mode not declared!!
Setting mode to timesynchron.'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'timeSynchron'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) drehzahl: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20510110; bytecode file offset 0xe0ca20"
!SGEventSimulator methodsFor: 'recovered'!
simulate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := eventQueue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isEnabled.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) scheduleTime.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack3 := self.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) actualSimTime.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) >= (recoveredBlock10Stack3).
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 30] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal2.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            (recoveredBlock10Stack1 ~~ nil) ifTrue: [recoveredBlock10PC := 46] ifFalse: [recoveredBlock10PC := 38].
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack2.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) scheduleTime.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal2.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) scheduleTime.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 58] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack2.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) simEnd.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) scheduleTime.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) simEnvironment.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSimulationTime.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) simEnd.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'The Maximum Offline Simulation Time is %1 seconds!!
Your Experiment must be stopped. 
Please check the DT Parameters at the Event Generator!!'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) simEnvironment.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxSimulationTime.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := simMainController.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) updateSimControl.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) actualSimTime: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) performEvent.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) simEnd.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'simulationStopped'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimOff.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) receiver.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGenerator.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) checkSynchroEvents.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 169.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) measure.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := eventTracer.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := eventTracer.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualSimTime.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) trace: (recoveredStack1) atTime: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20530b14; bytecode file offset 0xe2d42c"
!SGEventSimulator methodsFor: 'recovered'!
setChannelConfig: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_54145'.
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
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) someElement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) isArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'enabled'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Call_54198'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'Call_57532'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) allEvents.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredArg1.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) eventName.
            recoveredBlock56PC := 68.
        ].
        recoveredBlock56Step = 68 ifTrue: [
            recoveredBlock56Stack3 := [].
            recoveredBlock56PC := 70.
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) at: (recoveredBlock56Stack2) ifAbsent: (recoveredBlock56Stack3).
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal2.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            (recoveredBlock56Stack1 ~~ nil) ifTrue: [recoveredBlock56PC := 120] ifFalse: [recoveredBlock56PC := 82].
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 83.
        ].
        recoveredBlock56Step = 83 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal1.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 116] ifFalse: [recoveredBlock56PC := 90].
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            recoveredBlock56Stack1 := 'Kk'.
            recoveredBlock56PC := 93.
        ].
        recoveredBlock56Step = 93 ifTrue: [
            recoveredBlock56Stack2 := 'Call_54145'.
            recoveredBlock56PC := 95.
        ].
        recoveredBlock56Step = 95 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) == (recoveredBlock56Stack2).
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 98.
        ].
        recoveredBlock56Step = 98 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 99.
        ].
        recoveredBlock56Step = 99 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) dmMethod.
            recoveredBlock56PC := 101.
        ].
        recoveredBlock56Step = 101 ifTrue: [
            (recoveredBlock56Stack2 == nil) ifTrue: [recoveredBlock56PC := 112] ifFalse: [recoveredBlock56PC := 104].
        ].
        recoveredBlock56Step = 104 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) dmMethod.
            recoveredBlock56PC := 107.
        ].
        recoveredBlock56Step = 107 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isCT.
            recoveredBlock56PC := 109.
        ].
        recoveredBlock56Step = 109 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 116] ifFalse: [recoveredBlock56PC := 112].
        ].
        recoveredBlock56Step = 112 ifTrue: [
            recoveredBlock56PC := 113.
        ].
        recoveredBlock56Step = 113 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 114.
        ].
        recoveredBlock56Step = 114 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) disable.
            recoveredBlock56PC := 116.
        ].
        recoveredBlock56Step = 116 ifTrue: [
            recoveredBlock56PC := 198.
        ].
        recoveredBlock56Step = 120 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal2.
            recoveredBlock56PC := 123.
        ].
        recoveredBlock56Step = 123 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) class.
            recoveredBlock56PC := 125.
        ].
        recoveredBlock56Step = 125 ifTrue: [
            recoveredBlock56Stack2 := Dictionary.
            recoveredBlock56PC := 127.
        ].
        recoveredBlock56Step = 127 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) = (recoveredBlock56Stack2).
            recoveredBlock56PC := 128.
        ].
        recoveredBlock56Step = 128 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 132] ifFalse: [recoveredBlock56PC := 176].
        ].
        recoveredBlock56Step = 132 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal2.
            recoveredBlock56PC := 135.
        ].
        recoveredBlock56Step = 135 ifTrue: [
            recoveredBlock56Stack2 := 'enabled'.
            recoveredBlock56PC := 137.
        ].
        recoveredBlock56Step = 137 ifTrue: [
            recoveredBlock56Stack3 := [
    true
].
            recoveredBlock56PC := 139.
        ].
        recoveredBlock56Step = 139 ifTrue: [
            recoveredBlock56PC := 144.
        ].
        recoveredBlock56Step = 144 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) at: (recoveredBlock56Stack2) ifAbsent: (recoveredBlock56Stack3).
            recoveredBlock56PC := 146.
        ].
        recoveredBlock56Step = 146 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 150] ifFalse: [recoveredBlock56PC := 170].
        ].
        recoveredBlock56Step = 150 ifTrue: [
            recoveredBlock56Stack1 := 'Kk'.
            recoveredBlock56PC := 152.
        ].
        recoveredBlock56Step = 152 ifTrue: [
            recoveredBlock56Stack2 := 'Call_54145'.
            recoveredBlock56PC := 154.
        ].
        recoveredBlock56Step = 154 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) == (recoveredBlock56Stack2).
            recoveredBlock56PC := 155.
        ].
        recoveredBlock56Step = 155 ifTrue: [
            recoveredBlock56PC := 156.
        ].
        recoveredBlock56Step = 156 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 157.
        ].
        recoveredBlock56Step = 157 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 158.
        ].
        recoveredBlock56Step = 158 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal2.
            recoveredBlock56PC := 161.
        ].
        recoveredBlock56Step = 161 ifTrue: [
            (recoveredBlock56Stack1) updateEvent: (recoveredBlock56Stack2) with: (recoveredBlock56Stack3).
            recoveredBlock56PC := 163.
        ].
        recoveredBlock56Step = 163 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 164.
        ].
        recoveredBlock56Step = 164 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) enable.
            recoveredBlock56PC := 166.
        ].
        recoveredBlock56Step = 166 ifTrue: [
            recoveredBlock56PC := 173.
        ].
        recoveredBlock56Step = 170 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 171.
        ].
        recoveredBlock56Step = 171 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) disable.
            recoveredBlock56PC := 173.
        ].
        recoveredBlock56Step = 173 ifTrue: [
            recoveredBlock56PC := 198.
        ].
        recoveredBlock56Step = 176 ifTrue: [
            recoveredBlock56Stack1 := 'Kk'.
            recoveredBlock56PC := 178.
        ].
        recoveredBlock56Step = 178 ifTrue: [
            recoveredBlock56Stack2 := 'Call_57532'.
            recoveredBlock56PC := 180.
        ].
        recoveredBlock56Step = 180 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) == (recoveredBlock56Stack2).
            recoveredBlock56PC := 181.
        ].
        recoveredBlock56Step = 181 ifTrue: [
            recoveredBlock56PC := 182.
        ].
        recoveredBlock56Step = 182 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 183.
        ].
        recoveredBlock56Step = 183 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 184.
        ].
        recoveredBlock56Step = 184 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal2.
            recoveredBlock56PC := 187.
        ].
        recoveredBlock56Step = 187 ifTrue: [
            (recoveredBlock56Stack1) updateEvent: (recoveredBlock56Stack2) withOld: (recoveredBlock56Stack3).
            recoveredBlock56PC := 189.
        ].
        recoveredBlock56Step = 189 ifTrue: [
            recoveredBlock56Stack1 := 'hw'.
            recoveredBlock56PC := 191.
        ].
        recoveredBlock56Step = 191 ifTrue: [
            recoveredBlock56Stack2 := 'call_84776'.
            recoveredBlock56PC := 193.
        ].
        recoveredBlock56Step = 193 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) == (recoveredBlock56Stack2).
            recoveredBlock56PC := 194.
        ].
        recoveredBlock56Step = 194 ifTrue: [
            recoveredBlock56PC := 195.
        ].
        recoveredBlock56Step = 195 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 196.
        ].
        recoveredBlock56Step = 196 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) enable.
            recoveredBlock56PC := 198.
        ].
        recoveredBlock56Step = 198 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20534bc8; bytecode file offset 0xe31500"
!SGEventSimulator methodsFor: 'recovered'!
preConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 203].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAvailableTasks.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTopClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTopClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogicForCurrentTarget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) osConfigSettings.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) coopLevelsMaximum: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) allEvents.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack1 := [:recoveredBlock49Block58Arg1 | 
    | recoveredBlock49Block58Value0 recoveredBlock49Block58Value1 recoveredBlock49Block58Value2 recoveredBlock49Block58Value3 recoveredBlock49Block58Value4 |
    recoveredBlock49Block58Value0 := recoveredBlock49Block58Arg1.
    recoveredBlock49Block58Value1 := (recoveredBlock49Block58Value0) eventName.
    recoveredBlock49Block58Value2 := recoveredBlock49Arg1.
    recoveredBlock49Block58Value3 := (recoveredBlock49Block58Value2) name.
    recoveredBlock49Block58Value4 := (recoveredBlock49Block58Value1) = (recoveredBlock49Block58Value3).
    recoveredBlock49Block58Value4
].
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack2 := [].
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) detect: (recoveredBlock49Stack1) ifNone: (recoveredBlock49Stack2).
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredLocal3 := recoveredBlock49Stack0.
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            (recoveredBlock49Stack0 == nil) ifTrue: [recoveredBlock49PC := 128] ifFalse: [recoveredBlock49PC := 88].
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack0 := recoveredBlock49Arg1.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) triggerObject.
            recoveredBlock49PC := 93.
        ].
        recoveredBlock49Step = 93 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) isInitTrigger.
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            (recoveredBlock49Stack0) ifTrue: [recoveredBlock49PC := 98] ifFalse: [recoveredBlock49PC := 128].
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Stack0.
            recoveredBlock49PC := 102.
        ].
        recoveredBlock49Step = 102 ifTrue: [
            recoveredBlock49Stack2 := 'singleShot'.
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            (recoveredBlock49Stack1) mode: (recoveredBlock49Stack2).
            recoveredBlock49Stack1 := recoveredBlock49Stack0.
            recoveredBlock49PC := 107.
        ].
        recoveredBlock49Step = 107 ifTrue: [
            recoveredBlock49Stack2 := nil.
            recoveredBlock49PC := 108.
        ].
        recoveredBlock49Step = 108 ifTrue: [
            (recoveredBlock49Stack1) delay: (recoveredBlock49Stack2).
            recoveredBlock49PC := 110.
        ].
        recoveredBlock49Step = 110 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 113.
        ].
        recoveredBlock49Step = 113 ifTrue: [
            (recoveredBlock49Stack0) prio: (recoveredBlock49Stack1).
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            (recoveredBlock49Stack0) enable.
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal2.
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal3.
            recoveredBlock49PC := 126.
        ].
        recoveredBlock49Step = 126 ifTrue: [
            (recoveredBlock49Stack0) add: (recoveredBlock49Stack1).
            recoveredBlock49PC := 128.
        ].
        recoveredBlock49Step = 128 ifTrue: [
            recoveredBlock49Stack0 := nil.
            recoveredBlock49PC := 129.
        ].
        recoveredBlock49Step = 129 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal3.
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            (recoveredBlock49Stack1 == nil) ifTrue: [recoveredBlock49PC := 190] ifFalse: [recoveredBlock49PC := 136].
        ].
        recoveredBlock49Step = 136 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 139.
        ].
        recoveredBlock49Step = 139 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) triggerObject.
            recoveredBlock49PC := 141.
        ].
        recoveredBlock49Step = 141 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isTimerTrigger.
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 146] ifFalse: [recoveredBlock49PC := 190].
        ].
        recoveredBlock49Step = 146 ifTrue: [
            recoveredBlock49PC := 147.
        ].
        recoveredBlock49Step = 147 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 150.
        ].
        recoveredBlock49Step = 150 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 153.
        ].
        recoveredBlock49Step = 153 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) triggerObject.
            recoveredBlock49PC := 155.
        ].
        recoveredBlock49Step = 155 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) period.
            recoveredBlock49PC := 157.
        ].
        recoveredBlock49Step = 157 ifTrue: [
            (recoveredBlock49Stack0) delay: (recoveredBlock49Stack1).
            recoveredBlock49PC := 159.
        ].
        recoveredBlock49Step = 159 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 162.
        ].
        recoveredBlock49Step = 162 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 165.
        ].
        recoveredBlock49Step = 165 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) triggerObject.
            recoveredBlock49PC := 167.
        ].
        recoveredBlock49Step = 167 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) priority.
            recoveredBlock49PC := 169.
        ].
        recoveredBlock49Step = 169 ifTrue: [
            (recoveredBlock49Stack0) prio: (recoveredBlock49Stack1).
            recoveredBlock49PC := 171.
        ].
        recoveredBlock49Step = 171 ifTrue: [
            recoveredBlock49Stack0 := 'Kk'.
            recoveredBlock49PC := 173.
        ].
        recoveredBlock49Step = 173 ifTrue: [
            recoveredBlock49Stack1 := 'Call_54145'.
            recoveredBlock49PC := 175.
        ].
        recoveredBlock49Step = 175 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) == (recoveredBlock49Stack1).
            recoveredBlock49PC := 176.
        ].
        recoveredBlock49Step = 176 ifTrue: [
            recoveredBlock49PC := 177.
        ].
        recoveredBlock49Step = 177 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal3.
            recoveredBlock49PC := 180.
        ].
        recoveredBlock49Step = 180 ifTrue: [
            (recoveredBlock49Stack0) enable.
            recoveredBlock49PC := 182.
        ].
        recoveredBlock49Step = 182 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal2.
            recoveredBlock49PC := 185.
        ].
        recoveredBlock49Step = 185 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal3.
            recoveredBlock49PC := 188.
        ].
        recoveredBlock49Step = 188 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) add: (recoveredBlock49Stack1).
            recoveredBlock49PC := 190.
        ].
        recoveredBlock49Step = 190 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack0.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) updateEventQueue.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) simEnvironment.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) updateSolversWithEvents: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20542b48; bytecode file offset 0xe3f47c"
!SGEventSimulator methodsFor: 'recovered'!
getConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := recoveredLocal3.
    (recoveredValue4) at: ('EventSimChannels') put: (recoveredValue5).
    recoveredValue6 := eventQueue.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := 'Kk'.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := 'Call_54145'.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) == (recoveredBlock28Stack2).
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := Dictionary.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack2 := 'enabled'.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) isEnabled.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := 'Kk'.
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack2 := 'Call_54145'.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) == (recoveredBlock28Stack2).
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack2 := 'Mode'.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 68.
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) mode.
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 72.
        ].
        recoveredBlock28Step = 72 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            recoveredBlock28Stack2 := 'Delay'.
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 78.
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) delay.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack2 := 'Prio'.
            recoveredBlock28PC := 87.
        ].
        recoveredBlock28Step = 87 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 88.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) prio.
            recoveredBlock28PC := 90.
        ].
        recoveredBlock28Step = 90 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 92.
        ].
        recoveredBlock28Step = 92 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack2 := 'Phase'.
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 98.
        ].
        recoveredBlock28Step = 98 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) phase.
            recoveredBlock28PC := 100.
        ].
        recoveredBlock28Step = 100 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 102.
        ].
        recoveredBlock28Step = 102 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack2 := 'DegreesCS'.
            recoveredBlock28PC := 107.
        ].
        recoveredBlock28Step = 107 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) parameter.
            recoveredBlock28PC := 110.
        ].
        recoveredBlock28Step = 110 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 112.
        ].
        recoveredBlock28Step = 112 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 115.
        ].
        recoveredBlock28Step = 115 ifTrue: [
            recoveredBlock28Stack2 := 'r.p.m.'.
            recoveredBlock28PC := 117.
        ].
        recoveredBlock28Step = 117 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 118.
        ].
        recoveredBlock28Step = 118 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) drehzahl.
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            (recoveredBlock28Stack3 == nil) ifTrue: [recoveredBlock28PC := 132] ifFalse: [recoveredBlock28PC := 124].
        ].
        recoveredBlock28Step = 124 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 125.
        ].
        recoveredBlock28Step = 125 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) drehzahl.
            recoveredBlock28PC := 127.
        ].
        recoveredBlock28Step = 127 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) key.
            recoveredBlock28PC := 129.
        ].
        recoveredBlock28Step = 129 ifTrue: [
            recoveredBlock28PC := 133.
        ].
        recoveredBlock28Step = 132 ifTrue: [
            recoveredBlock28Stack3 := nil.
            recoveredBlock28PC := 133.
        ].
        recoveredBlock28Step = 133 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 135.
        ].
        recoveredBlock28Step = 135 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 138.
        ].
        recoveredBlock28Step = 138 ifTrue: [
            recoveredBlock28Stack2 := 'Dependent'.
            recoveredBlock28PC := 140.
        ].
        recoveredBlock28Step = 140 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 141.
        ].
        recoveredBlock28Step = 141 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) dependentEvent.
            recoveredBlock28PC := 143.
        ].
        recoveredBlock28Step = 143 ifTrue: [
            (recoveredBlock28Stack3 == nil) ifTrue: [recoveredBlock28PC := 154] ifFalse: [recoveredBlock28PC := 146].
        ].
        recoveredBlock28Step = 146 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 147.
        ].
        recoveredBlock28Step = 147 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) dependentEvent.
            recoveredBlock28PC := 149.
        ].
        recoveredBlock28Step = 149 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) eventName.
            recoveredBlock28PC := 151.
        ].
        recoveredBlock28Step = 151 ifTrue: [
            recoveredBlock28PC := 155.
        ].
        recoveredBlock28Step = 154 ifTrue: [
            recoveredBlock28Stack3 := nil.
            recoveredBlock28PC := 155.
        ].
        recoveredBlock28Step = 155 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 157.
        ].
        recoveredBlock28Step = 157 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 160.
        ].
        recoveredBlock28Step = 160 ifTrue: [
            recoveredBlock28Stack2 := 'TimeRaster'.
            recoveredBlock28PC := 162.
        ].
        recoveredBlock28Step = 162 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 163.
        ].
        recoveredBlock28Step = 163 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) timeRaster.
            recoveredBlock28PC := 165.
        ].
        recoveredBlock28Step = 165 ifTrue: [
            (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 167.
        ].
        recoveredBlock28Step = 167 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal3.
            recoveredBlock28PC := 170.
        ].
        recoveredBlock28Step = 170 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 171.
        ].
        recoveredBlock28Step = 171 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) eventName.
            recoveredBlock28PC := 173.
        ].
        recoveredBlock28Step = 173 ifTrue: [
            recoveredBlock28Stack3 := recoveredLocal2.
            recoveredBlock28PC := 176.
        ].
        recoveredBlock28Step = 176 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2) put: (recoveredBlock28Stack3).
            recoveredBlock28PC := 178.
        ].
        recoveredBlock28Step = 178 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := stepsToGo.
    (recoveredValue8) at: ('Steps') put: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (self) stepMode.
    (recoveredValue10) at: ('StepMode') put: (recoveredValue11).
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := (self) getBreakConfig.
    (recoveredValue12) at: ('BreakCondition') put: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    ^recoveredValue14
! !

"ASDBase.ic method 0x205a8550; bytecode file offset 0xea4eb0"
!SGEventSimulator methodsFor: 'recovered'!
updateEvent: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Mode'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'Delay'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) delay: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'Prio'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) prio: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'Phase'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) phase: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'DegreesCS'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53Stack5 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := 720.
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg2.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack3 := 'Cyl'.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack4 := [
    4
].
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) at: (recoveredBlock53Stack3) ifAbsent: (recoveredBlock53Stack4).
            recoveredBlock53PC := 79.
        ].
        recoveredBlock53Step = 79 ifTrue: [
            recoveredBlock53Stack3 := 1.
            recoveredBlock53PC := 81.
        ].
        recoveredBlock53Step = 81 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) max: (recoveredBlock53Stack3).
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) / (recoveredBlock53Stack2).
            recoveredBlock53PC := 85.
        ].
        recoveredBlock53Step = 85 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) parameter: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'r.p.m.'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSimInstanceForLabel: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'Event Generator: Variable >> '.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := ' << for segment mode not declared!!
Setting mode to timesynchron.'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'timeSynchron'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) drehzahl: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) drehzahl: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'Dependent'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) allEvents.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 recoveredBlock199Value2 recoveredBlock199Value3 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := (recoveredBlock199Value0) eventName.
    recoveredBlock199Value2 := recoveredLocal3.
    recoveredBlock199Value3 := (recoveredBlock199Value1) = (recoveredBlock199Value2).
    recoveredBlock199Value3
].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 'Event Generator: Event >> '.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := ' << for dependent event does not exist!!'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) dependentEvent: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) dependentEvent: (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValidGroupCount.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := [:recoveredBlock264Arg1 | 
    | recoveredBlock264Value0 recoveredBlock264Value1 recoveredBlock264Value2 |
    recoveredBlock264Value0 := recoveredArg2.
    recoveredBlock264Value1 := [:recoveredBlock264Block275Arg1 | 
    | recoveredBlock264Block275Value0 recoveredBlock264Block275Value1 recoveredBlock264Block275Value2 recoveredBlock264Block275Value3 recoveredBlock264Block275Value4 |
    recoveredBlock264Block275Value0 := recoveredArg1.
    recoveredBlock264Block275Value1 := recoveredBlock264Block275Arg1.
    recoveredBlock264Block275Value2 := recoveredBlock264Arg1.
    recoveredBlock264Block275Value3 := (recoveredBlock264Block275Value1) min: (recoveredBlock264Block275Value2).
    recoveredBlock264Block275Value4 := (recoveredBlock264Block275Value0) timeRaster: (recoveredBlock264Block275Value3).
    recoveredBlock264Block275Value4
].
    recoveredBlock264Value2 := (recoveredBlock264Value0) at: ('TimeRaster') ifPresent: (recoveredBlock264Value1).
    recoveredBlock264Value2
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

