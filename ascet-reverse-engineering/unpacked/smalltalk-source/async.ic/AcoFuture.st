"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000000; bytecode file offset 0x71b0"
!AcoFuture methodsFor: 'recovered'!
releaseResources
    ^self
! !

"async.ic method 0x20000018; bytecode file offset 0x71b0"
!AcoFuture methodsFor: 'recovered'!
notifyPending
    ^self
! !

"async.ic method 0x20000020; bytecode file offset 0x71b0"
!AcoFuture methodsFor: 'recovered'!
notifyNotPending
    ^self
! !

"async.ic method 0x2000003c; bytecode file offset 0x71dc"
!AcoFuture methodsFor: 'recovered'!
restartAsynchronousCall
    | recoveredValue0 |
    recoveredValue0 := (self) startAsynchronousCall.
    ^recoveredValue0
! !

"async.ic method 0x20000278; bytecode file offset 0x740c"
!AcoFuture methodsFor: 'recovered'!
isReady
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := semaphore.
    recoveredValue1 := (recoveredValue0) hasSignals.
    ^recoveredValue1
! !

"async.ic method 0x200003e0; bytecode file offset 0x7580"
!AcoFuture methodsFor: 'recovered'!
scrubFuture
    (self) originalObjects: (nil).
    ^self
! !

"async.ic method 0x2000044c; bytecode file offset 0x75f4"
!AcoFuture methodsFor: 'recovered'!
semaphore
    | recoveredValue0 |
    recoveredValue0 := semaphore.
    ^recoveredValue0
! !

"async.ic method 0x20000480; bytecode file offset 0x7610"
!AcoFuture methodsFor: 'recovered'!
asyncBlock
    | recoveredValue0 |
    recoveredValue0 := asyncBlock.
    ^recoveredValue0
! !

"async.ic method 0x200004ac; bytecode file offset 0x7644"
!AcoFuture methodsFor: 'recovered'!
resultCalculated
    | recoveredValue0 |
    recoveredValue0 := resultCalculated.
    ^recoveredValue0
! !

"async.ic method 0x200004d8; bytecode file offset 0x7670"
!AcoFuture methodsFor: 'recovered'!
originalObjects
    | recoveredValue0 |
    recoveredValue0 := originalObjects.
    ^recoveredValue0
! !

"async.ic method 0x20000504; bytecode file offset 0x769c"
!AcoFuture methodsFor: 'recovered'!
futureStub
    | recoveredValue0 |
    recoveredValue0 := future.
    ^recoveredValue0
! !

"async.ic method 0x20000520; bytecode file offset 0x76b8"
!AcoFuture methodsFor: 'recovered'!
thread
    | recoveredValue0 |
    recoveredValue0 := thread.
    ^recoveredValue0
! !

"async.ic method 0x2000053c; bytecode file offset 0x76d4"
!AcoFuture methodsFor: 'recovered'!
platformFunction
    | recoveredValue0 |
    recoveredValue0 := platformFunction.
    ^recoveredValue0
! !

"async.ic method 0x20000574; bytecode file offset 0x7704"
!AcoFuture methodsFor: 'recovered'!
resourceGroup
    | recoveredValue0 |
    recoveredValue0 := resourceGroup.
    ^recoveredValue0
! !

"async.ic method 0x20000588; bytecode file offset 0x7720"
!AcoFuture methodsFor: 'recovered'!
stackSize
    | recoveredValue0 |
    recoveredValue0 := stackSize.
    ^recoveredValue0
! !

"async.ic method 0x20000634; bytecode file offset 0x77c4"
!AcoFuture methodsFor: 'recovered'!
isAcoFuture
    ^true
! !

"async.ic method 0x20000658; bytecode file offset 0x77f0"
!AcoFuture methodsFor: 'recovered'!
isStatic
    ^false
! !

"async.ic method 0x20000660; bytecode file offset 0x77f0"
!AcoFuture methodsFor: 'recovered'!
isValidStatic
    ^false
! !

"async.ic method 0x20000890; bytecode file offset 0x7a20"
!AcoFuture methodsFor: 'recovered'!
platformFunction: recoveredArg1 originalObjects: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    platformFunction := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    originalObjects := recoveredValue1.
    ^self
! !

"async.ic method 0x200008c4; bytecode file offset 0x7a58"
!AcoFuture methodsFor: 'recovered'!
startAsynchronousCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := platformFunction.
    recoveredValue1 := originalObjects.
    (recoveredValue0) asyncCallWithFuture: (self) originalObjects: (recoveredValue1).
    ^self
! !

"async.ic method 0x20000938; bytecode file offset 0x7ac8"
!AcoFuture methodsFor: 'recovered'!
semaphore: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    semaphore := recoveredValue0.
    ^self
! !

"async.ic method 0x2000094c; bytecode file offset 0x7ae4"
!AcoFuture methodsFor: 'recovered'!
asyncBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asyncBlock := recoveredValue0.
    ^self
! !

"async.ic method 0x20000978; bytecode file offset 0x7b08"
!AcoFuture methodsFor: 'recovered'!
resultCalculated: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resultCalculated := recoveredValue0.
    ^self
