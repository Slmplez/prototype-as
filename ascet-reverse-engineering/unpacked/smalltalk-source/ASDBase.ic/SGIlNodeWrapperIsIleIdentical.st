"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200927a8; bytecode file offset 0x98f084"
!SGIlNodeWrapperIsIleIdentical methodsFor: 'recovered'!
= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := delegate.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) delegate.
    recoveredValue3 := (recoveredValue0) isIleIdentical: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201293c8; bytecode file offset 0xa25c8c"
!SGIlNodeWrapperIsIleIdentical methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cachedHash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := delegate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileWrapperHash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            cachedHash := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := cachedHash.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

