"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b694; bytecode file offset 0x934580"
!SGGraphicObjectsDB class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f0148; bytecode file offset 0xaeca14"
!SGGraphicObjectsDB class methodsFor: 'recovered'!
clearAttributedViewNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGConnectionGODB.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d7988Arg1 | 
    | block280d7988Value0 block280d7988Value1 |
    block280d7988Value0 := block280d7988Arg1.
    block280d7988Value1 := (block280d7988Value0) clearAttributedViewNames.
    block280d7988Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) allInstancesDo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SGDataGODB.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280d79acArg1 | 
    | block280d79acValue0 block280d79acValue1 |
    block280d79acValue0 := block280d79acArg1.
    block280d79acValue1 := (block280d79acValue0) clearAttributedViewNames.
    block280d79acValue1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) allInstancesDo: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

