"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000000; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
operatingModes
    ^self
! !

"ETargetCommon.ic method 0x20000008; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
swTasks
    ^self
! !

"ETargetCommon.ic method 0x20000010; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endHwTasks
    ^self
! !

"ETargetCommon.ic method 0x20000018; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endOperatingMode
    ^self
! !

"ETargetCommon.ic method 0x20000020; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endOperatingModes
    ^self
! !

"ETargetCommon.ic method 0x20000028; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endSwTasks
    ^self
! !

"ETargetCommon.ic method 0x20000030; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endDynamics
    ^self
! !

"ETargetCommon.ic method 0x20000038; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endEvents
    ^self
! !

"ETargetCommon.ic method 0x20000040; bytecode file offset 0xf040"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
endOperatingSystem
    ^self
! !

"ETargetCommon.ic method 0x20000058; bytecode file offset 0xf070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
timers: recoveredArg1
    ^self
! !

"ETargetCommon.ic method 0x20000060; bytecode file offset 0xf070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
fifoSizes: recoveredArg1
    ^self
! !

"ETargetCommon.ic method 0x20000068; bytecode file offset 0xf070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initialOpMode: recoveredArg1
    ^self
! !

"ETargetCommon.ic method 0x20000070; bytecode file offset 0xf070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
startingOpMode: recoveredArg1
    ^self
! !

"ETargetCommon.ic method 0x20000078; bytecode file offset 0xf070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
deadlines: recoveredArg1
    ^self
! !

"ETargetCommon.ic method 0x20000088; bytecode file offset 0xf088"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
enableTicks: recoveredArg1 tickDuration: recoveredArg2
    ^self
! !

"ETargetCommon.ic method 0x20000090; bytecode file offset 0xf088"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initSwTask: recoveredArg1 id: recoveredArg2
    ^self
! !

"ETargetCommon.ic method 0x200000a0; bytecode file offset 0xf098"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
eventHandler: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4
    ^self
! !

"ETargetCommon.ic method 0x200000b0; bytecode file offset 0xf0a8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
event: recoveredArg1 id: recoveredArg2 regbank: recoveredArg3 prio: recoveredArg4 taskId: recoveredArg5
    ^self
! !

"ETargetCommon.ic method 0x200000c0; bytecode file offset 0xf0b8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
hwTasks
    | recoveredLocal1 |
    ^self
! !

"ETargetCommon.ic method 0x200002b8; bytecode file offset 0xf320"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
osLabel
    ^'RTA-OSEK'
! !

"ETargetCommon.ic method 0x20000674; bytecode file offset 0xf6f0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
tasksById
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) at: ('tasksById').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200006b0; bytecode file offset 0xf6f0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initTaskStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) at: ('initTaskStream').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200006c4; bytecode file offset 0xf6f0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initTaskHeaderStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) at: ('initTaskHeaderStream').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200006d8; bytecode file offset 0xf6f0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
oilGenerator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) at: ('oilGenerator').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200006ec; bytecode file offset 0xf6f0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initSymbols
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) data.
    recoveredValue1 := (recoveredValue0) at: ('initSymbols').
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000a90; bytecode file offset 0xfaa8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initializeSourceFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) sourceFiles: (recoveredValue1).
    ^self
! !

"ETargetCommon.ic method 0x20000aa4; bytecode file offset 0xfaa8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initializeTaskSymbols
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) taskSymbols: (recoveredValue1).
    ^self
! !

"ETargetCommon.ic method 0x20000d9c; bytecode file offset 0xfda8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
funcDeclSetDTIntecrio
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) moduleName.
    recoveredValue2 := ('void setDeltaT_') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (void)').
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x20000dfc; bytecode file offset 0xfe00"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
beginDynamics
    (self) initializeSourceFiles.
    (self) initializeTaskSymbols.
    (self) initializeData.
    ^self
! !

"ETargetCommon.ic method 0x20000eb4; bytecode file offset 0xfeb8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
prioLevelsCoop: recoveredArg1 preemp: recoveredArg2 hw: recoveredArg3 sw: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oilGenerator.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) prioLevelsCoop: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) prioLevelsPreemp: (recoveredValue3).
    ^self
! !

"ETargetCommon.ic method 0x20000fa8; bytecode file offset 0xffd0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
createStream: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) sourceFiles.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ETargetCommon.ic method 0x20000fc4; bytecode file offset 0xffd0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
createFileStream: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) sourceFiles.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ETargetCommon.ic method 0x2000106c; bytecode file offset 0x10070"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
getISRDriverThread: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 'threadUserIsr'.
    recoveredValue0 := (self) driverThreads.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue0) at: (1000) put: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x2000119c; bytecode file offset 0x101a8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
timer: recoveredArg1 number: recoveredArg2 taskId: recoveredArg3 delay: recoveredArg4 period: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) taskPrefix.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) oilGenerator.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg5.
    (recoveredValue4) addTaskTimer: (recoveredValue5) id: (recoveredValue6) delay: (recoveredValue7) period: (recoveredValue8).
    ^self
! !

"ETargetCommon.ic method 0x200012c8; bytecode file offset 0x102d4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
getSoftwareTaskDriverThread: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printStringRadix: (10) padTo: (3).
    recoveredValue2 := ('threadPrio') , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) driverThreads.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ETargetCommon.ic method 0x20001450; bytecode file offset 0x1045c"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initSymbolsForAppMode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) initSymbols.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 |
    recoveredBlock8Value0 := (self) initSymbols.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := OrderedCollection.
    recoveredBlock8Value3 := (recoveredBlock8Value2) new.
    recoveredBlock8Value4 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) put: (recoveredBlock8Value3).
    recoveredBlock8Value4
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x200014e4; bytecode file offset 0x104f8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
funcDeclSetDT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetFeatureType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetES910Type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetFeatureType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetPCRPType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'void os_setDeltaT (void)'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := 'void setDeltaT (void)'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20001a98; bytecode file offset 0x10ab0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
strSchedule
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskAttributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingCooperative.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'COOPERATIVE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskAttributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingFull.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'FULL'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskAttributes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingNone.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 'NON'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'unknown'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20001ec4; bytecode file offset 0x10ed4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2 initProcs: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) oilGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) addAppMode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) popExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
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

"ETargetCommon.ic method 0x20002a90; bytecode file offset 0x11aa4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    (self) swTask: (recoveredValue0) id: (recoveredValue1) prio: (recoveredValue2) maxActive: (recoveredValue3) procs: (recoveredValue4) opModes: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) taskPrefix.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredArg6.
    recoveredValue11 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (self) initSymbolsForAppMode: (recoveredBlock38Value0).
    recoveredBlock38Value2 := recoveredLocal1.
    recoveredBlock38Value3 := (recoveredBlock38Value1) add: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
    (recoveredValue10) do: (recoveredValue11).
    ^self
