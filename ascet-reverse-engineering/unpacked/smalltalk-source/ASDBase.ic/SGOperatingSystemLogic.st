"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008318; bytecode file offset 0x908be4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
isTimebaseSecond
    | recoveredValue0 |
    recoveredValue0 := (self) enableTickDuration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ddac; bytecode file offset 0x90ab8c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
sdTasksForProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) sdTasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e6e0; bytecode file offset 0x92209c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
labelForCompare
    ^'OS-Logic for: '
! !

"ASDBase.ic method 0x20027aa8; bytecode file offset 0x92454c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
isTimebaseTick
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) enableTickDuration.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038b74; bytecode file offset 0x935c54"
!SGOperatingSystemLogic methodsFor: 'recovered'!
eventsForTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) eventsForTarget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039968; bytecode file offset 0x938608"
!SGOperatingSystemLogic methodsFor: 'recovered'!
ctTasksForProject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) consistentCTTasksFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f4c8; bytecode file offset 0x93bf94"
!SGOperatingSystemLogic methodsFor: 'recovered'!
defaultOsConfigSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGOsConfigOptions.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004206c; bytecode file offset 0x93e928"
!SGOperatingSystemLogic methodsFor: 'recovered'!
osConfigSettingsCheckExistence
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osConfigSettings.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066bec; bytecode file offset 0x9646f8"
!SGOperatingSystemLogic methodsFor: 'recovered'!
getTasks
    | recoveredValue0 |
    recoveredValue0 := tasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200685b4; bytecode file offset 0x965b90"
!SGOperatingSystemLogic methodsFor: 'recovered'!
operatingModes
    | recoveredValue0 |
    recoveredValue0 := operatingModes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069db0; bytecode file offset 0x966bdc"
!SGOperatingSystemLogic methodsFor: 'recovered'!
coopLevels
    | recoveredValue0 |
    recoveredValue0 := coopLevels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae54; bytecode file offset 0x967a18"
!SGOperatingSystemLogic methodsFor: 'recovered'!
preempLevels
    | recoveredValue0 |
    recoveredValue0 := preempLevels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b620; bytecode file offset 0x96873c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
eventLevels
    | recoveredValue0 |
    recoveredValue0 := eventLevels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095ae8; bytecode file offset 0x9923a4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
tasksForProject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) consistentCTTasksFor: (recoveredValue0).
    recoveredValue1 := (self) getTasks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bf0d8; bytecode file offset 0x9bc0b4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
setTasks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tasks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfc34; bytecode file offset 0x9bd228"
!SGOperatingSystemLogic methodsFor: 'recovered'!
operatingModes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operatingModes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c31ac; bytecode file offset 0x9bfde0"
!SGOperatingSystemLogic methodsFor: 'recovered'!
enableMonitoring: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enableMonitoring := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36b8; bytecode file offset 0x9c058c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
enableTickDuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enableTickDuration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8ee4; bytecode file offset 0x9c57a0"
!SGOperatingSystemLogic methodsFor: 'recovered'!
renameTask: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) name: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200f0320; bytecode file offset 0x9ecbe4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
tasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f744c; bytecode file offset 0x9f4e38"
!SGOperatingSystemLogic methodsFor: 'recovered'!
ctTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4470Arg1 | 
    | block280c4470Value0 block280c4470Value1 |
    block280c4470Value0 := block280c4470Arg1.
    block280c4470Value1 := (block280c4470Value0) isCTTask.
    block280c4470Value1
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010621c; bytecode file offset 0xa02ad8"
!SGOperatingSystemLogic methodsFor: 'recovered'!
enableTickDuration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enableTickDuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            enableTickDuration := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := enableTickDuration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20108a50; bytecode file offset 0xa0532c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
sdTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c65c4Arg1 | 
    | block280c65c4Value0 block280c65c4Value1 block280c65c4Value2 |
    block280c65c4Value0 := block280c65c4Arg1.
    block280c65c4Value1 := (block280c65c4Value0) isCTTask.
    block280c65c4Value2 := (block280c65c4Value1) not.
    block280c65c4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20116278; bytecode file offset 0xa12b48"
!SGOperatingSystemLogic methodsFor: 'recovered'!
tickDuration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tickDuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1000000000.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            tickDuration := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := tickDuration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201163c8; bytecode file offset 0xa12ca4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
osConfigSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := osConfigSettings.
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
            recoveredStack1 := (recoveredStack1) defaultOsConfigSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            osConfigSettings := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := osConfigSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011dfdc; bytecode file offset 0xa1a89c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
xmlAddTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := tasks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWith: (recoveredValue1).
    tasks := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := tasks.
    recoveredValue5 := (recoveredValue4) size.
    (recoveredValue3) id: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2011e0dc; bytecode file offset 0xa1a99c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
addOperatingMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := operatingModes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWith: (recoveredValue1).
    operatingModes := recoveredValue2.
    (self) renumberOpmodes.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x2011f474; bytecode file offset 0xa1bd34"
!SGOperatingSystemLogic methodsFor: 'recovered'!
xmlAddOperatingMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := operatingModes.
    recoveredValue2 := (recoveredValue1) size.
    (recoveredValue0) id: (recoveredValue2).
    recoveredValue3 := operatingModes.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) copyWith: (recoveredValue4).
    operatingModes := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20120e28; bytecode file offset 0xa1d704"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertMonitoringVariables: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8fd0Arg1 | 
    | block280c8fd0Value0 block280c8fd0Value1 |
    block280c8fd0Value0 := block280c8fd0Arg1.
    block280c8fd0Value1 := (block280c8fd0Value0) convertMonitoringVariables.
    block280c8fd0Value1
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

"ASDBase.ic method 0x20120e40; bytecode file offset 0xa1d704"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertAttributesInTrigger: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8ff4Arg1 | 
    | block280c8ff4Value0 block280c8ff4Value1 |
    block280c8ff4Value0 := block280c8ff4Arg1.
    block280c8ff4Value1 := (block280c8ff4Value0) convertAttributesInTrigger.
    block280c8ff4Value1
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

"ASDBase.ic method 0x2012c9ac; bytecode file offset 0xa292ac"
!SGOperatingSystemLogic methodsFor: 'recovered'!
startOperatingMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9c54Arg1 | 
    | block280c9c54Value0 block280c9c54Value1 |
    block280c9c54Value0 := block280c9c54Arg1.
    block280c9c54Value1 := (block280c9c54Value0) isStartMode.
    block280c9c54Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c9c8; bytecode file offset 0xa292ac"
!SGOperatingSystemLogic methodsFor: 'recovered'!
ctOperatingMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9c78Arg1 | 
    | block280c9c78Value0 block280c9c78Value1 |
    block280c9c78Value0 := block280c9c78Arg1.
    block280c9c78Value1 := (block280c9c78Value0) isCTMode.
    block280c9c78Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133fd0; bytecode file offset 0xa30890"
!SGOperatingSystemLogic methodsFor: 'recovered'!
osConfigSettings: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) equalTo: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            osConfigSettings := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x2014a570; bytecode file offset 0xa46e38"
!SGOperatingSystemLogic methodsFor: 'recovered'!
createCTTaskFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGOSCTTask.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) methodName.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) addProcess: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) addTask: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20159c6c; bytecode file offset 0xa56534"
!SGOperatingSystemLogic methodsFor: 'recovered'!
addOperatingModeNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGOSMode.
    recoveredValue1 := (recoveredValue0) create: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (self) renameOpMode: (recoveredValue2) to: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addOperatingMode: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2016444c; bytecode file offset 0xa60d04"
