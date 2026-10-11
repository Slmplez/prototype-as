"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20132a90; bytecode file offset 0xa2f34c"
!EtasImplementationSubstitutionYDistribution methodsFor: 'recovered'!
getValueFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fdb74; bytecode file offset 0xafa43c"
!EtasImplementationSubstitutionYDistribution methodsFor: 'recovered'!
splitBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'topscorer_cc'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d88dcArg1 | 
    | block280d88dcStack0 block280d88dcStack1 block280d88dcStack2 block280d88dcPC block280d88dcStep block280d88dcDone block280d88dcResult |
    block280d88dcStack0 := self.
    block280d88dcPC := 4.
    block280d88dcDone := false.
    [block280d88dcDone not] whileTrue: [
        block280d88dcStep := block280d88dcPC.
        block280d88dcStep = 4 ifTrue: [
            block280d88dcStack1 := block280d88dcArg1.
            block280d88dcPC := 5.
        ].
        block280d88dcStep = 5 ifTrue: [
            block280d88dcStack1 := (block280d88dcStack1) isRBComposedDataElement.
            block280d88dcPC := 6.
        ].
        block280d88dcStep = 6 ifTrue: [
            (block280d88dcStack1) ifTrue: [block280d88dcPC := 10] ifFalse: [block280d88dcPC := 16].
        ].
        block280d88dcStep = 10 ifTrue: [
            block280d88dcStack1 := block280d88dcArg1.
            block280d88dcPC := 11.
        ].
        block280d88dcStep = 11 ifTrue: [
            block280d88dcStack1 := (block280d88dcStack1) yDistribution.
            block280d88dcPC := 13.
        ].
        block280d88dcStep = 13 ifTrue: [
            block280d88dcPC := 17.
        ].
        block280d88dcStep = 16 ifTrue: [
            block280d88dcStack1 := block280d88dcArg1.
            block280d88dcPC := 17.
        ].
        block280d88dcStep = 17 ifTrue: [
            block280d88dcResult := block280d88dcStack1.
            block280d88dcDone := true.
        ].
    ].
    block280d88dcResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

