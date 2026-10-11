"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e09c; bytecode file offset 0x94d048"
!SGMdOSBuilder methodsFor: 'recovered'!
reserveStack
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e2d0; bytecode file offset 0x94d048"
!SGMdOSBuilder methodsFor: 'recovered'!
freeStack
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052ae8; bytecode file offset 0x9505d0"
!SGMdOSBuilder methodsFor: 'recovered'!
popNodeSemAna: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200534fc; bytecode file offset 0x9505d0"
!SGMdOSBuilder methodsFor: 'recovered'!
id: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059bf0; bytecode file offset 0x9566ac"
!SGMdOSBuilder methodsFor: 'recovered'!
popNode: recoveredArg1 ifAbsent: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006cfc0; bytecode file offset 0x969c04"
!SGMdOSBuilder methodsFor: 'recovered'!
osSystem
    | recoveredValue0 |
    recoveredValue0 := osSystem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090cb8; bytecode file offset 0x98d690"
!SGMdOSBuilder methodsFor: 'recovered'!
enableRTA
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := (recoveredValue0) osekInfo.
    (recoveredValue1) enableRTA.
    ^self
! !

"ASDBase.ic method 0x2009c8cc; bytecode file offset 0x999628"
!SGMdOSBuilder methodsFor: 'recovered'!
timerTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdTimerTask.
    recoveredValue1 := (recoveredValue0) create.
    (self) pushTask: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009c96c; bytecode file offset 0x999628"
!SGMdOSBuilder methodsFor: 'recovered'!
softwareTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSoftwareTask.
    recoveredValue1 := (recoveredValue0) create.
    (self) pushTask: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ca20; bytecode file offset 0x999628"
!SGMdOSBuilder methodsFor: 'recovered'!
reserveTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSymbolTable.
    recoveredValue1 := (recoveredValue0) create.
    (self) reserveTable: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cb60; bytecode file offset 0x999628"
!SGMdOSBuilder methodsFor: 'recovered'!
initTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdInitTask.
    recoveredValue1 := (recoveredValue0) create.
    (self) pushTask: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a935c; bytecode file offset 0x9a5d18"
!SGMdOSBuilder methodsFor: 'recovered'!
mdlSemErrUndeclaredOpMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) mdlSemErrUndeclared: (recoveredValue0) kind: ('operating mode').
    ^self
! !

"ASDBase.ic method 0x200ac12c; bytecode file offset 0x9a8ab4"
!SGMdOSBuilder methodsFor: 'recovered'!
enableTickDuration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := (recoveredValue0) osekInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) enableTickDuration: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ac140; bytecode file offset 0x9a8ab4"
!SGMdOSBuilder methodsFor: 'recovered'!
tickDuration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := (recoveredValue0) osekInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) tickDuration: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ac154; bytecode file offset 0x9a8ab4"
!SGMdOSBuilder methodsFor: 'recovered'!
osekRTA: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := (recoveredValue0) osekInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) osekRTA: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ac1f4; bytecode file offset 0x9a8ab4"
!SGMdOSBuilder methodsFor: 'recovered'!
enableTicks: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := (recoveredValue0) osekInfo.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) enableTicks: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b98cc; bytecode file offset 0x9b63d0"
!SGMdOSBuilder methodsFor: 'recovered'!
taskPriority: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) priority: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9944; bytecode file offset 0x9b63d0"
!SGMdOSBuilder methodsFor: 'recovered'!
taskDeadline: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) deadline: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9ac0; bytecode file offset 0x9b63d0"
!SGMdOSBuilder methodsFor: 'recovered'!
maxActive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) popTask.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) maxActive: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c3a00; bytecode file offset 0x9c058c"
!SGMdOSBuilder methodsFor: 'recovered'!
osSystem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osSystem := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c945c; bytecode file offset 0x9c5d44"
!SGMdOSBuilder methodsFor: 'recovered'!
lookupEvent: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) keyForEvent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) lookup: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c9470; bytecode file offset 0x9c5d44"
!SGMdOSBuilder methodsFor: 'recovered'!
lookupOpMode: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) keyForOpMode: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) lookup: (recoveredValue2) ifFail: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d28bc; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
schedulingNonPreemptive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrSchedulingNonPreemptive.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d28d0; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
autoStartTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrAutostartOn.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d28e4; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
schedulingNone
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrSchedulingNone.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d28f8; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
hooksOn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrHooksOn.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d290c; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
startAlarmTask
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrAutostartOn.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d2920; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
hooksOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrHooksOff.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d2934; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
schedulingPreemptive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrSchedulingPreemptive.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d2948; bytecode file offset 0x9cf208"
!SGMdOSBuilder methodsFor: 'recovered'!
schedulingFull
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) popTaskAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgAttrSchedulingFull.
    (self) pushStack: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200dba24; bytecode file offset 0x9d82e0"