!SGOperatingSystemLogic methodsFor: 'recovered'!
coopLevels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := coopLevels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            coopLevels := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016454c; bytecode file offset 0xa60e04"
!SGOperatingSystemLogic methodsFor: 'recovered'!
preempLevels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := preempLevels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            preempLevels := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201645b0; bytecode file offset 0xa60e68"
!SGOperatingSystemLogic methodsFor: 'recovered'!
eventLevels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventLevels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            eventLevels := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016467c; bytecode file offset 0xa60f34"
!SGOperatingSystemLogic methodsFor: 'recovered'!
tickDuration: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tickDuration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            tickDuration := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177b60; bytecode file offset 0xa7490c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTasks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) replaceAliasNames: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20188094; bytecode file offset 0xa84958"
!SGOperatingSystemLogic methodsFor: 'recovered'!
tasksForOpMode: recoveredArg1 project: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) tasksForProject: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) operatingModes.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := (recoveredBlock8Value1) includes: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a37a8; bytecode file offset 0xaa006c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
inactiveOpMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d2cc0Arg1 | 
    | block280d2cc0Value0 block280d2cc0Value1 |
    block280d2cc0Value0 := block280d2cc0Arg1.
    block280d2cc0Value1 := (block280d2cc0Value0) isInactiveOpMode.
    block280d2cc0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6edc; bytecode file offset 0xaa37a4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertSchedulingProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d30d4Arg1 | 
    | block280d30d4Stack0 block280d30d4Stack1 block280d30d4Stack2 block280d30d4Stack3 block280d30d4PC block280d30d4Step block280d30d4Done block280d30d4Result |
    block280d30d4Stack0 := self.
    block280d30d4PC := 4.
    block280d30d4Done := false.
    [block280d30d4Done not] whileTrue: [
        block280d30d4Step := block280d30d4PC.
        block280d30d4Step = 4 ifTrue: [
            block280d30d4Stack1 := nil.
            block280d30d4PC := 5.
        ].
        block280d30d4Step = 5 ifTrue: [
            block280d30d4Stack2 := block280d30d4Arg1.
            block280d30d4PC := 6.
        ].
        block280d30d4Step = 6 ifTrue: [
            block280d30d4Stack2 := (block280d30d4Stack2) triggerObject.
            block280d30d4PC := 7.
        ].
        block280d30d4Step = 7 ifTrue: [
            (block280d30d4Stack2 == nil) ifTrue: [block280d30d4PC := 14] ifFalse: [block280d30d4PC := 10].
        ].
        block280d30d4Step = 10 ifTrue: [
            block280d30d4PC := 11.
        ].
        block280d30d4Step = 11 ifTrue: [
            block280d30d4Stack1 := block280d30d4Arg1.
            block280d30d4PC := 12.
        ].
        block280d30d4Step = 12 ifTrue: [
            block280d30d4Stack1 := (block280d30d4Stack1) triggerObject.
            block280d30d4PC := 13.
        ].
        block280d30d4Step = 13 ifTrue: [
            block280d30d4Stack1 := (block280d30d4Stack1) checkScheduling.
            block280d30d4PC := 14.
        ].
        block280d30d4Step = 14 ifTrue: [
            block280d30d4Result := block280d30d4Stack1.
            block280d30d4Done := true.
        ].
    ].
    block280d30d4Result
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

"ASDBase.ic method 0x201ac5e0; bytecode file offset 0xaa8e9c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
swap: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := tasks.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := tasks.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := tasks.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue7).
    recoveredValue8 := tasks.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201b0ef0; bytecode file offset 0xaad7b4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
enableMonitoring
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osConfigSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'Prototyping'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            enableMonitoring := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := enableMonitoring.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            enableMonitoring := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := enableMonitoring.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea760; bytecode file offset 0xae7030"
!SGOperatingSystemLogic methodsFor: 'recovered'!
renameTask: recoveredArg1 to: recoveredArg2 inProject: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := EtasChangeTaskCallback.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createWith: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) setActionDelete.
    (recoveredValue0) callCallbacks: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) name: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := EtasChangeTaskCallback.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) createWith: (recoveredValue9).
    recoveredValue11 := (recoveredValue10) setActionAdd.
    (recoveredValue7) callCallbacks: (recoveredValue11).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x201f21f4; bytecode file offset 0xaeeabc"
!SGOperatingSystemLogic methodsFor: 'recovered'!
checkPriorityGroup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTasks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) preempLevels.
    recoveredBlock5Value2 := (recoveredBlock5Value1) ~= (0).
    recoveredBlock5Value3 := (self) coopLevels.
    recoveredBlock5Value4 := (recoveredBlock5Value3) ~= (0).
    recoveredBlock5Value5 := (recoveredBlock5Value0) checkPriorityGroupPreemptive: (recoveredBlock5Value2) coopLevels: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f49cc; bytecode file offset 0xaf12a0"
!SGOperatingSystemLogic methodsFor: 'recovered'!
initForTarget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) osConfigSettings.
    recoveredValue2 := (recoveredValue0) coopLevelsDefault: (recoveredValue1).
    (self) coopLevels: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) osConfigSettings.
    recoveredValue5 := (recoveredValue3) preempLevelsDefault: (recoveredValue4).
    (self) preempLevels: (recoveredValue5).
    (self) eventLevels: (0).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) defTickDuration.
    (self) tickDuration: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20206e64; bytecode file offset 0xb03724"
!SGOperatingSystemLogic methodsFor: 'recovered'!
shiftDownTask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tasks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := tasks.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) swap: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206e98; bytecode file offset 0xb03754"
!SGOperatingSystemLogic methodsFor: 'recovered'!
shiftUpTask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tasks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) swap: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020e5e4; bytecode file offset 0xb0aeb0"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertStartAlarmInInitTaskProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280da688Arg1 | 
    | block280da688Stack0 block280da688Stack1 block280da688Stack2 block280da688Stack3 block280da688PC block280da688Step block280da688Done block280da688Result |
    block280da688Stack0 := self.
    block280da688PC := 4.
    block280da688Done := false.
    [block280da688Done not] whileTrue: [
        block280da688Step := block280da688PC.
        block280da688Step = 4 ifTrue: [
            block280da688Stack1 := nil.
            block280da688PC := 5.
        ].
        block280da688Step = 5 ifTrue: [
            block280da688Stack2 := block280da688Arg1.
            block280da688PC := 6.
        ].
        block280da688Step = 6 ifTrue: [
            block280da688Stack2 := (block280da688Stack2) triggerObject.
            block280da688PC := 7.
        ].
        block280da688Step = 7 ifTrue: [
            (block280da688Stack2 == nil) ifTrue: [block280da688PC := 21] ifFalse: [block280da688PC := 10].
        ].
        block280da688Step = 10 ifTrue: [
            block280da688Stack2 := block280da688Arg1.
            block280da688PC := 11.
        ].
        block280da688Step = 11 ifTrue: [
            block280da688Stack2 := (block280da688Stack2) triggerObject.
            block280da688PC := 12.
        ].
        block280da688Step = 12 ifTrue: [
            block280da688Stack2 := (block280da688Stack2) isTimerTrigger.
            block280da688PC := 13.
        ].
        block280da688Step = 13 ifTrue: [
            (block280da688Stack2) ifTrue: [block280da688PC := 16] ifFalse: [block280da688PC := 21].
        ].
        block280da688Step = 16 ifTrue: [
            block280da688PC := 17.
        ].
        block280da688Step = 17 ifTrue: [
            block280da688Stack1 := block280da688Arg1.
            block280da688PC := 18.
        ].
        block280da688Step = 18 ifTrue: [
            block280da688Stack1 := (block280da688Stack1) triggerObject.
            block280da688PC := 19.
        ].
        block280da688Step = 19 ifTrue: [
            block280da688Stack1 := (block280da688Stack1) setStartAlarm.
            block280da688PC := 21.
        ].
        block280da688Step = 21 ifTrue: [
            block280da688Result := block280da688Stack1.
            block280da688Done := true.
        ].
    ].
    block280da688Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20211030; bytecode file offset 0xb0d908"
