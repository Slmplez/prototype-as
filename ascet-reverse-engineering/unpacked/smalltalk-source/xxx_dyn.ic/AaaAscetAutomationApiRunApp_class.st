"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200187ec; bytecode file offset 0x79c2c"
!AaaAscetAutomationApiRunApp class methodsFor: 'recovered'!
loaded
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
            recoveredStack2 := [:block2800b250Arg1 | 
    | block2800b250Stack0 block2800b250Stack1 block2800b250Stack2 block2800b250Stack3 block2800b250Stack4 block2800b250PC block2800b250Step block2800b250Done block2800b250Result |
    block2800b250Stack0 := self.
    block2800b250PC := 4.
    block2800b250Done := false.
    [block2800b250Done not] whileTrue: [
        block2800b250Step := block2800b250PC.
        block2800b250Step = 4 ifTrue: [
            block2800b250Stack1 := block2800b250Arg1.
            block2800b250PC := 5.
        ].
        block2800b250Step = 5 ifTrue: [
            block2800b250Stack2 := 'setupAfterLoad'.
            block2800b250PC := 7.
        ].
        block2800b250Step = 7 ifTrue: [
            block2800b250Stack1 := (block2800b250Stack1) respondsTo: (block2800b250Stack2).
            block2800b250PC := 8.
        ].
        block2800b250Step = 8 ifTrue: [
            (block2800b250Stack1) ifTrue: [block2800b250PC := 12] ifFalse: [block2800b250PC := 15].
        ].
        block2800b250Step = 12 ifTrue: [
            block2800b250Stack1 := block2800b250Arg1.
            block2800b250PC := 13.
        ].
        block2800b250Step = 13 ifTrue: [
            (block2800b250Stack1) setupAfterLoad.
            block2800b250PC := 15.
        ].
        block2800b250Step = 15 ifTrue: [
            block2800b250Stack1 := nil.
            block2800b250PC := 16.
        ].
        block2800b250Step = 16 ifTrue: [
            block2800b250Stack2 := block2800b250Arg1.
            block2800b250PC := 17.
        ].
        block2800b250Step = 17 ifTrue: [
            block2800b250Stack2 := (block2800b250Stack2) class.
            block2800b250PC := 18.
        ].
        block2800b250Step = 18 ifTrue: [
            block2800b250Stack3 := 'setupAfterLoadNonInherited'.
            block2800b250PC := 20.
        ].
        block2800b250Step = 20 ifTrue: [
            block2800b250Stack2 := (block2800b250Stack2) includesSelector: (block2800b250Stack3).
            block2800b250PC := 22.
        ].
        block2800b250Step = 22 ifTrue: [
            (block2800b250Stack2) ifTrue: [block2800b250PC := 26] ifFalse: [block2800b250PC := 30].
        ].
        block2800b250Step = 26 ifTrue: [
            block2800b250PC := 27.
        ].
        block2800b250Step = 27 ifTrue: [
            block2800b250Stack1 := block2800b250Arg1.
            block2800b250PC := 28.
        ].
        block2800b250Step = 28 ifTrue: [
            block2800b250Stack1 := (block2800b250Stack1) setupAfterLoadNonInherited.
            block2800b250PC := 30.
        ].
        block2800b250Step = 30 ifTrue: [
            block2800b250Result := block2800b250Stack1.
            block2800b250Done := true.
        ].
    ].
    block2800b250Result
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

