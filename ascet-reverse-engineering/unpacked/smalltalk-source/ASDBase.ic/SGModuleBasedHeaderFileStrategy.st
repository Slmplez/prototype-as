"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20038acc; bytecode file offset 0x935c54"
!SGModuleBasedHeaderFileStrategy methodsFor: 'recovered'!
dependentSpecificNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dependentASDModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20201680; bytecode file offset 0xafdf48"
!SGModuleBasedHeaderFileStrategy methodsFor: 'recovered'!
selectRequiredModuleCodeHeaders: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280d95a8Arg1 | 
    | block280d95a8Stack0 block280d95a8Stack1 block280d95a8Stack2 block280d95a8Stack3 block280d95a8PC block280d95a8Step block280d95a8Done block280d95a8Result |
    block280d95a8Stack0 := self.
    block280d95a8PC := 4.
    block280d95a8Done := false.
    [block280d95a8Done not] whileTrue: [
        block280d95a8Step := block280d95a8PC.
        block280d95a8Step = 4 ifTrue: [
            block280d95a8Stack1 := true.
            block280d95a8PC := 5.
        ].
        block280d95a8Step = 5 ifTrue: [
            block280d95a8Stack2 := block280d95a8Arg1.
            block280d95a8PC := 6.
        ].
        block280d95a8Step = 6 ifTrue: [
            block280d95a8Stack2 := (block280d95a8Stack2) isModuleNode.
            block280d95a8PC := 7.
        ].
        block280d95a8Step = 7 ifTrue: [
            (block280d95a8Stack2) ifTrue: [block280d95a8PC := 21] ifFalse: [block280d95a8PC := 10].
        ].
        block280d95a8Step = 10 ifTrue: [
            block280d95a8PC := 11.
        ].
        block280d95a8Step = 11 ifTrue: [
            block280d95a8Stack1 := true.
            block280d95a8PC := 12.
        ].
        block280d95a8Step = 12 ifTrue: [
            block280d95a8Stack2 := block280d95a8Arg1.
            block280d95a8PC := 13.
        ].
        block280d95a8Step = 13 ifTrue: [
            block280d95a8Stack2 := (block280d95a8Stack2) isProjectNode.
            block280d95a8PC := 14.
        ].
        block280d95a8Step = 14 ifTrue: [
            (block280d95a8Stack2) ifTrue: [block280d95a8PC := 21] ifFalse: [block280d95a8PC := 18].
        ].
        block280d95a8Step = 18 ifTrue: [
            block280d95a8PC := 19.
        ].
        block280d95a8Step = 19 ifTrue: [
            block280d95a8Stack1 := block280d95a8Arg1.
            block280d95a8PC := 20.
        ].
        block280d95a8Step = 20 ifTrue: [
            block280d95a8Stack1 := (block280d95a8Stack1) isARSWComponentNode.
            block280d95a8PC := 21.
        ].
        block280d95a8Step = 21 ifTrue: [
            block280d95a8Result := block280d95a8Stack1.
            block280d95a8Done := true.
        ].
    ].
    block280d95a8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202847ec; bytecode file offset 0xb810bc"
!SGModuleBasedHeaderFileStrategy methodsFor: 'recovered'!
selectPrerequisitesForAggregatedComponent: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) collectAllPrerequisitesForAggregatedComponent: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e184cArg1 | 
    | block280e184cStack0 block280e184cStack1 block280e184cStack2 block280e184cStack3 block280e184cPC block280e184cStep block280e184cDone block280e184cResult |
    block280e184cStack0 := self.
    block280e184cPC := 4.
    block280e184cDone := false.
    [block280e184cDone not] whileTrue: [
        block280e184cStep := block280e184cPC.
        block280e184cStep = 4 ifTrue: [
            block280e184cStack1 := true.
            block280e184cPC := 5.
        ].
        block280e184cStep = 5 ifTrue: [
            block280e184cStack2 := block280e184cArg1.
            block280e184cPC := 6.
        ].
        block280e184cStep = 6 ifTrue: [
            block280e184cStack2 := (block280e184cStack2) isEnumNode.
            block280e184cPC := 7.
        ].
        block280e184cStep = 7 ifTrue: [
            (block280e184cStack2) ifTrue: [block280e184cPC := 30] ifFalse: [block280e184cPC := 10].
        ].
        block280e184cStep = 10 ifTrue: [
            block280e184cPC := 11.
        ].
        block280e184cStep = 11 ifTrue: [
            block280e184cStack1 := true.
            block280e184cPC := 12.
        ].
        block280e184cStep = 12 ifTrue: [
            block280e184cStack2 := block280e184cArg1.
            block280e184cPC := 13.
        ].
        block280e184cStep = 13 ifTrue: [
            block280e184cStack2 := (block280e184cStack2) isARNode.
            block280e184cPC := 14.
        ].
        block280e184cStep = 14 ifTrue: [
            (block280e184cStack2) ifTrue: [block280e184cPC := 30] ifFalse: [block280e184cPC := 18].
        ].
        block280e184cStep = 18 ifTrue: [
            block280e184cPC := 19.
        ].
        block280e184cStep = 19 ifTrue: [
            block280e184cStack1 := true.
            block280e184cPC := 20.
        ].
        block280e184cStep = 20 ifTrue: [
            block280e184cStack2 := block280e184cArg1.
            block280e184cPC := 21.
        ].
        block280e184cStep = 21 ifTrue: [
            block280e184cStack2 := (block280e184cStack2) isASDModuleNode.
            block280e184cPC := 23.
        ].
        block280e184cStep = 23 ifTrue: [
            (block280e184cStack2) ifTrue: [block280e184cPC := 30] ifFalse: [block280e184cPC := 26].
        ].
        block280e184cStep = 26 ifTrue: [
            block280e184cPC := 27.
        ].
        block280e184cStep = 27 ifTrue: [
            block280e184cStack1 := block280e184cArg1.
            block280e184cPC := 28.
        ].
        block280e184cStep = 28 ifTrue: [
            block280e184cStack1 := (block280e184cStack1) isProjectNode.
            block280e184cPC := 30.
        ].
        block280e184cStep = 30 ifTrue: [
            block280e184cResult := block280e184cStack1.
            block280e184cDone := true.
        ].
    ].
    block280e184cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

