"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018b3c; bytecode file offset 0x92209c"
!SGMdOperatingSystem methodsFor: 'recovered'!
errLabel
    ^'XXXXXX_Operating System'
! !

"ASDBase.ic method 0x20020f54; bytecode file offset 0x92209c"
!SGMdOperatingSystem methodsFor: 'recovered'!
initCTTaskname
    ^'initialize_CT'
! !

"ASDBase.ic method 0x20024adc; bytecode file offset 0x92209c"
!SGMdOperatingSystem methodsFor: 'recovered'!
inactiveAppMode
    ^'inactive'
! !

"ASDBase.ic method 0x200253dc; bytecode file offset 0x92209c"
!SGMdOperatingSystem methodsFor: 'recovered'!
terminateCTTaskname
    ^'terminate_CT'
! !

"ASDBase.ic method 0x2002a284; bytecode file offset 0x934580"
!SGMdOperatingSystem methodsFor: 'recovered'!
isTimeBaseTicks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osekInfo.
    recoveredValue1 := (recoveredValue0) enableTicks.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200355d4; bytecode file offset 0x934580"
!SGMdOperatingSystem methodsFor: 'recovered'!
isOsekRTAEnabled
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osekInfo.
    recoveredValue1 := (recoveredValue0) isOsekRTAEnabled.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050970; bytecode file offset 0x94d4ec"
!SGMdOperatingSystem methodsFor: 'recovered'!
generateOSCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) generateOSCode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055a7c; bytecode file offset 0x952a9c"
!SGMdOperatingSystem methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) operatingSystem: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069638; bytecode file offset 0x966bdc"
!SGMdOperatingSystem methodsFor: 'recovered'!
numCoopLevels
    | recoveredValue0 |
    recoveredValue0 := coop.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a69c; bytecode file offset 0x967a18"
!SGMdOperatingSystem methodsFor: 'recovered'!
numPreempLevels
    | recoveredValue0 |
    recoveredValue0 := preemp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b518; bytecode file offset 0x96873c"
!SGMdOperatingSystem methodsFor: 'recovered'!
numEventLevels
    | recoveredValue0 |
    recoveredValue0 := event.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c4c4; bytecode file offset 0x9692b0"
!SGMdOperatingSystem methodsFor: 'recovered'!
events
    | recoveredValue0 |
    recoveredValue0 := events.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb38; bytecode file offset 0x969c04"
!SGMdOperatingSystem methodsFor: 'recovered'!
opModes
    | recoveredValue0 |
    recoveredValue0 := opModes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d584; bytecode file offset 0x96a390"
!SGMdOperatingSystem methodsFor: 'recovered'!
initOpMode
    | recoveredValue0 |
    recoveredValue0 := initOpMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd30; bytecode file offset 0x96a9dc"
!SGMdOperatingSystem methodsFor: 'recovered'!
tasks
    | recoveredValue0 |
    recoveredValue0 := tasks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e1ac; bytecode file offset 0x96af48"
!SGMdOperatingSystem methodsFor: 'recovered'!
startOpMode
    | recoveredValue0 |
    recoveredValue0 := startOpMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eab0; bytecode file offset 0x96b41c"
!SGMdOperatingSystem methodsFor: 'recovered'!
debug
    | recoveredValue0 |
    recoveredValue0 := debug.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee6c; bytecode file offset 0x96b8a0"
!SGMdOperatingSystem methodsFor: 'recovered'!
monitoring
    | recoveredValue0 |
    recoveredValue0 := monitoring.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f180; bytecode file offset 0x96bc1c"
!SGMdOperatingSystem methodsFor: 'recovered'!
methods
    | recoveredValue0 |
    recoveredValue0 := methods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f5e8; bytecode file offset 0x96bf7c"
!SGMdOperatingSystem methodsFor: 'recovered'!
dTId
    | recoveredValue0 |
    recoveredValue0 := dTId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f8b0; bytecode file offset 0x96c1f4"
