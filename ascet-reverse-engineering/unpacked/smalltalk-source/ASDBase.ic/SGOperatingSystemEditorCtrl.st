"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a4f4; bytecode file offset 0x934580"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
defaultMinimumPeriodCheckValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentTarget.
    recoveredValue1 := (recoveredValue0) minTaskCycleTime.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c5d4; bytecode file offset 0x934580"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
isTickDuration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) enableTickDuration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f354; bytecode file offset 0x934580"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
isEnableMonitoring
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) enableMonitoring.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035024; bytecode file offset 0x934580"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
currentTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035e74; bytecode file offset 0x934580"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
inactiveOpMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) inactiveOpMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004aa10; bytecode file offset 0x9472d4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
setNotModifiable
    notModifiable := true.
    ^self
! !

"ASDBase.ic method 0x20051948; bytecode file offset 0x94f0e0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
availableOtherTargetVariantKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (recoveredValue1) availableOtherTargetVariantKeys.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051984; bytecode file offset 0x94f0e0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
opModes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) operatingModes.
    recoveredValue2 := (recoveredValue1) copy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052208; bytecode file offset 0x94f0e0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
availableOtherOSLogicKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := (recoveredValue1) availableOtherOSLogicKeys.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062384; bytecode file offset 0x95f8b0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
ctTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (self) project.
    recoveredValue2 := (recoveredValue0) ctTasksForProject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200624c4; bytecode file offset 0x95f8b0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
events
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (self) currentTarget.
    recoveredValue2 := (recoveredValue0) eventsForTarget: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062ba4; bytecode file offset 0x95f8b0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
tasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (self) project.
    recoveredValue2 := (recoveredValue0) tasksForProject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062eb0; bytecode file offset 0x95f8b0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
sdTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (self) project.
    recoveredValue2 := (recoveredValue0) sdTasksForProject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200673ac; bytecode file offset 0x9646f8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
showUnusedOnly
    | recoveredValue0 |
    recoveredValue0 := showUnusedOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068f04; bytecode file offset 0x965b90"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
osLogic
    | recoveredValue0 |
    recoveredValue0 := osLogic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069868; bytecode file offset 0x966bdc"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5c4; bytecode file offset 0x967a18"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedClassesAndProcesses
    | recoveredValue0 |
    recoveredValue0 := selectedClassesAndProcesses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bda8; bytecode file offset 0x96873c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedOpModes
    | recoveredValue0 |
    recoveredValue0 := selectedOpModes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086350; bytecode file offset 0x982e18"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
osAvailableForLogicKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) osAvailableForLogicKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086378; bytecode file offset 0x982e18"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
copyToCurrentTargetFromTargetType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) copyToCurrentTargetFromTargetType: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20086530; bytecode file offset 0x982e18"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
copyFromCurrentPlatformToOSLogicKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) specification.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) copyFromCurrentPlatformToOSLogicKey: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a6b8; bytecode file offset 0x997194"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
renameOpMode: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) renameOpMode: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200beb10; bytecode file offset 0x9bc0b4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
showUnusedOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showUnusedOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfe6c; bytecode file offset 0x9bd228"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
osLogic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osLogic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a54; bytecode file offset 0x9beac8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedClassesAndProcesses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedClassesAndProcesses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2988; bytecode file offset 0x9bf474"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedOpModes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedOpModes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2bec; bytecode file offset 0x9bfde0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedTasksAndSequenceCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedTasksAndSequenceCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c848c; bytecode file offset 0x9c4d48"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deassignProcessIndex: recoveredArg1 fromTask: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteProcessIndex: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200d4090; bytecode file offset 0x9d0950"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
timeBaseTicks
    | recoveredValue0 |
    recoveredValue0 := (self) osLogic.
    (recoveredValue0) enableTickDuration: (false).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200d474c; bytecode file offset 0x9d100c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
timeBaseSeconds
    | recoveredValue0 |
    recoveredValue0 := (self) osLogic.
    (recoveredValue0) enableTickDuration: (true).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200e5364; bytecode file offset 0x9e1cc0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deadlineCheckPossibleTarget
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsDeadlineCheck.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8d84; bytecode file offset 0x9f5648"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
toggleEnableMonitoring
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (self) isEnableMonitoring.
    recoveredValue2 := (recoveredValue1) not.
    (recoveredValue0) enableMonitoring: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x201072b8; bytecode file offset 0xa03bc4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskStartAlarmPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c63f0Arg1 | 
    | block280c63f0Value0 block280c63f0Value1 block280c63f0Value2 |
    block280c63f0Value0 := block280c63f0Arg1.
    block280c63f0Value1 := (block280c63f0Value0) triggerObject.
    block280c63f0Value2 := (block280c63f0Value1) supportsStartAlarm.
    block280c63f0Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfPossibleForOne: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201072d0; bytecode file offset 0xa03bc4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskMinimumPeriodCheckPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c6414Arg1 | 
    | block280c6414Value0 block280c6414Value1 block280c6414Value2 |
    block280c6414Value0 := block280c6414Arg1.
    block280c6414Value1 := (block280c6414Value0) triggerObject.
    block280c6414Value2 := (block280c6414Value1) supportsMinimumPeriodCheck.
    block280c6414Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfPossibleForOne: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201072e8; bytecode file offset 0xa03bc4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskAutostartPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c6438Arg1 | 
    | block280c6438Value0 block280c6438Value1 block280c6438Value2 |
    block280c6438Value0 := block280c6438Arg1.
    block280c6438Value1 := (block280c6438Value0) triggerObject.
    block280c6438Value2 := (block280c6438Value1) supportsAutostart.
    block280c6438Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfPossibleForOne: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201108e0; bytecode file offset 0xa0d1ac"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
shiftUpIndex: recoveredArg1 fromTask: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) shiftUpIndex: (recoveredStack2).
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
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x201108f0; bytecode file offset 0xa0d1ac"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
shiftDownIndex: recoveredArg1 fromTask: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) shiftDownIndex: (recoveredStack2).
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
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x201128b4; bytecode file offset 0xa0f170"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
renameTaskPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTask.
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
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) isCTTask.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20115cd0; bytecode file offset 0xa125a4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedProcesses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedClassesAndProcesses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6decArg1 | 
    | block280c6decValue0 block280c6decValue1 |
    block280c6decValue0 := block280c6decArg1.
    block280c6decValue1 := (block280c6decValue0) isProcess.
    block280c6decValue1
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

