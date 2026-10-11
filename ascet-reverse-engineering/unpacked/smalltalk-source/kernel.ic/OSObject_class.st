"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000132c; bytecode file offset 0x4c23c"
!OSObject class methodsFor: 'recovered'!
"VM primitive/special entry 0xb4; native fast path not reconstructed; fallback bytecodes follow."
reference: recoveredArg1 reftype: recoveredArg2 offset: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20004238; bytecode file offset 0x4f14c"
!OSObject class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 |
    recoveredValue0 := fixedSize.
    ^recoveredValue0
! !

"kernel.ic method 0x20006f18; bytecode file offset 0x51e44"
!OSObject class methodsFor: 'recovered'!
basicNew
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super basicNew.
    recoveredValue1 := (recoveredValue0) basicHash: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20007af4; bytecode file offset 0x52a10"
!OSObject class methodsFor: 'recovered'!
fixedSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixedSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20009270; bytecode file offset 0x5418c"
!OSObject class methodsFor: 'recovered'!
undefined
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super new.
    recoveredValue1 := EsReftypePointer.
    recoveredValue2 := (recoveredValue0) reference: (nil) reftype: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20009d2c; bytecode file offset 0x54c40"
!OSObject class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fixedSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) fixedSize: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

