"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetCommon.ic method 0x20000048; bytecode file offset 0xf040"
!EtasOilGenerator methodsFor: 'recovered'!
_addInternalTasks
    ^self
! !

"ETargetCommon.ic method 0x20000264; bytecode file offset 0xf320"
!EtasOilGenerator methodsFor: 'recovered'!
appModePrefix
    ^'APPMODE_'
! !

"ETargetCommon.ic method 0x20000364; bytecode file offset 0xf434"
!EtasOilGenerator methodsFor: 'recovered'!
numTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getTasksById.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x200003a4; bytecode file offset 0xf434"
!EtasOilGenerator methodsFor: 'recovered'!
numInterruptTasks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getInterruptTasks.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ETargetCommon.ic method 0x20000534; bytecode file offset 0xf584"
!EtasOilGenerator methodsFor: 'recovered'!
_generateAppmodeName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) appModePrefix.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20000714; bytecode file offset 0xf70c"
!EtasOilGenerator methodsFor: 'recovered'!
appModes
    | recoveredValue0 |
    recoveredValue0 := appModes.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000728; bytecode file offset 0xf730"
!EtasOilGenerator methodsFor: 'recovered'!
interruptTasks
    | recoveredValue0 |
    recoveredValue0 := interruptTasks.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x2000074c; bytecode file offset 0xf754"
!EtasOilGenerator methodsFor: 'recovered'!
swTasks
    | recoveredValue0 |
    recoveredValue0 := swTasks.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000780; bytecode file offset 0xf778"
!EtasOilGenerator methodsFor: 'recovered'!
tasksById
    | recoveredValue0 |
    recoveredValue0 := tasksById.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x2000079c; bytecode file offset 0xf79c"
!EtasOilGenerator methodsFor: 'recovered'!
timers
    | recoveredValue0 |
    recoveredValue0 := timers.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x200007c0; bytecode file offset 0xf7c0"
!EtasOilGenerator methodsFor: 'recovered'!
timersByTaskId
    | recoveredValue0 |
    recoveredValue0 := timersByTaskId.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x200007dc; bytecode file offset 0xf7e4"
!EtasOilGenerator methodsFor: 'recovered'!
prioLevelsCoop
    | recoveredValue0 |
    recoveredValue0 := prioLevelsCoop.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000808; bytecode file offset 0xf808"
!EtasOilGenerator methodsFor: 'recovered'!
prioLevelsPreemp
    | recoveredValue0 |
    recoveredValue0 := prioLevelsPreemp.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000838; bytecode file offset 0xf830"
!EtasOilGenerator methodsFor: 'recovered'!
tickDuration
    | recoveredValue0 |
    recoveredValue0 := tickDuration.
    ^recoveredValue0
! !

"ETargetCommon.ic method 0x20000a74; bytecode file offset 0xfa74"
!EtasOilGenerator methodsFor: 'recovered'!
addAppMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAppModes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ETargetCommon.ic method 0x20000ac4; bytecode file offset 0xfadc"
!EtasOilGenerator methodsFor: 'recovered'!
getTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getTasksById.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x20000ad8; bytecode file offset 0xfadc"
!EtasOilGenerator methodsFor: 'recovered'!
getTimerForTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getTimersByTaskId.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ETargetCommon.ic method 0x20000b64; bytecode file offset 0xfb5c"
!EtasOilGenerator methodsFor: 'recovered'!
appModes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    appModes := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000b88; bytecode file offset 0xfb80"
!EtasOilGenerator methodsFor: 'recovered'!
interruptTasks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interruptTasks := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000bac; bytecode file offset 0xfba4"
!EtasOilGenerator methodsFor: 'recovered'!
swTasks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swTasks := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000bc8; bytecode file offset 0xfbc8"
!EtasOilGenerator methodsFor: 'recovered'!
tasksById: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tasksById := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000bec; bytecode file offset 0xfbec"
!EtasOilGenerator methodsFor: 'recovered'!
timers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timers := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c08; bytecode file offset 0xfc10"
!EtasOilGenerator methodsFor: 'recovered'!
timersByTaskId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timersByTaskId := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c2c; bytecode file offset 0xfc34"
!EtasOilGenerator methodsFor: 'recovered'!
prioLevelsCoop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prioLevelsCoop := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c58; bytecode file offset 0xfc58"
!EtasOilGenerator methodsFor: 'recovered'!
prioLevelsPreemp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    prioLevelsPreemp := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c7c; bytecode file offset 0xfc74"
!EtasOilGenerator methodsFor: 'recovered'!
generatedCooperativeResource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    generatedCooperativeResource := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x20000c90; bytecode file offset 0xfc88"
!EtasOilGenerator methodsFor: 'recovered'!
tickDuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tickDuration := recoveredValue0.
    ^self
! !

