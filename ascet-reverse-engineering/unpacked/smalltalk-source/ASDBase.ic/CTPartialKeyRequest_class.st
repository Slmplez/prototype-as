"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025a44; bytecode file offset 0x923928"
!CTPartialKeyRequest class methodsFor: 'recovered'!
members
    ^#('btotal' 'bavail' 'breturn' 'bsiglen' 'target')
! !

"ASDBase.ic method 0x2015c2a8; bytecode file offset 0xa58b60"
!CTPartialKeyRequest class methodsFor: 'recovered'!
fixedSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MAXLEN.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 270.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := MAXLEN.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

