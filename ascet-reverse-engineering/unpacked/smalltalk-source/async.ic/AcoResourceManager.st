"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x200002b4; bytecode file offset 0x7448"
!AcoResourceManager methodsFor: 'recovered'!
removeGroup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := groupPool.
    recoveredValue1 := (recoveredValue0) removeNext.
    ^recoveredValue1
! !

"async.ic method 0x20000384; bytecode file offset 0x751c"
!AcoResourceManager methodsFor: 'recovered'!
createCoroutineFuture
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AcoCoroutineFuture.
    recoveredValue1 := (recoveredValue0) new: (self).
    ^recoveredValue1
! !

"async.ic method 0x200003cc; bytecode file offset 0x755c"
!AcoResourceManager methodsFor: 'recovered'!
active
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := active.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"async.ic method 0x20000454; bytecode file offset 0x75f4"
!AcoResourceManager methodsFor: 'recovered'!
futurePool
    | recoveredValue0 |
    recoveredValue0 := futurePool.
    ^recoveredValue0
! !

"async.ic method 0x200004a4; bytecode file offset 0x7644"
!AcoResourceManager methodsFor: 'recovered'!
runningFutures
    | recoveredValue0 |
    recoveredValue0 := runningFutures.
    ^recoveredValue0
! !

"async.ic method 0x200004d0; bytecode file offset 0x7670"
!AcoResourceManager methodsFor: 'recovered'!
threadPool
    | recoveredValue0 |
    recoveredValue0 := threadPool.
    ^recoveredValue0
! !

"async.ic method 0x200004fc; bytecode file offset 0x769c"
!AcoResourceManager methodsFor: 'recovered'!
runningThreads
    | recoveredValue0 |
    recoveredValue0 := runningThreads.
    ^recoveredValue0
! !

"async.ic method 0x20000528; bytecode file offset 0x76b8"
!AcoResourceManager methodsFor: 'recovered'!
asyncPool
    | recoveredValue0 |
    recoveredValue0 := asyncPool.
    ^recoveredValue0
! !

"async.ic method 0x20000544; bytecode file offset 0x76d4"
!AcoResourceManager methodsFor: 'recovered'!
runningAsyncs
    | recoveredValue0 |
    recoveredValue0 := runningAsyncs.
    ^recoveredValue0
! !

"async.ic method 0x20000558; bytecode file offset 0x76e8"
!AcoResourceManager methodsFor: 'recovered'!
groupPool
    | recoveredValue0 |
    recoveredValue0 := groupPool.
    ^recoveredValue0
! !

"async.ic method 0x2000056c; bytecode file offset 0x7704"
!AcoResourceManager methodsFor: 'recovered'!
createdResources
    | recoveredValue0 |
    recoveredValue0 := createdResources.
    ^recoveredValue0
! !

"async.ic method 0x20000590; bytecode file offset 0x7720"
!AcoResourceManager methodsFor: 'recovered'!
coroutinePool
    | recoveredValue0 |
    recoveredValue0 := coroutinePool.
    ^recoveredValue0
! !

"async.ic method 0x20000698; bytecode file offset 0x7828"
!AcoResourceManager methodsFor: 'recovered'!
active: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    active := recoveredValue1.
    ^recoveredValue0
! !

"async.ic method 0x200007d8; bytecode file offset 0x7970"
!AcoResourceManager methodsFor: 'recovered'!
removeFuture
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := runningFutures.
    recoveredValue1 := futurePool.
    recoveredValue2 := (recoveredValue1) removeNext.
    recoveredValue3 := (recoveredValue0) addIfNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x200007f4; bytecode file offset 0x798c"
!AcoResourceManager methodsFor: 'recovered'!
removeThread
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := runningThreads.
    recoveredValue1 := threadPool.
    recoveredValue2 := (recoveredValue1) removeNext.
    recoveredValue3 := (recoveredValue0) addIfNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000810; bytecode file offset 0x79a8"
!AcoResourceManager methodsFor: 'recovered'!
removeAsync
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := runningAsyncs.
    recoveredValue1 := asyncPool.
    recoveredValue2 := (recoveredValue1) removeNext.
    recoveredValue3 := (recoveredValue0) addIfNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x2000082c; bytecode file offset 0x79c0"
