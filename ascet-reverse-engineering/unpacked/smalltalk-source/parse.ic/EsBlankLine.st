"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200000a0; bytecode file offset 0x156fc"
!EsBlankLine methodsFor: 'recovered'!
atEnd: recoveredArg1
    ^self
! !

"parse.ic method 0x200000ec; bytecode file offset 0x15744"
!EsBlankLine methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := (self) errorCannotHaveComments.
    ^recoveredValue0
! !

"parse.ic method 0x20000130; bytecode file offset 0x15788"
!EsBlankLine methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) errorCannotHaveComments.
    ^recoveredValue0
! !

"parse.ic method 0x200019d4; bytecode file offset 0x17030"
!EsBlankLine methodsFor: 'recovered'!
count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"parse.ic method 0x20003b90; bytecode file offset 0x191e8"
!EsBlankLine methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := comment.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 10] ifFalse: [recoveredPC := 23]] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