!SGMdOSBuilder methodsFor: 'recovered'!
moduleInterface: recoveredArg1 processRef: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) lookupMethod: (recoveredValue0) inClassInterface: (recoveredValue1).
    (self) pushStack: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e9238; bytecode file offset 0x9e5b0c"
!SGMdOSBuilder methodsFor: 'recovered'!
mdlContainsLegacyHwxProjectFiles: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cgOptContainsLegacyHwxProjectFiles.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e924c; bytecode file offset 0x9e5b0c"
!SGMdOSBuilder methodsFor: 'recovered'!
mdlContainsLegacyHwcVariable: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) classInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cgOptContainsLegacyHwcVariable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ec260; bytecode file offset 0x9e8b34"
!SGMdOSBuilder methodsFor: 'recovered'!
debug: recoveredArg1 monitoring: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osSystem.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) debug: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) monitoring: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201031e4; bytecode file offset 0x9ffaa8"
!SGMdOSBuilder methodsFor: 'recovered'!
endTask
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) popProcessList.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) popTask.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue1) processList: (recoveredValue2).
    (self) pushStack: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010d5c0; bytecode file offset 0xa09e9c"
!SGMdOSBuilder methodsFor: 'recovered'!
pushTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeNewNode: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) popTaskAttributes.
    (recoveredValue2) attributes: (recoveredValue3).
    (self) pushStack: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20113b5c; bytecode file offset 0xa1041c"
!SGMdOSBuilder methodsFor: 'recovered'!
class: recoveredArg1 processRef: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkClassType: (recoveredValue0).
    recoveredValue2 := (self) lookupClassInterface: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg2.
    (self) moduleInterface: (recoveredValue3) processRef: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013c878; bytecode file offset 0xa391b0"
!SGMdOSBuilder methodsFor: 'recovered'!
popTaskAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'isMdlTaskAttributes'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cb904Value0 block280cb904Value1 |
    block280cb904Value0 := SGCgTaskAttributes.
    block280cb904Value1 := (block280cb904Value0) create.
    block280cb904Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) popNode: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201618d0; bytecode file offset 0xa5e198"
!SGMdOSBuilder methodsFor: 'recovered'!
popTask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTask.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) popStack.
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
            recoveredStack1 := 'task'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlFatalExpect: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dd240; bytecode file offset 0xad9b58"
!SGMdOSBuilder methodsFor: 'recovered'!
popProcessList
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
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) popStack.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekStack.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlProcessDecl.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dd264; bytecode file offset 0xad9b58"
!SGMdOSBuilder methodsFor: 'recovered'!
popOpModes
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
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) popStack.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekStack.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlOpMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201eb660; bytecode file offset 0xae7f54"
!SGMdOSBuilder methodsFor: 'recovered'!
popTasks
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
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'isMdlTask'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) popNodeSemAna: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekStack.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlTask.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20231724; bytecode file offset 0xb2dff8"
!SGMdOSBuilder methodsFor: 'recovered'!
timeTableTask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetFeatureSupportsTimetable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SGMdTimeTableTask.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) pushTask: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 140.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) targetFeatureLabel.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) mdlWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) timerTask.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024df80; bytecode file offset 0xb4a858"
!SGMdOSBuilder methodsFor: 'recovered'!
popEvents
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
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) stack.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'isMdlEvent'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) popNodeSemAna: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekStack.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEvent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202abde4; bytecode file offset 0xba86a8"
!SGMdOSBuilder methodsFor: 'recovered'!
prioLevelsCoop: recoveredArg1 preemp: recoveredArg2 event: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) numEventLevels: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) numPreempLevels: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) numCoopLevels: (recoveredStack1).
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

"ASDBase.ic method 0x202c5a48; bytecode file offset 0xbc2360"
!SGMdOSBuilder methodsFor: 'recovered'!
keyForOpMode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'o_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'o_'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'valid opMode  name'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5a90; bytecode file offset 0xbc2360"
!SGMdOSBuilder methodsFor: 'recovered'!
keyForEvent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'e_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'e_'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlKey.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlKey.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'valid event name'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031fb90; bytecode file offset 0xc1c470"
!SGMdOSBuilder methodsFor: 'recovered'!
delay: recoveredArg1 period: recoveredArg2
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
            recoveredStack2 := 'EHI_86336'.
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
            recoveredStack0 := (recoveredStack0) popTask.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTimeBaseTicks.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) delay: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asMicroSecondsFromSeconds.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) delay: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMicroSecondsFromSeconds.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) specDelay: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) specPeriod: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20352e14; bytecode file offset 0xc4f714"