!SGMdOperatingSystem methodsFor: 'recovered'!
projectDecl
    | recoveredValue0 |
    recoveredValue0 := projectDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072448; bytecode file offset 0x96ee04"
!SGMdOperatingSystem methodsFor: 'recovered'!
deadlines
    ^1
! !

"ASDBase.ic method 0x20077d0c; bytecode file offset 0x9757c8"
!SGMdOperatingSystem methodsFor: 'recovered'!
isMdlOperatingSystem
    ^true
! !

"ASDBase.ic method 0x2007f0cc; bytecode file offset 0x97c330"
!SGMdOperatingSystem methodsFor: 'recovered'!
isMdlPrivate
    ^false
! !

"ASDBase.ic method 0x20087708; bytecode file offset 0x983fc4"
!SGMdOperatingSystem methodsFor: 'recovered'!
numSwLevels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) numCoopLevels.
    recoveredValue1 := (self) numPreempLevels.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008cc80; bytecode file offset 0x98953c"
!SGMdOperatingSystem methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := (self) createNewNameKey: (nil) label: ('Operating System').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ee70; bytecode file offset 0x98b80c"
!SGMdOperatingSystem methodsFor: 'recovered'!
generateIle
    | recoveredValue0 |
    recoveredValue0 := (self) generator.
    (recoveredValue0) operatingSystem: (self).
    ^self
! !

"ASDBase.ic method 0x20093100; bytecode file offset 0x98fa00"
!SGMdOperatingSystem methodsFor: 'recovered'!
addMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := methods.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200965d0; bytecode file offset 0x992e94"
!SGMdOperatingSystem methodsFor: 'recovered'!
events: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sorted: (recoveredValue0).
    events := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009660c; bytecode file offset 0x992ec4"
!SGMdOperatingSystem methodsFor: 'recovered'!
opModes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sorted: (recoveredValue0).
    opModes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20096654; bytecode file offset 0x992f0c"
!SGMdOperatingSystem methodsFor: 'recovered'!
tasks: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sorted: (recoveredValue0).
    tasks := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c0fb8; bytecode file offset 0x9bdf14"
!SGMdOperatingSystem methodsFor: 'recovered'!
numCoopLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    coop := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c14; bytecode file offset 0x9beac8"
!SGMdOperatingSystem methodsFor: 'recovered'!
numPreempLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preemp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c26e0; bytecode file offset 0x9bf474"
!SGMdOperatingSystem methodsFor: 'recovered'!
numEventLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c433c; bytecode file offset 0x9c0bf0"
!SGMdOperatingSystem methodsFor: 'recovered'!
initOpMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initOpMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4a0c; bytecode file offset 0x9c16b0"
!SGMdOperatingSystem methodsFor: 'recovered'!
startOpMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startOpMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f00; bytecode file offset 0x9c1afc"
!SGMdOperatingSystem methodsFor: 'recovered'!
debug: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    debug := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5670; bytecode file offset 0x9c1f64"
!SGMdOperatingSystem methodsFor: 'recovered'!
monitoring: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitoring := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c78; bytecode file offset 0x9c25bc"
!SGMdOperatingSystem methodsFor: 'recovered'!
dTId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dTId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e78; bytecode file offset 0x9c2804"
!SGMdOperatingSystem methodsFor: 'recovered'!
projectDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f78b4; bytecode file offset 0x9f4e38"
!SGMdOperatingSystem methodsFor: 'recovered'!
softwareTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4b0cArg1 | 
    | block280c4b0cValue0 block280c4b0cValue1 |
    block280c4b0cValue0 := block280c4b0cArg1.
    block280c4b0cValue1 := (block280c4b0cValue0) isMdlSoftwareTask.
    block280c4b0cValue1
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

"ASDBase.ic method 0x200f7adc; bytecode file offset 0x9f4e38"
!SGMdOperatingSystem methodsFor: 'recovered'!
hardwareTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4e48Arg1 | 
    | block280c4e48Value0 block280c4e48Value1 |
    block280c4e48Value0 := block280c4e48Arg1.
    block280c4e48Value1 := (block280c4e48Value0) isMdlEventTask.
    block280c4e48Value1
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

