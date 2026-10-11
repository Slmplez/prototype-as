"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x200002c8; bytecode file offset 0x745c"
!AcoCoroutineFuture methodsFor: 'recovered'!
restartAsynchronousCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := resourceSemaphore.
    recoveredValue1 := (recoveredValue0) signal.
    ^recoveredValue1
! !

"async.ic method 0x20000314; bytecode file offset 0x74a4"
!AcoCoroutineFuture methodsFor: 'recovered'!
unlock
    locked := false.
    ^self
! !

"async.ic method 0x20000334; bytecode file offset 0x74c4"
!AcoCoroutineFuture methodsFor: 'recovered'!
lock
    locked := true.
    ^self
! !

"async.ic method 0x20000844; bytecode file offset 0x79d8"
!AcoCoroutineFuture methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 |
    (self) initialize.
    recoveredValue0 := recoveredArg1.
    resourceManager := recoveredValue0.
    ^self
! !

"async.ic method 0x20000afc; bytecode file offset 0x7c94"
!AcoCoroutineFuture methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Semaphore.
    recoveredValue1 := (recoveredValue0) new.
    resourceSemaphore := recoveredValue1.
    locked := false.
    ^self
! !

"async.ic method 0x20000fd4; bytecode file offset 0x8174"
!AcoCoroutineFuture methodsFor: 'recovered'!
releaseOSResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    resourceGroup := nil.
    recoveredValue0 := (self) futureStub.
    (recoveredValue0) reinitialize.
    recoveredValue1 := resourceManager.
    recoveredValue2 := (self) futureStub.
    recoveredValue3 := (recoveredValue2) resourceGroup.
    (recoveredValue1) addGroup: (recoveredValue3).
    ^self
! !

"async.ic method 0x200010fc; bytecode file offset 0x8294"
!AcoCoroutineFuture methodsFor: 'recovered'!
completeDeadAsynchronousCall
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := locked.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) releaseOSResources.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := resourceManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addCoroutineFuture: (recoveredStack1).
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

"async.ic method 0x200017a4; bytecode file offset 0x8944"
!AcoCoroutineFuture methodsFor: 'recovered'!
retractWaitFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := resourceGroup.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := future.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) notNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := future.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) setDeadSend.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001d30; bytecode file offset 0x8ed8"
!AcoCoroutineFuture methodsFor: 'recovered'!
terminate
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := AcoError.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := ACORESOURCESLOST.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) errorCode: (recoveredBlock4Stack2).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            returnValue := recoveredBlock4Stack1.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            resultCalculated := recoveredBlock4Stack1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            asyncBlock := recoveredBlock4Stack1.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            future := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            thread := recoveredBlock4Stack1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := process.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 41] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := process.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) resume.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"async.ic method 0x20001dc8; bytecode file offset 0x8f6c"
!AcoCoroutineFuture methodsFor: 'recovered'!
completeAsynchronousCall
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) getReturnValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := locked.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) releaseOSResources.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) enableAsyncMessages: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            resultCalculated := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := mustResume.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := process.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := process.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) resume.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) enableAsyncMessages: (recoveredStack1).
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

"async.ic method 0x20002cf4; bytecode file offset 0x9ea8"
!AcoCoroutineFuture methodsFor: 'recovered'!
startAsynchronousCall
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            process := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            resultCalculated := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            mustResume := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) getOSResources.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) isAcoError.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            (recoveredBlock22Stack0) ifTrue: [recoveredBlock22PC := 38] ifFalse: [recoveredBlock22PC := 42].
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack0 := recoveredLocal1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            ^recoveredBlock22Stack0
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack0 := platformFunction.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack2 := originalObjects.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            (recoveredBlock22Stack0) asyncCallWithFuture: (recoveredBlock22Stack1) originalObjects: (recoveredBlock22Stack2).
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Stack0 := nil.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := resultCalculated.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 65] ifFalse: [recoveredBlock22PC := 56].
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack0 := true.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            mustResume := recoveredBlock22Stack0.
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredBlock22Stack0 := process.
            recoveredBlock22PC := 62.
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) suspendOn: (recoveredBlock22Stack1).
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 |
    process := nil.
    recoveredBlock66Value0 := Processor.
    recoveredBlock66Value1 := recoveredLocal3.
    recoveredBlock66Value2 := (recoveredBlock66Value0) enableAsyncMessages: (recoveredBlock66Value1).
    recoveredBlock66Value2
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := returnValue.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := locked.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := resourceManager.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) addCoroutineFuture: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x20002d88; bytecode file offset 0x9f48"
!AcoCoroutineFuture methodsFor: 'recovered'!
getOSResources
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := stackSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := resourceManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getResourcesFor: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := resourceManager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := stackSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getResourcesFor: (recoveredStack2) withStackSize: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := resourceManager.
    (recoveredBlock34Value0) addPendingFuture: (self).
    recoveredBlock34Value1 := resourceSemaphore.
    recoveredBlock34Value2 := (recoveredBlock34Value1) wait.
    recoveredBlock34Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := resourceManager.
    recoveredBlock49Value1 := [].
    recoveredBlock49Value2 := (recoveredBlock49Value0) removePendingFuture: (self) ifAbsent: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifCurtailed: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := resourceGroup.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := locked.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) stackSize.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) stackSize.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := thread.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) stackSize.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := ACOINVALIDSTACKREQUEST.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