! !

"ETargetCommon.ic method 0x2000368c; bytecode file offset 0x126e8"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
initializeData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasOilGenerator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) oilGeneratorClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetFeatureType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'ES910'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := EtasES910OilGenerator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'initSymbols'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'oilGenerator'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'initTaskStream'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := SGBasicWriteStream.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) asAnsiCCodeStream.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'initTaskHeaderStream'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := SGBasicWriteStream.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) asAnsiCCodeStream.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'tasksById'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20003ab8; bytecode file offset 0x12b0c"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
genOSDtVar: recoveredArg1 externalIntegration: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileInt32Unsigned.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetFeatureType.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetES910Type.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetFeatureType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetPCRPType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'os_dT'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'dT'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBQuantFloat.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileFloat64.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := '(('.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := ') (SYSTEM_TICK_DURATION * '.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := ') / 1.0e9)'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := '((SYSTEM_TICK_DURATION * '.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := ') / 1000)'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) createANSICExpr: (recoveredStack2) template: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ETargetCommon.ic method 0x200044e8; bytecode file offset 0x13568"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
generateDriverThreads
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := (self) driverThreads.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: (-1000) put: ('threadEtasConfigTask').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: (-999) put: ('threadEtasL1Task').
    (recoveredValue0) at: (10000) put: ('threadEtasIsr').
    recoveredValue3 := (self) driverThreads.
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := (recoveredValue4) asSortedCollection.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) owner.
    recoveredValue7 := (self) declHeader.
    (recoveredValue6) beginRegionBanner: ('Driver Threads') description: ('Driver Thread Declarations') on: (recoveredValue7).
    recoveredValue8 := (self) declHeader.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) cppIfdef: ('ES910').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 recoveredBlock61Value5 |
    recoveredBlock61Value0 := (self) declHeader.
    recoveredBlock61Value1 := (self) driverThreads.
    recoveredBlock61Value2 := recoveredBlock61Arg1.
    recoveredBlock61Value3 := (recoveredBlock61Value1) at: (recoveredBlock61Value2).
    recoveredBlock61Value4 := ('DECLARE_DRIVER_THREAD_MONITOR(%1);') bindWith: (recoveredBlock61Value3).
    recoveredBlock61Value5 := (recoveredBlock61Value0) newlinePutAll: (recoveredBlock61Value4).
    recoveredBlock61Value5
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := (self) declHeader.
    recoveredValue13 := recoveredValue12.
    (recoveredValue13) cppEndIf: ('ES910').
    (recoveredValue12) cr.
    recoveredValue14 := (self) owner.
    recoveredValue15 := (self) declHeader.
    (recoveredValue14) endRegionBanner: ('Driver Threads') description: ('Driver Thread Declarations') on: (recoveredValue15).
    recoveredValue16 := (self) owner.
    recoveredValue17 := (self) body.
    (recoveredValue16) beginRegionBanner: ('Driver Threads') description: ('Driver Thread Definitions') on: (recoveredValue17).
    recoveredValue18 := (self) body.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) cppIfdef: ('ES910').
    (recoveredValue18) cr.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 recoveredBlock131Value5 |
    recoveredBlock131Value0 := (self) body.
    recoveredBlock131Value1 := (self) driverThreads.
    recoveredBlock131Value2 := recoveredBlock131Arg1.
    recoveredBlock131Value3 := (recoveredBlock131Value1) at: (recoveredBlock131Value2).
    recoveredBlock131Value4 := ('DRIVER_THREAD_MONITOR_DEF(%1);') bindWith: (recoveredBlock131Value3).
    recoveredBlock131Value5 := (recoveredBlock131Value0) newlinePutAll: (recoveredBlock131Value4).
    recoveredBlock131Value5
].
    (recoveredValue20) do: (recoveredValue21).
    recoveredValue22 := (self) body.
    recoveredValue23 := recoveredValue22.
    (recoveredValue23) cr.
    recoveredValue24 := recoveredValue22.
    (recoveredValue24) newlinePutAll: ('uint32 etasCreateDriverThreads(int *ptrRtaOsekThreadPrio)').
    recoveredValue25 := recoveredValue22.
    (recoveredValue25) openCompoundStmnt.
    recoveredValue26 := recoveredValue22.
    (recoveredValue26) newlinePutAll: ('uint32 retVal = 0;').
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := (recoveredValue27) size.
    recoveredValue29 := (recoveredValue28) asString.
    recoveredValue30 := ('SET_NUMBER_OF_DRIVER_THREADS(%1);') bindWith: (recoveredValue29).
    (recoveredValue22) newlinePutAll: (recoveredValue30).
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Value0 recoveredBlock185Value1 recoveredBlock185Value2 recoveredBlock185Value3 recoveredBlock185Value4 recoveredBlock185Value5 |
    recoveredBlock185Value0 := (self) body.
    recoveredBlock185Value1 := (self) driverThreads.
    recoveredBlock185Value2 := recoveredBlock185Arg1.
    recoveredBlock185Value3 := (recoveredBlock185Value1) at: (recoveredBlock185Value2).
    recoveredBlock185Value4 := ('CREATE_DRIVER_THREAD(%1);') bindWith: (recoveredBlock185Value3).
    recoveredBlock185Value5 := (recoveredBlock185Value0) newlinePutAll: (recoveredBlock185Value4).
    recoveredBlock185Value5
].
    (recoveredValue31) do: (recoveredValue32).
    recoveredValue33 := (self) body.
    recoveredValue34 := recoveredValue33.
    (recoveredValue34) newlinePutAll: ('return retVal;').
    (recoveredValue33) closeCompoundStmnt.
    recoveredValue35 := (self) body.
    recoveredValue36 := recoveredValue35.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredValue35.
    (recoveredValue37) cppEndIf: ('ES910').
    (recoveredValue35) cr.
    recoveredValue38 := (self) owner.
    recoveredValue39 := (self) body.
    (recoveredValue38) endRegionBanner: ('Driver Threads') description: ('Driver Thread Definitions') on: (recoveredValue39).
    recoveredValue40 := (self) body.
    (recoveredValue40) cr.
    ^self
! !