"ASDBase.ic method 0x20116000; bytecode file offset 0xa128d4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedSequenceCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedTasksAndSequenceCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6ee8Arg1 | 
    | block280c6ee8Value0 block280c6ee8Value1 |
    block280c6ee8Value0 := block280c6ee8Arg1.
    block280c6ee8Value1 := (block280c6ee8Value0) isProcess.
    block280c6ee8Value1
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

"ASDBase.ic method 0x20117d50; bytecode file offset 0xa1460c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
itemIsModifiable
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
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := notModifiable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201299f0; bytecode file offset 0xa262c4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedClassesAndProcesses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c966cArg1 | 
    | block280c966cValue0 block280c966cValue1 block280c966cValue2 |
    block280c966cValue0 := block280c966cArg1.
    block280c966cValue1 := (block280c966cValue0) isProcess.
    block280c966cValue2 := (block280c966cValue1) not.
    block280c966cValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129ee4; bytecode file offset 0xa267a4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedTasksAndSequenceCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c96fcArg1 | 
    | block280c96fcValue0 block280c96fcValue1 block280c96fcValue2 |
    block280c96fcValue0 := block280c96fcArg1.
    block280c96fcValue1 := (block280c96fcValue0) isProcess.
    block280c96fcValue2 := (block280c96fcValue1) not.
    block280c96fcValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cbe0; bytecode file offset 0xa2951c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
sortedProcessVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) processVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9e94Arg1 :block280c9e94Arg2 | 
    | block280c9e94Value0 block280c9e94Value1 block280c9e94Value2 block280c9e94Value3 block280c9e94Value4 |
    block280c9e94Value0 := block280c9e94Arg1.
    block280c9e94Value1 := (block280c9e94Value0) label.
    block280c9e94Value2 := block280c9e94Arg2.
    block280c9e94Value3 := (block280c9e94Value2) label.
    block280c9e94Value4 := (block280c9e94Value1) < (block280c9e94Value3).
    block280c9e94Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20130264; bytecode file offset 0xa2cb24"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
checkDBContext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    ^false
].
    (recoveredValue1) getObjectIfUndefined: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x201512f4; bytecode file offset 0xa4dbc8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedOpMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
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

"ASDBase.ic method 0x20151308; bytecode file offset 0xa4dbc8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedTask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
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

"ASDBase.ic method 0x20163398; bytecode file offset 0xa5fc58"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
osAvailableForCurrentPlatform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osLogic.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := osLogic.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getTasks.
    recoveredBlock6Value2 := (recoveredBlock6Value1) notEmpty.
    ^recoveredBlock6Value2
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20168a80; bytecode file offset 0xa6533c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
initForProject: recoveredArg1 osLogic: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    osLogic := recoveredValue1.
    (self) showUnusedOnly: (false).
    notModifiable := false.
    (self) resetSelections.
    ^self
! !

"ASDBase.ic method 0x2016d198; bytecode file offset 0xa69a58"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
assignOpmodes: recoveredArg1 toTask: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignOpmodes: (recoveredStack1) toTask: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            (recoveredStack0) modified.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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

"ASDBase.ic method 0x201736c0; bytecode file offset 0xa6ff88"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
addOpMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) addOperatingModeNamed: ('osmode').
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 |
    (self) modified.
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    ^recoveredBlock8Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x2017ebfc; bytecode file offset 0xa7b4c4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
resetSelections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    (self) selectedTasksAndSequenceCalls: (recoveredValue1).
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    (self) selectedClassesAndProcesses: (recoveredValue3).
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new.
    (self) selectedOpModes: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20182368; bytecode file offset 0xa7ec30"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
hooksPossibleTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsNoneHooks.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsDtOnlyHooks.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsMonitoringHooks.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a1144; bytecode file offset 0xa9da44"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskDeadlineCheckPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280d27f8Arg1 | 
    | block280d27f8Value0 block280d27f8Value1 block280d27f8Value2 |
    block280d27f8Value0 := block280d27f8Arg1.
    block280d27f8Value1 := (block280d27f8Value0) triggerObject.
    block280d27f8Value2 := (block280d27f8Value1) supportsDeadlineCheck.
    block280d27f8Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkIfPossibleForOne: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) deadlineCheckPossibleTarget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1160; bytecode file offset 0xa9da44"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskSchedulingPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280d281cArg1 | 
    | block280d281cValue0 block280d281cValue1 block280d281cValue2 |
    block280d281cValue0 := block280d281cArg1.
    block280d281cValue1 := (block280d281cValue0) triggerObject.
    block280d281cValue2 := (block280d281cValue1) supportsScheduling.
    block280d281cValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkIfPossibleForOne: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) schedulingPossibleTarget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a117c; bytecode file offset 0xa9da44"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskHooksPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280d2840Arg1 | 
    | block280d2840Value0 block280d2840Value1 block280d2840Value2 |
    block280d2840Value0 := block280d2840Arg1.
    block280d2840Value1 := (block280d2840Value0) triggerObject.
    block280d2840Value2 := (block280d2840Value1) supportsHooks.
    block280d2840Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkIfPossibleForOne: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) hooksPossibleTarget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c9ba8; bytecode file offset 0xac647c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
modified
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) osLogic.
    (recoveredValue0) modified.
    recoveredValue1 := (self) project.
    (recoveredValue1) updateComponentSpecificationExistentFlag.
    recoveredValue2 := (self) project.
    (recoveredValue2) modifiedPersistentWithoutTimestamp.
    recoveredValue3 := ('Rnz') == ('EHI_81459').
    recoveredValue4 := (self) project.
    (recoveredValue4) scmModified.
    ^self
! !

