"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20003084; bytecode file offset 0x53eb0"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
columnPosition
    | recoveredValue0 |
    recoveredValue0 := columnPosition.
    ^recoveredValue0
! !

"extwid.ic method 0x200031ac; bytecode file offset 0x53fc0"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
selectedCells
    | recoveredValue0 |
    recoveredValue0 := selectedCells.
    ^recoveredValue0
! !

"extwid.ic method 0x20006b84; bytecode file offset 0x57998"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
columnPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columnPosition := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006c84; bytecode file offset 0x57a68"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
selectedCells: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedCells := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006ce4; bytecode file offset 0x57b48"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
columnPositions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columnPositions := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20012d5c; bytecode file offset 0x63b34"
!EwTableListSelectionCallbackData methodsFor: 'recovered'!
columnPositions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := columnPositions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCells.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280056a0Arg1 | 
    | block280056a0Value0 block280056a0Value1 |
    block280056a0Value0 := block280056a0Arg1.
    block280056a0Value1 := (block280056a0Value0) x.
    block280056a0Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            columnPositions := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := columnPositions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

