"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201089b0; bytecode file offset 0xa05274"
!SGMakeGraph methodsFor: 'recovered'!
nodesForClassInterfacePropagation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c64ecArg1 | 
    | block280c64ecValue0 block280c64ecValue1 block280c64ecValue2 |
    block280c64ecValue0 := block280c64ecArg1.
    block280c64ecValue1 := (block280c64ecValue0) mdlClassInterface.
    block280c64ecValue2 := (block280c64ecValue1) isNil.
    block280c64ecValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