"ASDBase.ic method 0x201cce68; bytecode file offset 0xac9738"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
checkValidANSICIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ''''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := ''' is not a valid Ansi C Identifier or is a reserved name !!'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d848c; bytecode file offset 0xad4d4c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskSortIdsPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tasks.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) id.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 23] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201ef390; bytecode file offset 0xaebc54"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedTasksOrSequenceCalls
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
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
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210430; bytecode file offset 0xb0cd04"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
setTriggerObject: recoveredArg1 forTask: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) triggerObject: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EtasChangeTaskAttributeCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTypeChangedForTask: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x20211944; bytecode file offset 0xb0e214"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
toggleStartAlarm
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280da934Arg1 | 
    | block280da934Value0 block280da934Value1 block280da934Value2 |
    block280da934Value0 := block280da934Arg1.
    block280da934Value1 := (block280da934Value0) triggerObject.
    block280da934Value2 := (block280da934Value1) toggleStartAlarm.
    block280da934Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x20222c60; bytecode file offset 0xb1f544"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedOpModeAsStartMode
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpMode.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) startOperatingMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) startMode: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) startMode: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x20222c7c; bytecode file offset 0xb1f544"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
selectedOpModeAsCTMode
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpMode.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctOperatingMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ctMode: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ctMode: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x2022bda0; bytecode file offset 0xb28670"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
opModesForSelectedTasks
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) selectedTasks.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) operatingModes.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20230520; bytecode file offset 0xb2cde4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
validSelectedSequenceCall
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := selectedTasksAndSequenceCalls.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := selectedTasksAndSequenceCalls.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProcess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := selectedTasksAndSequenceCalls.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20232d24; bytecode file offset 0xb2f618"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeMinimumPeriodValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280dd364Arg1 | 
    | block280dd364Value0 block280dd364Value1 |
    block280dd364Value0 := block280dd364Arg1.
    block280dd364Value1 := (block280dd364Value0) supportsMinimumPeriodCheck.
    block280dd364Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280dd388Arg1 | 
    | block280dd388Value0 block280dd388Value1 |
    block280dd388Value0 := block280dd388Arg1.
    block280dd388Value1 := (block280dd388Value0) minimumPeriodCheckValue.
    block280dd388Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [:block280dd3acArg1 :block280dd3acArg2 | 
    | block280dd3acValue0 block280dd3acValue1 block280dd3acValue2 |
    block280dd3acValue0 := block280dd3acArg1.
    block280dd3acValue1 := block280dd3acArg2.
    block280dd3acValue2 := (block280dd3acValue0) minimumPeriodCheckValue: (block280dd3acValue1).
    block280dd3acValue2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232d48; bytecode file offset 0xb2f618"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeDeadlineValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280dd3d0Arg1 | 
    | block280dd3d0Value0 block280dd3d0Value1 |
    block280dd3d0Value0 := block280dd3d0Arg1.
    block280dd3d0Value1 := (block280dd3d0Value0) supportsDeadlineCheck.
    block280dd3d0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:block280dd3f4Arg1 | 
    | block280dd3f4Value0 block280dd3f4Value1 |
    block280dd3f4Value0 := block280dd3f4Arg1.
    block280dd3f4Value1 := (block280dd3f4Value0) deadlineCheckValue.
    block280dd3f4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [:block280dd418Arg1 :block280dd418Arg2 | 
    | block280dd418Value0 block280dd418Value1 block280dd418Value2 |
    block280dd418Value0 := block280dd418Arg1.
    block280dd418Value1 := block280dd418Arg2.
    block280dd418Value2 := (block280dd418Value0) deadlineCheckValue: (block280dd418Value1).
    block280dd418Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e06c; bytecode file offset 0xb3a93c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeTickDuration: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) osLogic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) tickDuration.
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
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
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
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) tickDuration: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024441c; bytecode file offset 0xb40ce4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
checkIfNotPossibleForAll: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) selectedTask.
    recoveredValue0 := (self) selectedTasks.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) value: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) ~= (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20253fc0; bytecode file offset 0xb50894"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
schedulingPossibleTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsNonPreemptiveScheduling.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsPreemptiveScheduling.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsCooperativeScheduling.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsCooperativeRTAScheduling.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsFullRTAScheduling.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTarget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsNoneRTAScheduling.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025ba1c; bytecode file offset 0xb582e0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
checkIfPossibleForOne: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) selectedTask.
    recoveredValue0 := (self) selectedTasks.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) value: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    recoveredValue3 := [
    ^false
].
    (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x20270534; bytecode file offset 0xb6cdfc"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deleteTaskPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280e0628Arg1 | 
    | block280e0628Value0 block280e0628Value1 block280e0628Value2 |
    block280e0628Value0 := block280e0628Arg1.
    block280e0628Value1 := (block280e0628Value0) isCTTask.
    block280e0628Value2 := (block280e0628Value1) not.
    block280e0628Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 38.
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

"ASDBase.ic method 0x20271b54; bytecode file offset 0xb6e420"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
toggleAttribute: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) triggerObject.
    recoveredBlock19Value3 := (recoveredBlock19Value0) value: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287310; bytecode file offset 0xb83be4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