!SGOperatingSystemLogic methodsFor: 'recovered'!
initInactiveMode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGOSMode.
    recoveredValue1 := SGOSMode.
    recoveredValue2 := (recoveredValue1) inactiveName.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) id: (0).
    recoveredValue6 := Array.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (self) operatingModes.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    (self) operatingModes: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x202120a4; bytecode file offset 0xb0e97c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    (self) setTasks: (recoveredValue1).
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    (self) operatingModes: (recoveredValue3).
    (self) initInactiveMode.
    (self) initActiveMode.
    (self) enableMonitoring: (true).
    ^self
! !

"ASDBase.ic method 0x20234b9c; bytecode file offset 0xb31468"
!SGOperatingSystemLogic methodsFor: 'recovered'!
assignOpmodes: recoveredArg1 toTask: recoveredArg2
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
            recoveredStack2 := (recoveredStack2) inactiveOpMode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInitTrigger.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) inactiveOpMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWithout: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) operatingModes: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) operatingModes: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20236110; bytecode file offset 0xb329cc"
!SGOperatingSystemLogic methodsFor: 'recovered'!
xmlInitCL: recoveredArg1 pl: recoveredArg2 el: recoveredArg3 em: recoveredArg4 etd: recoveredArg5 td: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    coopLevels := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    preempLevels := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    eventLevels := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    enableMonitoring := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    enableTickDuration := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    tickDuration := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) new.
    tasks := recoveredValue7.
    recoveredValue8 := Array.
    recoveredValue9 := (recoveredValue8) new.
    operatingModes := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x20241aac; bytecode file offset 0xb3e384"
!SGOperatingSystemLogic methodsFor: 'recovered'!
initActiveMode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGOSMode.
    recoveredValue1 := SGOSMode.
    recoveredValue2 := (recoveredValue1) activeName.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) id: (1).
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) startMode: (true).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) ctMode: (true).
    recoveredValue8 := (self) operatingModes.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) copyWith: (recoveredValue9).
    (self) operatingModes: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2025a4ac; bytecode file offset 0xb56d70"
!SGOperatingSystemLogic methodsFor: 'recovered'!
renumberOpmodes
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) operatingModes.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredLocal1.
    (recoveredBlock10Value0) id: (recoveredBlock10Value1).
    recoveredBlock10Value2 := recoveredLocal1.
    recoveredBlock10Value3 := (recoveredBlock10Value2) + (1).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue0) do: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x2025cdd8; bytecode file offset 0xb59698"
!SGOperatingSystemLogic methodsFor: 'recovered'!
changeValueAttribute: recoveredArg1 inTriggerObjectOfTask: recoveredArg2 supportBlock: recoveredArg3 getValueBlock: recoveredArg4 setValueBlock: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) triggerObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029f4fc; bytecode file offset 0xb9bde4"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertOsLogicToERCOSEK
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) osConfigSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) supportsRTA.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280e3a0cArg1 | 
    | block280e3a0cValue0 block280e3a0cValue1 block280e3a0cValue2 block280e3a0cValue3 block280e3a0cValue4 block280e3a0cValue5 |
    block280e3a0cValue0 := block280e3a0cArg1.
    block280e3a0cValue1 := (block280e3a0cValue0) triggerObject.
    block280e3a0cValue2 := block280e3a0cValue1.
    (block280e3a0cValue2) clearSchedulingCooperativeRTA.
    block280e3a0cValue3 := block280e3a0cValue1.
    (block280e3a0cValue3) clearSchedulingFullRTA.
    block280e3a0cValue4 := block280e3a0cValue1.
    (block280e3a0cValue4) clearSchedulingNoneRTA.
    block280e3a0cValue5 := (block280e3a0cValue1) setSchedulingCooperative.
    block280e3a0cValue5
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x202ad608; bytecode file offset 0xba9ed0"
!SGOperatingSystemLogic methodsFor: 'recovered'!
addTask: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tasks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            tasks := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := tasks.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := tasks.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 44.
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

"ASDBase.ic method 0x202aeacc; bytecode file offset 0xbab3a8"
!SGOperatingSystemLogic methodsFor: 'recovered'!
renameOpMode: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e4864Arg1 | 
    | block280e4864Value0 block280e4864Value1 |
    block280e4864Value0 := block280e4864Arg1.
    block280e4864Value1 := (block280e4864Value0) name.
    block280e4864Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 44.
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

"ASDBase.ic method 0x202e6d84; bytecode file offset 0xbe3658"
!SGOperatingSystemLogic methodsFor: 'recovered'!
deleteOperatingMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getTasks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) operatingModes.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) operatingModes.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) copyWithout: (recoveredBlock5Stack3).
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) operatingModes: (recoveredBlock5Stack2).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := operatingModes.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) copyWithout: (recoveredValue3).
    operatingModes := recoveredValue4.
    (self) renumberOpmodes.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x20315390; bytecode file offset 0xc11c6c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
copyContentsTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) operatingModes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block280eb170Arg1 | 
    | block280eb170Value0 block280eb170Value1 |
    block280eb170Value0 := block280eb170Arg1.
    block280eb170Value1 := (block280eb170Value0) duplicate.
    block280eb170Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) operatingModes: (recoveredStack2).
            recoveredPC := 20.
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
            recoveredStack2 := (recoveredStack2) getTasks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value1) operatingModes.
    recoveredBlock26Value3 := (recoveredBlock26Value0) duplicateAndResetOpModes: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setTasks: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) convertOsLogicFor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034e61c; bytecode file offset 0xc4aef8"
!SGOperatingSystemLogic methodsFor: 'recovered'!
deleteTask: recoveredArg1 project: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTTask.
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
            recoveredStack1 := tasks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            tasks := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := tasks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := tasks.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 49]] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := EtasChangeTaskCallback.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWith: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) setActionDelete.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) callCallbacks: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e82c4; bytecode file offset 0xce4bac"