!SGMdOSBuilder methodsFor: 'recovered'!
beginOperatingSystem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    (self) classType: (recoveredValue0).
    recoveredValue1 := (self) classInterface.
    (self) reserveTable: (recoveredValue1).
    recoveredValue2 := (self) classType.
    recoveredValue3 := (self) classInterface.
    recoveredValue4 := (recoveredValue3) optimizations.
    (recoveredValue2) optimizations: (recoveredValue4).
    (self) reserveStack.
    recoveredValue5 := SGMdOperatingSystem.
    recoveredValue6 := (recoveredValue5) create.
    recoveredValue7 := (self) makeNewNode: (recoveredValue6).
    (self) osSystem: (recoveredValue7).
    recoveredValue8 := (self) osSystem.
    recoveredValue9 := (self) classInterface.
    (recoveredValue8) projectDecl: (recoveredValue9).
    (self) reserveTable.
    recoveredValue10 := (self) osSystem.
    (self) pushStack: (recoveredValue10).
    recoveredValue11 := (self) dtName.
    (self) id: (recoveredValue11).
    recoveredValue12 := (self) osSystem.
    recoveredValue13 := (self) popExpr.
    (recoveredValue12) dTId: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20356364; bytecode file offset 0xc52c4c"
!SGMdOSBuilder methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SGMdOperatingMode.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeName: (recoveredValue4).
    (recoveredValue3) mdlName: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue2) id: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    (self) pushStack: (recoveredValue8).
    recoveredValue9 := (self) table.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) mdlName.
    recoveredValue12 := (self) keyForOpMode: (recoveredValue11).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) errLabel.
    recoveredBlock44Value2 := (self) mdlSemErrNo: (14) with: (recoveredBlock44Value1).
    recoveredBlock44Value2
].
    (recoveredValue9) decl: (recoveredValue12) id: (recoveredValue13) ifFail: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2035e428; bytecode file offset 0xc5acf8"
!SGMdOSBuilder methodsFor: 'recovered'!
initialOpMode: recoveredArg1 startingOpMode: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeName: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) osSystem.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) errLabel.
    recoveredBlock17Value2 := (self) mdlSemErrUndeclaredOpMode: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    recoveredValue5 := (self) lookupOpMode: (recoveredValue3) ifFail: (recoveredValue4).
    (recoveredValue2) initOpMode: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) makeName: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) osSystem.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := (recoveredBlock48Value0) errLabel.
    recoveredBlock48Value2 := (self) mdlSemErrUndeclaredOpMode: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
    recoveredValue11 := (self) lookupOpMode: (recoveredValue9) ifFail: (recoveredValue10).
    (recoveredValue8) startOpMode: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20360b68; bytecode file offset 0xc5d43c"
!SGMdOSBuilder methodsFor: 'recovered'!
eventTask: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := SGMdEventTask.
    recoveredValue1 := (recoveredValue0) create.
    (self) pushTask: (recoveredValue1).
    recoveredValue2 := (self) peekStack.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) makeName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal3.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) event: (recoveredBlock27Value1).
    ^recoveredBlock27Value2
].
    recoveredValue7 := (self) lookupEvent: (recoveredValue5) ifFail: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    (recoveredValue8) triggerTask: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) event: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x20371dfc; bytecode file offset 0xc6e6fc"
!SGMdOSBuilder methodsFor: 'recovered'!
endOperatingSystem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
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
            recoveredStack2 := (recoveredStack2) popTasks.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) tasks: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) popEvents.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) events: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) popOpModes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) opModes: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOsekRTAEnabled.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 28].
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
            recoveredStack0 := (recoveredStack0) isOSERCOSEK43Enabled.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Call_69403'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) addDefaultInitTasks.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'isMdlOperatingSystem'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) popNodeSemAna: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) freeStack.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) freeTable.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) freeTable.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) checkStatus.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037fb04; bytecode file offset 0xc7c3f0"
