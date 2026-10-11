"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003710; bytecode file offset 0x90206c"
!WbEmptySpace methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20067f04; bytecode file offset 0x965b90"
!WbEmptySpace methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a020; bytecode file offset 0x966bdc"
!WbEmptySpace methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ad100; bytecode file offset 0x9a99bc"
!WbEmptySpace methodsFor: 'recovered'!
width: recoveredArg1 height: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    height := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c01ec; bytecode file offset 0x9bd228"
!WbEmptySpace methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0bf8; bytecode file offset 0x9bdf14"
!WbEmptySpace methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011e004; bytecode file offset 0xa1a8c0"
!WbEmptySpace methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011e104; bytecode file offset 0xa1a9c0"
!WbEmptySpace methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := height.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