!AcoResourceManager methodsFor: 'recovered'!
hasRunningThreads
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := createdResources.
    recoveredValue1 := groupPool.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) > (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000914; bytecode file offset 0x7aac"
!AcoResourceManager methodsFor: 'recovered'!
addPendingFuture: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) notifyPending.
    recoveredValue1 := pendingFutures.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) add: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000bf0; bytecode file offset 0x7d88"
!AcoResourceManager methodsFor: 'recovered'!
removePendingFuture: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) notifyNotPending.
    recoveredValue1 := pendingFutures.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) remove: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"async.ic method 0x20000e88; bytecode file offset 0x8024"
!AcoResourceManager methodsFor: 'recovered'!
addThread: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := runningThreads.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := threadPool.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue5
! !

"async.ic method 0x20000eac; bytecode file offset 0x8048"
!AcoResourceManager methodsFor: 'recovered'!
addAsync: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := runningAsyncs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := asyncPool.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) add: (recoveredValue4).
    ^recoveredValue5
! !

"async.ic method 0x20000fa8; bytecode file offset 0x8148"
!AcoResourceManager methodsFor: 'recovered'!
createStaticFuture
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AcoStaticFuture.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getResourcesFor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200011c4; bytecode file offset 0x8360"
!AcoResourceManager methodsFor: 'recovered'!
startPendingFuture
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) removePendingFuture.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformFunction.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) restartAsynchronousCall.
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

"async.ic method 0x20001290; bytecode file offset 0x8428"
!AcoResourceManager methodsFor: 'recovered'!
removePendingFuture
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pendingFutures.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) notifyNotPending.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x200012b8; bytecode file offset 0x845c"
!AcoResourceManager methodsFor: 'recovered'!
createStaticFutureWithStackSize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := AcoStaticFuture.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackSize: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getResourcesFor: (recoveredStack1) withStackSize: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001454; bytecode file offset 0x85f8"
!AcoResourceManager methodsFor: 'recovered'!
addFuture: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := runningFutures.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) future.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) future.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) scrubFuture.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x2000153c; bytecode file offset 0x86d4"
!AcoResourceManager methodsFor: 'recovered'!
invalidate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            createdResources := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) discardExcessFutures.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := coroutinePool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := pendingFutures.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := groupPool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x2000169c; bytecode file offset 0x883c"
!AcoResourceManager methodsFor: 'recovered'!
addCoroutineFuture: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CacheSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := coroutinePool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := CacheSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) scrubFuture.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := coroutinePool.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200017dc; bytecode file offset 0x8988"
!AcoResourceManager methodsFor: 'recovered'!
reinitializeStaticFuture: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getResourcesFor: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ACOINVALIDSTATIC.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001858; bytecode file offset 0x89fc"
!AcoResourceManager methodsFor: 'recovered'!
getResourcesFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) removeGroup.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) futureStub.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) future: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) resourceGroup: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001904; bytecode file offset 0x8aa0"
!AcoResourceManager methodsFor: 'recovered'!
lockThreadInProcess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := false.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := [
    recoveredLocal1 := true.
    nil
].
    (recoveredValue1) at: ('AcoLockedThread') ifAbsentPut: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"async.ic method 0x20001984; bytecode file offset 0x8b1c"
!AcoResourceManager methodsFor: 'recovered'!
terminateThreads
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := runningThreads.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := threadPool.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001f7c; bytecode file offset 0x9134"
!AcoResourceManager methodsFor: 'recovered'!
makeFutureStubsRemovable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := runningFutures.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block28000b94Arg1 | 
    | block28000b94Value0 block28000b94Value1 |
    block28000b94Value0 := block28000b94Arg1.
    block28000b94Value1 := (block28000b94Value0) terminate.
    block28000b94Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := AcoFutureStub.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstances.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block28000bb8Arg1 | 
    | block28000bb8Value0 block28000bb8Value1 block28000bb8Value2 |
    block28000bb8Value0 := block28000bb8Arg1.
    block28000bb8Value1 := Object.
    block28000bb8Value2 := (block28000bb8Value0) switchClassTo: (block28000bb8Value1).
    block28000bb8Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x2000203c; bytecode file offset 0x91f0"