!SGMdOSBuilder methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2 startMode: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SGMdOperatingMode.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeName: (recoveredValue4).
    (recoveredValue3) mdlName: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) startMode: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue2) id: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    (self) pushStack: (recoveredValue10).
    recoveredValue11 := (self) table.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) mdlName.
    recoveredValue14 := (self) keyForOpMode: (recoveredValue13).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) errLabel.
    recoveredBlock50Value2 := (self) mdlSemErrNo: (14) with: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
    (recoveredValue11) decl: (recoveredValue14) id: (recoveredValue15) ifFail: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x20393e08; bytecode file offset 0xc906e0"
!SGMdOSBuilder methodsFor: 'recovered'!
eventTask: recoveredArg1 id: recoveredArg2 minPeriod: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGMdEventTask.
    recoveredValue1 := (recoveredValue0) create.
    (self) pushTask: (recoveredValue1).
    recoveredValue2 := (self) peekStack.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) makeName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal3.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) event: (recoveredBlock27Value1).
    ^recoveredBlock27Value2
].
    recoveredValue7 := (self) lookupEvent: (recoveredValue5) ifFail: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    (recoveredValue8) triggerTask: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) event: (recoveredValue11).
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredArg3.
    (recoveredValue12) minPeriod: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x203a4af0; bytecode file offset 0xca13e0"
!SGMdOSBuilder methodsFor: 'recovered'!
operatingMode: recoveredArg1 id: recoveredArg2 startMode: recoveredArg3 ctMode: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := SGMdOperatingMode.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeName: (recoveredValue4).
    (recoveredValue3) mdlName: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) startMode: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) ctMode: (recoveredValue9).
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue2) id: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    (self) pushStack: (recoveredValue12).
    recoveredValue13 := (self) table.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) mdlName.
    recoveredValue16 := (self) keyForOpMode: (recoveredValue15).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredLocal1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) errLabel.
    recoveredBlock56Value2 := (self) mdlSemErrNo: (14) with: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
    (recoveredValue13) decl: (recoveredValue16) id: (recoveredValue17) ifFail: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x203bcb64; bytecode file offset 0xcb9458"
!SGMdOSBuilder methodsFor: 'recovered'!
event: recoveredArg1 id: recoveredArg2 minPrio: recoveredArg3 maxPrio: recoveredArg4 isrAddress: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := SGMdEvent.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) makeNewNode: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeName: (recoveredValue4).
    (recoveredValue3) mdlName: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) id: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) minPrio: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) maxPrio: (recoveredValue11).
    recoveredValue12 := recoveredArg5.
    recoveredValue13 := (recoveredValue2) isrAddress: (recoveredValue12).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := (self) table.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) mdlName.
    recoveredValue17 := (self) keyForEvent: (recoveredValue16).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredLocal1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) errLabel.
    recoveredBlock56Value2 := (self) mdlSemErrAlreadyDeclaredEvent: (recoveredBlock56Value1).
    recoveredBlock56Value2
].
    (recoveredValue14) decl: (recoveredValue17) id: (recoveredValue18) ifFail: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (self) pushStack: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x2047d9a0; bytecode file offset 0xd7a298"
!SGMdOSBuilder methodsFor: 'recovered'!
task: recoveredArg1 id: recoveredArg2 opModes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) popTask.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) makeName: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) mdlName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) opModes: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) pushStack: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSystem.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) numCoopLevels.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) systemInfoNumCoopLevels: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlTimerTask.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInitTask.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEventTask.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 79.
        ].
        recoveredBlock71Step = 79 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) makeName: (recoveredBlock71Stack1).
            recoveredBlock71PC := 80.
        ].
        recoveredBlock71Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock71Stack0.
            recoveredBlock71PC := 83.
        ].
        recoveredBlock71Step = 83 ifTrue: [
            recoveredBlock71Stack0 := nil.
            recoveredBlock71PC := 84.
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Stack1 := self.
            recoveredBlock71PC := 85.
        ].
        recoveredBlock71Step = 85 ifTrue: [
            recoveredBlock71Stack2 := recoveredLocal1.
            recoveredBlock71PC := 88.
        ].
        recoveredBlock71Step = 88 ifTrue: [
            recoveredBlock71Stack3 := [
    | recoveredBlock71Block88Value0 recoveredBlock71Block88Value1 |
    recoveredBlock71Block88Value0 := recoveredLocal1.
    recoveredBlock71Block88Value1 := (recoveredBlock71Block88Value0) errLabel.
    (self) mdlSemErrUndeclaredOpMode: (recoveredBlock71Block88Value1).
    nil
].
            recoveredBlock71PC := 103.
        ].
        recoveredBlock71Step = 103 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) lookupOpMode: (recoveredBlock71Stack2) ifFail: (recoveredBlock71Stack3).
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Stack2 := recoveredBlock71Stack1.
            recoveredBlock71PC := 106.
        ].
        recoveredBlock71Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock71Stack2.
            recoveredBlock71PC := 109.
        ].
        recoveredBlock71Step = 109 ifTrue: [
            (recoveredBlock71Stack1 == nil) ifTrue: [recoveredBlock71PC := 121] ifFalse: [recoveredBlock71PC := 112].
        ].
        recoveredBlock71Step = 112 ifTrue: [
            recoveredBlock71PC := 113.
        ].
        recoveredBlock71Step = 113 ifTrue: [
            recoveredBlock71Stack0 := recoveredLocal2.
            recoveredBlock71PC := 116.
        ].
        recoveredBlock71Step = 116 ifTrue: [
            recoveredBlock71Stack1 := recoveredLocal3.
            recoveredBlock71PC := 119.
        ].
        recoveredBlock71Step = 119 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) addTask: (recoveredBlock71Stack1).
            recoveredBlock71PC := 121.
        ].
        recoveredBlock71Step = 121 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack0.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050d2d4; bytecode file offset 0xe09bf8"
