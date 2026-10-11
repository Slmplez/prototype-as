"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x2000018c; bytecode file offset 0x7320"
!PlatformFunction methodsFor: 'recovered'!
"VM primitive/special entry 0xbc; native fast path not reconstructed; fallback bytecodes follow."
primitiveAsyncCallSetUp: recoveredArg1 asyncBlock: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) resourcePrimitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200001a0; bytecode file offset 0x7334"
!PlatformFunction methodsFor: 'recovered'!
"VM primitive/special entry 0xbd; native fast path not reconstructed; fallback bytecodes follow."
primitiveAsyncCallReturn: recoveredArg1 asyncBlock: recoveredArg2 copyBack: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) resourcePrimitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200002dc; bytecode file offset 0x7484"
!PlatformFunction methodsFor: 'recovered'!
asyncCall
    | recoveredValue0 |
    recoveredValue0 := (self) asyncCallWithArguments: (#()).
    ^recoveredValue0
! !

"async.ic method 0x200002ec; bytecode file offset 0x7484"
!PlatformFunction methodsFor: 'recovered'!
futureCall
    | recoveredValue0 |
    recoveredValue0 := (self) futureCallWithArguments: (#()).
    ^recoveredValue0
! !

"async.ic method 0x200006ac; bytecode file offset 0x7840"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asyncCallWithArguments: (recoveredValue0) stackSize: (nil).
    ^recoveredValue1
! !

"async.ic method 0x20000728; bytecode file offset 0x78d8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) futureCallWithArguments: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x2000073c; bytecode file offset 0x78d8"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) asyncCallWithArguments: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000774; bytecode file offset 0x790c"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) staticFutureCall: (recoveredValue0) withArguments: (#()).
    ^recoveredValue1
! !

"async.ic method 0x20000a38; bytecode file offset 0x7be8"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) asyncCallWithArguments: (recoveredValue3).
    ^recoveredValue4
! !

"async.ic method 0x20000a4c; bytecode file offset 0x7be8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) futureCallWithArguments: (recoveredValue3).
    ^recoveredValue4
! !

"async.ic method 0x20000a88; bytecode file offset 0x7c24"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"async.ic method 0x20000c28; bytecode file offset 0x7dc4"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"async.ic method 0x20000d64; bytecode file offset 0x7f0c"
!PlatformFunction methodsFor: 'recovered'!
resourcePrimitiveFailed
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AcoError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := AcoConstants.
    recoveredValue3 := (recoveredValue2) at: ('ACORESOURCEPRIMITIVEFAILED').
    recoveredValue4 := (recoveredValue1) errorCode: (recoveredValue3).
    ^recoveredValue4
! !

"async.ic method 0x20000f54; bytecode file offset 0x80f4"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWithFuture: recoveredArg1 originalObjects: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asyncBlock.
    recoveredValue3 := recoveredArg1.
    (self) primitiveAsyncCallSetUp: (recoveredValue0) asyncBlock: (recoveredValue2) inFuture: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) thread.
    (recoveredValue5) startExecution.
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"async.ic method 0x20001254; bytecode file offset 0x8400"
!PlatformFunction methodsFor: 'recovered'!
futureCallWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := AcoResourceFuture.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AcoResourceManager.
    recoveredValue4 := (recoveredValue3) default.
    (recoveredValue2) resourceManager: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) platformFunction: (self) originalObjects: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) startAsynchronousCall.
    ^recoveredValue1
! !

"async.ic method 0x200012ec; bytecode file offset 0x848c"
!PlatformFunction methodsFor: 'recovered'!
primitiveAsyncCallSetUp: recoveredArg1 asyncBlock: recoveredArg2 inFuture: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveAsyncCallSetUp: (recoveredStack1) asyncBlock: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAcoError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) releaseResources.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) primitiveFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x2000131c; bytecode file offset 0x84c8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWithArguments: recoveredArg1 stackSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := AcoResourceFuture.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AcoResourceManager.
    recoveredValue4 := (recoveredValue3) default.
    (recoveredValue2) resourceManager: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue5) platformFunction: (self) originalObjects: (recoveredValue6) stackSize: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) startAsynchronousCall.
    ^recoveredValue1
! !

