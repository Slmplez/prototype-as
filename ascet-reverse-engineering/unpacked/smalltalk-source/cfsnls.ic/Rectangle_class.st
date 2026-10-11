"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000f5a8; bytecode file offset 0x3280c"
!Rectangle class methodsFor: 'recovered'!
defaultInstanceVariableMappings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'origin'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := [:block28004be0Arg1 | 
    | block28004be0Stack0 block28004be0Stack1 block28004be0Stack2 block28004be0Stack3 block28004be0Stack4 block28004be0PC block28004be0Step block28004be0Done block28004be0Result |
    block28004be0Stack0 := self.
    block28004be0PC := 4.
    block28004be0Done := false.
    [block28004be0Done not] whileTrue: [
        block28004be0Step := block28004be0PC.
        block28004be0Step = 4 ifTrue: [
            block28004be0Stack1 := block28004be0Arg1.
            block28004be0PC := 5.
        ].
        block28004be0Step = 5 ifTrue: [
            block28004be0Stack2 := 4.
            block28004be0PC := 7.
        ].
        block28004be0Step = 7 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) at: (block28004be0Stack2).
            block28004be0PC := 9.
        ].
        block28004be0Step = 9 ifTrue: [
            block28004be0Stack2 := 'PM'.
            block28004be0PC := 11.
        ].
        block28004be0Step = 11 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) = (block28004be0Stack2).
            block28004be0PC := 12.
        ].
        block28004be0Step = 12 ifTrue: [
            (block28004be0Stack1) ifTrue: [block28004be0PC := 16] ifFalse: [block28004be0PC := 44].
        ].
        block28004be0Step = 16 ifTrue: [
            block28004be0Stack1 := block28004be0Arg1.
            block28004be0PC := 17.
        ].
        block28004be0Step = 17 ifTrue: [
            block28004be0Stack2 := 1.
            block28004be0PC := 19.
        ].
        block28004be0Step = 19 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) at: (block28004be0Stack2).
            block28004be0PC := 21.
        ].
        block28004be0Step = 21 ifTrue: [
            block28004be0Stack2 := 1.
            block28004be0PC := 23.
        ].
        block28004be0Step = 23 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) instVarAt: (block28004be0Stack2).
            block28004be0PC := 25.
        ].
        block28004be0Step = 25 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) x.
            block28004be0PC := 27.
        ].
        block28004be0Step = 27 ifTrue: [
            block28004be0Stack2 := block28004be0Arg1.
            block28004be0PC := 28.
        ].
        block28004be0Step = 28 ifTrue: [
            block28004be0Stack3 := 1.
            block28004be0PC := 30.
        ].
        block28004be0Step = 30 ifTrue: [
            block28004be0Stack2 := (block28004be0Stack2) at: (block28004be0Stack3).
            block28004be0PC := 32.
        ].
        block28004be0Step = 32 ifTrue: [
            block28004be0Stack3 := 2.
            block28004be0PC := 34.
        ].
        block28004be0Step = 34 ifTrue: [
            block28004be0Stack2 := (block28004be0Stack2) instVarAt: (block28004be0Stack3).
            block28004be0PC := 36.
        ].
        block28004be0Step = 36 ifTrue: [
            block28004be0Stack2 := (block28004be0Stack2) y.
            block28004be0PC := 38.
        ].
        block28004be0Step = 38 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) @ (block28004be0Stack2).
            block28004be0PC := 40.
        ].
        block28004be0Step = 40 ifTrue: [
            block28004be0PC := 53.
        ].
        block28004be0Step = 44 ifTrue: [
            block28004be0Stack1 := block28004be0Arg1.
            block28004be0PC := 45.
        ].
        block28004be0Step = 45 ifTrue: [
            block28004be0Stack2 := 1.
            block28004be0PC := 47.
        ].
        block28004be0Step = 47 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) at: (block28004be0Stack2).
            block28004be0PC := 49.
        ].
        block28004be0Step = 49 ifTrue: [
            block28004be0Stack2 := 1.
            block28004be0PC := 51.
        ].
        block28004be0Step = 51 ifTrue: [
            block28004be0Stack1 := (block28004be0Stack1) instVarAt: (block28004be0Stack2).
            block28004be0PC := 53.
        ].
        block28004be0Step = 53 ifTrue: [
            block28004be0Result := block28004be0Stack1.
            block28004be0Done := true.
        ].
    ].
    block28004be0Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'corner'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := [:block28004c04Arg1 | 
    | block28004c04Stack0 block28004c04Stack1 block28004c04Stack2 block28004c04Stack3 block28004c04Stack4 block28004c04PC block28004c04Step block28004c04Done block28004c04Result |
    block28004c04Stack0 := self.
    block28004c04PC := 4.
    block28004c04Done := false.
    [block28004c04Done not] whileTrue: [
        block28004c04Step := block28004c04PC.
        block28004c04Step = 4 ifTrue: [
            block28004c04Stack1 := block28004c04Arg1.
            block28004c04PC := 5.
        ].
        block28004c04Step = 5 ifTrue: [
            block28004c04Stack2 := 4.
            block28004c04PC := 7.
        ].
        block28004c04Step = 7 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) at: (block28004c04Stack2).
            block28004c04PC := 9.
        ].
        block28004c04Step = 9 ifTrue: [
            block28004c04Stack2 := 'PM'.
            block28004c04PC := 11.
        ].
        block28004c04Step = 11 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) = (block28004c04Stack2).
            block28004c04PC := 12.
        ].
        block28004c04Step = 12 ifTrue: [
            (block28004c04Stack1) ifTrue: [block28004c04PC := 16] ifFalse: [block28004c04PC := 44].
        ].
        block28004c04Step = 16 ifTrue: [
            block28004c04Stack1 := block28004c04Arg1.
            block28004c04PC := 17.
        ].
        block28004c04Step = 17 ifTrue: [
            block28004c04Stack2 := 1.
            block28004c04PC := 19.
        ].
        block28004c04Step = 19 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) at: (block28004c04Stack2).
            block28004c04PC := 21.
        ].
        block28004c04Step = 21 ifTrue: [
            block28004c04Stack2 := 2.
            block28004c04PC := 23.
        ].
        block28004c04Step = 23 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) instVarAt: (block28004c04Stack2).
            block28004c04PC := 25.
        ].
        block28004c04Step = 25 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) x.
            block28004c04PC := 27.
        ].
        block28004c04Step = 27 ifTrue: [
            block28004c04Stack2 := block28004c04Arg1.
            block28004c04PC := 28.
        ].
        block28004c04Step = 28 ifTrue: [
            block28004c04Stack3 := 1.
            block28004c04PC := 30.
        ].
        block28004c04Step = 30 ifTrue: [
            block28004c04Stack2 := (block28004c04Stack2) at: (block28004c04Stack3).
            block28004c04PC := 32.
        ].
        block28004c04Step = 32 ifTrue: [
            block28004c04Stack3 := 1.
            block28004c04PC := 34.
        ].
        block28004c04Step = 34 ifTrue: [
            block28004c04Stack2 := (block28004c04Stack2) instVarAt: (block28004c04Stack3).
            block28004c04PC := 36.
        ].
        block28004c04Step = 36 ifTrue: [
            block28004c04Stack2 := (block28004c04Stack2) y.
            block28004c04PC := 38.
        ].
        block28004c04Step = 38 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) @ (block28004c04Stack2).
            block28004c04PC := 40.
        ].
        block28004c04Step = 40 ifTrue: [
            block28004c04PC := 53.
        ].
        block28004c04Step = 44 ifTrue: [
            block28004c04Stack1 := block28004c04Arg1.
            block28004c04PC := 45.
        ].
        block28004c04Step = 45 ifTrue: [
            block28004c04Stack2 := 1.
            block28004c04PC := 47.
        ].
        block28004c04Step = 47 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) at: (block28004c04Stack2).
            block28004c04PC := 49.
        ].
        block28004c04Step = 49 ifTrue: [
            block28004c04Stack2 := 2.
            block28004c04PC := 51.
        ].
        block28004c04Step = 51 ifTrue: [
            block28004c04Stack1 := (block28004c04Stack1) instVarAt: (block28004c04Stack2).
            block28004c04PC := 53.
        ].
        block28004c04Step = 53 ifTrue: [
            block28004c04Result := block28004c04Stack1.
            block28004c04Done := true.
        ].
    ].
    block28004c04Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