tasksForSelectedOpModes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) selectedOpModes.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := (self) osLogic.
    recoveredBlock11Value2 := recoveredBlock11Arg1.
    recoveredBlock11Value3 := (self) project.
    recoveredBlock11Value4 := (recoveredBlock11Value1) tasksForOpMode: (recoveredBlock11Value2) project: (recoveredBlock11Value3).
    recoveredBlock11Value5 := (recoveredBlock11Value0) , (recoveredBlock11Value4).
    recoveredBlock11Value6 := recoveredBlock11Value5.
    recoveredLocal1 := recoveredBlock11Value6.
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2028762c; bytecode file offset 0xb83efc"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
processVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) processInstVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := [:block280e1b64Arg1 | 
    | block280e1b64Value0 |
    block280e1b64Value0 := block280e1b64Arg1.
    block280e1b64Value0
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) sgClassIfUndefined: (recoveredBlock6Stack3).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isRBDBUndefinedObject.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isProcessClass.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a60cc; bytecode file offset 0xba299c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
processesForTask: recoveredArg1 processInstVars: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) project.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) processReferencesForProject: (recoveredValue3) processInstVars: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) duplicate.
    recoveredBlock20Value3 := (recoveredBlock20Value0) copyWith: (recoveredBlock20Value2).
    recoveredBlock20Value4 := recoveredBlock20Value3.
    recoveredLocal1 := recoveredBlock20Value4.
    recoveredBlock20Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202c6588; bytecode file offset 0xbc2e88"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changePriority: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e559cArg1 | 
    true
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) priority.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) priority.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [:block280e55c0Arg1 :block280e55c0Arg2 | 
    | block280e55c0Value0 block280e55c0Value1 block280e55c0Value2 |
    block280e55c0Value0 := block280e55c0Arg1.
    block280e55c0Value1 := block280e55c0Arg2.
    block280e55c0Value2 := (block280e55c0Value0) priority: (block280e55c0Value1).
    block280e55c0Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c65a4; bytecode file offset 0xbc2e88"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeSizeActivates: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e55e4Arg1 | 
    true
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) maxActivate.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) maxActivate.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [:block280e5608Arg1 :block280e5608Arg2 | 
    | block280e5608Value0 block280e5608Value1 block280e5608Value2 |
    block280e5608Value0 := block280e5608Arg1.
    block280e5608Value1 := block280e5608Arg2.
    block280e5608Value2 := (block280e5608Value0) maxActivate: (block280e5608Value1).
    block280e5608Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c65c0; bytecode file offset 0xbc2e88"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeDelay: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e562cArg1 | 
    true
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) delay.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 32] ifFalse: [recoveredBlock14PC := 26].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) delay.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [:block280e5650Arg1 :block280e5650Arg2 | 
    | block280e5650Value0 block280e5650Value1 block280e5650Value2 |
    block280e5650Value0 := block280e5650Arg1.
    block280e5650Value1 := block280e5650Arg2.
    block280e5650Value2 := (block280e5650Value0) delay: (block280e5650Value1).
    block280e5650Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c7934; bytecode file offset 0xbc41fc"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
assignProcesses: recoveredArg1 toTask: recoveredArg2 afterIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) ~= (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := 1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack4 := 2.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addProcess: (recoveredBlock7Stack2) instVarAlias: (recoveredBlock7Stack3) afterIndex: (recoveredBlock7Stack4).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x202ebf78; bytecode file offset 0xbe8848"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deadlineCheckValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e7c48Arg1 | 
    | block280e7c48Value0 block280e7c48Value1 |
    block280e7c48Value0 := block280e7c48Arg1.
    block280e7c48Value1 := (block280e7c48Value0) notNil.
    block280e7c48Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) isDeadlineCheck.
    recoveredBlock15Value2 := recoveredArg1.
    recoveredBlock15Value3 := (recoveredBlock15Value1) xor: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [:block280e7c6cArg1 :block280e7c6cArg2 | 
    | block280e7c6cStack0 block280e7c6cStack1 block280e7c6cStack2 block280e7c6cPC block280e7c6cStep block280e7c6cDone block280e7c6cResult |
    block280e7c6cStack0 := self.
    block280e7c6cPC := 4.
    block280e7c6cDone := false.
    [block280e7c6cDone not] whileTrue: [
        block280e7c6cStep := block280e7c6cPC.
        block280e7c6cStep = 4 ifTrue: [
            block280e7c6cStack1 := block280e7c6cArg2.
            block280e7c6cPC := 5.
        ].
        block280e7c6cStep = 5 ifTrue: [
            (block280e7c6cStack1) ifTrue: [block280e7c6cPC := 8] ifFalse: [block280e7c6cPC := 14].
        ].
        block280e7c6cStep = 8 ifTrue: [
            block280e7c6cStack1 := block280e7c6cArg1.
            block280e7c6cPC := 9.
        ].
        block280e7c6cStep = 9 ifTrue: [
            block280e7c6cStack1 := (block280e7c6cStack1) setDeadlineCheck.
            block280e7c6cPC := 11.
        ].
        block280e7c6cStep = 11 ifTrue: [
            block280e7c6cPC := 17.
        ].
        block280e7c6cStep = 14 ifTrue: [
            block280e7c6cStack1 := block280e7c6cArg1.
            block280e7c6cPC := 15.
        ].
        block280e7c6cStep = 15 ifTrue: [
            block280e7c6cStack1 := (block280e7c6cStack1) clearDeadlineCheck.
            block280e7c6cPC := 17.
        ].
        block280e7c6cStep = 17 ifTrue: [
            block280e7c6cResult := block280e7c6cStack1.
            block280e7c6cDone := true.
        ].
    ].
    block280e7c6cResult
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeValueAttribute: (recoveredStack1) supportBlock: (recoveredStack2) getValueBlock: (recoveredStack3) setValueBlock: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20305608; bytecode file offset 0xc01f2c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changePreempLevels: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) osLogic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) preempLevels.
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
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'not modifiable project was modified (os preemp levels)'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentTarget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) osLogic.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) osConfigSettings.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) preempLevelsMaximum: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) preempLevels: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20305644; bytecode file offset 0xc01f2c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeCoopLevels: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) osLogic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) coopLevels.
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
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'not modifiable project was modified (os coop levels)'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentTarget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) osLogic.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) osConfigSettings.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) coopLevelsMaximum: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) coopLevels: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20327668; bytecode file offset 0xc23f3c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeTaskExecutingBlock: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) triggerObject.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack2 == nil) ifTrue: [recoveredBlock27PC := 51] ifFalse: [recoveredBlock27PC := 42].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack1 := recoveredArg1.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) triggerObject.
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) value: (recoveredBlock27Stack2).
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x2034e164; bytecode file offset 0xc4aa40"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
processObjectsForTask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SGOSProcessObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarProcessesForProject: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := SGOSProcessObject.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) at: (1).
    recoveredBlock28Value4 := recoveredBlock28Arg1.
    recoveredBlock28Value5 := (recoveredBlock28Value4) at: (2).
    recoveredBlock28Value6 := (recoveredBlock28Value1) createWithInstVar: (recoveredBlock28Value3) processMethod: (recoveredBlock28Value5).
    recoveredBlock28Value7 := (recoveredBlock28Value0) copyWith: (recoveredBlock28Value6).
    recoveredBlock28Value8 := recoveredBlock28Value7.
    recoveredLocal1 := recoveredBlock28Value8.
    recoveredBlock28Value7
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037372c; bytecode file offset 0xc70024"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
addTask
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) opModes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) addTaskProject: (recoveredStack1) opModes: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'asd_task'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) renameTask: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'hwc2'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'createTask:'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203849c0; bytecode file offset 0xc81290"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskTypes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsRTA.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := SGOSTriggerObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) allTriggerClasses.
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
            recoveredBlock25Stack1 := false.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal1.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) supportedByTarget: (recoveredBlock25Stack3).
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 47].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isTimetableTrigger.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) not.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := SGOSTriggerObject.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) allTriggerClasses.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredLocal1.
    recoveredBlock54Value2 := (recoveredBlock54Value0) supportedByTarget: (recoveredBlock54Value1).
    recoveredBlock54Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038d860; bytecode file offset 0xc8a138"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deassignSelectedOpModesFromSelectedTasks
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) operatingModes.
    recoveredBlock31Value2 := [:recoveredBlock31Block40Arg1 | 
    | recoveredBlock31Block40Value0 recoveredBlock31Block40Value1 recoveredBlock31Block40Value2 recoveredBlock31Block40Value3 |
    recoveredBlock31Block40Value0 := recoveredLocal2.
    recoveredBlock31Block40Value1 := recoveredBlock31Block40Arg1.
    recoveredBlock31Block40Value2 := (recoveredBlock31Block40Value0) includes: (recoveredBlock31Block40Value1).
    recoveredBlock31Block40Value3 := (recoveredBlock31Block40Value2) not.
    recoveredBlock31Block40Value3
].
    recoveredBlock31Value3 := (recoveredBlock31Value1) select: (recoveredBlock31Value2).
    recoveredLocal1 := recoveredBlock31Value3.
    recoveredBlock31Value4 := recoveredBlock31Arg1.
    recoveredBlock31Value5 := recoveredLocal1.
    recoveredBlock31Value6 := (recoveredBlock31Value4) operatingModes: (recoveredBlock31Value5).
    recoveredBlock31Value6
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x203b2924; bytecode file offset 0xcaf1f4"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeValueAttribute: recoveredArg1 supportBlock: recoveredArg2 getValueBlock: recoveredArg3 setValueBlock: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31Stack7 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg1.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack4 := recoveredArg2.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack5 := recoveredArg3.
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31Stack6 := recoveredArg4.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) changeValueAttribute: (recoveredBlock31Stack3) supportBlock: (recoveredBlock31Stack4) getValueBlock: (recoveredBlock31Stack5) setValueBlock: (recoveredBlock31Stack6).
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 58] ifFalse: [recoveredBlock31PC := 64].
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack1 := true.
            recoveredBlock31PC := 60.
        ].
        recoveredBlock31Step = 60 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack2.
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d1b84; bytecode file offset 0xcce468"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskForSelectedSequenceCall
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
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
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
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
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) processMethod.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) instVarProcessReferences.
    recoveredBlock37Value2 := [:recoveredBlock37Block47Arg1 | 
    | recoveredBlock37Block47Stack0 recoveredBlock37Block47Stack1 recoveredBlock37Block47Stack2 recoveredBlock37Block47Stack3 recoveredBlock37Block47Stack4 recoveredBlock37Block47PC recoveredBlock37Block47Step recoveredBlock37Block47Done recoveredBlock37Block47Result |
    recoveredBlock37Block47Stack0 := nil.
    recoveredBlock37Block47PC := 54.
    recoveredBlock37Block47Done := false.
    [recoveredBlock37Block47Done not] whileTrue: [
        recoveredBlock37Block47Step := recoveredBlock37Block47PC.
        recoveredBlock37Block47Step = 54 ifTrue: [
            recoveredBlock37Block47Stack1 := false.
            recoveredBlock37Block47PC := 55.
        ].
        recoveredBlock37Block47Step = 55 ifTrue: [
            recoveredBlock37Block47Stack2 := recoveredBlock37Block47Arg1.
            recoveredBlock37Block47PC := 56.
        ].
        recoveredBlock37Block47Step = 56 ifTrue: [
            recoveredBlock37Block47Stack2 := (recoveredBlock37Block47Stack2) size.
            recoveredBlock37Block47PC := 58.
        ].
        recoveredBlock37Block47Step = 58 ifTrue: [
            recoveredBlock37Block47Stack3 := 2.
            recoveredBlock37Block47PC := 60.
        ].
        recoveredBlock37Block47Step = 60 ifTrue: [
            (recoveredBlock37Block47Stack2 ~~ recoveredBlock37Block47Stack3) ifTrue: [recoveredBlock37Block47PC := 78] ifFalse: [recoveredBlock37Block47PC := 64].
        ].
        recoveredBlock37Block47Step = 64 ifTrue: [
            recoveredBlock37Block47PC := 65.
        ].
        recoveredBlock37Block47Step = 65 ifTrue: [
            recoveredBlock37Block47Stack1 := recoveredBlock37Block47Arg1.
            recoveredBlock37Block47PC := 66.
        ].
        recoveredBlock37Block47Step = 66 ifTrue: [
            recoveredBlock37Block47Stack2 := 2.
            recoveredBlock37Block47PC := 68.
        ].
        recoveredBlock37Block47Step = 68 ifTrue: [
            recoveredBlock37Block47Stack1 := (recoveredBlock37Block47Stack1) at: (recoveredBlock37Block47Stack2).
            recoveredBlock37Block47PC := 70.
        ].
        recoveredBlock37Block47Step = 70 ifTrue: [
            recoveredBlock37Block47Stack2 := recoveredLocal1.
            recoveredBlock37Block47PC := 73.
        ].
        recoveredBlock37Block47Step = 73 ifTrue: [
            recoveredBlock37Block47Stack2 := (recoveredBlock37Block47Stack2) processMethod.
            recoveredBlock37Block47PC := 74.
        ].
        recoveredBlock37Block47Step = 74 ifTrue: [
            recoveredBlock37Block47Stack2 := (recoveredBlock37Block47Stack2) aliasName.
            recoveredBlock37Block47PC := 76.
        ].
        recoveredBlock37Block47Step = 76 ifTrue: [
            recoveredBlock37Block47Stack1 := (recoveredBlock37Block47Stack1) equals: (recoveredBlock37Block47Stack2).
            recoveredBlock37Block47PC := 78.
        ].
        recoveredBlock37Block47Step = 78 ifTrue: [
            recoveredBlock37Block47Result := recoveredBlock37Block47Stack1.
            recoveredBlock37Block47Done := true.
        ].
    ].
    recoveredBlock37Block47Result
].
    recoveredBlock37Value3 := (recoveredBlock37Value1) anySatisfy: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fba90; bytecode file offset 0xcf838c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
