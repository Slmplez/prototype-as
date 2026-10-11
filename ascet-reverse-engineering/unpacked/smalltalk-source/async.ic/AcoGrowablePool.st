"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x200004f4; bytecode file offset 0x769c"
!AcoGrowablePool methodsFor: 'recovered'!
growableBlock
    | recoveredValue0 |
    recoveredValue0 := growableBlock.
    ^recoveredValue0
! !

"async.ic method 0x200009c0; bytecode file offset 0x7b50"
!AcoGrowablePool methodsFor: 'recovered'!
growableBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    growableBlock := recoveredValue0.
    ^self
! !

"async.ic method 0x20000db8; bytecode file offset 0x7f4c"
!AcoGrowablePool methodsFor: 'recovered'!
errorEmptyQueue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := growableBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := creationBlock.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