!SGOperatingSystemLogic methodsFor: 'recovered'!
existingItemBelongsTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readReferences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIsReferencedBy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280f8b68Arg1 | 
    | block280f8b68Local1 block280f8b68Stack0 block280f8b68Stack1 block280f8b68Stack2 block280f8b68Stack3 block280f8b68Stack4 block280f8b68PC block280f8b68Step block280f8b68Done block280f8b68Result |
    block280f8b68Stack0 := self.
    block280f8b68PC := 4.
    block280f8b68Done := false.
    [block280f8b68Done not] whileTrue: [
        block280f8b68Step := block280f8b68PC.
        block280f8b68Step = 4 ifTrue: [
            block280f8b68Stack1 := false.
            block280f8b68PC := 5.
        ].
        block280f8b68Step = 5 ifTrue: [
            block280f8b68Stack2 := block280f8b68Arg1.
            block280f8b68PC := 6.
        ].
        block280f8b68Step = 6 ifTrue: [
            block280f8b68Stack3 := [:block280f8b8cArg1 | 
    nil
].
            block280f8b68PC := 8.
        ].
        block280f8b68Step = 8 ifTrue: [
            block280f8b68PC := 14.
        ].
        block280f8b68Step = 14 ifTrue: [
            block280f8b68Stack2 := (block280f8b68Stack2) readKeyIfUndefined: (block280f8b68Stack3).
            block280f8b68PC := 16.
        ].
        block280f8b68Step = 16 ifTrue: [
            block280f8b68Stack3 := block280f8b68Stack2.
            block280f8b68PC := 17.
        ].
        block280f8b68Step = 17 ifTrue: [
            block280f8b68Local1 := block280f8b68Stack3.
            block280f8b68PC := 18.
        ].
        block280f8b68Step = 18 ifTrue: [
            (block280f8b68Stack2 == nil) ifTrue: [block280f8b68PC := 31] ifFalse: [block280f8b68PC := 22].
        ].
        block280f8b68Step = 22 ifTrue: [
            block280f8b68PC := 23.
        ].
        block280f8b68Step = 23 ifTrue: [
            block280f8b68Stack1 := block280f8b68Local1.
            block280f8b68PC := 24.
        ].
        block280f8b68Step = 24 ifTrue: [
            block280f8b68Stack1 := (block280f8b68Stack1) className.
            block280f8b68PC := 26.
        ].
        block280f8b68Step = 26 ifTrue: [
            block280f8b68Stack2 := SGProjectLogic.
            block280f8b68PC := 28.
        ].
        block280f8b68Step = 28 ifTrue: [
            block280f8b68Stack2 := (block280f8b68Stack2) printString.
            block280f8b68PC := 30.
        ].
        block280f8b68Step = 30 ifTrue: [
            block280f8b68Stack1 := (block280f8b68Stack1) = (block280f8b68Stack2).
            block280f8b68PC := 31.
        ].
        block280f8b68Step = 31 ifTrue: [
            block280f8b68Result := block280f8b68Stack1.
            block280f8b68Done := true.
        ].
    ].
    block280f8b68Result
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    ^nil
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingItemBelongsTo.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20418904; bytecode file offset 0xd1520c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertTimeTableTriggerModeProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getTasks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) name.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := 3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) name.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) size.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) min: (recoveredBlock5Stack5).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) copyFrom: (recoveredBlock5Stack3) to: (recoveredBlock5Stack4).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := 'TT_'.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 54].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) triggerObject.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 54] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) triggerObject.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isTimerTrigger.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 46] ifFalse: [recoveredBlock5PC := 54].
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) target.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isControllerTarget.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 recoveredBlock57Value10 recoveredBlock57Value11 recoveredBlock57Value12 recoveredBlock57Value13 |
    recoveredBlock57Value0 := SGMonitorStreamDummy.
    recoveredBlock57Value1 := (recoveredBlock57Value0) create.
    recoveredBlock57Value2 := recoveredArg1.
    recoveredBlock57Value3 := (recoveredBlock57Value2) importLabel.
    recoveredBlock57Value4 := (recoveredBlock57Value3) , (':  Convert task ').
    recoveredBlock57Value5 := recoveredBlock57Arg1.
    recoveredBlock57Value6 := (recoveredBlock57Value5) name.
    recoveredBlock57Value7 := (recoveredBlock57Value4) , (recoveredBlock57Value6).
    recoveredBlock57Value8 := (recoveredBlock57Value7) , (' to timetable trigger mode.').
    (recoveredBlock57Value1) addImportantInfoText: (recoveredBlock57Value8).
    recoveredBlock57Value9 := recoveredBlock57Arg1.
    recoveredBlock57Value10 := recoveredBlock57Arg1.
    recoveredBlock57Value11 := (recoveredBlock57Value10) triggerObject.
    recoveredBlock57Value12 := (recoveredBlock57Value11) asTimetableTrigger.
    recoveredBlock57Value13 := (recoveredBlock57Value9) triggerObject: (recoveredBlock57Value12).
    recoveredBlock57Value13
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204189c4; bytecode file offset 0xd152cc"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertTimeTableTriggerToTimerProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getTasks.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) name.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := 3.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) name.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) size.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) min: (recoveredBlock5Stack5).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) copyFrom: (recoveredBlock5Stack3) to: (recoveredBlock5Stack4).
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := 'TT_'.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 55].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) triggerObject.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 55] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) triggerObject.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isTimetableTrigger.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 46] ifFalse: [recoveredBlock5PC := 55].
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) target.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isControllerTarget.
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) not.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 recoveredBlock58Value7 recoveredBlock58Value8 recoveredBlock58Value9 recoveredBlock58Value10 recoveredBlock58Value11 recoveredBlock58Value12 recoveredBlock58Value13 |
    recoveredBlock58Value0 := SGMonitorStreamDummy.
    recoveredBlock58Value1 := (recoveredBlock58Value0) create.
    recoveredBlock58Value2 := recoveredArg1.
    recoveredBlock58Value3 := (recoveredBlock58Value2) importLabel.
    recoveredBlock58Value4 := (recoveredBlock58Value3) , (':  Convert task ').
    recoveredBlock58Value5 := recoveredBlock58Arg1.
    recoveredBlock58Value6 := (recoveredBlock58Value5) name.
    recoveredBlock58Value7 := (recoveredBlock58Value4) , (recoveredBlock58Value6).
    recoveredBlock58Value8 := (recoveredBlock58Value7) , (' to timer mode.').
    (recoveredBlock58Value1) addImportantInfoText: (recoveredBlock58Value8).
    recoveredBlock58Value9 := recoveredBlock58Arg1.
    recoveredBlock58Value10 := recoveredBlock58Arg1.
    recoveredBlock58Value11 := (recoveredBlock58Value10) triggerObject.
    recoveredBlock58Value12 := (recoveredBlock58Value11) asTimerTrigger.
    recoveredBlock58Value13 := (recoveredBlock58Value9) triggerObject: (recoveredBlock58Value12).
    recoveredBlock58Value13
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2045c73c; bytecode file offset 0xd59018"
!SGOperatingSystemLogic methodsFor: 'recovered'!
calculateTickDuration: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) triggerObject.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 63] ifFalse: [recoveredBlock10PC := 22].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) triggerObject.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isTimerTrigger.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 28] ifFalse: [recoveredBlock10PC := 63].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) triggerObject.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) period.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack3 := 1000000000.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) asInteger.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) * (recoveredBlock10Stack3).
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) gcd: (recoveredBlock10Stack2).
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) triggerObject.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) delay.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack3 := 1000000000.
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) asInteger.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) * (recoveredBlock10Stack3).
            recoveredBlock10PC := 57.
        ].
        recoveredBlock10Step = 57 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) gcd: (recoveredBlock10Stack2).
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) minCycleTime.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 |
    recoveredBlock71Value0 := recoveredLocal1.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (1000) asInteger.
    recoveredBlock71Value3 := (recoveredBlock71Value1) * (recoveredBlock71Value2).
    recoveredBlock71Value4 := (recoveredBlock71Value0) gcd: (recoveredBlock71Value3).
    recoveredBlock71Value5 := recoveredBlock71Value4.
    recoveredLocal1 := recoveredBlock71Value5.
    recoveredBlock71Value4
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 1000000000.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046ec10; bytecode file offset 0xd6b53c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
addTaskProject: recoveredArg1 opModes: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810144cArg1 | 
    | block2810144cValue0 block2810144cValue1 |
    block2810144cValue0 := block2810144cArg1.
    block2810144cValue1 := (block2810144cValue0) name.
    block2810144cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := SGOSTask.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'asd_task'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Call_91196'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableTickDuration.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerObject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) triggerObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) period.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) initForTarget: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) inactiveOpMode.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := SGOSInitTrigger.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) triggerObject: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) operatingModes: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) addTask: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := EtasChangeTaskCallback.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) setActionAdd.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20584750; bytecode file offset 0xe8108c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
