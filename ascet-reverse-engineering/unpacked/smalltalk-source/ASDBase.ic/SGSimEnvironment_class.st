"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016910; bytecode file offset 0x92209c"
!SGSimEnvironment class methodsFor: 'recovered'!
getSeparatorForTabIndex
    ^'__'
! !

"ASDBase.ic method 0x20057aa8; bytecode file offset 0x956284"
!SGSimEnvironment class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) simMainController: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20080ee0; bytecode file offset 0x97d79c"
!SGSimEnvironment class methodsFor: 'recovered'!
offlinePCMicroSecondsPerSimulationTick
    ^100
! !

"ASDBase.ic method 0x2015e43c; bytecode file offset 0xa5acfc"
!SGSimEnvironment class methodsFor: 'recovered'!
filterBlockForNoneVolatileVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cdc98Arg1 | 
    | block280cdc98Stack0 block280cdc98Stack1 block280cdc98Stack2 block280cdc98Stack3 block280cdc98PC block280cdc98Step block280cdc98Done block280cdc98Result |
    block280cdc98Stack0 := self.
    block280cdc98PC := 4.
    block280cdc98Done := false.
    [block280cdc98Done not] whileTrue: [
        block280cdc98Step := block280cdc98PC.
        block280cdc98Step = 4 ifTrue: [
            block280cdc98Stack1 := false.
            block280cdc98PC := 5.
        ].
        block280cdc98Step = 5 ifTrue: [
            block280cdc98Stack2 := block280cdc98Arg1.
            block280cdc98PC := 6.
        ].
        block280cdc98Step = 6 ifTrue: [
            block280cdc98Stack2 := (block280cdc98Stack2) isReadable.
            block280cdc98PC := 7.
        ].
        block280cdc98Step = 7 ifTrue: [
            (block280cdc98Stack2) ifTrue: [block280cdc98PC := 10] ifFalse: [block280cdc98PC := 13].
        ].
        block280cdc98Step = 10 ifTrue: [
            block280cdc98PC := 11.
        ].
        block280cdc98Step = 11 ifTrue: [
            block280cdc98Stack1 := block280cdc98Arg1.
            block280cdc98PC := 12.
        ].
        block280cdc98Step = 12 ifTrue: [
            block280cdc98Stack1 := (block280cdc98Stack1) isNoneVolatileVariable.
            block280cdc98PC := 13.
        ].
        block280cdc98Step = 13 ifTrue: [
            block280cdc98Result := block280cdc98Stack1.
            block280cdc98Done := true.
        ].
    ].
    block280cdc98Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d5eb0; bytecode file offset 0xad2778"
!SGSimEnvironment class methodsFor: 'recovered'!
filterBlockForCalibrationParameters
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_73507'.
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
            recoveredStack1 := [:block280d563cArg1 | 
    | block280d563cStack0 block280d563cStack1 block280d563cStack2 block280d563cStack3 block280d563cPC block280d563cStep block280d563cDone block280d563cResult |
    block280d563cStack0 := self.
    block280d563cPC := 4.
    block280d563cDone := false.
    [block280d563cDone not] whileTrue: [
        block280d563cStep := block280d563cPC.
        block280d563cStep = 4 ifTrue: [
            block280d563cStack1 := false.
            block280d563cPC := 5.
        ].
        block280d563cStep = 5 ifTrue: [
            block280d563cStack2 := block280d563cArg1.
            block280d563cPC := 6.
        ].
        block280d563cStep = 6 ifTrue: [
            block280d563cStack2 := (block280d563cStack2) isReadable.
            block280d563cPC := 7.
        ].
        block280d563cStep = 7 ifTrue: [
            (block280d563cStack2) ifTrue: [block280d563cPC := 10] ifFalse: [block280d563cPC := 14].
        ].
        block280d563cStep = 10 ifTrue: [
            block280d563cPC := 11.
        ].
        block280d563cStep = 11 ifTrue: [
            block280d563cStack1 := block280d563cArg1.
            block280d563cPC := 12.
        ].
        block280d563cStep = 12 ifTrue: [
            block280d563cStack1 := (block280d563cStack1) isCalibrationParameters.
            block280d563cPC := 14.
        ].
        block280d563cStep = 14 ifTrue: [
            block280d563cResult := block280d563cStack1.
            block280d563cDone := true.
        ].
    ].
    block280d563cResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