! !

"async.ic method 0x2000099c; bytecode file offset 0x7b2c"
!AcoFuture methodsFor: 'recovered'!
originalObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalObjects := recoveredValue0.
    ^self
! !

"async.ic method 0x200009b0; bytecode file offset 0x7b50"
!AcoFuture methodsFor: 'recovered'!
futureStub: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    future := recoveredValue0.
    ^self
! !

"async.ic method 0x200009d4; bytecode file offset 0x7b64"
!AcoFuture methodsFor: 'recovered'!
thread: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    thread := recoveredValue0.
    ^self
! !

"async.ic method 0x200009e8; bytecode file offset 0x7b78"
!AcoFuture methodsFor: 'recovered'!
platformFunction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    platformFunction := recoveredValue0.
    ^self
! !

"async.ic method 0x200009fc; bytecode file offset 0x7b8c"
!AcoFuture methodsFor: 'recovered'!
stackSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stackSize := recoveredValue0.
    ^self
! !

"async.ic method 0x20000c10; bytecode file offset 0x7da0"
!AcoFuture methodsFor: 'recovered'!
platformFunction: recoveredArg1 originalObjects: recoveredArg2 stackSize: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    platformFunction := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    originalObjects := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    stackSize := recoveredValue2.
    ^self
! !

"async.ic method 0x20000c4c; bytecode file offset 0x7dec"
!AcoFuture methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Semaphore.
    recoveredValue1 := (recoveredValue0) new.
    (self) semaphore: (recoveredValue1).
    (self) resultCalculated: (false).
    ^self
! !

"async.ic method 0x20000d0c; bytecode file offset 0x7ea4"
!AcoFuture methodsFor: 'recovered'!
completeAsynchronousCall
    | recoveredValue0 |
    (self) getReturnValue.
    resultCalculated := true.
    recoveredValue0 := semaphore.
    (recoveredValue0) signal.
    ^self
! !

"async.ic method 0x20000d2c; bytecode file offset 0x7ec0"
!AcoFuture methodsFor: 'recovered'!
primitiveCopyAsyncParametersBack: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := platformFunction.
    recoveredValue1 := originalObjects.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) primitiveAsyncCallReturn: (recoveredValue1) asyncBlock: (recoveredValue2) copyBack: (true) inFuture: (self).
    ^recoveredValue3
! !

"async.ic method 0x20000e40; bytecode file offset 0x7fdc"
!AcoFuture methodsFor: 'recovered'!
completeDeadAsynchronousCall
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) semaphore.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSignals.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) semaphore.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) signal.
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

"async.ic method 0x200010ac; bytecode file offset 0x8248"
!AcoFuture methodsFor: 'recovered'!
resourceGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    resourceGroup := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) futureStub.
    future := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asyncBlock.
    asyncBlock := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) thread.
    thread := recoveredValue6.
    ^self
! !

"async.ic method 0x20001124; bytecode file offset 0x82cc"
!AcoFuture methodsFor: 'recovered'!
checkForValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReady.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := AcoError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ACOVALUENOTAVAILABLE.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001358; bytecode file offset 0x8508"
!AcoFuture methodsFor: 'recovered'!
value
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AcoResourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) active.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ACOVALUENOTAVAILABLE.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) waitForValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001b8c; bytecode file offset 0x8d34"
!AcoFuture methodsFor: 'recovered'!
terminate
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := AcoError.
    recoveredBlock4Value1 := (recoveredBlock4Value0) new.
    recoveredBlock4Value2 := ACORESOURCESLOST.
    recoveredBlock4Value3 := (recoveredBlock4Value1) errorCode: (recoveredBlock4Value2).
    returnValue := recoveredBlock4Value3.
    resultCalculated := true.
    asyncBlock := nil.
    future := nil.
    thread := nil.
    recoveredBlock4Value4 := semaphore.
    recoveredBlock4Value5 := (recoveredBlock4Value4) signal.
    recoveredBlock4Value5
].
    (recoveredValue0) critical.
    ^self
! !

"async.ic method 0x20001c70; bytecode file offset 0x8e2c"
!AcoFuture methodsFor: 'recovered'!
getReturnValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) futureStub.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asyncBlock.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveCopyAsyncParametersBack: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            returnValue := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 42.
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
            recoveredStack1 := ACOEXCEPTIONHAPPENED.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            returnValue := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := returnValue.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) thread.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) getGpInfoString: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) futureStub.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorValue: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200021d4; bytecode file offset 0x9390"
!AcoFuture methodsFor: 'recovered'!
waitForValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := resultCalculated.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) processSwitchesDisabled.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ACOINVALIDVALUEREQUEST.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := (self) semaphore.
    recoveredBlock24Value1 := (recoveredBlock24Value0) wait.
    recoveredBlock24Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := future.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            (recoveredBlock35Stack2 == nil) ifTrue: [recoveredBlock35PC := 53] ifFalse: [recoveredBlock35PC := 48].
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Stack1 := future.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) setDeadSend.
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifCurtailed: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) semaphore.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := returnValue.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