renameTask: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkValidANSICIdentifier: (recoveredStack1).
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
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
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block280f9df8Arg1 | 
    | block280f9df8Value0 block280f9df8Value1 |
    block280f9df8Value0 := block280f9df8Arg1.
    block280f9df8Value1 := (block280f9df8Value0) name.
    block280f9df8Value1
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringFor: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) renameTask: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := EtasChangeTaskCallback.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) setActionRename: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043c284; bytecode file offset 0xd38b90"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deleteSelectedOpModes
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
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
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) inactiveOpMode.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) = (recoveredBlock25Stack2).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 40] ifFalse: [recoveredBlock25PC := 52].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := RBUserInfo.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack2 := 'Mode <inactive> can not be deleted!!'.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) message: (recoveredBlock25Stack2).
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            (recoveredBlock25Stack1) prompt.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) osLogic.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            (recoveredBlock25Stack1) deleteOperatingMode: (recoveredBlock25Stack2).
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isStartMode.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 66] ifFalse: [recoveredBlock25PC := 93].
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack1 := RBUserInfo.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack2 := 'The application mode <'.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) name.
            recoveredBlock25PC := 74.
        ].
        recoveredBlock25Step = 74 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 76.
        ].
        recoveredBlock25Step = 76 ifTrue: [
            recoveredBlock25Stack3 := '> with the START attribute was deleted!!'.
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 80.
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal1.
            recoveredBlock25PC := 83.
        ].
        recoveredBlock25Step = 83 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack3 := 'Your model will not run as long as you don''t reassign the START attribute to an aplication mode!!'.
            recoveredBlock25PC := 87.
        ].
        recoveredBlock25Step = 87 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 89.
        ].
        recoveredBlock25Step = 89 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) message: (recoveredBlock25Stack2).
            recoveredBlock25PC := 91.
        ].
        recoveredBlock25Step = 91 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) prompt.
            recoveredBlock25PC := 93.
        ].
        recoveredBlock25Step = 93 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) selectedOpModes: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20447840; bytecode file offset 0xd44134"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
