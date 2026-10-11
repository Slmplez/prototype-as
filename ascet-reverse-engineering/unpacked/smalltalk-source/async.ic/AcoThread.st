"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x2000005c; bytecode file offset 0x7244"
!AcoThread methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
startExecution
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200000ac; bytecode file offset 0x7244"
!AcoThread methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveTerminateThread
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200000f4; bytecode file offset 0x7288"
!AcoThread methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveStartUpThread: recoveredArg1
    ^nil
! !

"async.ic method 0x20000138; bytecode file offset 0x72e0"
!AcoThread methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveSetThreadPriority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x20000174; bytecode file offset 0x730c"
!AcoThread methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
setArgs: recoveredArg1 andFutureStub: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200004b4; bytecode file offset 0x7644"
!AcoThread methodsFor: 'recovered'!
stackSize
    | recoveredValue0 |
    recoveredValue0 := stackSize.
    ^recoveredValue0
! !

"async.ic method 0x200006c4; bytecode file offset 0x7858"
!AcoThread methodsFor: 'recovered'!
initialize
    (self) primitiveStartUpThread: (0).
    ^self
! !

"async.ic method 0x2000075c; bytecode file offset 0x78f0"
!AcoThread methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    stackSize := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) primitiveStartUpThread: (recoveredValue1).
    ^recoveredValue2
! !

"async.ic method 0x20000e1c; bytecode file offset 0x7fb8"
!AcoThread methodsFor: 'recovered'!
terminate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) primitiveTerminateThread.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeElement.
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

