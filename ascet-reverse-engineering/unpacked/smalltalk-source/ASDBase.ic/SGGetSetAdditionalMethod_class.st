"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200632f4; bytecode file offset 0x95fbd0"
!SGGetSetAdditionalMethod class methodsFor: 'recovered'!
implicitKind
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) AccessKindStrings.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20114e98; bytecode file offset 0xa11754"
!SGGetSetAdditionalMethod class methodsFor: 'recovered'!
AccessKindStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AccessKindStrings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #('_implicit' '_explicitstatus' '_explicitwithoutstatus').
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            AccessKindStrings := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AccessKindStrings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