"async.ic method 0x2000148c; bytecode file offset 0x862c"
!PlatformFunction methodsFor: 'recovered'!
primitiveAsyncCallReturn: recoveredArg1 asyncBlock: recoveredArg2 copyBack: recoveredArg3 inFuture: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveAsyncCallReturn: (recoveredStack1) asyncBlock: (recoveredStack2) copyBack: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAcoError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) releaseResources.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) primitiveFailed.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001710; bytecode file offset 0x88c8"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue8
! !

"async.ic method 0x20001728; bytecode file offset 0x88c8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue8
! !

"async.ic method 0x20001820; bytecode file offset 0x89c0"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (3).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue9
! !

"async.ic method 0x20001a88; bytecode file offset 0x8c40"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue10
! !

"async.ic method 0x20001aa0; bytecode file offset 0x8c40"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (4).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue10
! !

"async.ic method 0x20001bd4; bytecode file offset 0x8d74"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (4).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue11
! !

"async.ic method 0x20001c14; bytecode file offset 0x8dcc"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue12
! !

"async.ic method 0x20001c2c; bytecode file offset 0x8dcc"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue12
! !

"async.ic method 0x20001d80; bytecode file offset 0x8f20"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (5).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue13
! !

"async.ic method 0x20001e14; bytecode file offset 0x8fcc"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue14
! !

"async.ic method 0x20001e2c; bytecode file offset 0x8fcc"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue14
! !

"async.ic method 0x20001ec8; bytecode file offset 0x9068"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (6).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue15
! !

"async.ic method 0x20001f14; bytecode file offset 0x90cc"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (7).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue16
! !

"async.ic method 0x20001f2c; bytecode file offset 0x90cc"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (7).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue16
! !

"async.ic method 0x20001fe8; bytecode file offset 0x9188"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (7).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue17
! !

"async.ic method 0x20002164; bytecode file offset 0x931c"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue18
! !

"async.ic method 0x2000217c; bytecode file offset 0x931c"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue18
! !

"async.ic method 0x20002248; bytecode file offset 0x93e8"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (8).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue19
! !

"async.ic method 0x20002314; bytecode file offset 0x94cc"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (9).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue20
! !

"async.ic method 0x2000232c; bytecode file offset 0x94cc"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (9).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue20
! !

"async.ic method 0x2000247c; bytecode file offset 0x9650"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWithArguments: recoveredArg1 stackSize: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
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
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) callWithArguments: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Local1 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := AcoResourceManager.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) default.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) removeCoroutineFuture.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            (recoveredBlock23Stack1 ~~ nil) ifTrue: [recoveredBlock23PC := 55] ifFalse: [recoveredBlock23PC := 42].
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := AcoError.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) new.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack2 := AcoConstants.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack3 := 'ACORESOURCENOTAVAILABLE'.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) at: (recoveredBlock23Stack3).
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) errorCode: (recoveredBlock23Stack2).
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack3 := recoveredArg1.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack4 := recoveredArg2.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            (recoveredBlock23Stack1) platformFunction: (recoveredBlock23Stack2) originalObjects: (recoveredBlock23Stack3) stackSize: (recoveredBlock23Stack4).
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) startAsynchronousCall.
            recoveredBlock23PC := 69.
        ].
        recoveredBlock23Step = 69 ifTrue: [
            ^recoveredBlock23Stack1
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20002514; bytecode file offset 0x96b4"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (9).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue21
! !

"async.ic method 0x20002610; bytecode file offset 0x97c8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue22
! !

"async.ic method 0x20002628; bytecode file offset 0x97c8"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (10).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue22
! !

"async.ic method 0x20002690; bytecode file offset 0x9830"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (10).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue23
! !

"async.ic method 0x200026f8; bytecode file offset 0x98c0"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 withArguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := ACORESOURCENOTAVAILABLE.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAcoFuture.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := ACOINVALIDSTATIC.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidStatic.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := ACOINVALIDSTATIC.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAvailable.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := AcoError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := ACORESOURCENOTAVAILABLE.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) reinitialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) platformFunction: (recoveredStack3) originalObjects: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) startAsynchronousCall.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x2000278c; bytecode file offset 0x9944"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (11).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue24
! !

"async.ic method 0x200027a4; bytecode file offset 0x9944"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (11).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue24
! !

"async.ic method 0x20002810; bytecode file offset 0x99b0"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (11).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue25
! !

"async.ic method 0x200029bc; bytecode file offset 0x9b74"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (12).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue26
! !

"async.ic method 0x200029d4; bytecode file offset 0x9b74"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (12).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue26
! !

