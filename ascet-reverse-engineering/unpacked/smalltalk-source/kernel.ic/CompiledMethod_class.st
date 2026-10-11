"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20009180; bytecode file offset 0x54098"
!CompiledMethod class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) flags: (0).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) initialize.
    ^recoveredValue0
! !

"kernel.ic method 0x2000a94c; bytecode file offset 0x55864"
!CompiledMethod class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := (self) basicNew: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) flags: (4).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) initialize.
    ^recoveredValue2
! !

"kernel.ic method 0x20013dec; bytecode file offset 0x5ed08"
!CompiledMethod class methodsFor: 'recovered'!
selectorSortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28008e4cArg1 :block28008e4cArg2 | 
    | block28008e4cStack0 block28008e4cStack1 block28008e4cStack2 block28008e4cStack3 block28008e4cPC block28008e4cStep block28008e4cDone block28008e4cResult |
    block28008e4cStack0 := self.
    block28008e4cPC := 4.
    block28008e4cDone := false.
    [block28008e4cDone not] whileTrue: [
        block28008e4cStep := block28008e4cPC.
        block28008e4cStep = 4 ifTrue: [
            block28008e4cStack1 := block28008e4cArg1.
            block28008e4cPC := 5.
        ].
        block28008e4cStep = 5 ifTrue: [
            block28008e4cStack1 := (block28008e4cStack1) selector.
            block28008e4cPC := 6.
        ].
        block28008e4cStep = 6 ifTrue: [
            block28008e4cStack2 := block28008e4cArg2.
            block28008e4cPC := 7.
        ].
        block28008e4cStep = 7 ifTrue: [
            block28008e4cStack2 := (block28008e4cStack2) selector.
            block28008e4cPC := 8.
        ].
        block28008e4cStep = 8 ifTrue: [
            (block28008e4cStack1 ~~ block28008e4cStack2) ifTrue: [block28008e4cPC := 20] ifFalse: [block28008e4cPC := 12].
        ].
        block28008e4cStep = 12 ifTrue: [
            block28008e4cStack1 := block28008e4cArg2.
            block28008e4cPC := 13.
        ].
        block28008e4cStep = 13 ifTrue: [
            block28008e4cStack1 := (block28008e4cStack1) methodClass.
            block28008e4cPC := 14.
        ].
        block28008e4cStep = 14 ifTrue: [
            block28008e4cStack2 := block28008e4cArg1.
            block28008e4cPC := 15.
        ].
        block28008e4cStep = 15 ifTrue: [
            block28008e4cStack2 := (block28008e4cStack2) methodClass.
            block28008e4cPC := 16.
        ].
        block28008e4cStep = 16 ifTrue: [
            block28008e4cStack1 := (block28008e4cStack1) inheritsFrom: (block28008e4cStack2).
            block28008e4cPC := 17.
        ].
        block28008e4cStep = 17 ifTrue: [
            block28008e4cPC := 25.
        ].
        block28008e4cStep = 20 ifTrue: [
            block28008e4cStack1 := block28008e4cArg1.
            block28008e4cPC := 21.
        ].
        block28008e4cStep = 21 ifTrue: [
            block28008e4cStack1 := (block28008e4cStack1) selector.
            block28008e4cPC := 22.
        ].
        block28008e4cStep = 22 ifTrue: [
            block28008e4cStack2 := block28008e4cArg2.
            block28008e4cPC := 23.
        ].
        block28008e4cStep = 23 ifTrue: [
            block28008e4cStack2 := (block28008e4cStack2) selector.
            block28008e4cPC := 24.
        ].
        block28008e4cStep = 24 ifTrue: [
            block28008e4cStack1 := (block28008e4cStack1) < (block28008e4cStack2).
            block28008e4cPC := 25.
        ].
        block28008e4cStep = 25 ifTrue: [
            block28008e4cResult := block28008e4cStack1.
            block28008e4cDone := true.
        ].
    ].
    block28008e4cResult
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001bfa0; bytecode file offset 0x66ec0"
!CompiledMethod class methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280090f8Arg1 :block280090f8Arg2 | 
    | block280090f8Stack0 block280090f8Stack1 block280090f8Stack2 block280090f8Stack3 block280090f8PC block280090f8Step block280090f8Done block280090f8Result |
    block280090f8Stack0 := self.
    block280090f8PC := 4.
    block280090f8Done := false.
    [block280090f8Done not] whileTrue: [
        block280090f8Step := block280090f8PC.
        block280090f8Step = 4 ifTrue: [
            block280090f8Stack1 := block280090f8Arg1.
            block280090f8PC := 5.
        ].
        block280090f8Step = 5 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) methodClass.
            block280090f8PC := 6.
        ].
        block280090f8Step = 6 ifTrue: [
            block280090f8Stack2 := block280090f8Arg2.
            block280090f8PC := 7.
        ].
        block280090f8Step = 7 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) methodClass.
            block280090f8PC := 8.
        ].
        block280090f8Step = 8 ifTrue: [
            (block280090f8Stack1 ~~ block280090f8Stack2) ifTrue: [block280090f8PC := 20] ifFalse: [block280090f8PC := 12].
        ].
        block280090f8Step = 12 ifTrue: [
            block280090f8Stack1 := block280090f8Arg1.
            block280090f8PC := 13.
        ].
        block280090f8Step = 13 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) selector.
            block280090f8PC := 14.
        ].
        block280090f8Step = 14 ifTrue: [
            block280090f8Stack2 := block280090f8Arg2.
            block280090f8PC := 15.
        ].
        block280090f8Step = 15 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) selector.
            block280090f8PC := 16.
        ].
        block280090f8Step = 16 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) < (block280090f8Stack2).
            block280090f8PC := 17.
        ].
        block280090f8Step = 17 ifTrue: [
            block280090f8PC := 47.
        ].
        block280090f8Step = 20 ifTrue: [
            block280090f8Stack1 := block280090f8Arg1.
            block280090f8PC := 21.
        ].
        block280090f8Step = 21 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) methodClass.
            block280090f8PC := 22.
        ].
        block280090f8Step = 22 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) symbol.
            block280090f8PC := 23.
        ].
        block280090f8Step = 23 ifTrue: [
            block280090f8Stack2 := block280090f8Arg2.
            block280090f8PC := 24.
        ].
        block280090f8Step = 24 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) methodClass.
            block280090f8PC := 25.
        ].
        block280090f8Step = 25 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) symbol.
            block280090f8PC := 26.
        ].
        block280090f8Step = 26 ifTrue: [
            (block280090f8Stack1 ~~ block280090f8Stack2) ifTrue: [block280090f8PC := 40] ifFalse: [block280090f8PC := 30].
        ].
        block280090f8Step = 30 ifTrue: [
            block280090f8Stack1 := block280090f8Arg1.
            block280090f8PC := 31.
        ].
        block280090f8Step = 31 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) methodClass.
            block280090f8PC := 32.
        ].
        block280090f8Step = 32 ifTrue: [
            block280090f8Stack2 := block280090f8Arg2.
            block280090f8PC := 33.
        ].
        block280090f8Step = 33 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) methodClass.
            block280090f8PC := 34.
        ].
        block280090f8Step = 34 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) class.
            block280090f8PC := 36.
        ].
        block280090f8Step = 36 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) == (block280090f8Stack2).
            block280090f8PC := 37.
        ].
        block280090f8Step = 37 ifTrue: [
            block280090f8PC := 47.
        ].
        block280090f8Step = 40 ifTrue: [
            block280090f8Stack1 := block280090f8Arg1.
            block280090f8PC := 41.
        ].
        block280090f8Step = 41 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) methodClass.
            block280090f8PC := 42.
        ].
        block280090f8Step = 42 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) symbol.
            block280090f8PC := 43.
        ].
        block280090f8Step = 43 ifTrue: [
            block280090f8Stack2 := block280090f8Arg2.
            block280090f8PC := 44.
        ].
        block280090f8Step = 44 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) methodClass.
            block280090f8PC := 45.
        ].
        block280090f8Step = 45 ifTrue: [
            block280090f8Stack2 := (block280090f8Stack2) symbol.
            block280090f8PC := 46.
        ].
        block280090f8Step = 46 ifTrue: [
            block280090f8Stack1 := (block280090f8Stack1) < (block280090f8Stack2).
            block280090f8PC := 47.
        ].
        block280090f8Step = 47 ifTrue: [
            block280090f8Result := block280090f8Stack1.
            block280090f8Done := true.
        ].
    ].
    block280090f8Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

