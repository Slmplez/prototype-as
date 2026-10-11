"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20016ce0; bytecode file offset 0x77dc8"
!SstWebServicesHttpSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) doNotReduceSubApplicationNamed: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SstTransport.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'http'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) addPackagingRulesFor: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SstUrl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'http'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) addPackagingRulesFor: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SstInvocationHandler.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'http'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addPackagingRulesFor: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018a08; bytecode file offset 0x79c2c"
!SstWebServicesHttpSupport class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b46cArg1 | 
    | block2800b46cStack0 block2800b46cStack1 block2800b46cStack2 block2800b46cStack3 block2800b46cStack4 block2800b46cPC block2800b46cStep block2800b46cDone block2800b46cResult |
    block2800b46cStack0 := self.
    block2800b46cPC := 4.
    block2800b46cDone := false.
    [block2800b46cDone not] whileTrue: [
        block2800b46cStep := block2800b46cPC.
        block2800b46cStep = 4 ifTrue: [
            block2800b46cStack1 := block2800b46cArg1.
            block2800b46cPC := 5.
        ].
        block2800b46cStep = 5 ifTrue: [
            block2800b46cStack2 := 'cleanUpBeforeRemove'.
            block2800b46cPC := 7.
        ].
        block2800b46cStep = 7 ifTrue: [
            block2800b46cStack1 := (block2800b46cStack1) respondsTo: (block2800b46cStack2).
            block2800b46cPC := 8.
        ].
        block2800b46cStep = 8 ifTrue: [
            (block2800b46cStack1) ifTrue: [block2800b46cPC := 12] ifFalse: [block2800b46cPC := 15].
        ].
        block2800b46cStep = 12 ifTrue: [
            block2800b46cStack1 := block2800b46cArg1.
            block2800b46cPC := 13.
        ].
        block2800b46cStep = 13 ifTrue: [
            (block2800b46cStack1) cleanUpBeforeRemove.
            block2800b46cPC := 15.
        ].
        block2800b46cStep = 15 ifTrue: [
            block2800b46cStack1 := nil.
            block2800b46cPC := 16.
        ].
        block2800b46cStep = 16 ifTrue: [
            block2800b46cStack2 := block2800b46cArg1.
            block2800b46cPC := 17.
        ].
        block2800b46cStep = 17 ifTrue: [
            block2800b46cStack2 := (block2800b46cStack2) class.
            block2800b46cPC := 18.
        ].
        block2800b46cStep = 18 ifTrue: [
            block2800b46cStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b46cPC := 20.
        ].
        block2800b46cStep = 20 ifTrue: [
            block2800b46cStack2 := (block2800b46cStack2) includesSelector: (block2800b46cStack3).
            block2800b46cPC := 22.
        ].
        block2800b46cStep = 22 ifTrue: [
            (block2800b46cStack2) ifTrue: [block2800b46cPC := 26] ifFalse: [block2800b46cPC := 30].
        ].
        block2800b46cStep = 26 ifTrue: [
            block2800b46cPC := 27.
        ].
        block2800b46cStep = 27 ifTrue: [
            block2800b46cStack1 := block2800b46cArg1.
            block2800b46cPC := 28.
        ].
        block2800b46cStep = 28 ifTrue: [
            block2800b46cStack1 := (block2800b46cStack1) cleanUpBeforeRemoveNonInherited.
            block2800b46cPC := 30.
        ].
        block2800b46cStep = 30 ifTrue: [
            block2800b46cResult := block2800b46cStack1.
            block2800b46cDone := true.
        ].
    ].
    block2800b46cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a240; bytecode file offset 0x7b39c"
!SstWebServicesHttpSupport class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block2800b664Arg1 | 
    | block2800b664Stack0 block2800b664Stack1 block2800b664Stack2 block2800b664Stack3 block2800b664Stack4 block2800b664PC block2800b664Step block2800b664Done block2800b664Result |
    block2800b664Stack0 := self.
    block2800b664PC := 4.
    block2800b664Done := false.
    [block2800b664Done not] whileTrue: [
        block2800b664Step := block2800b664PC.
        block2800b664Step = 4 ifTrue: [
            block2800b664Stack1 := block2800b664Arg1.
            block2800b664PC := 5.
        ].
        block2800b664Step = 5 ifTrue: [
            block2800b664Stack2 := 'setupAfterLoad'.
            block2800b664PC := 7.
        ].
        block2800b664Step = 7 ifTrue: [
            block2800b664Stack1 := (block2800b664Stack1) respondsTo: (block2800b664Stack2).
            block2800b664PC := 8.
        ].
        block2800b664Step = 8 ifTrue: [
            (block2800b664Stack1) ifTrue: [block2800b664PC := 12] ifFalse: [block2800b664PC := 15].
        ].
        block2800b664Step = 12 ifTrue: [
            block2800b664Stack1 := block2800b664Arg1.
            block2800b664PC := 13.
        ].
        block2800b664Step = 13 ifTrue: [
            (block2800b664Stack1) setupAfterLoad.
            block2800b664PC := 15.
        ].
        block2800b664Step = 15 ifTrue: [
            block2800b664Stack1 := nil.
            block2800b664PC := 16.
        ].
        block2800b664Step = 16 ifTrue: [
            block2800b664Stack2 := block2800b664Arg1.
            block2800b664PC := 17.
        ].
        block2800b664Step = 17 ifTrue: [
            block2800b664Stack2 := (block2800b664Stack2) class.
            block2800b664PC := 19.
        ].
        block2800b664Step = 19 ifTrue: [
            block2800b664Stack3 := 'setupAfterLoadNonInherited'.
            block2800b664PC := 21.
        ].
        block2800b664Step = 21 ifTrue: [
            block2800b664Stack2 := (block2800b664Stack2) includesSelector: (block2800b664Stack3).
            block2800b664PC := 23.
        ].
        block2800b664Step = 23 ifTrue: [
            (block2800b664Stack2) ifTrue: [block2800b664PC := 26] ifFalse: [block2800b664PC := 30].
        ].
        block2800b664Step = 26 ifTrue: [
            block2800b664PC := 27.
        ].
        block2800b664Step = 27 ifTrue: [
            block2800b664Stack1 := block2800b664Arg1.
            block2800b664PC := 28.
        ].
        block2800b664Step = 28 ifTrue: [
            block2800b664Stack1 := (block2800b664Stack1) setupAfterLoadNonInherited.
            block2800b664PC := 30.
        ].
        block2800b664Step = 30 ifTrue: [
            block2800b664Result := block2800b664Stack1.
            block2800b664Done := true.
        ].
    ].
    block2800b664Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