!AcoResourceManager methodsFor: 'recovered'!
discardExcessFutures
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := runningFutures.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := futurePool.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block28000bdcArg1 | 
    | block28000bdcValue0 block28000bdcValue1 |
    block28000bdcValue0 := block28000bdcArg1.
    block28000bdcValue1 := (block28000bdcValue0) terminate.
    block28000bdcValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOfReclaimedFutures.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := futurePool.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) removeNext.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := futurePool.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200020a4; bytecode file offset 0x923c"
!AcoResourceManager methodsFor: 'recovered'!
invalidateOSResources
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) invalidate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := runningThreads.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) invalidate.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := runningAsyncs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) invalidate.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := threadPool.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) invalidate.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := asyncPool.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeOrNil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200020f4; bytecode file offset 0x92ac"
!AcoResourceManager methodsFor: 'recovered'!
removeCoroutineFuture
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'AcoLockedThread'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'AcoLockedThread'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := coroutinePool.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeNext.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) lock.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'AcoLockedThread'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := coroutinePool.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeNext.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x2000238c; bytecode file offset 0x954c"
!AcoResourceManager methodsFor: 'recovered'!
addGroup: recoveredArg1
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
            recoveredStack1 := CacheSize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := groupPool.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := CacheSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := createdResources.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            createdResources := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := runningThreads.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) thread.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := runningAsyncs.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) asyncBlock.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 46.
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
            recoveredStack2 := (recoveredStack2) futureStub.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) addFuture: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := groupPool.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) startPendingFuture.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) enableAsyncMessages: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x2000240c; bytecode file offset 0x95bc"
!AcoResourceManager methodsFor: 'recovered'!
unlockThreadInProcess: recoveredArg1 release: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'AcoLockedThread'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) unlock.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) releaseOSResources.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) addCoroutineFuture: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) futureStub.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) futureStub.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) setDeadSend.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20002880; bytecode file offset 0x9a34"
!AcoResourceManager methodsFor: 'recovered'!
lockThreadIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsAsynchronousCallout.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) supported.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProcess.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) lockThreadInProcess: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := [
    recoveredLocal3 := true.
    true
].
    recoveredBlock34Value2 := (recoveredBlock34Value0) ifCurtailed: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal1.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 85].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 76.
        ].
        recoveredBlock59Step = 76 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal2.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal3.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) not.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) unlockThreadInProcess: (recoveredBlock59Stack2) release: (recoveredBlock59Stack3).
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20002908; bytecode file offset 0x9ae8"
!AcoResourceManager methodsFor: 'recovered'!
returnStaticFuture: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ACORESOURCENOTAVAILABLE.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStatic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidStatic.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitUntilAvailable.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAcoError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ACOINVALIDSTATIC.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) thread.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) asyncBlock.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) futureStub.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) setArgs: (recoveredStack2) andFutureStub: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultThreadPriority.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) primitiveSetThreadPriority: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) futureStub.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) reinitialize.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) futureStub.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceGroup.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) addGroup: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ACOINVALIDSTATIC.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
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