"async.ic method 0x20002aec; bytecode file offset 0x9c8c"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (12).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := recoveredArg13.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue27
! !

"async.ic method 0x20002b64; bytecode file offset 0x9d1c"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (13).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue28
! !

"async.ic method 0x20002b7c; bytecode file offset 0x9d1c"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (13).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue28
! !

"async.ic method 0x20002c74; bytecode file offset 0x9e14"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (13).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := recoveredArg13.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := recoveredArg14.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue29
! !

"async.ic method 0x20002ee4; bytecode file offset 0xa09c"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (14).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue30
! !

"async.ic method 0x20002efc; bytecode file offset 0xa09c"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (14).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue30
! !

"async.ic method 0x20002f80; bytecode file offset 0xa120"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (14).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := recoveredArg13.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := recoveredArg14.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := recoveredArg15.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue31
! !

"async.ic method 0x20003004; bytecode file offset 0xa1bc"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (15).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := recoveredArg15.
    (recoveredValue30) at: (15) put: (recoveredValue31).
    recoveredValue32 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue32
! !

"async.ic method 0x2000301c; bytecode file offset 0xa1bc"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (15).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := recoveredArg15.
    (recoveredValue30) at: (15) put: (recoveredValue31).
    recoveredValue32 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue32
! !

"async.ic method 0x200030a4; bytecode file offset 0xa244"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15 with: recoveredArg16
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (15).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := recoveredArg13.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := recoveredArg14.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := recoveredArg15.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := recoveredArg16.
    (recoveredValue31) at: (15) put: (recoveredValue32).
    recoveredValue33 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue33
! !

"async.ic method 0x20003130; bytecode file offset 0xa2e8"
!PlatformFunction methodsFor: 'recovered'!
futureCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15 with: recoveredArg16
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (16).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := recoveredArg15.
    (recoveredValue30) at: (15) put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := recoveredArg16.
    (recoveredValue32) at: (16) put: (recoveredValue33).
    recoveredValue34 := (self) futureCallWithArguments: (recoveredValue1).
    ^recoveredValue34
! !

"async.ic method 0x20003148; bytecode file offset 0xa2e8"
!PlatformFunction methodsFor: 'recovered'!
asyncCallWith: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15 with: recoveredArg16
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (16).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) at: (2) put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) at: (3) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) at: (4) put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg5.
    (recoveredValue10) at: (5) put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg6.
    (recoveredValue12) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg7.
    (recoveredValue14) at: (7) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := recoveredArg8.
    (recoveredValue16) at: (8) put: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg9.
    (recoveredValue18) at: (9) put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := recoveredArg10.
    (recoveredValue20) at: (10) put: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := recoveredArg11.
    (recoveredValue22) at: (11) put: (recoveredValue23).
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := recoveredArg12.
    (recoveredValue24) at: (12) put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := recoveredArg13.
    (recoveredValue26) at: (13) put: (recoveredValue27).
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := recoveredArg14.
    (recoveredValue28) at: (14) put: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := recoveredArg15.
    (recoveredValue30) at: (15) put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := recoveredArg16.
    (recoveredValue32) at: (16) put: (recoveredValue33).
    recoveredValue34 := (self) asyncCallWithArguments: (recoveredValue1).
    ^recoveredValue34
! !

"async.ic method 0x200031d8; bytecode file offset 0xa378"
!PlatformFunction methodsFor: 'recovered'!
staticFutureCall: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9 with: recoveredArg10 with: recoveredArg11 with: recoveredArg12 with: recoveredArg13 with: recoveredArg14 with: recoveredArg15 with: recoveredArg16 with: recoveredArg17
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new: (16).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredArg5.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := recoveredArg6.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredArg7.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := recoveredArg8.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := recoveredArg9.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := recoveredArg10.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := recoveredArg11.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := recoveredArg12.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := recoveredArg13.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := recoveredArg14.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := recoveredArg15.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := recoveredArg16.
    (recoveredValue31) at: (15) put: (recoveredValue32).
    recoveredValue33 := recoveredValue2.
    recoveredValue34 := recoveredArg17.
    (recoveredValue33) at: (16) put: (recoveredValue34).
    recoveredValue35 := (self) staticFutureCall: (recoveredValue0) withArguments: (recoveredValue2).
    ^recoveredValue35
! !

