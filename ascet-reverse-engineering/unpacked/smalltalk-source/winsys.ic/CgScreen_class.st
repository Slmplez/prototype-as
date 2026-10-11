"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000788; bytecode file offset 0x7cc7c"
!CgScreen class methodsFor: 'recovered'!
bitmapPath
    | recoveredValue0 |
    recoveredValue0 := BitmapPath.
    ^recoveredValue0
! !

"winsys.ic method 0x20002210; bytecode file offset 0x7e404"
!CgScreen class methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) defaultScreen.
    ^recoveredValue2
! !

"winsys.ic method 0x20005f70; bytecode file offset 0x8213c"
!CgScreen class methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    (self) bitmapPath: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20020248; bytecode file offset 0x9c430"
!CgScreen class methodsFor: 'recovered'!
bitmapPath: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block2800901cArg1 | 
    | block2800901cStack0 block2800901cStack1 block2800901cStack2 block2800901cStack3 block2800901cStack4 block2800901cPC block2800901cStep block2800901cDone block2800901cResult |
    block2800901cStack0 := self.
    block2800901cPC := 4.
    block2800901cDone := false.
    [block2800901cDone not] whileTrue: [
        block2800901cStep := block2800901cPC.
        block2800901cStep = 4 ifTrue: [
            block2800901cStack1 := block2800901cArg1.
            block2800901cPC := 5.
        ].
        block2800901cStep = 5 ifTrue: [
            block2800901cStack1 := (block2800901cStack1) notEmpty.
            block2800901cPC := 6.
        ].
        block2800901cStep = 6 ifTrue: [
            (block2800901cStack1) ifTrue: [block2800901cPC := 10] ifFalse: [block2800901cPC := 32].
        ].
        block2800901cStep = 10 ifTrue: [
            block2800901cStack1 := block2800901cArg1.
            block2800901cPC := 11.
        ].
        block2800901cStep = 11 ifTrue: [
            block2800901cStack1 := (block2800901cStack1) last.
            block2800901cPC := 12.
        ].
        block2800901cStep = 12 ifTrue: [
            block2800901cStack2 := CfsDirectoryDescriptor.
            block2800901cPC := 14.
        ].
        block2800901cStep = 14 ifTrue: [
            block2800901cStack2 := (block2800901cStack2) pathSeparator.
            block2800901cPC := 16.
        ].
        block2800901cStep = 16 ifTrue: [
            block2800901cStack1 := (block2800901cStack1) = (block2800901cStack2).
            block2800901cPC := 17.
        ].
        block2800901cStep = 17 ifTrue: [
            (block2800901cStack1) ifTrue: [block2800901cPC := 20] ifFalse: [block2800901cPC := 32].
        ].
        block2800901cStep = 20 ifTrue: [
            block2800901cStack1 := block2800901cArg1.
            block2800901cPC := 21.
        ].
        block2800901cStep = 21 ifTrue: [
            block2800901cStack2 := 1.
            block2800901cPC := 23.
        ].
        block2800901cStep = 23 ifTrue: [
            block2800901cStack3 := block2800901cArg1.
            block2800901cPC := 24.
        ].
        block2800901cStep = 24 ifTrue: [
            block2800901cStack3 := (block2800901cStack3) size.
            block2800901cPC := 26.
        ].
        block2800901cStep = 26 ifTrue: [
            block2800901cStack3 := (block2800901cStack3) + (-1).
            block2800901cPC := 27.
        ].
        block2800901cStep = 27 ifTrue: [
            block2800901cStack1 := (block2800901cStack1) copyFrom: (block2800901cStack2) to: (block2800901cStack3).
            block2800901cPC := 29.
        ].
        block2800901cStep = 29 ifTrue: [
            block2800901cPC := 33.
        ].
        block2800901cStep = 32 ifTrue: [
            block2800901cStack1 := block2800901cArg1.
            block2800901cPC := 33.
        ].
        block2800901cStep = 33 ifTrue: [
            block2800901cResult := block2800901cStack1.
            block2800901cDone := true.
        ].
    ].
    block2800901cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            BitmapPath := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