"ETargetCommon.ic method 0x20004818; bytecode file offset 0x138c0"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
hwTask: recoveredArg1 id: recoveredArg2 event: recoveredArg3 prio: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6 minPeriod: recoveredArg7 isrAddress: recoveredArg8
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskPrefix.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasksById.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) oilGenerator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) taskAttributes.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) priority.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) addInterruptTask: (recoveredStack1) id: (recoveredStack2) priority: (recoveredStack3) isrSource: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStream: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) popExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) addFirst: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 68] ifFalse: [recoveredPC := 107]] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'Include OS Configuration'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'conf.h'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) cppInclude: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 recoveredBlock129Value4 recoveredBlock129Value5 |
    recoveredBlock129Value0 := recoveredLocal4.
    recoveredBlock129Value1 := recoveredLocal4.
    recoveredBlock129Value2 := (recoveredBlock129Value1) externKeyword.
    recoveredBlock129Value3 := recoveredBlock129Arg1.
    recoveredBlock129Value4 := ('%1 void %2(void);') bindWith: (recoveredBlock129Value2) with: (recoveredBlock129Value3).
    recoveredBlock129Value5 := (recoveredBlock129Value0) newlinePutAll: (recoveredBlock129Value4).
    recoveredBlock129Value5
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'TASK_MONITOR_DEF(%1, thread0);'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'ISR_MONITOR_DEF(%1, %2);'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := (recoveredStack4) getISRDriverThread: (recoveredStack5).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'ISR task "%1"'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) paragraphBanner: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 'ISR(%1)'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) openCompoundStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := 'verboseLog(1, "%1");'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'START_ISR_HOOK(%1);'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := [:recoveredBlock266Arg1 | 
    | recoveredBlock266Value0 recoveredBlock266Value1 recoveredBlock266Value2 recoveredBlock266Value3 |
    recoveredBlock266Value0 := recoveredLocal4.
    recoveredBlock266Value1 := recoveredBlock266Arg1.
    recoveredBlock266Value2 := ('%1();') bindWith: (recoveredBlock266Value1).
    recoveredBlock266Value3 := (recoveredBlock266Value0) newlinePutAll: (recoveredBlock266Value2).
    recoveredBlock266Value3
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) cppIfNotDefine: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := 'END_ISR_HOOK(%1);'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) closeCompoundStmnt.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskSymbols.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x20004a18; bytecode file offset 0x13af4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
swTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskPrefix.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasksById.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 |
    recoveredBlock26Value0 := (self) oilGenerator.
    recoveredBlock26Value1 := recoveredLocal2.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := recoveredArg3.
    recoveredBlock26Value4 := (self) strSchedule.
    recoveredBlock26Value5 := recoveredArg4.
    recoveredBlock26Value6 := (self) taskAttributes.
    recoveredBlock26Value7 := (recoveredBlock26Value6) isCgAttrAutostartOn.
    recoveredBlock26Value8 := recoveredBlock26Arg1.
    recoveredBlock26Value9 := (recoveredBlock26Value0) addSwTask: (recoveredBlock26Value1) id: (recoveredBlock26Value2) priority: (recoveredBlock26Value3) schedule: (recoveredBlock26Value4) activation: (recoveredBlock26Value5) autostart: (recoveredBlock26Value7) appMode: (recoveredBlock26Value8).
    recoveredBlock26Value9
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStream: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'Include OS Configuration'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) comment: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 'conf.h'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) cppInclude: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) popExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) addFirst: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 104] ifFalse: [recoveredPC := 143]] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) l1TaskName.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'etasL1Process'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := 'etasL1Process'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) beforeIndex: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Value0 recoveredBlock189Value1 recoveredBlock189Value2 recoveredBlock189Value3 recoveredBlock189Value4 recoveredBlock189Value5 |
    recoveredBlock189Value0 := recoveredLocal4.
    recoveredBlock189Value1 := recoveredLocal4.
    recoveredBlock189Value2 := (recoveredBlock189Value1) externKeyword.
    recoveredBlock189Value3 := recoveredBlock189Arg1.
    recoveredBlock189Value4 := ('%1 void %2(void);') bindWith: (recoveredBlock189Value2) with: (recoveredBlock189Value3).
    recoveredBlock189Value5 := (recoveredBlock189Value0) newlinePutAll: (recoveredBlock189Value4).
    recoveredBlock189Value5
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := 'TASK_MONITOR_DEF(%1, "%1");'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'TASK_MONITOR_DEF(%1, %2);'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSoftwareTaskDriverThread: (recoveredStack5).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'Software task "%1"'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) paragraphBanner: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 'void %1_processList()'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) openCompoundStmnt.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := [:recoveredBlock290Arg1 | 
    | recoveredBlock290Value0 recoveredBlock290Value1 recoveredBlock290Value2 recoveredBlock290Value3 recoveredBlock290Value4 recoveredBlock290Value5 recoveredBlock290Value6 recoveredBlock290Value7 recoveredBlock290Value8 recoveredBlock290Value9 |
    recoveredBlock290Value0 := recoveredLocal4.
    recoveredBlock290Value1 := recoveredBlock290Value0.
    (recoveredBlock290Value1) cppIfdef: ('ITPC').
    recoveredBlock290Value2 := recoveredBlock290Value0.
    recoveredBlock290Value3 := recoveredArg2.
    recoveredBlock290Value4 := (recoveredBlock290Value3) asString.
    recoveredBlock290Value5 := ('LOG_TASK_TRACE_POINT(%1);') bindWith: (recoveredBlock290Value4).
    (recoveredBlock290Value2) newlinePutAll: (recoveredBlock290Value5).
    recoveredBlock290Value6 := recoveredBlock290Value0.
    (recoveredBlock290Value6) cppEndIf.
    recoveredBlock290Value7 := recoveredBlock290Arg1.
    recoveredBlock290Value8 := ('%1();') bindWith: (recoveredBlock290Value7).
    recoveredBlock290Value9 := (recoveredBlock290Value0) newlinePutAll: (recoveredBlock290Value8).
    recoveredBlock290Value9
].
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := 'LOG_TASK_TRACE_POINT(%1);'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) cppEndIf.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) closeCompoundStmnt.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := 'TASK(%1)'.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) openCompoundStmnt.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := 'PRE_TASK_HOOK(%1);'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := 'START_TASK_HOOK(%1);'.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := '%1_processList();'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := 'POST_TASK_HOOK(%1);'.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := 'LOG_TASK_TRACE_POINT(%1);'.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := 'END_TASK_HOOK(%1);'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack1) cppIfdef: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := 'rtaTerminateTask();'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) cppElse.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := 'TerminateTask();'.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := 'ITPC'.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) cppEndIf: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) closeCompoundStmnt.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := (recoveredStack0) taskSymbols.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ETargetCommon.ic method 0x200051b8; bytecode file offset 0x143f4"
!SGIlOSExpRTASimu methodsFor: 'recovered'!
generateOSCDyn
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 recoveredValue187 recoveredValue188 recoveredValue189 recoveredValue190 recoveredValue191 recoveredValue192 recoveredValue193 recoveredValue194 recoveredValue195 recoveredValue196 recoveredValue197 recoveredValue198 recoveredValue199 recoveredValue200 recoveredValue201 recoveredValue202 recoveredValue203 recoveredValue204 recoveredValue205 recoveredValue206 recoveredValue207 recoveredValue208 recoveredValue209 recoveredValue210 recoveredValue211 recoveredValue212 recoveredValue213 recoveredValue214 recoveredValue215 recoveredValue216 recoveredValue217 recoveredValue218 recoveredValue219 recoveredValue220 recoveredValue221 recoveredValue222 recoveredValue223 recoveredValue224 recoveredValue225 recoveredValue226 |
    recoveredValue0 := (self) tasksById.
    recoveredValue1 := (recoveredValue0) asArray.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) owner.
    recoveredValue5 := (recoveredValue4) declHeader.
    recoveredValue6 := (self) initTaskHeaderStream.
    recoveredValue7 := (recoveredValue6) contents.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    (self) generateDriverThreads.
    recoveredValue8 := (self) owner.
    recoveredValue9 := (self) body.
    (recoveredValue8) beginRegionBanner: ('Application Modes') description: ('Application Mode Definitions') on: (recoveredValue9).
    recoveredValue10 := (self) body.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) cppIfdef: ('ITPC').
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) newlinePutAll: ('AppModeType etasStartupAppMode = APPMODE_init;').
    recoveredValue13 := recoveredValue10.
    (recoveredValue13) newlinePutAll: ('AppModeType etasInactiveAppMode = APPMODE_inactive;').
    recoveredValue14 := recoveredValue10.
    (recoveredValue14) newlinePutAll: ('AppModeType UserAppModeAppMode = APPMODE_active;').
    recoveredValue15 := recoveredValue10.
    (recoveredValue15) cppEndIf.
    recoveredValue16 := recoveredValue10.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue10.
    (recoveredValue17) cppIfdef: ('ES910').
    recoveredValue18 := recoveredValue10.
    (recoveredValue18) newlinePutAll: ('extern AppModeType UserAppModeAppMode;').
    recoveredValue19 := recoveredValue10.
    (recoveredValue19) cppEndIf.
    recoveredValue20 := recoveredValue10.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue10.
    (recoveredValue21) newlinePutAll: ('T_appModeTableEntry appModeEntries[] =').
    recoveredValue22 := recoveredValue10.
    (recoveredValue22) openCompoundStmnt.
    recoveredValue23 := recoveredValue10.
    (recoveredValue23) newlinePutAll: ('{(AppModeType *)&etasStartupAppMode, "init"},').
    recoveredValue24 := recoveredValue10.
    (recoveredValue24) newlinePutAll: ('{(AppModeType *)&etasInactiveAppMode, "inactive"},').
    recoveredValue25 := recoveredValue10.
    (recoveredValue25) newlinePutAll: ('{(AppModeType *)&UserAppModeAppMode, "active"}').
    recoveredValue26 := recoveredValue10.
    (recoveredValue26) closeCompoundStmnt.
    recoveredValue27 := recoveredValue10.
    (recoveredValue27) nextPut: ($;).
    recoveredValue28 := recoveredValue10.
    (recoveredValue28) cr.
    recoveredValue29 := recoveredValue10.
    (recoveredValue29) newlinePutAll: ('T_appModeTable appModeTable =').
    recoveredValue30 := recoveredValue10.
    (recoveredValue30) openCompoundStmnt.
    recoveredValue31 := recoveredValue10.
    (recoveredValue31) newlinePutAll: ('1+2,	/* number of modes in appModeEntries */').
    recoveredValue32 := recoveredValue10.
    (recoveredValue32) newlinePutAll: ('0+2,	/* index of default application mode */').
    recoveredValue33 := recoveredValue10.
    (recoveredValue33) newlinePutAll: ('&appModeEntries[0]').
    recoveredValue34 := recoveredValue10.
    (recoveredValue34) closeCompoundStmnt.
    recoveredValue35 := recoveredValue10.
    (recoveredValue35) nextPut: ($;).
    (recoveredValue10) cr.
    recoveredValue36 := (self) owner.
    recoveredValue37 := (self) body.
    (recoveredValue36) endRegionBanner: ('Application Modes') description: ('Application Mode Definitions') on: (recoveredValue37).
    recoveredValue38 := (self) owner.
    recoveredValue39 := (self) owner.
    recoveredValue40 := (recoveredValue39) declHeader.
    (recoveredValue38) paragraphBanner: ('extern Declarations for RTA-TRACE Processes') on: (recoveredValue40).
    recoveredValue41 := (self) owner.
    recoveredValue42 := (recoveredValue41) declHeader.
    recoveredValue43 := recoveredValue42.
    (recoveredValue43) cr.
    recoveredValue44 := recoveredValue42.
    (recoveredValue44) comment: ('Implementation still missing').
    (recoveredValue42) cr.
    recoveredValue45 := (self) owner.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := (self) body.
    (recoveredValue46) beginRegionBanner: ('Application Modes') description: ('Application Mode Init/Exit Tasks') on: (recoveredValue47).
    recoveredValue48 := (self) owner.
    recoveredValue49 := (recoveredValue48) declHeader.
    (recoveredValue45) paragraphBanner: ('Init Task Definitions') on: (recoveredValue49).
    recoveredValue50 := (self) owner.
    recoveredValue51 := (recoveredValue50) declHeader.
    recoveredValue52 := (self) initTaskStream.
    recoveredValue53 := (recoveredValue52) contents.
    (recoveredValue51) nextPutAll: (recoveredValue53).
    recoveredValue54 := (self) body.
    recoveredValue55 := recoveredValue54.
    (recoveredValue55) cr.
    (recoveredValue54) paragraphBanner: ('Task process list declarations').
    recoveredValue56 := (self) initSymbols.
    recoveredValue57 := (recoveredValue56) keys.
    recoveredValue58 := (recoveredValue57) asOrderedCollection.
    recoveredValue59 := [:recoveredBlock243Arg1 | 
    | recoveredBlock243Value0 recoveredBlock243Value1 recoveredBlock243Value2 recoveredBlock243Value3 recoveredBlock243Value4 recoveredBlock243Value5 recoveredBlock243Value6 recoveredBlock243Value7 |
    recoveredBlock243Value0 := (self) body.
    recoveredBlock243Value1 := recoveredBlock243Value0.
    (recoveredBlock243Value1) newline.
    recoveredBlock243Value2 := recoveredBlock243Arg1.
    recoveredBlock243Value3 := ('Application Mode ''%1''') bindWith: (recoveredBlock243Value2).
    (recoveredBlock243Value0) comment: (recoveredBlock243Value3).
    recoveredBlock243Value4 := recoveredBlock243Arg1.
    recoveredBlock243Value5 := (self) initSymbolsForAppMode: (recoveredBlock243Value4).
    recoveredBlock243Value6 := [:recoveredBlock243Block266Arg1 | 
    | recoveredBlock243Block266Value0 recoveredBlock243Block266Value1 recoveredBlock243Block266Value2 recoveredBlock243Block266Value3 recoveredBlock243Block266Value4 recoveredBlock243Block266Value5 |
    recoveredBlock243Block266Value0 := (self) body.
    recoveredBlock243Block266Value1 := (self) body.
    recoveredBlock243Block266Value2 := (recoveredBlock243Block266Value1) externKeyword.
    recoveredBlock243Block266Value3 := recoveredBlock243Block266Arg1.
    recoveredBlock243Block266Value4 := ('%1 void %2_processList();') bindWith: (recoveredBlock243Block266Value2) with: (recoveredBlock243Block266Value3).
    recoveredBlock243Block266Value5 := (recoveredBlock243Block266Value0) newlinePutAll: (recoveredBlock243Block266Value4).
    recoveredBlock243Block266Value5
].
    recoveredBlock243Value7 := (recoveredBlock243Value5) do: (recoveredBlock243Value6).
    recoveredBlock243Value7
].
    (recoveredValue58) do: (recoveredValue59).
    recoveredValue60 := (self) owner.
    recoveredValue61 := (recoveredValue60) declHeader.
    (recoveredValue61) cr.
    recoveredValue62 := (self) owner.
    recoveredValue63 := (self) owner.
    recoveredValue64 := (recoveredValue63) declHeader.
    (recoveredValue62) paragraphBanner: ('Definitions for ETC Integration') on: (recoveredValue64).
    recoveredValue65 := (self) owner.
    recoveredValue66 := (recoveredValue65) declHeader.
    recoveredValue67 := recoveredValue66.
    (recoveredValue67) cr.
    recoveredValue68 := recoveredValue66.
    (recoveredValue68) nextPutAll: ('extern void etasRtioStartupProcess(void);').
    recoveredValue69 := recoveredValue66.
    (recoveredValue69) newline.
    recoveredValue70 := recoveredValue66.
    (recoveredValue70) nextPutAll: ('extern void intecrioETCInit(void);').
    recoveredValue71 := recoveredValue66.
    (recoveredValue71) newline.
    recoveredValue72 := recoveredValue66.
    (recoveredValue72) nextPutAll: ('extern void intecrioETCExit(void);').
    recoveredValue73 := recoveredValue66.
    (recoveredValue73) newline.
    (recoveredValue66) cr.
    recoveredValue74 := (self) body.
    recoveredValue75 := recoveredValue74.
    (recoveredValue75) cr.
    recoveredValue76 := recoveredValue74.
    (recoveredValue76) cr.
    recoveredValue77 := recoveredValue74.
    (recoveredValue77) voidKeyword.
    recoveredValue78 := recoveredValue74.
    (recoveredValue78) space.
    recoveredValue79 := recoveredValue74.
    (recoveredValue79) nextPutAll: ('etasStartupInitTask').
    recoveredValue80 := recoveredValue74.
    (recoveredValue80) space.
    recoveredValue81 := recoveredValue74.
    (recoveredValue81) openParenthesis.
    recoveredValue82 := recoveredValue74.
    (recoveredValue82) voidKeyword.
    recoveredValue83 := recoveredValue74.
    (recoveredValue83) closeParenthesis.
    recoveredValue84 := recoveredValue74.
    (recoveredValue84) openCompoundStmnt.
    recoveredValue85 := recoveredValue74.
    (recoveredValue85) functionCall: ('etasInitModelProcess') arguments: ('').
    recoveredValue86 := recoveredValue74.
    (recoveredValue86) functionCall: ('etasInitOsProcess') arguments: ('').
    recoveredValue87 := recoveredValue74.
    (recoveredValue87) cr.
    recoveredValue88 := recoveredValue74.
    (recoveredValue88) cppIfdef: ('INCLUDES_HARDWARE_CONFIGURATION').
    recoveredValue89 := recoveredValue74.
    (recoveredValue89) functionCall: ('etasRtioStartupProcess') arguments: ('').
    recoveredValue90 := recoveredValue74.
    (recoveredValue90) cppEndIf: ('INCLUDES_HARDWARE_CONFIGURATION').
    recoveredValue91 := recoveredValue74.
    (recoveredValue91) cr.
    recoveredValue92 := recoveredValue74.
    (recoveredValue92) newlinePutAll: ('return;').
    recoveredValue93 := recoveredValue74.
    (recoveredValue93) closeCompoundStmnt.
    recoveredValue94 := recoveredValue74.
    (recoveredValue94) cr.
    recoveredValue95 := recoveredValue74.
    (recoveredValue95) voidKeyword.
    recoveredValue96 := recoveredValue74.
    (recoveredValue96) space.
    recoveredValue97 := recoveredValue74.
    (recoveredValue97) nextPutAll: ('etasInactiveInitTask').
    recoveredValue98 := recoveredValue74.
    (recoveredValue98) space.
    recoveredValue99 := recoveredValue74.
    (recoveredValue99) openParenthesis.
    recoveredValue100 := recoveredValue74.
    (recoveredValue100) voidKeyword.
    recoveredValue101 := recoveredValue74.
    (recoveredValue101) closeParenthesis.
    recoveredValue102 := recoveredValue74.
    (recoveredValue102) openCompoundStmnt.
    recoveredValue103 := recoveredValue74.
    (recoveredValue103) cppIfdef: ('ITPC').
    recoveredValue104 := recoveredValue74.
    (recoveredValue104) newlinePutAll: ('vrtaIntPriority previousPriority = icuOSSetIPL(0);').
    recoveredValue105 := recoveredValue74.
    (recoveredValue105) newlinePutAll: ('verboseLog(1, "etasInactiveInitTask: Start");').
    recoveredValue106 := recoveredValue74.
    (recoveredValue106) cppEndIf.
    (recoveredValue74) cr.
    recoveredValue107 := (self) initSymbolsForAppMode: ('inactive').
    recoveredValue108 := [:recoveredBlock520Arg1 | 
    | recoveredBlock520Value0 recoveredBlock520Value1 recoveredBlock520Value2 recoveredBlock520Value3 |
    recoveredBlock520Value0 := (self) body.
    recoveredBlock520Value1 := recoveredBlock520Arg1.
    recoveredBlock520Value2 := ('%1_processList();') bindWith: (recoveredBlock520Value1).
    recoveredBlock520Value3 := (recoveredBlock520Value0) newlinePutAll: (recoveredBlock520Value2).
    recoveredBlock520Value3
].
    (recoveredValue107) do: (recoveredValue108).
    recoveredValue109 := (self) body.
    recoveredValue110 := recoveredValue109.
    (recoveredValue110) newline.
    recoveredValue111 := recoveredValue109.
    (recoveredValue111) cppIfdef: ('ITPC').
    recoveredValue112 := recoveredValue109.
    (recoveredValue112) newlinePutAll: ('icuOSSetIPL (previousPriority);').
    recoveredValue113 := recoveredValue109.
    (recoveredValue113) newlinePutAll: ('verboseLog(1, "etasInactiveInitTask: End");').
    recoveredValue114 := recoveredValue109.
    (recoveredValue114) cppEndIf: ('ITPC').
    recoveredValue115 := recoveredValue109.
    (recoveredValue115) newlinePutAll: ('return;').
    recoveredValue116 := recoveredValue109.
    (recoveredValue116) closeCompoundStmnt.
    (recoveredValue109) newline.
    recoveredValue117 := (self) body.
    recoveredValue118 := recoveredValue117.
    (recoveredValue118) newlinePutAll: ('void UserAppModeInitTask(void)').
    recoveredValue119 := recoveredValue117.
    (recoveredValue119) openCompoundStmnt.
    recoveredValue120 := recoveredValue117.
    (recoveredValue120) cr.
    recoveredValue121 := recoveredValue117.
    (recoveredValue121) cppIfdef: ('INCLUDES_HARDWARE_CONFIGURATION').
    recoveredValue122 := recoveredValue117.
    (recoveredValue122) functionCall: ('intecrioETCInit') arguments: ('').
    recoveredValue123 := recoveredValue117.
    (recoveredValue123) cppEndIf: ('INCLUDES_HARDWARE_CONFIGURATION').
    recoveredValue124 := recoveredValue117.
    (recoveredValue124) cr.
    recoveredValue125 := recoveredValue117.
    (recoveredValue125) cppIfdef: ('ITPC').
    recoveredValue126 := recoveredValue117.
    (recoveredValue126) newlinePutAll: ('vrtaIntPriority previousPriority = icuOSSetIPL(0);').
    recoveredValue127 := recoveredValue117.
    (recoveredValue127) newlinePutAll: ('verboseLog(1, "UserAppModeInitTask: Start");').
    recoveredValue128 := recoveredValue117.
    (recoveredValue128) cppEndIf: ('ITPC').
    (recoveredValue117) newline.
    recoveredValue129 := (self) initSymbolsForAppMode: ('active').
    recoveredValue130 := [:recoveredBlock658Arg1 | 
    | recoveredBlock658Value0 recoveredBlock658Value1 recoveredBlock658Value2 recoveredBlock658Value3 |
    recoveredBlock658Value0 := (self) body.
    recoveredBlock658Value1 := recoveredBlock658Arg1.
    recoveredBlock658Value2 := ('%1_processList();') bindWith: (recoveredBlock658Value1).
    recoveredBlock658Value3 := (recoveredBlock658Value0) newlinePutAll: (recoveredBlock658Value2).
    recoveredBlock658Value3
].
    (recoveredValue129) do: (recoveredValue130).
    recoveredValue131 := (self) body.
    recoveredValue132 := recoveredValue131.
    (recoveredValue132) newline.
    recoveredValue133 := recoveredValue131.
    (recoveredValue133) newline.
    recoveredValue134 := recoveredValue131.
    (recoveredValue134) cppIfdef: ('ITPC').
    recoveredValue135 := recoveredValue131.
    (recoveredValue135) newlinePutAll: ('icuOSSetIPL (previousPriority);').
    recoveredValue136 := recoveredValue131.
    (recoveredValue136) newlinePutAll: ('verboseLog(1, "UserAppModeInitTask: Start OS");').
    recoveredValue137 := recoveredValue131.
    (recoveredValue137) newline.
    recoveredValue138 := recoveredValue131.
    (recoveredValue138) comment: ('Start clock after finishing all init task for this application mode').
    recoveredValue139 := recoveredValue131.
    (recoveredValue139) newlinePutAll: ('startAscetRtsClock();').
    recoveredValue140 := recoveredValue131.
    (recoveredValue140) cppEndIf: ('ITPC').
    recoveredValue141 := recoveredValue131.
    (recoveredValue141) newlinePutAll: ('return;	').
    recoveredValue142 := recoveredValue131.
    (recoveredValue142) closeCompoundStmnt.
    recoveredValue143 := recoveredValue131.
    (recoveredValue143) newline.
    (recoveredValue131) newlinePutAll: ('
void etasInitTasks(void)
{
	AppModeType curAppMode;
	
#ifdef ITPC
	curAppMode = rtaGetActiveApplicationMode();
#else
	curAppMode = GetActiveApplicationMode();
#endif
	switch(curAppMode)
	{
#ifdef ITPC
		case APPMODE_init:
#else
		case etasStartup:
#endif
			etasStartupInitTask();
			break;		

#ifdef ITPC
		case APPMODE_inactive:
#else
		case etasInactive:
#endif
			etasInactiveInitTask();
			break;	
			
#ifdef ITPC
		case APPMODE_active:
#else
		case UserAppMode:
#endif
			UserAppModeInitTask();
			break;
	}
		
	return;	
}


/**************** exit tasks *****************/

void etasStartupExitTask(void)
{
	return;	
}

void etasInactiveExitTask(void)
{
	return;	
}

void UserAppModeExitTask(void)
{
	/* Stop clock before running exit tasks for this application mode */

#ifdef INCLUDES_HARDWARE_CONFIGURATION
	intecrioETCExit();
#endif

#ifdef ITPC
	stopAscetRtsClock();
#endif
	
	return;	
}

void etasExitTasks(void)
{
	AppModeType curAppMode;

#ifdef ITPC	
	curAppMode = rtaGetActiveApplicationMode();
#else
	curAppMode = GetActiveApplicationMode();
#endif

	switch(curAppMode)
	{
#ifdef ITPC
		case APPMODE_init:
#else
		case etasStartup:
#endif
			etasStartupExitTask();
			break;		

#ifdef ITPC
		case APPMODE_inactive:
#else
		case etasInactive:
#endif
			etasInactiveExitTask();
			break;		
		
#ifdef ITPC
		case APPMODE_active:
#else
		case UserAppMode:
#endif
			UserAppModeExitTask();
			break;	
	}
		
	return;	
}

/**** task references ****/
').
    recoveredValue144 := (self) owner.
    recoveredValue145 := (self) body.
    (recoveredValue144) endRegionBanner: ('Application Modes') description: ('Application Mode Init/Exit Tasks') on: (recoveredValue145).
    recoveredValue146 := recoveredLocal1.
    recoveredValue147 := [:recoveredBlock759Arg1 | 
    | recoveredBlock759Value0 recoveredBlock759Value1 recoveredBlock759Value2 recoveredBlock759Value3 |
    recoveredBlock759Value0 := (self) body.
    recoveredBlock759Value1 := recoveredBlock759Arg1.
    recoveredBlock759Value2 := ('DECLARE_TASK_MONITOR(%1);') bindWith: (recoveredBlock759Value1).
    recoveredBlock759Value3 := (recoveredBlock759Value0) newlinePutAll: (recoveredBlock759Value2).
    recoveredBlock759Value3
].
    (recoveredValue146) do: (recoveredValue147).
    recoveredValue148 := (self) body.
    recoveredValue149 := recoveredValue148.
    (recoveredValue149) cr.
    recoveredValue150 := recoveredValue148.
    (recoveredValue150) newlinePutAll: ('T_taskTableEntry taskTableEntries[] =').
    (recoveredValue148) openCompoundStmnt.
    recoveredValue151 := recoveredLocal1.
    recoveredValue152 := [:recoveredBlock797Arg1 :recoveredBlock797Arg2 | 
    | recoveredBlock797Stack0 recoveredBlock797Stack1 recoveredBlock797Stack2 recoveredBlock797Stack3 recoveredBlock797Stack4 recoveredBlock797PC recoveredBlock797Step recoveredBlock797Done recoveredBlock797Result |
    recoveredBlock797Stack0 := self.
    recoveredBlock797PC := 804.
    recoveredBlock797Done := false.
    [recoveredBlock797Done not] whileTrue: [
        recoveredBlock797Step := recoveredBlock797PC.
        recoveredBlock797Step = 804 ifTrue: [
            recoveredBlock797Stack1 := recoveredBlock797Arg2.
            recoveredBlock797PC := 805.
        ].
        recoveredBlock797Step = 805 ifTrue: [
            recoveredBlock797Stack2 := recoveredLocal2.
            recoveredBlock797PC := 808.
        ].
        recoveredBlock797Step = 808 ifTrue: [
            recoveredBlock797Stack1 := (recoveredBlock797Stack1) = (recoveredBlock797Stack2).
            recoveredBlock797PC := 809.
        ].
        recoveredBlock797Step = 809 ifTrue: [
            (recoveredBlock797Stack1) ifTrue: [recoveredBlock797PC := 812] ifFalse: [recoveredBlock797PC := 826].
        ].
        recoveredBlock797Step = 812 ifTrue: [
            recoveredBlock797Stack1 := self.
            recoveredBlock797PC := 813.
        ].
        recoveredBlock797Step = 813 ifTrue: [
            recoveredBlock797Stack1 := (recoveredBlock797Stack1) body.
            recoveredBlock797PC := 815.
        ].
        recoveredBlock797Step = 815 ifTrue: [
            recoveredBlock797Stack2 := '{(TaskType *)&%1, "%1", TASK_MONITOR_PTR(%1)}'.
            recoveredBlock797PC := 818.
        ].
        recoveredBlock797Step = 818 ifTrue: [
            recoveredBlock797Stack3 := recoveredBlock797Arg1.
            recoveredBlock797PC := 819.
        ].
        recoveredBlock797Step = 819 ifTrue: [
            recoveredBlock797Stack2 := (recoveredBlock797Stack2) bindWith: (recoveredBlock797Stack3).
            recoveredBlock797PC := 821.
        ].
        recoveredBlock797Step = 821 ifTrue: [
            recoveredBlock797Stack1 := (recoveredBlock797Stack1) newlinePutAll: (recoveredBlock797Stack2).
            recoveredBlock797PC := 823.
        ].
        recoveredBlock797Step = 823 ifTrue: [
            recoveredBlock797PC := 837.
        ].
        recoveredBlock797Step = 826 ifTrue: [
            recoveredBlock797Stack1 := self.
            recoveredBlock797PC := 827.
        ].
        recoveredBlock797Step = 827 ifTrue: [
            recoveredBlock797Stack1 := (recoveredBlock797Stack1) body.
            recoveredBlock797PC := 829.
        ].
        recoveredBlock797Step = 829 ifTrue: [
            recoveredBlock797Stack2 := '{(TaskType *)&%1, "%1", TASK_MONITOR_PTR(%1)},'.
            recoveredBlock797PC := 832.
        ].
        recoveredBlock797Step = 832 ifTrue: [
            recoveredBlock797Stack3 := recoveredBlock797Arg1.
            recoveredBlock797PC := 833.
        ].
        recoveredBlock797Step = 833 ifTrue: [
            recoveredBlock797Stack2 := (recoveredBlock797Stack2) bindWith: (recoveredBlock797Stack3).
            recoveredBlock797PC := 835.
        ].
        recoveredBlock797Step = 835 ifTrue: [
            recoveredBlock797Stack1 := (recoveredBlock797Stack1) newlinePutAll: (recoveredBlock797Stack2).
            recoveredBlock797PC := 837.
        ].
        recoveredBlock797Step = 837 ifTrue: [
            recoveredBlock797Result := recoveredBlock797Stack1.
            recoveredBlock797Done := true.
        ].
    ].
    recoveredBlock797Result
].
    (recoveredValue151) doWithIndex: (recoveredValue152).
    recoveredValue153 := (self) body.
    recoveredValue154 := recoveredValue153.
    (recoveredValue154) closeCompoundStmnt.
    recoveredValue155 := recoveredValue153.
    (recoveredValue155) nextPutAll: (';').
    recoveredValue156 := recoveredValue153.
    (recoveredValue156) cr.
    recoveredValue157 := recoveredValue153.
    (recoveredValue157) newlinePutAll: ('T_taskTable taskTable =').
    recoveredValue158 := recoveredValue153.
    (recoveredValue158) openCompoundStmnt.
    recoveredValue159 := recoveredValue153.
    (recoveredValue159) cr.
    recoveredValue160 := recoveredValue153.
    (recoveredValue160) comment: ('number of tasks (user defined tasks + etasConfigTask)').
    recoveredValue161 := recoveredValue153.
    recoveredValue162 := recoveredLocal2.
    recoveredValue163 := (recoveredValue162) asString.
    recoveredValue164 := (recoveredValue163) , (',').
    (recoveredValue161) newlinePutAll: (recoveredValue164).
    recoveredValue165 := recoveredValue153.
    (recoveredValue165) cr.
    recoveredValue166 := recoveredValue153.
    (recoveredValue166) comment: ('pointers to tasks').
    recoveredValue167 := recoveredValue153.
    (recoveredValue167) newlinePutAll: ('&taskTableEntries[0]').
    recoveredValue168 := recoveredValue153.
    (recoveredValue168) closeCompoundStmnt.
    recoveredValue169 := recoveredValue153.
    (recoveredValue169) nextPutAll: (';').
    recoveredValue170 := recoveredValue153.
    (recoveredValue170) cr.
    (recoveredValue153) newlinePutAll: ('
/**** OS administration ****/

T_osAdmin osAdmin =
{
	&appModeTable,
	&taskTable
};

/************ dummies **********/

/* stimuligenerator table (only dummy / currently not used) */
sgTaskTableEntry sgTaskTable[1];

extern ASDObject *initializeModel (void);

ASDObject *initializeYukonModel (void) {
	return initializeModel ();
}

').
    recoveredValue171 := (self) owner.
    recoveredValue172 := (self) body.
    (recoveredValue171) beginRegionBanner: ('Main Function') description: ('Main Function - INtime') on: (recoveredValue172).
    recoveredValue173 := (self) body.
    recoveredValue174 := recoveredValue173.
    (recoveredValue174) cr.
    recoveredValue175 := recoveredValue173.
    (recoveredValue175) cppIfdef: ('ITPC').
    recoveredValue176 := recoveredValue173.
    (recoveredValue176) cppInclude: ('vrtaStdDevices.h').
    recoveredValue177 := recoveredValue173.
    (recoveredValue177) cr.
    recoveredValue178 := recoveredValue173.
    (recoveredValue178) cppIf: ('defined(OS_TASK_osek_idle_task)').
    recoveredValue179 := recoveredValue173.
    (recoveredValue179) cppInclude: ('vrtaCore.h').
    recoveredValue180 := recoveredValue173.
    (recoveredValue180) cppEndIf: ('defined(OS_TASK_osek_idle_task)').
    recoveredValue181 := recoveredValue173.
    (recoveredValue181) cr.
    recoveredValue182 := recoveredValue173.
    (recoveredValue182) comment: ('This symbol will be supplied by osgen.asm.').
    recoveredValue183 := recoveredValue173.
    (recoveredValue183) externDeclType: ('vrtaVectorTable') var: ('os_vectors').
    recoveredValue184 := recoveredValue173.
    (recoveredValue184) cr.
    recoveredValue185 := recoveredValue173.
    recoveredValue186 := (self) oilGenerator.
    recoveredValue187 := (recoveredValue186) numTasks.
    recoveredValue188 := (recoveredValue187) + (3).
    recoveredValue189 := (recoveredValue188) asString.
    recoveredValue190 := ('NUM_TASKS               (%1) ') bindWith: (recoveredValue189).
    (recoveredValue185) cppDefine: (recoveredValue190).
    recoveredValue191 := recoveredValue173.
    (recoveredValue191) comment: ('Including the idle task. (max 64)').
    recoveredValue192 := recoveredValue173.
    recoveredValue193 := (self) oilGenerator.
    recoveredValue194 := (recoveredValue193) numInterruptTasks.
    recoveredValue195 := (recoveredValue194) + (3).
    recoveredValue196 := (recoveredValue195) asString.
    recoveredValue197 := ('NUM_INTERRUPTS          (%1) ') bindWith: (recoveredValue196).
    (recoveredValue192) cppDefine: (recoveredValue197).
    recoveredValue198 := recoveredValue173.
    (recoveredValue198) comment: ('There is only one interrupt. (max 32) ').
    recoveredValue199 := recoveredValue173.
    (recoveredValue199) cppDefine: ('NUM_DEVICE_THREADS      (8) ').
    recoveredValue200 := recoveredValue173.
    (recoveredValue200) comment: ('One per vrtaClock device').
    recoveredValue201 := recoveredValue173.
    (recoveredValue201) cr.
    recoveredValue202 := recoveredValue173.
    (recoveredValue202) comment: ('-------------------------------------------------------------------------').
    recoveredValue203 := recoveredValue173.
    (recoveredValue203) cr.
    recoveredValue204 := recoveredValue173.
    (recoveredValue204) voidKeyword.
    recoveredValue205 := recoveredValue173.
    (recoveredValue205) space.
    recoveredValue206 := recoveredValue173.
    (recoveredValue206) nextPutAll: ('main(int argc, const char * argv[])').
    recoveredValue207 := recoveredValue173.
    (recoveredValue207) openCompoundStmnt.
    recoveredValue208 := recoveredValue173.
    (recoveredValue208) declVar: ('action') type: ('vrtaAction').
    recoveredValue209 := recoveredValue173.
    (recoveredValue209) newline.
    recoveredValue210 := recoveredValue173.
    (recoveredValue210) functionCall: (' vrtaInitialize') arguments: ('argc, argv, &os_vectors, NUM_DEVICE_THREADS, NUM_INTERRUPTS + 2 * NUM_TASKS').
    recoveredValue211 := recoveredValue173.
    (recoveredValue211) newline.
    recoveredValue212 := recoveredValue173.
    (recoveredValue212) comment: ('Adapt exception handling').
    recoveredValue213 := recoveredValue173.
    (recoveredValue213) assignStmnt: ('action.devID') expr: ('AM_DEVICE_ID').
    recoveredValue214 := recoveredValue173.
    (recoveredValue214) assignStmnt: ('action.devAction') expr: ('AM_ACTION_ID_SetExceptionMode').
    recoveredValue215 := recoveredValue173.
    (recoveredValue215) assignStmnt: ('action.devActionLen') expr: ('sizeof (unsigned int)').
    recoveredValue216 := recoveredValue173.
    (recoveredValue216) assignStmnt: ('action.devActionData') expr: ('0').
    recoveredValue217 := recoveredValue173.
    (recoveredValue217) assignStmnt: ('action.devEmbeddedData.uVal') expr: ('0').
    recoveredValue218 := recoveredValue173.
    (recoveredValue218) newline.
    recoveredValue219 := recoveredValue173.
    (recoveredValue219) functionCall: (' vrtaSendAction') arguments: ('AM_DEVICE_ID, &action').
    recoveredValue220 := recoveredValue173.
    (recoveredValue220) newline.
    recoveredValue221 := recoveredValue173.
    (recoveredValue221) comment: ('This will not return until the VECU is being shut down.').
    recoveredValue222 := recoveredValue173.
    (recoveredValue222) functionCall: ('vrtaStart') arguments: ('').
    recoveredValue223 := recoveredValue173.
    (recoveredValue223) closeCompoundStmnt.
    (recoveredValue173) cppEndIf: ('ITPC').
    recoveredValue224 := (self) owner.
    recoveredValue225 := (self) body.
    (recoveredValue224) endRegionBanner: ('Main Function') description: ('Main Function - INtime') on: (recoveredValue225).
    recoveredValue226 := (self) body.
    (recoveredValue226) cr.
    ^self
! !