assignSelectedOpModesToSelectedTasks
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOpModes.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
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
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack2 := self.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) inactiveOpMode.
            recoveredBlock41PC := 54.
        ].
        recoveredBlock41Step = 54 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) includes: (recoveredBlock41Stack2).
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 60] ifFalse: [recoveredBlock41PC := 86].
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) triggerObject.
            recoveredBlock41PC := 63.
        ].
        recoveredBlock41Step = 63 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isInitTrigger.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 86] ifFalse: [recoveredBlock41PC := 68].
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 71.
        ].
        recoveredBlock41Step = 71 ifTrue: [
            recoveredBlock41Stack2 := [:block280fececArg1 | 
    | block280fececValue0 block280fececValue1 block280fececValue2 |
    block280fececValue0 := block280fececArg1.
    block280fececValue1 := (block280fececValue0) isInactiveOpMode.
    block280fececValue2 := (block280fececValue1) not.
    block280fececValue2
].
            recoveredBlock41PC := 73.
        ].
        recoveredBlock41Step = 73 ifTrue: [
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) select: (recoveredBlock41Stack2).
            recoveredBlock41PC := 83.
        ].
        recoveredBlock41Step = 83 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack1.
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 86 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 87.
        ].
        recoveredBlock41Step = 87 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal1.
            recoveredBlock41PC := 90.
        ].
        recoveredBlock41Step = 90 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) notEmpty.
            recoveredBlock41PC := 92.
        ].
        recoveredBlock41Step = 92 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 96] ifFalse: [recoveredBlock41PC := 103].
        ].
        recoveredBlock41Step = 96 ifTrue: [
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 98.
        ].
        recoveredBlock41Step = 98 ifTrue: [
            recoveredBlock41Stack2 := recoveredLocal1.
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) operatingModes: (recoveredBlock41Stack2).
            recoveredBlock41PC := 103.
        ].
        recoveredBlock41Step = 103 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045d9c4; bytecode file offset 0xd5a2b8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeTriggerEvent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31Stack6 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack3 := [:block281005acArg1 | 
    | block281005acStack0 block281005acStack1 block281005acStack2 block281005acStack3 block281005acPC block281005acStep block281005acDone block281005acResult |
    block281005acStack0 := self.
    block281005acPC := 4.
    block281005acDone := false.
    [block281005acDone not] whileTrue: [
        block281005acStep := block281005acPC.
        block281005acStep = 4 ifTrue: [
            block281005acStack1 := false.
            block281005acPC := 5.
        ].
        block281005acStep = 5 ifTrue: [
            block281005acStack2 := block281005acArg1.
            block281005acPC := 6.
        ].
        block281005acStep = 6 ifTrue: [
            (block281005acStack2 == nil) ifTrue: [block281005acPC := 14] ifFalse: [block281005acPC := 10].
        ].
        block281005acStep = 10 ifTrue: [
            block281005acPC := 11.
        ].
        block281005acStep = 11 ifTrue: [
            block281005acStack1 := block281005acArg1.
            block281005acPC := 12.
        ].
        block281005acStep = 12 ifTrue: [
            block281005acStack1 := (block281005acStack1) isEventTrigger.
            block281005acPC := 14.
        ].
        block281005acStep = 14 ifTrue: [
            block281005acResult := block281005acStack1.
            block281005acDone := true.
        ].
    ].
    block281005acResult
].
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack4 := [:block281005d0Arg1 | 
    | block281005d0Value0 block281005d0Value1 |
    block281005d0Value0 := block281005d0Arg1.
    block281005d0Value1 := (block281005d0Value0) triggerEvent.
    block281005d0Value1
].
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack5 := [:block281005f4Arg1 :block281005f4Arg2 | 
    | block281005f4Value0 block281005f4Value1 block281005f4Value2 |
    block281005f4Value0 := block281005f4Arg1.
    block281005f4Value1 := block281005f4Arg2.
    block281005f4Value2 := (block281005f4Value0) triggerEvent: (block281005f4Value1).
    block281005f4Value2
].
            recoveredBlock31PC := 70.
        ].
        recoveredBlock31Step = 70 ifTrue: [
            recoveredBlock31PC := 79.
        ].
        recoveredBlock31Step = 79 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) changeValueAttribute: (recoveredBlock31Stack2) supportBlock: (recoveredBlock31Stack3) getValueBlock: (recoveredBlock31Stack4) setValueBlock: (recoveredBlock31Stack5).
            recoveredBlock31PC := 82.
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 84.
        ].
        recoveredBlock31Step = 84 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Local1.
            recoveredBlock31PC := 85.
        ].
        recoveredBlock31Step = 85 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 88] ifFalse: [recoveredBlock31PC := 102].
        ].
        recoveredBlock31Step = 88 ifTrue: [
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Stack1 := true.
            recoveredBlock31PC := 90.
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 93.
        ].
        recoveredBlock31Step = 93 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 94.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) project.
            recoveredBlock31PC := 95.
        ].
        recoveredBlock31Step = 95 ifTrue: [
            recoveredBlock31Stack2 := EtasChangeTaskAttributeCallback.
            recoveredBlock31PC := 97.
        ].
        recoveredBlock31Step = 97 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 98.
        ].
        recoveredBlock31Step = 98 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) createISRSourceChangedForTask: (recoveredBlock31Stack3).
            recoveredBlock31PC := 100.
        ].
        recoveredBlock31Step = 100 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) callCallbacks: (recoveredBlock31Stack2).
            recoveredBlock31PC := 102.
        ].
        recoveredBlock31Step = 102 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x2045e9dc; bytecode file offset 0xd5b2c0"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changePeriod: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentTarget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) minTaskCycleTime.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) triggerObject.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) period.
            recoveredBlock43PC := 56.
        ].
        recoveredBlock43Step = 56 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack3.
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            (recoveredBlock43Stack2 == nil) ifTrue: [recoveredBlock43PC := 102] ifFalse: [recoveredBlock43PC := 64].
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43PC := 65.
        ].
        recoveredBlock43Step = 65 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack2 := recoveredArg1.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal1.
            recoveredBlock43PC := 72.
        ].
        recoveredBlock43Step = 72 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) max: (recoveredBlock43Stack3).
            recoveredBlock43PC := 74.
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack3.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) triggerObject.
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) period.
            recoveredBlock43PC := 83.
        ].
        recoveredBlock43Step = 83 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) ~= (recoveredBlock43Stack3).
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 88] ifFalse: [recoveredBlock43PC := 102].
        ].
        recoveredBlock43Step = 88 ifTrue: [
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 90.
        ].
        recoveredBlock43Step = 90 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) triggerObject.
            recoveredBlock43PC := 92.
        ].
        recoveredBlock43Step = 92 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal2.
            recoveredBlock43PC := 95.
        ].
        recoveredBlock43Step = 95 ifTrue: [
            (recoveredBlock43Stack1) period: (recoveredBlock43Stack2).
            recoveredBlock43PC := 97.
        ].
        recoveredBlock43Step = 97 ifTrue: [
            recoveredBlock43Stack1 := true.
            recoveredBlock43PC := 98.
        ].
        recoveredBlock43Step = 98 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 99.
        ].
        recoveredBlock43Step = 99 ifTrue: [
            recoveredLocal3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 102.
        ].
        recoveredBlock43Step = 102 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x20494b38; bytecode file offset 0xd9141c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