"ASDBase.ic method 0x200f7b9c; bytecode file offset 0x9f4e38"
!SGMdOperatingSystem methodsFor: 'recovered'!
timerTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4f68Arg1 | 
    | block280c4f68Value0 block280c4f68Value1 |
    block280c4f68Value0 := block280c4f68Arg1.
    block280c4f68Value1 := (block280c4f68Value0) isMdlTimerTask.
    block280c4f68Value1
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

"ASDBase.ic method 0x200f80f4; bytecode file offset 0x9f4e38"
!SGMdOperatingSystem methodsFor: 'recovered'!
initTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c576cArg1 | 
    | block280c576cValue0 block280c576cValue1 |
    block280c576cValue0 := block280c576cArg1.
    block280c576cValue1 := (block280c576cValue0) isMdlInitTask.
    block280c576cValue1
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

"ASDBase.ic method 0x2011a068; bytecode file offset 0xa16930"
!SGMdOperatingSystem methodsFor: 'recovered'!
allTimers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8640Arg1 | 
    | block280c8640Value0 block280c8640Value1 |
    block280c8640Value0 := block280c8640Arg1.
    block280c8640Value1 := (block280c8640Value0) isMdlTimerTask.
    block280c8640Value1
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e24c; bytecode file offset 0xa8ab20"
!SGMdOperatingSystem methodsFor: 'recovered'!
osekInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osekInfo.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := SGMdOSEKInfo.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    osekInfo := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := osekInfo.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201d6a24; bytecode file offset 0xad32f4"
!SGMdOperatingSystem methodsFor: 'recovered'!
genIleDefaultTasks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) events.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d58c4Arg1 | 
    | block280d58c4Value0 block280d58c4Value1 |
    block280d58c4Value0 := block280d58c4Arg1.
    block280d58c4Value1 := (block280d58c4Value0) isTriggered.
    block280d58c4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280d58e8Arg1 | 
    | block280d58e8Value0 block280d58e8Value1 |
    block280d58e8Value0 := block280d58e8Arg1.
    block280d58e8Value1 := (block280d58e8Value0) genIleDefaultTask.
    block280d58e8Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
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

"ASDBase.ic method 0x202704b4; bytecode file offset 0xb6cd74"
!SGMdOperatingSystem methodsFor: 'recovered'!
numSwLevelsOO
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) softwareTasks.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) ilePrio.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) > (recoveredBlock10Stack3).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 33].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) ilePrio.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2027a430; bytecode file offset 0xb76cf4"
!SGMdOperatingSystem methodsFor: 'recovered'!
numSwLevelsController
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) numCoopLevels.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) softwareTasks.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) ilePrio.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) > (recoveredBlock10Stack3).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 33].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) ilePrio.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) + (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2028347c; bytecode file offset 0xb7fd44"
!SGMdOperatingSystem methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    opModes := recoveredValue1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    events := recoveredValue3.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) new.
    tasks := recoveredValue5.
    coop := 0.
    preemp := 0.
    event := 0.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    methods := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x202874b8; bytecode file offset 0xb83d78"
!SGMdOperatingSystem methodsFor: 'recovered'!
numHwLevelsOO
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 256.
    recoveredValue0 := (self) hardwareTasks.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) ilePrio.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredLocal1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) < (recoveredBlock12Stack3).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 35].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ilePrio.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20292018; bytecode file offset 0xb8e8dc"