"ETargetCommon.ic method 0x200010c8; bytecode file offset 0x100c4"
!EtasOilGenerator methodsFor: 'recovered'!
generatedCooperativeResource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := generatedCooperativeResource.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := generatedCooperativeResource.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x200011d0; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getInterruptTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) interruptTasks.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := OrderedCollection.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) interruptTasks: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) interruptTasks.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x200011ec; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getTimers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) timers.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := OrderedCollection.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) timers: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) timers.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20001208; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getTasksById
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tasksById.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := Dictionary.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) tasksById: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) tasksById.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20001224; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getTimersByTaskId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) timersByTaskId.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := Dictionary.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) timersByTaskId: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) timersByTaskId.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20001240; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getAppModes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) appModes.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := OrderedCollection.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) appModes: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) appModes.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x2000125c; bytecode file offset 0x10268"
!EtasOilGenerator methodsFor: 'recovered'!
getSwTasks
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) swTasks.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := OrderedCollection.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := (self) swTasks: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) swTasks.
    ^recoveredValue2
! !

"ETargetCommon.ic method 0x20001524; bytecode file offset 0x10530"
!EtasOilGenerator methodsFor: 'recovered'!
addTimer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasOilTimer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) newForParent: (self) name: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := (self) getTimers.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    (recoveredBlock12Value0) add: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    ^recoveredBlock12Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

"ETargetCommon.ic method 0x20001a50; bytecode file offset 0x10a64"
!EtasOilGenerator methodsFor: 'recovered'!
_generateAppmodesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getAppModes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (self) appModePrefix.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := ('APPMODE %1%2;') bindWith: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value4 := (recoveredBlock5Value0) newlinePutAll: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    ^self
! !

"ETargetCommon.ic method 0x20001fd0; bytecode file offset 0x11008"
!EtasOilGenerator methodsFor: 'recovered'!
addTaskTimer: recoveredArg1 id: recoveredArg2 delay: recoveredArg3 period: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasOilTaskTimer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) newForParent: (self) name: (recoveredValue1) id: (recoveredValue2) delay: (recoveredValue3) period: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 |
    recoveredBlock22Value0 := (self) getTimers.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    (recoveredBlock22Value0) add: (recoveredBlock22Value1).
    recoveredBlock22Value2 := (self) getTimersByTaskId.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := recoveredBlock22Arg1.
    recoveredBlock22Value5 := (recoveredBlock22Value2) at: (recoveredBlock22Value3) put: (recoveredBlock22Value4).
    recoveredBlock22Value5
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ETargetCommon.ic method 0x20001ff4; bytecode file offset 0x11008"
!EtasOilGenerator methodsFor: 'recovered'!
addInterruptTask: recoveredArg1 id: recoveredArg2 priority: recoveredArg3 isrSource: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasOilInterruptTask.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) newForParent: (self) name: (recoveredValue1) id: (recoveredValue2) priority: (recoveredValue3) isrSource: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 |
    recoveredBlock22Value0 := (self) getInterruptTasks.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    (recoveredBlock22Value0) add: (recoveredBlock22Value1).
    recoveredBlock22Value2 := (self) getTasksById.
    recoveredBlock22Value3 := recoveredArg2.
    recoveredBlock22Value4 := recoveredBlock22Arg1.
    recoveredBlock22Value5 := (recoveredBlock22Value2) at: (recoveredBlock22Value3) put: (recoveredBlock22Value4).
    recoveredBlock22Value5
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ETargetCommon.ic method 0x200028c4; bytecode file offset 0x118d8"
!EtasOilGenerator methodsFor: 'recovered'!
addSwTask: recoveredArg1 id: recoveredArg2 priority: recoveredArg3 schedule: recoveredArg4 activation: recoveredArg5 autostart: recoveredArg6 appMode: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasOilSwTask.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := recoveredArg6.
    recoveredValue7 := recoveredArg7.
    recoveredValue8 := (recoveredValue0) newForParent: (self) name: (recoveredValue1) id: (recoveredValue2) priority: (recoveredValue3) schedule: (recoveredValue4) activation: (recoveredValue5) autostart: (recoveredValue6) appMode: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 |
    recoveredBlock31Value0 := (self) getSwTasks.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    (recoveredBlock31Value0) add: (recoveredBlock31Value1).
    recoveredBlock31Value2 := (self) getTasksById.
    recoveredBlock31Value3 := recoveredArg2.
    recoveredBlock31Value4 := recoveredBlock31Arg1.
    recoveredBlock31Value5 := (recoveredBlock31Value2) at: (recoveredBlock31Value3) put: (recoveredBlock31Value4).
    recoveredBlock31Value5
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    ^self
! !

"ETargetCommon.ic method 0x200035e4; bytecode file offset 0x12618"
!EtasOilGenerator methodsFor: 'recovered'!
generate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    (self) generatedCooperativeResource: (false).
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newlinePutAll: ('CPU rta_cpu {').
    (recoveredValue2) incIndent.
    recoveredValue4 := recoveredLocal1.
    (self) _generateAppmodesOn: (recoveredValue4).
    recoveredValue5 := (self) getSwTasks.
    recoveredValue6 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredLocal1.
    recoveredBlock32Value2 := (recoveredBlock32Value0) generateOn: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) getTimers.
    recoveredValue8 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredBlock50Arg1.
    recoveredBlock50Value1 := recoveredLocal1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) generateOn: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) getInterruptTasks.
    recoveredValue10 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := recoveredLocal1.
    recoveredBlock68Value2 := (recoveredBlock68Value0) generateOn: (recoveredBlock68Value1).
    recoveredBlock68Value2
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) decIndent.
    (recoveredValue11) newlinePutAll: ('}; // CPU rta_cpu').
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) contents.
    ^recoveredValue14
! !