recalculateTimes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 1000000000.
    recoveredValue0 := (self) osLogic.
    recoveredValue1 := (recoveredValue0) getTasks.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) triggerObject.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 129] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) triggerObject.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) delay.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack2.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 73] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isTickDuration.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 40] ifFalse: [recoveredBlock11PC := 58].
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) triggerObject.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack3 := recoveredLocal1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) / (recoveredBlock11Stack3).
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) osLogic.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) tickDuration.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) * (recoveredBlock11Stack3).
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            (recoveredBlock11Stack1) delay: (recoveredBlock11Stack2).
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) triggerObject.
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local2.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack3 := recoveredLocal1.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) * (recoveredBlock11Stack3).
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) osLogic.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) tickDuration.
            recoveredBlock11PC := 69.
        ].
        recoveredBlock11Step = 69 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) / (recoveredBlock11Stack3).
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            (recoveredBlock11Stack1) delay: (recoveredBlock11Stack2).
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 74.
        ].
        recoveredBlock11Step = 74 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) triggerObject.
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) period.
            recoveredBlock11PC := 78.
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 125] ifFalse: [recoveredBlock11PC := 84].
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 86.
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isTickDuration.
            recoveredBlock11PC := 88.
        ].
        recoveredBlock11Step = 88 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 92] ifFalse: [recoveredBlock11PC := 110].
        ].
        recoveredBlock11Step = 92 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) triggerObject.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 95.
        ].
        recoveredBlock11Step = 95 ifTrue: [
            recoveredBlock11Stack3 := recoveredLocal1.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) / (recoveredBlock11Stack3).
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) osLogic.
            recoveredBlock11PC := 102.
        ].
        recoveredBlock11Step = 102 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) tickDuration.
            recoveredBlock11PC := 104.
        ].
        recoveredBlock11Step = 104 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) * (recoveredBlock11Stack3).
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) period: (recoveredBlock11Stack2).
            recoveredBlock11PC := 107.
        ].
        recoveredBlock11Step = 107 ifTrue: [
            recoveredBlock11PC := 125.
        ].
        recoveredBlock11Step = 110 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 111.
        ].
        recoveredBlock11Step = 111 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) triggerObject.
            recoveredBlock11PC := 112.
        ].
        recoveredBlock11Step = 112 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 113.
        ].
        recoveredBlock11Step = 113 ifTrue: [
            recoveredBlock11Stack3 := recoveredLocal1.
            recoveredBlock11PC := 116.
        ].
        recoveredBlock11Step = 116 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) * (recoveredBlock11Stack3).
            recoveredBlock11PC := 117.
        ].
        recoveredBlock11Step = 117 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 118.
        ].
        recoveredBlock11Step = 118 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) osLogic.
            recoveredBlock11PC := 119.
        ].
        recoveredBlock11Step = 119 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) tickDuration.
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) / (recoveredBlock11Stack3).
            recoveredBlock11PC := 123.
        ].
        recoveredBlock11Step = 123 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) period: (recoveredBlock11Stack2).
            recoveredBlock11PC := 125.
        ].
        recoveredBlock11Step = 125 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 126.
        ].
        recoveredBlock11Step = 126 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 127.
        ].
        recoveredBlock11Step = 127 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack3.
            recoveredBlock11PC := 128.
        ].
        recoveredBlock11Step = 128 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 129.
        ].
        recoveredBlock11Step = 129 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20507070; bytecode file offset 0xe03958"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
