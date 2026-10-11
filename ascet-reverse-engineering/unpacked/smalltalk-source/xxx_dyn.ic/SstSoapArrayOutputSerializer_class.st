"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20010704; bytecode file offset 0x717d4"
!SstSoapArrayOutputSerializer class methodsFor: 'recovered'!
arrayTypeFormatBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800ab6cArg1 :block2800ab6cArg2 | 
    | block2800ab6cStack0 block2800ab6cStack1 block2800ab6cStack2 block2800ab6cStack3 block2800ab6cPC block2800ab6cStep block2800ab6cDone block2800ab6cResult |
    block2800ab6cStack0 := self.
    block2800ab6cPC := 4.
    block2800ab6cDone := false.
    [block2800ab6cDone not] whileTrue: [
        block2800ab6cStep := block2800ab6cPC.
        block2800ab6cStep = 4 ifTrue: [
            block2800ab6cStack1 := block2800ab6cArg1.
            block2800ab6cPC := 5.
        ].
        block2800ab6cStep = 5 ifTrue: [
            block2800ab6cStack1 := (block2800ab6cStack1) sstIsSoapArray.
            block2800ab6cPC := 6.
        ].
        block2800ab6cStep = 6 ifTrue: [
            (block2800ab6cStack1) ifTrue: [block2800ab6cPC := 10] ifFalse: [block2800ab6cPC := 16].
        ].
        block2800ab6cStep = 10 ifTrue: [
            block2800ab6cStack1 := block2800ab6cArg1.
            block2800ab6cPC := 11.
        ].
        block2800ab6cStep = 11 ifTrue: [
            block2800ab6cStack2 := block2800ab6cArg2.
            block2800ab6cPC := 12.
        ].
        block2800ab6cStep = 12 ifTrue: [
            block2800ab6cStack1 := (block2800ab6cStack1) formatArrayTypeValue: (block2800ab6cStack2).
            block2800ab6cPC := 13.
        ].
        block2800ab6cStep = 13 ifTrue: [
            block2800ab6cPC := 17.
        ].
        block2800ab6cStep = 16 ifTrue: [
            block2800ab6cStack1 := nil.
            block2800ab6cPC := 17.
        ].
        block2800ab6cStep = 17 ifTrue: [
            block2800ab6cResult := block2800ab6cStack1.
            block2800ab6cDone := true.
        ].
    ].
    block2800ab6cResult
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

