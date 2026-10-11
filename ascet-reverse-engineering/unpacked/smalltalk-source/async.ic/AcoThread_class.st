"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000030; bytecode file offset 0x71dc"
!AcoThread class methodsFor: 'recovered'!
shutdown
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveShutdown.
    ^recoveredValue0
! !

"async.ic method 0x20000048; bytecode file offset 0x71dc"
!AcoThread class methodsFor: 'recovered'!
stackIsGrowable
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveStackIsGrowable.
    ^recoveredValue0
! !

"async.ic method 0x2000006c; bytecode file offset 0x7244"
!AcoThread class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveInitialize
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x2000007c; bytecode file offset 0x7244"
!AcoThread class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveShutdown
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x2000008c; bytecode file offset 0x7244"
!AcoThread class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveStackIsGrowable
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x2000009c; bytecode file offset 0x7244"
!AcoThread class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveAsyncThreadsAvailable
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200006dc; bytecode file offset 0x7870"
!AcoThread class methodsFor: 'recovered'!
initializeAfterLoad
    (self) fixedSize: (36).
    ^self
! !

"async.ic method 0x20000f30; bytecode file offset 0x80c8"
!AcoThread class methodsFor: 'recovered'!
initialize
    (self) fixedSize: (36).
    (self) newMinimumSize: (0) alignment: (8).
    ^self
! !

"async.ic method 0x20001894; bytecode file offset 0x8a34"
!AcoThread class methodsFor: 'recovered'!
newElement
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super newElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) removeElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001b48; bytecode file offset 0x8cec"
!AcoThread class methodsFor: 'recovered'!
newStackSize: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super newElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) removeElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