!SGMdOSBuilder methodsFor: 'recovered'!
addDefaultInitTasks
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) opModes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block2810b0d0Arg1 | 
    | block2810b0d0Value0 block2810b0d0Value1 |
    block2810b0d0Value0 := block2810b0d0Arg1.
    block2810b0d0Value1 := (block2810b0d0Value0) errLabel.
    block2810b0d0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) osSystem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) inactiveAppMode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) initTasks.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) opModes.
    recoveredBlock37Value2 := [:recoveredBlock37Block46Arg1 | 
    | recoveredBlock37Block46Value0 recoveredBlock37Block46Value1 recoveredBlock37Block46Value2 recoveredBlock37Block46Value3 |
    recoveredBlock37Block46Value0 := recoveredLocal4.
    recoveredBlock37Block46Value1 := recoveredBlock37Block46Arg1.
    recoveredBlock37Block46Value2 := [].
    recoveredBlock37Block46Value3 := (recoveredBlock37Block46Value0) remove: (recoveredBlock37Block46Value1) ifAbsent: (recoveredBlock37Block46Value2).
    recoveredBlock37Block46Value3
].
    recoveredBlock37Value3 := (recoveredBlock37Value1) do: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) tasks.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := 1000.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := [:recoveredBlock102Arg1 | 
    | recoveredBlock102Value0 recoveredBlock102Value1 recoveredBlock102Value2 recoveredBlock102Value3 recoveredBlock102Value4 recoveredBlock102Value5 recoveredBlock102Value6 recoveredBlock102Value7 recoveredBlock102Value8 recoveredBlock102Value9 recoveredBlock102Value10 recoveredBlock102Value11 recoveredBlock102Value12 recoveredBlock102Value13 |
    (self) initTask.
    recoveredBlock102Value0 := recoveredBlock102Arg1.
    recoveredBlock102Value1 := ('init_') , (recoveredBlock102Value0).
    recoveredBlock102Value2 := recoveredLocal2.
    recoveredBlock102Value3 := Array.
    recoveredBlock102Value4 := recoveredBlock102Arg1.
    recoveredBlock102Value5 := (recoveredBlock102Value3) with: (recoveredBlock102Value4).
    (self) task: (recoveredBlock102Value1) id: (recoveredBlock102Value2) opModes: (recoveredBlock102Value5).
    (self) endTask.
    recoveredBlock102Value6 := (self) popNodeSemAna: ('isMdlTask').
    recoveredLocal1 := recoveredBlock102Value6.
    recoveredBlock102Value7 := recoveredLocal1.
    recoveredBlock102Value8 := (recoveredBlock102Value7) attributes.
    (recoveredBlock102Value8) cgAttrAdditional.
    recoveredBlock102Value9 := recoveredLocal3.
    recoveredBlock102Value10 := recoveredLocal1.
    (recoveredBlock102Value9) add: (recoveredBlock102Value10).
    recoveredBlock102Value11 := recoveredLocal2.
    recoveredBlock102Value12 := (recoveredBlock102Value11) + (1).
    recoveredBlock102Value13 := recoveredBlock102Value12.
    recoveredLocal2 := recoveredBlock102Value13.
    recoveredBlock102Value12
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) osSystem.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) tasks: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