taskLabelForProcess: recoveredArg1 task: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedCTVariable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 |
    recoveredBlock57Value0 := recoveredArg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) instVar.
    recoveredBlock57Value2 := (recoveredBlock57Value1) label.
    recoveredBlock57Value3 := ('[') , (recoveredBlock57Value2).
    recoveredBlock57Value4 := (recoveredBlock57Value3) , (']').
    recoveredBlock57Value4
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 |
    recoveredBlock131Value0 := recoveredArg1.
    recoveredBlock131Value1 := (recoveredBlock131Value0) instVar.
    recoveredBlock131Value2 := (recoveredBlock131Value1) label.
    recoveredBlock131Value3 := ('[') , (recoveredBlock131Value2).
    recoveredBlock131Value4 := (recoveredBlock131Value3) , (']').
    recoveredBlock131Value4
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050e4bc; bytecode file offset 0xe0adf8"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
changeTriggerModeClass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) operatingModes.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack2 := self.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) inactiveOpMode.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) includes: (recoveredBlock31Stack2).
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 50] ifFalse: [recoveredBlock31PC := 134].
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 51.
        ].
        recoveredBlock31Step = 51 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) triggerObject.
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isInitTrigger.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 58] ifFalse: [recoveredBlock31PC := 134].
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg1.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredBlock31Stack2 := SGOSInitTrigger.
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) ~= (recoveredBlock31Stack2).
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 68] ifFalse: [recoveredBlock31PC := 134].
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack1 := EtasUserQuestion.
            recoveredBlock31PC := 70.
        ].
        recoveredBlock31Step = 70 ifTrue: [
            recoveredBlock31Stack2 := 'Only tasks of type <Init> can have application mode <inactive>.\Changing this type will automatically remove the application mode <inactive>.\Do you want to proceed?'.
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) withCrs.
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) message: (recoveredBlock31Stack2).
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Stack3 := 'RemoveApplicationModeInactive'.
            recoveredBlock31PC := 79.
        ].
        recoveredBlock31Step = 79 ifTrue: [
            (recoveredBlock31Stack2) prompterID: (recoveredBlock31Stack3).
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 82.
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31Stack3 := 'OKCANCEL'.
            recoveredBlock31PC := 84.
        ].
        recoveredBlock31Step = 84 ifTrue: [
            (recoveredBlock31Stack2) buttonStyle: (recoveredBlock31Stack3).
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            recoveredBlock31Stack3 := 'question'.
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            (recoveredBlock31Stack2) type: (recoveredBlock31Stack3).
            recoveredBlock31PC := 91.
        ].
        recoveredBlock31Step = 91 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) prompt.
            recoveredBlock31PC := 93.
        ].
        recoveredBlock31Step = 93 ifTrue: [
            (recoveredBlock31Stack1 ~~ nil) ifTrue: [recoveredBlock31PC := 109] ifFalse: [recoveredBlock31PC := 96].
        ].
        recoveredBlock31Step = 96 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 97.
        ].
        recoveredBlock31Step = 97 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) userInterface.
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 99 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) taskWidget.
            recoveredBlock31PC := 101.
        ].
        recoveredBlock31Step = 101 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) type.
            recoveredBlock31PC := 103.
        ].
        recoveredBlock31Step = 103 ifTrue: [
            recoveredBlock31Stack2 := SGOSInitTrigger.
            recoveredBlock31PC := 105.
        ].
        recoveredBlock31Step = 105 ifTrue: [
            (recoveredBlock31Stack1) setObject: (recoveredBlock31Stack2).
            recoveredBlock31PC := 107.
        ].
        recoveredBlock31Step = 107 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 108.
        ].
        recoveredBlock31Step = 108 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 109 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 110.
        ].
        recoveredBlock31Step = 110 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 111.
        ].
        recoveredBlock31Step = 111 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) operatingModes.
            recoveredBlock31PC := 113.
        ].
        recoveredBlock31Step = 113 ifTrue: [
            recoveredBlock31Stack3 := [:recoveredBlock31Block113Arg1 | 
    | recoveredBlock31Block113Value0 recoveredBlock31Block113Value1 recoveredBlock31Block113Value2 |
    recoveredBlock31Block113Value0 := recoveredBlock31Block113Arg1.
    recoveredBlock31Block113Value1 := (self) inactiveOpMode.
    recoveredBlock31Block113Value2 := (recoveredBlock31Block113Value0) ~= (recoveredBlock31Block113Value1).
    recoveredBlock31Block113Value2
].
            recoveredBlock31PC := 126.
        ].
        recoveredBlock31Step = 126 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) select: (recoveredBlock31Stack3).
            recoveredBlock31PC := 128.
        ].
        recoveredBlock31Step = 128 ifTrue: [
            (recoveredBlock31Stack1) operatingModes: (recoveredBlock31Stack2).
            recoveredBlock31PC := 130.
        ].
        recoveredBlock31Step = 130 ifTrue: [
            recoveredBlock31Stack1 := true.
            recoveredBlock31PC := 131.
        ].
        recoveredBlock31Step = 131 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 134.
        ].
        recoveredBlock31Step = 134 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 135.
        ].
        recoveredBlock31Step = 135 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 136.
        ].
        recoveredBlock31Step = 136 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) triggerObject.
            recoveredBlock31PC := 138.
        ].
        recoveredBlock31Step = 138 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) class.
            recoveredBlock31PC := 140.
        ].
        recoveredBlock31Step = 140 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg1.
            recoveredBlock31PC := 143.
        ].
        recoveredBlock31Step = 143 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) = (recoveredBlock31Stack3).
            recoveredBlock31PC := 144.
        ].
        recoveredBlock31Step = 144 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 163] ifFalse: [recoveredBlock31PC := 148].
        ].
        recoveredBlock31Step = 148 ifTrue: [
            recoveredBlock31PC := 149.
        ].
        recoveredBlock31Step = 149 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 150.
        ].
        recoveredBlock31Step = 150 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 153.
        ].
        recoveredBlock31Step = 153 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) create.
            recoveredBlock31PC := 155.
        ].
        recoveredBlock31Step = 155 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Arg1.
            recoveredBlock31PC := 156.
        ].
        recoveredBlock31Step = 156 ifTrue: [
            (recoveredBlock31Stack1) setTriggerObject: (recoveredBlock31Stack2) forTask: (recoveredBlock31Stack3).
            recoveredBlock31PC := 158.
        ].
        recoveredBlock31Step = 158 ifTrue: [
            recoveredBlock31Stack1 := true.
            recoveredBlock31PC := 159.
        ].
        recoveredBlock31Step = 159 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 160.
        ].
        recoveredBlock31Step = 160 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack2.
            recoveredBlock31PC := 163.
        ].
        recoveredBlock31Step = 163 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052be10; bytecode file offset 0xe2874c"
!SGOperatingSystemEditorCtrl methodsFor: 'recovered'!
deleteSelectedTasks
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'Delete task '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'Delete the following tasks: '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 :recoveredBlock74Arg2 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg2.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := 50.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) < (recoveredBlock74Stack2).
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 88] ifFalse: [recoveredBlock74PC := 102].
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal1.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) label.
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 102 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg2.
            recoveredBlock74PC := 104.
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Stack3 := 50.
            recoveredBlock74PC := 106.
        ].
        recoveredBlock74Step = 106 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) = (recoveredBlock74Stack3).
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 110] ifFalse: [recoveredBlock74PC := 121].
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal1.
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 115.
        ].
        recoveredBlock74Step = 115 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack2 := '...'.
            recoveredBlock74PC := 119.
        ].
        recoveredBlock74Step = 119 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := ' ?'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'ASDDeleteTaskInEditor'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := [:recoveredBlock177Arg1 | 
    | recoveredBlock177Value0 recoveredBlock177Value1 recoveredBlock177Value2 recoveredBlock177Value3 |
    recoveredBlock177Value0 := (self) osLogic.
    recoveredBlock177Value1 := recoveredBlock177Arg1.
    recoveredBlock177Value2 := (self) project.
    recoveredBlock177Value3 := (recoveredBlock177Value0) deleteTask: (recoveredBlock177Value1) project: (recoveredBlock177Value2).
    recoveredBlock177Value3
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) modified.
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

