"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20092798; bytecode file offset 0x98f084"
!SGIlNodeWrapperHasAlternativelySameValue methodsFor: 'recovered'!
= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := delegate.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) delegate.
    recoveredValue3 := (recoveredValue0) hasIleAlternativelyTheSameValueAs: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201293bc; bytecode file offset 0xa25c8c"
!SGIlNodeWrapperHasAlternativelySameValue methodsFor: 'recovered'!
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

