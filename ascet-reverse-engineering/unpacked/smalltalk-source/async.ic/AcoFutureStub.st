"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x200000dc; bytecode file offset 0x7274"
!AcoFutureStub methodsFor: 'recovered'!
"VM primitive/special entry 0x4b; native fast path not reconstructed; fallback bytecodes follow."
makeFixed
    ^nil
! !

"async.ic method 0x20000160; bytecode file offset 0x72f4"
!AcoFutureStub methodsFor: 'recovered'!
"VM primitive/special entry 0x82; native fast path not reconstructed; fallback bytecodes follow."
switchClassTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x2000028c; bytecode file offset 0x7420"
!AcoFutureStub methodsFor: 'recovered'!
completeAsynchronousCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := directedMessage.
    recoveredValue1 := (recoveredValue0) send.
    ^recoveredValue1
! !

"async.ic method 0x20000464; bytecode file offset 0x75f4"
!AcoFutureStub methodsFor: 'recovered'!
future
    | recoveredValue0 |
    recoveredValue0 := future.
    ^recoveredValue0
! !

"async.ic method 0x200004e0; bytecode file offset 0x7670"
!AcoFutureStub methodsFor: 'recovered'!
errorValue
    | recoveredValue0 |
    recoveredValue0 := errorValue.
    ^recoveredValue0
! !

"async.ic method 0x2000050c; bytecode file offset 0x769c"
!AcoFutureStub methodsFor: 'recovered'!
resourceGroup
    | recoveredValue0 |
    recoveredValue0 := resourceGroup.
    ^recoveredValue0
! !

"async.ic method 0x200007ac; bytecode file offset 0x7954"
!AcoFutureStub methodsFor: 'recovered'!
setDeadSend
    | recoveredValue0 |
    recoveredValue0 := directedMessage.
    (recoveredValue0) selector: ('completeDeadAsynchronousCall').
    ^self
! !

"async.ic method 0x200007bc; bytecode file offset 0x7954"
!AcoFutureStub methodsFor: 'recovered'!
setCompleteSend
    | recoveredValue0 |
    recoveredValue0 := directedMessage.
    (recoveredValue0) selector: ('completeAsynchronousCall').
    ^self
! !

"async.ic method 0x20000994; bytecode file offset 0x7b2c"
!AcoFutureStub methodsFor: 'recovered'!
errorValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorValue := recoveredValue0.
    ^self
! !

"async.ic method 0x200009b8; bytecode file offset 0x7b50"
!AcoFutureStub methodsFor: 'recovered'!
resourceGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resourceGroup := recoveredValue0.
    ^self
! !

"async.ic method 0x20000b5c; bytecode file offset 0x7cf0"
!AcoFutureStub methodsFor: 'recovered'!
future: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    future := recoveredValue0.
    recoveredValue1 := directedMessage.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) receiver: (recoveredValue2).
    ^self
! !

"async.ic method 0x20001398; bytecode file offset 0x8530"
!AcoFutureStub methodsFor: 'recovered'!
reinitialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            future := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := directedMessage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setCompleteSend.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := directedMessage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            errorValue := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001500; bytecode file offset 0x86a8"
!AcoFutureStub methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('send') acoFix.
    selector := recoveredValue0.
    recoveredValue1 := DirectedMessage.
    recoveredValue2 := (recoveredValue1) selector: ('completeAsynchronousCall') arguments: (#()) receiver: (nil).
    recoveredValue3 := (recoveredValue2) acoFix.
    directedMessage := recoveredValue3.
    errorValue := nil.
    recoveredValue4 := (self) acoFix.
    ^recoveredValue4
! !

"async.ic method 0x200019b8; bytecode file offset 0x8b5c"
!AcoFutureStub methodsFor: 'recovered'!
terminate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) future.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) future.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            future := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) resourceGroup: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := directedMessage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := directedMessage.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) receiver: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setCompleteSend.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