"async.ic method 0x20002a48; bytecode file offset 0x9c18"
!AcoResourceManager methodsFor: 'recovered'!
getResourcesGroup
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) removeThread.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFuture.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) addThread: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) removeAsync.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addFuture: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) addThread: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := createdResources.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            createdResources := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) setArgs: (recoveredStack2) andFutureStub: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultThreadPriority.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) primitiveSetThreadPriority: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := AcoResourceGroup.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) asyncBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) futureStub: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) thread: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) resourceGroup: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20002bf8; bytecode file offset 0x9d98"
!AcoResourceManager methodsFor: 'recovered'!
terminate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) active: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            createdResources := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) terminateThreads.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := runningFutures.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := runningAsyncs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := futurePool.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := asyncPool.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := groupPool.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := pendingFutures.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := coroutinePool.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeOrNil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20002e28; bytecode file offset 0xa004"
!AcoResourceManager methodsFor: 'recovered'!
getResourcesFor: recoveredArg1 withStackSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) removeGroup.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) thread.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackIsGrowable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := threadCreationBlock.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addGroup: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := runningThreads.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := runningThreads.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) thread: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) thread.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) asyncBlock.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) futureStub.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) setArgs: (recoveredStack2) andFutureStub: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultThreadPriority.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) primitiveSetThreadPriority: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) futureStub.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) future: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) resourceGroup: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200033a8; bytecode file offset 0xa5a4"
!AcoResourceManager methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            createdResources := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := AcoExpandingPool.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | block28000c00Value0 block28000c00Value1 |
    block28000c00Value0 := AcoFutureStub.
    block28000c00Value1 := (block28000c00Value0) new.
    block28000c00Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) creationBlock: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            futurePool := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := AcoExpandingPool.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    | block28000c24Value0 block28000c24Value1 |
    block28000c24Value0 := AcoAsyncBlock.
    block28000c24Value1 := (block28000c24Value0) newElement.
    block28000c24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) creationBlock: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            asyncPool := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28000c48Arg1 | 
    | block28000c48Value0 block28000c48Value1 block28000c48Value2 |
    block28000c48Value0 := AcoThread.
    block28000c48Value1 := block28000c48Arg1.
    block28000c48Value2 := (block28000c48Value0) newStackSize: (block28000c48Value1).
    block28000c48Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            threadCreationBlock := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := AcoExpandingPool.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := threadCreationBlock.
    recoveredBlock63Value1 := (self) class.
    recoveredBlock63Value2 := (recoveredBlock63Value1) defaultStackSize.
    recoveredBlock63Value3 := (recoveredBlock63Value0) value: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2) creationBlock: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            threadPool := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := AcoGrowablePool.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock89Value0 |
    recoveredBlock89Value0 := (self) getResourcesGroup.
    recoveredBlock89Value0
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) creationBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := false.
            recoveredBlock101PC := 109.
        ].
        recoveredBlock101Step = 109 ifTrue: [
            recoveredBlock101Stack2 := EsAsynchronousCallout.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) supported.
            recoveredBlock101PC := 113.
        ].
        recoveredBlock101Step = 113 ifTrue: [
            (recoveredBlock101Stack2) ifTrue: [recoveredBlock101PC := 116] ifFalse: [recoveredBlock101PC := 136].
        ].
        recoveredBlock101Step = 116 ifTrue: [
            recoveredBlock101PC := 117.
        ].
        recoveredBlock101Step = 117 ifTrue: [
            recoveredBlock101Stack1 := true.
            recoveredBlock101PC := 118.
        ].
        recoveredBlock101Step = 118 ifTrue: [
            recoveredBlock101Stack2 := self.
            recoveredBlock101PC := 119.
        ].
        recoveredBlock101Step = 119 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) class.
            recoveredBlock101PC := 121.
        ].
        recoveredBlock101Step = 121 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) maximumNumberOfResources.
            recoveredBlock101PC := 123.
        ].
        recoveredBlock101Step = 123 ifTrue: [
            (recoveredBlock101Stack2 == nil) ifTrue: [recoveredBlock101PC := 136] ifFalse: [recoveredBlock101PC := 126].
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 128.
        ].
        recoveredBlock101Step = 128 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) createdResources.
            recoveredBlock101PC := 130.
        ].
        recoveredBlock101Step = 130 ifTrue: [
            recoveredBlock101Stack2 := self.
            recoveredBlock101PC := 131.
        ].
        recoveredBlock101Step = 131 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) class.
            recoveredBlock101PC := 133.
        ].
        recoveredBlock101Step = 133 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) maximumNumberOfResources.
            recoveredBlock101PC := 135.
        ].
        recoveredBlock101Step = 135 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) < (recoveredBlock101Stack2).
            recoveredBlock101PC := 136.
        ].
        recoveredBlock101Step = 136 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) growableBlock: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            groupPool := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := AcoGrowablePool.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock146Value0 |
    recoveredBlock146Value0 := (self) createCoroutineFuture.
    recoveredBlock146Value0
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) creationBlock: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := [
    | block28000c6cValue0 block28000c6cValue1 |
    block28000c6cValue0 := EsAsynchronousCallout.
    block28000c6cValue1 := (block28000c6cValue0) supported.
    block28000c6cValue1
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) growableBlock: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            coroutinePool := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := AcoPool.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            pendingFutures := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := AcoPool.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            runningFutures := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := AcoPool.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            runningThreads := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := AcoPool.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) size: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            runningAsyncs := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) active: (recoveredStack1).
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