buildMdl: recoveredArg1 project: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasksForProject: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block28113590Arg1 | 
    | block28113590Value0 block28113590Value1 |
    block28113590Value0 := block28113590Arg1.
    block28113590Value1 := (block28113590Value0) isHooksMonVarAPI.
    block28113590Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block281135b4Arg1 | 
    | block281135b4Value0 block281135b4Value1 |
    block281135b4Value0 := block281135b4Arg1.
    block281135b4Value1 := (block281135b4Value0) isHooksDtOnlyAPI.
    block281135b4Value1
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) or: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) enableMonitoring.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) and: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) debug: (recoveredStack2) monitoring: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) coopLevels.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) preempLevels.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) eventLevels.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) prioLevelsCoop: (recoveredStack1) preemp: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := recoveredArg1.
    recoveredBlock81Value2 := (recoveredBlock81Value0) buildMdl: (recoveredBlock81Value1).
    recoveredBlock81Value2
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) osErrorNo: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [:block281135d8Arg1 | 
    | block281135d8Value0 block281135d8Value1 |
    block281135d8Value0 := block281135d8Arg1.
    block281135d8Value1 := (block281135d8Value0) isInactiveOpMode.
    block281135d8Value1
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 'initial operating mode'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) fatalExpect: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:block281135fcArg1 | 
    | block281135fcValue0 block281135fcValue1 |
    block281135fcValue0 := block281135fcArg1.
    block281135fcValue1 := (block281135fcValue0) isStartMode.
    block281135fcValue1
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) operatingModes.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) osWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) operatingModes.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) operatingModes.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) initialOpMode: (recoveredStack1) startingOpMode: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventsForTarget: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := [:recoveredBlock225Arg1 | 
    | recoveredBlock225Value0 recoveredBlock225Value1 recoveredBlock225Value2 |
    recoveredBlock225Value0 := recoveredBlock225Arg1.
    recoveredBlock225Value1 := recoveredArg1.
    recoveredBlock225Value2 := (recoveredBlock225Value0) buildMdl: (recoveredBlock225Value1).
    recoveredBlock225Value2
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := [:recoveredBlock244Arg1 | 
    | recoveredBlock244Value0 recoveredBlock244Value1 recoveredBlock244Value2 recoveredBlock244Value3 |
    recoveredBlock244Value0 := recoveredBlock244Arg1.
    recoveredBlock244Value1 := recoveredArg1.
    recoveredBlock244Value2 := (self) enableMonitoring.
    recoveredBlock244Value3 := (recoveredBlock244Value0) buildMdl: (recoveredBlock244Value1) enableMonitoring: (recoveredBlock244Value2).
    recoveredBlock244Value3
].
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205868c0; bytecode file offset 0xe8322c"
!SGOperatingSystemLogic methodsFor: 'recovered'!
writeXML: recoveredArg1 sgClass: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack3 := 'OsDescription'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) openComplex: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'OID'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) dbObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) dbObject: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'coopLevels'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) coopLevels.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) nnInt: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'preempLevels'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) preempLevels.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) nnInt: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'eventLevels'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) eventLevels.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) nnInt: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'enableMonitoring'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) enableMonitoring.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) boolean: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'enableTickDuration'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) enableTickDuration.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) attr: (recoveredStack3) boolean: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'tickDuration'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) tickDuration.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'OperationModes'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatingModes.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 recoveredBlock75Value6 recoveredBlock75Value7 recoveredBlock75Value8 recoveredBlock75Value9 recoveredBlock75Value10 recoveredBlock75Value11 recoveredBlock75Value12 recoveredBlock75Value13 recoveredBlock75Value14 |
    recoveredBlock75Value0 := recoveredArg1.
    (recoveredBlock75Value0) openComplex: ('OperationMode').
    recoveredBlock75Value1 := recoveredArg1.
    recoveredBlock75Value2 := recoveredBlock75Arg1.
    recoveredBlock75Value3 := (recoveredBlock75Value2) name.
    (recoveredBlock75Value1) attr: ('name') string: (recoveredBlock75Value3).
    recoveredBlock75Value4 := recoveredArg1.
    recoveredBlock75Value5 := recoveredBlock75Arg1.
    recoveredBlock75Value6 := (recoveredBlock75Value5) id.
    (recoveredBlock75Value4) attr: ('id') nnInt: (recoveredBlock75Value6).
    recoveredBlock75Value7 := recoveredArg1.
    recoveredBlock75Value8 := recoveredBlock75Arg1.
    recoveredBlock75Value9 := (recoveredBlock75Value8) isStartMode.
    (recoveredBlock75Value7) attr: ('isStartMode') boolean: (recoveredBlock75Value9).
    recoveredBlock75Value10 := recoveredArg1.
    recoveredBlock75Value11 := recoveredBlock75Arg1.
    recoveredBlock75Value12 := (recoveredBlock75Value11) isCTMode.
    (recoveredBlock75Value10) attr: ('isCTMode') boolean: (recoveredBlock75Value12).
    recoveredBlock75Value13 := recoveredArg1.
    recoveredBlock75Value14 := (recoveredBlock75Value13) closeComplex.
    recoveredBlock75Value14
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'Tasks'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := tasks.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 recoveredBlock151Value3 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := recoveredArg1.
    recoveredBlock151Value2 := recoveredArg2.
    recoveredBlock151Value3 := (recoveredBlock151Value0) writeXML: (recoveredBlock151Value1) sgClass: (recoveredBlock151Value2).
    recoveredBlock151Value3
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'OsSettings'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := osConfigSettings.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 255] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'Group'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := osConfigSettings.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := 'Call_88700'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := osConfigSettings.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) newOptions.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 recoveredBlock222Value4 recoveredBlock222Value5 |
    recoveredBlock222Value0 := recoveredArg1.
    recoveredBlock222Value1 := recoveredBlock222Arg1.
    recoveredBlock222Value2 := recoveredLocal1.
    recoveredBlock222Value3 := recoveredBlock222Arg1.
    recoveredBlock222Value4 := (recoveredBlock222Value2) at: (recoveredBlock222Value3).
    recoveredBlock222Value5 := (recoveredBlock222Value0) complex: ('Option') name: (recoveredBlock222Value1) value: (recoveredBlock222Value4).
    recoveredBlock222Value5
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b00a0; bytecode file offset 0xeac9d8"
!SGOperatingSystemLogic methodsFor: 'recovered'!
consistentCTTasksFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctVariables.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctTasks.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctTasks.
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
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredArg1.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) instVarProcessesForProject: (recoveredBlock36Stack2).
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack2 := [:block28116a04Arg1 | 
    | block28116a04Value0 block28116a04Value1 block28116a04Value2 |
    block28116a04Value0 := block28116a04Arg1.
    block28116a04Value1 := (block28116a04Value0) first.
    block28116a04Value2 := (block28116a04Value1) = ('dummy').
    block28116a04Value2
].
            recoveredBlock36PC := 50.
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 61.
        ].
        recoveredBlock36Step = 61 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) select: (recoveredBlock36Stack2).
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredLocal2 := recoveredBlock36Stack1.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 69.
        ].
        recoveredBlock36Step = 69 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) isEmpty.
            recoveredBlock36PC := 70.
        ].
        recoveredBlock36Step = 70 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 86] ifFalse: [recoveredBlock36PC := 74].
        ].
        recoveredBlock36Step = 74 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 77.
        ].
        recoveredBlock36Step = 77 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) someElement.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack2 := nil.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) includes: (recoveredBlock36Stack2).
            recoveredBlock36PC := 82.
        ].
        recoveredBlock36Step = 82 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 86] ifFalse: [recoveredBlock36PC := 96].
        ].
        recoveredBlock36Step = 86 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal4.
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 90.
        ].
        recoveredBlock36Step = 90 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) add: (recoveredBlock36Stack2).
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            recoveredBlock36PC := 133.
        ].
        recoveredBlock36Step = 96 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal2.
            recoveredBlock36PC := 99.
        ].
        recoveredBlock36Step = 99 ifTrue: [
            recoveredBlock36Stack2 := [:block28116a28Arg1 | 
    | block28116a28Value0 block28116a28Value1 block28116a28Value2 |
    block28116a28Value0 := block28116a28Arg1.
    block28116a28Value1 := (block28116a28Value0) first.
    block28116a28Value2 := (block28116a28Value1) = ('dummy').
    block28116a28Value2
].
            recoveredBlock36PC := 101.
        ].
        recoveredBlock36Step = 101 ifTrue: [
            recoveredBlock36PC := 111.
        ].
        recoveredBlock36Step = 111 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) select: (recoveredBlock36Stack2).
            recoveredBlock36PC := 113.
        ].
        recoveredBlock36Step = 113 ifTrue: [
            recoveredBlock36Stack2 := [:recoveredBlock36Block113Arg1 | 
    | recoveredBlock36Block113Value0 recoveredBlock36Block113Value1 recoveredBlock36Block113Value2 recoveredBlock36Block113Value3 recoveredBlock36Block113Value4 |
    recoveredBlock36Block113Value0 := recoveredLocal3.
    recoveredBlock36Block113Value1 := recoveredBlock36Block113Arg1.
    recoveredBlock36Block113Value2 := (recoveredBlock36Block113Value1) last.
    recoveredBlock36Block113Value3 := (recoveredBlock36Block113Value2) aliasName.
    recoveredBlock36Block113Value4 := (recoveredBlock36Block113Value0) add: (recoveredBlock36Block113Value3).
    recoveredBlock36Block113Value4
].
            recoveredBlock36PC := 131.
        ].
        recoveredBlock36Step = 131 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) do: (recoveredBlock36Stack2).
            recoveredBlock36PC := 133.
        ].
        recoveredBlock36Step = 133 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 |
    recoveredBlock139Value0 := tasks.
    recoveredBlock139Value1 := recoveredBlock139Arg1.
    recoveredBlock139Value2 := (recoveredBlock139Value0) copyWithout: (recoveredBlock139Value1).
    recoveredBlock139Value3 := recoveredBlock139Value2.
    tasks := recoveredBlock139Value3.
    recoveredBlock139Value2
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) continuousTimeProcesses.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 recoveredBlock162Value3 recoveredBlock162Value4 |
    recoveredBlock162Value0 := recoveredLocal3.
    recoveredBlock162Value1 := recoveredBlock162Arg1.
    recoveredBlock162Value2 := (recoveredBlock162Value1) aliasName.
    recoveredBlock162Value3 := (recoveredBlock162Value0) includes: (recoveredBlock162Value2).
    recoveredBlock162Value4 := (recoveredBlock162Value3) not.
    recoveredBlock162Value4
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := [:recoveredBlock186Arg1 | 
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack0 := (recoveredBlock186Stack0) ctTasks.
            recoveredBlock186PC := 193.
        ].
        recoveredBlock186Step = 193 ifTrue: [
            recoveredBlock186Stack1 := [:recoveredBlock186Block193Arg1 | 
    | recoveredBlock186Block193Value0 recoveredBlock186Block193Value1 recoveredBlock186Block193Value2 recoveredBlock186Block193Value3 recoveredBlock186Block193Value4 |
    recoveredBlock186Block193Value0 := recoveredBlock186Block193Arg1.
    recoveredBlock186Block193Value1 := (recoveredBlock186Block193Value0) name.
    recoveredBlock186Block193Value2 := recoveredBlock186Arg1.
    recoveredBlock186Block193Value3 := (recoveredBlock186Block193Value2) methodName.
    recoveredBlock186Block193Value4 := (recoveredBlock186Block193Value1) = (recoveredBlock186Block193Value3).
    recoveredBlock186Block193Value4
].
            recoveredBlock186PC := 210.
        ].
        recoveredBlock186Step = 210 ifTrue: [
            recoveredBlock186Stack0 := (recoveredBlock186Stack0) anySatisfy: (recoveredBlock186Stack1).
            recoveredBlock186PC := 212.
        ].
        recoveredBlock186Step = 212 ifTrue: [
            (recoveredBlock186Stack0) ifTrue: [recoveredBlock186PC := 216] ifFalse: [recoveredBlock186PC := 228].
        ].
        recoveredBlock186Step = 216 ifTrue: [
            recoveredBlock186Stack0 := self.
            recoveredBlock186PC := 217.
        ].
        recoveredBlock186Step = 217 ifTrue: [
            recoveredBlock186Stack1 := 'Double task detected: '.
            recoveredBlock186PC := 219.
        ].
        recoveredBlock186Step = 219 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 222.
        ].
        recoveredBlock186Step = 222 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) methodName.
            recoveredBlock186PC := 224.
        ].
        recoveredBlock186Step = 224 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) , (recoveredBlock186Stack2).
            recoveredBlock186PC := 226.
        ].
        recoveredBlock186Step = 226 ifTrue: [
            (recoveredBlock186Stack0) error: (recoveredBlock186Stack1).
            recoveredBlock186PC := 228.
        ].
        recoveredBlock186Step = 228 ifTrue: [
            recoveredBlock186Stack0 := self.
            recoveredBlock186PC := 229.
        ].
        recoveredBlock186Step = 229 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Arg1.
            recoveredBlock186PC := 232.
        ].
        recoveredBlock186Step = 232 ifTrue: [
            (recoveredBlock186Stack0) createCTTaskFor: (recoveredBlock186Stack1).
            recoveredBlock186PC := 234.
        ].
        recoveredBlock186Step = 234 ifTrue: [
            recoveredBlock186Stack0 := recoveredLocal3.
            recoveredBlock186PC := 237.
        ].
        recoveredBlock186Step = 237 ifTrue: [
            recoveredBlock186Stack1 := recoveredBlock186Arg1.
            recoveredBlock186PC := 240.
        ].
        recoveredBlock186Step = 240 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) aliasName.
            recoveredBlock186PC := 242.
        ].
        recoveredBlock186Step = 242 ifTrue: [
            recoveredBlock186Stack0 := (recoveredBlock186Stack0) add: (recoveredBlock186Stack1).
            recoveredBlock186PC := 244.
        ].
        recoveredBlock186Step = 244 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack0.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctTasks.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Local1 recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249Stack4 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 257.
        ].
        recoveredBlock249Step = 257 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) name.
            recoveredBlock249PC := 259.
        ].
        recoveredBlock249Step = 259 ifTrue: [
            recoveredBlock249Stack2 := recoveredArg1.
            recoveredBlock249PC := 262.
        ].
        recoveredBlock249Step = 262 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) terminateMethodName.
            recoveredBlock249PC := 264.
        ].
        recoveredBlock249Step = 264 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) = (recoveredBlock249Stack2).
            recoveredBlock249PC := 265.
        ].
        recoveredBlock249Step = 265 ifTrue: [
            (recoveredBlock249Stack1) ifTrue: [recoveredBlock249PC := 268] ifFalse: [recoveredBlock249PC := 282].
        ].
        recoveredBlock249Step = 268 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 269.
        ].
        recoveredBlock249Step = 269 ifTrue: [
            recoveredBlock249Stack2 := Array.
            recoveredBlock249PC := 271.
        ].
        recoveredBlock249Step = 271 ifTrue: [
            recoveredBlock249Stack3 := self.
            recoveredBlock249PC := 272.
        ].
        recoveredBlock249Step = 272 ifTrue: [
            recoveredBlock249Stack3 := (recoveredBlock249Stack3) inactiveOpMode.
            recoveredBlock249PC := 274.
        ].
        recoveredBlock249Step = 274 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) with: (recoveredBlock249Stack3).
            recoveredBlock249PC := 276.
        ].
        recoveredBlock249Step = 276 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) operatingModes: (recoveredBlock249Stack2).
            recoveredBlock249PC := 278.
        ].
        recoveredBlock249Step = 278 ifTrue: [
            recoveredBlock249PC := 303.
        ].
        recoveredBlock249Step = 282 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 283.
        ].
        recoveredBlock249Step = 283 ifTrue: [
            recoveredBlock249Stack2 := self.
            recoveredBlock249PC := 284.
        ].
        recoveredBlock249Step = 284 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) ctOperatingMode.
            recoveredBlock249PC := 286.
        ].
        recoveredBlock249Step = 286 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Stack2.
            recoveredBlock249PC := 287.
        ].
        recoveredBlock249Step = 287 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack3.
            recoveredBlock249PC := 288.
        ].
        recoveredBlock249Step = 288 ifTrue: [
            (recoveredBlock249Stack2 == nil) ifTrue: [recoveredBlock249PC := 301] ifFalse: [recoveredBlock249PC := 292].
        ].
        recoveredBlock249Step = 292 ifTrue: [
            recoveredBlock249PC := 293.
        ].
        recoveredBlock249Step = 293 ifTrue: [
            recoveredBlock249Stack1 := recoveredBlock249Arg1.
            recoveredBlock249PC := 294.
        ].
        recoveredBlock249Step = 294 ifTrue: [
            recoveredBlock249Stack2 := Array.
            recoveredBlock249PC := 296.
        ].
        recoveredBlock249Step = 296 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Local1.
            recoveredBlock249PC := 297.
        ].
        recoveredBlock249Step = 297 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) with: (recoveredBlock249Stack3).
            recoveredBlock249PC := 299.
        ].
        recoveredBlock249Step = 299 ifTrue: [
            recoveredBlock249Stack1 := (recoveredBlock249Stack1) operatingModes: (recoveredBlock249Stack2).
            recoveredBlock249PC := 301.
        ].
        recoveredBlock249Step = 301 ifTrue: [
            recoveredBlock249Stack2 := nil.
            recoveredBlock249PC := 302.
        ].
        recoveredBlock249Step = 302 ifTrue: [
            recoveredBlock249Local1 := recoveredBlock249Stack2.
            recoveredBlock249PC := 303.
        ].
        recoveredBlock249Step = 303 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) ctTasks.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c0d18; bytecode file offset 0xebd680"