!SGMdOperatingSystem methodsFor: 'recovered'!
timers
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) opModes.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
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
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) timerTasks.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) size.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) > (recoveredBlock10Stack3).
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 28] ifFalse: [recoveredBlock10PC := 36].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) timerTasks.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) size.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2030ef14; bytecode file offset 0xc0b7f0"
!SGMdOperatingSystem methodsFor: 'recovered'!
fifoSizesController
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) numSwLevelsController.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) atAllPut: (0).
    recoveredValue4 := (self) softwareTasks.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Local1 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) ilePrio.
    recoveredBlock21Value2 := (recoveredBlock21Value1) + (1).
    recoveredBlock21Local1 := recoveredBlock21Value2.
    recoveredBlock21Value3 := recoveredLocal1.
    recoveredBlock21Value4 := recoveredBlock21Local1.
    recoveredBlock21Value5 := recoveredBlock21Arg1.
    recoveredBlock21Value6 := (recoveredBlock21Value5) maxActive.
    recoveredBlock21Value7 := recoveredLocal1.
    recoveredBlock21Value8 := recoveredBlock21Local1.
    recoveredBlock21Value9 := (recoveredBlock21Value7) at: (recoveredBlock21Value8).
    recoveredBlock21Value10 := (recoveredBlock21Value6) + (recoveredBlock21Value9).
    recoveredBlock21Value11 := (recoveredBlock21Value3) at: (recoveredBlock21Value4) put: (recoveredBlock21Value10).
    recoveredBlock21Value11
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203b1f84; bytecode file offset 0xcae848"
!SGMdOperatingSystem methodsFor: 'recovered'!
numHwLevels
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardwareTasks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 256.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) hardwareTasks.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) ilePrio.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal2.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) > (recoveredBlock27Stack2).
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 44] ifFalse: [recoveredBlock27PC := 49].
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) ilePrio.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredLocal2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) ilePrio.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack3 := recoveredLocal1.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) < (recoveredBlock27Stack3).
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 60] ifFalse: [recoveredBlock27PC := 67].
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) ilePrio.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20474250; bytecode file offset 0xd70b40"
!SGMdOperatingSystem methodsFor: 'recovered'!
fifoSizes
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
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) numSwLevels.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) numSwLevels.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) softwareTasks.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 29.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) mdlSemErrNo: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) softwareTasks.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45Stack6 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) ilePrio.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) + (1).
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack2.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack2 := self.
            recoveredBlock45PC := 59.
        ].
        recoveredBlock45Step = 59 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) numSwLevels.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) > (recoveredBlock45Stack2).
            recoveredBlock45PC := 61.
        ].
        recoveredBlock45Step = 61 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 64] ifFalse: [recoveredBlock45PC := 76].
        ].
        recoveredBlock45Step = 64 ifTrue: [
            recoveredBlock45Stack1 := self.
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack2 := 290.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) errLabel.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) mdlSemErrNo: (recoveredBlock45Stack2) with: (recoveredBlock45Stack3).
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Local1.
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 81.
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) maxActive.
            recoveredBlock45PC := 83.
        ].
        recoveredBlock45Step = 83 ifTrue: [
            recoveredBlock45Stack4 := recoveredLocal1.
            recoveredBlock45PC := 86.
        ].
        recoveredBlock45Step = 86 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) at: (recoveredBlock45Stack5).
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) + (recoveredBlock45Stack4).
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) at: (recoveredBlock45Stack2) put: (recoveredBlock45Stack3).
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := [:recoveredBlock98Arg1 :recoveredBlock98Arg2 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 recoveredBlock98Value4 recoveredBlock98Value5 recoveredBlock98Value6 |
    recoveredBlock98Value0 := recoveredLocal1.
    recoveredBlock98Value1 := recoveredBlock98Arg2.
    recoveredBlock98Value2 := recoveredLocal1.
    recoveredBlock98Value3 := recoveredBlock98Arg2.
    recoveredBlock98Value4 := (recoveredBlock98Value2) at: (recoveredBlock98Value3).
    recoveredBlock98Value5 := (recoveredBlock98Value4) + (1).
    recoveredBlock98Value6 := (recoveredBlock98Value0) at: (recoveredBlock98Value1) put: (recoveredBlock98Value5).
    recoveredBlock98Value6
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

