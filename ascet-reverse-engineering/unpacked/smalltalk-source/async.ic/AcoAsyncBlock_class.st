"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x200000c4; bytecode file offset 0x725c"
!AcoAsyncBlock class methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
minimumSize
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x20000ce8; bytecode file offset 0x7e84"
!AcoAsyncBlock class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minimumSize.
    recoveredValue1 := (4000) max: (recoveredValue0).
    (self) fixedSize: (recoveredValue1).
    ^self
! !

"async.ic method 0x20001024; bytecode file offset 0x81c0"
!AcoAsyncBlock class methodsFor: 'recovered'!
newElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super newElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) initializeCopyBuffer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001224; bytecode file offset 0x83c4"
!AcoAsyncBlock class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) minimumSize.
    recoveredValue1 := (4000) max: (recoveredValue0).
    (self) fixedSize: (recoveredValue1).
    (self) newMinimumSize: (0) alignment: (32).
    ^self
! !