!SGOperatingSystemLogic methodsFor: 'recovered'!
convertOsLogicFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) osConfigSettings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := TGTarget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) osConfigSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedTarget: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsRTA.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) supportsRTA.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTasks.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:block28117b98Arg1 | 
    | block28117b98Value0 block28117b98Value1 block28117b98Value2 block28117b98Value3 block28117b98Value4 block28117b98Value5 |
    block28117b98Value0 := block28117b98Arg1.
    block28117b98Value1 := (block28117b98Value0) triggerObject.
    block28117b98Value2 := block28117b98Value1.
    (block28117b98Value2) clearSchedulingCooperativeRTA.
    block28117b98Value3 := block28117b98Value1.
    (block28117b98Value3) clearSchedulingFullRTA.
    block28117b98Value4 := block28117b98Value1.
    (block28117b98Value4) clearSchedulingNoneRTA.
    block28117b98Value5 := (block28117b98Value1) setSchedulingCooperative.
    block28117b98Value5
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTasks.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Local1 recoveredBlock117Stack0 recoveredBlock117Stack1 recoveredBlock117Stack2 recoveredBlock117Stack3 recoveredBlock117Stack4 recoveredBlock117PC recoveredBlock117Step recoveredBlock117Done recoveredBlock117Result |
    recoveredBlock117Stack0 := self.
    recoveredBlock117PC := 124.
    recoveredBlock117Done := false.
    [recoveredBlock117Done not] whileTrue: [
        recoveredBlock117Step := recoveredBlock117PC.
        recoveredBlock117Step = 124 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 125.
        ].
        recoveredBlock117Step = 125 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) triggerObject.
            recoveredBlock117PC := 127.
        ].
        recoveredBlock117Step = 127 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) isTimetableTrigger.
            recoveredBlock117PC := 129.
        ].
        recoveredBlock117Step = 129 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 132] ifFalse: [recoveredBlock117PC := 223].
        ].
        recoveredBlock117Step = 132 ifTrue: [
            recoveredBlock117Stack1 := SGOSTriggerObject.
            recoveredBlock117PC := 134.
        ].
        recoveredBlock117Step = 134 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) allTriggerClasses.
            recoveredBlock117PC := 136.
        ].
        recoveredBlock117Step = 136 ifTrue: [
            recoveredBlock117Stack2 := [:recoveredBlock117Block136Arg1 | 
    | recoveredBlock117Block136Value0 recoveredBlock117Block136Value1 recoveredBlock117Block136Value2 recoveredBlock117Block136Value3 recoveredBlock117Block136Value4 recoveredBlock117Block136Value5 recoveredBlock117Block136Value6 recoveredBlock117Block136Value7 |
    recoveredBlock117Block136Value0 := ('Kli') = ('Call_59764').
    recoveredBlock117Block136Value1 := recoveredBlock117Block136Arg1.
    recoveredBlock117Block136Value2 := TGTarget.
    recoveredBlock117Block136Value3 := recoveredArg1.
    recoveredBlock117Block136Value4 := (recoveredBlock117Block136Value3) osConfigSettings.
    recoveredBlock117Block136Value5 := (recoveredBlock117Block136Value4) target.
    recoveredBlock117Block136Value6 := (recoveredBlock117Block136Value2) selectedTarget: (recoveredBlock117Block136Value5).
    recoveredBlock117Block136Value7 := (recoveredBlock117Block136Value1) supportedByTarget: (recoveredBlock117Block136Value6).
    recoveredBlock117Block136Value7
].
            recoveredBlock117PC := 160.
        ].
        recoveredBlock117Step = 160 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) select: (recoveredBlock117Stack2).
            recoveredBlock117PC := 162.
        ].
        recoveredBlock117Step = 162 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack1.
            recoveredBlock117PC := 163.
        ].
        recoveredBlock117Step = 163 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local1.
            recoveredBlock117PC := 164.
        ].
        recoveredBlock117Step = 164 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) isEmpty.
            recoveredBlock117PC := 166.
        ].
        recoveredBlock117Step = 166 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 188] ifFalse: [recoveredBlock117PC := 170].
        ].
        recoveredBlock117Step = 170 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local1.
            recoveredBlock117PC := 171.
        ].
        recoveredBlock117Step = 171 ifTrue: [
            recoveredBlock117Stack2 := SGOSTimerTrigger.
            recoveredBlock117PC := 173.
        ].
        recoveredBlock117Step = 173 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) includes: (recoveredBlock117Stack2).
            recoveredBlock117PC := 175.
        ].
        recoveredBlock117Step = 175 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 178] ifFalse: [recoveredBlock117PC := 188].
        ].
        recoveredBlock117Step = 178 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 179.
        ].
        recoveredBlock117Step = 179 ifTrue: [
            recoveredBlock117Stack2 := SGOSTimerTrigger.
            recoveredBlock117PC := 181.
        ].
        recoveredBlock117Step = 181 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) create.
            recoveredBlock117PC := 183.
        ].
        recoveredBlock117Step = 183 ifTrue: [
            (recoveredBlock117Stack1) triggerObject: (recoveredBlock117Stack2).
            recoveredBlock117PC := 185.
        ].
        recoveredBlock117Step = 185 ifTrue: [
            recoveredBlock117PC := 221.
        ].
        recoveredBlock117Step = 188 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Local1.
            recoveredBlock117PC := 189.
        ].
        recoveredBlock117Step = 189 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) isEmpty.
            recoveredBlock117PC := 191.
        ].
        recoveredBlock117Step = 191 ifTrue: [
            (recoveredBlock117Stack1) ifTrue: [recoveredBlock117PC := 204] ifFalse: [recoveredBlock117PC := 194].
        ].
        recoveredBlock117Step = 194 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 195.
        ].
        recoveredBlock117Step = 195 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Local1.
            recoveredBlock117PC := 196.
        ].
        recoveredBlock117Step = 196 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) first.
            recoveredBlock117PC := 198.
        ].
        recoveredBlock117Step = 198 ifTrue: [
            (recoveredBlock117Stack1) triggerObject: (recoveredBlock117Stack2).
            recoveredBlock117PC := 200.
        ].
        recoveredBlock117Step = 200 ifTrue: [
            recoveredBlock117PC := 221.
        ].
        recoveredBlock117Step = 204 ifTrue: [
            recoveredBlock117Stack1 := RBUserInfo.
            recoveredBlock117PC := 206.
        ].
        recoveredBlock117Step = 206 ifTrue: [
            recoveredBlock117Stack2 := 'The task <'.
            recoveredBlock117PC := 208.
        ].
        recoveredBlock117Step = 208 ifTrue: [
            recoveredBlock117Stack3 := recoveredBlock117Arg1.
            recoveredBlock117PC := 209.
        ].
        recoveredBlock117Step = 209 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) name.
            recoveredBlock117PC := 211.
        ].
        recoveredBlock117Step = 211 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) , (recoveredBlock117Stack3).
            recoveredBlock117PC := 213.
        ].
        recoveredBlock117Step = 213 ifTrue: [
            recoveredBlock117Stack3 := '> could not be converted!! You have to delete this task.'.
            recoveredBlock117PC := 215.
        ].
        recoveredBlock117Step = 215 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) , (recoveredBlock117Stack3).
            recoveredBlock117PC := 217.
        ].
        recoveredBlock117Step = 217 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) errorMessage: (recoveredBlock117Stack2).
            recoveredBlock117PC := 219.
        ].
        recoveredBlock117Step = 219 ifTrue: [
            (recoveredBlock117Stack1) prompt.
            recoveredBlock117PC := 221.
        ].
        recoveredBlock117Step = 221 ifTrue: [
            recoveredBlock117Stack1 := nil.
            recoveredBlock117PC := 222.
        ].
        recoveredBlock117Step = 222 ifTrue: [
            recoveredBlock117Local1 := recoveredBlock117Stack1.
            recoveredBlock117PC := 223.
        ].
        recoveredBlock117Step = 223 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 224.
        ].
        recoveredBlock117Step = 224 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) triggerObject.
            recoveredBlock117PC := 226.
        ].
        recoveredBlock117Step = 226 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 227.
        ].
        recoveredBlock117Step = 227 ifTrue: [
            (recoveredBlock117Stack2) clearSchedulingCooperative.
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 230.
        ].
        recoveredBlock117Step = 230 ifTrue: [
            (recoveredBlock117Stack2) clearSchedulingPreemptive.
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 233.
        ].
        recoveredBlock117Step = 233 ifTrue: [
            (recoveredBlock117Stack2) clearSchedulingNonPreemptive.
            recoveredBlock117PC := 235.
        ].
        recoveredBlock117Step = 235 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) setSchedulingFullRTA.
            recoveredBlock117PC := 237.
        ].
        recoveredBlock117Step = 237 ifTrue: [
            recoveredBlock117Result := recoveredBlock117Stack1.
            recoveredBlock117Done := true.
        ].
    ].
    recoveredBlock117Result
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) events.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTasks.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:block28117bbcArg1 | 
    | block28117bbcValue0 block28117bbcValue1 block28117bbcValue2 |
    block28117bbcValue0 := block28117bbcArg1.
    block28117bbcValue1 := (block28117bbcValue0) triggerObject.
    block28117bbcValue2 := (block28117bbcValue1) isEventTrigger.
    block28117bbcValue2
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := [:recoveredBlock270Arg1 | 
    | recoveredBlock270Value0 recoveredBlock270Value1 recoveredBlock270Value2 recoveredBlock270Value3 recoveredBlock270Value4 recoveredBlock270Value5 |
    recoveredBlock270Value0 := recoveredLocal1.
    recoveredBlock270Value1 := [:recoveredBlock270Block279Arg1 | 
    | recoveredBlock270Block279Value0 recoveredBlock270Block279Value1 recoveredBlock270Block279Value2 recoveredBlock270Block279Value3 recoveredBlock270Block279Value4 recoveredBlock270Block279Value5 recoveredBlock270Block279Value6 |
    recoveredBlock270Block279Value0 := recoveredBlock270Block279Arg1.
    recoveredBlock270Block279Value1 := (recoveredBlock270Block279Value0) name.
    recoveredBlock270Block279Value2 := recoveredBlock270Arg1.
    recoveredBlock270Block279Value3 := (recoveredBlock270Block279Value2) triggerObject.
    recoveredBlock270Block279Value4 := (recoveredBlock270Block279Value3) triggerEvent.
    recoveredBlock270Block279Value5 := (recoveredBlock270Block279Value4) name.
    recoveredBlock270Block279Value6 := (recoveredBlock270Block279Value1) = (recoveredBlock270Block279Value5).
    recoveredBlock270Block279Value6
].
    recoveredBlock270Value2 := [].
    recoveredBlock270Value3 := (recoveredBlock270Value0) detect: (recoveredBlock270Value1) ifNone: (recoveredBlock270Value2).
    recoveredBlock270Value4 := [:recoveredBlock270Block304Arg1 | 
    | recoveredBlock270Block304Value0 recoveredBlock270Block304Value1 recoveredBlock270Block304Value2 recoveredBlock270Block304Value3 recoveredBlock270Block304Value4 |
    recoveredBlock270Block304Value0 := recoveredBlock270Arg1.
    recoveredBlock270Block304Value1 := (recoveredBlock270Block304Value0) triggerObject.
    recoveredBlock270Block304Value2 := (recoveredBlock270Block304Value1) triggerEvent.
    recoveredBlock270Block304Value3 := recoveredBlock270Block304Arg1.
    recoveredBlock270Block304Value4 := (recoveredBlock270Block304Value2) updateForTargetFeature: (recoveredBlock270Block304Value3).
    recoveredBlock270Block304Value4
].
    recoveredBlock270Value5 := (recoveredBlock270Value3) ifNotNil: (recoveredBlock270Value4).
    recoveredBlock270Value5
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

