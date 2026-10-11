"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005408c; bytecode file offset 0x951190"
!DBExImportController class methodsFor: 'recovered'!
AttachedClassNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AttachedClassNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200968d4; bytecode file offset 0x9932f0"
!DBExImportController class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super create: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009b4dc; bytecode file offset 0x997d98"
!DBExImportController class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dbInterface.
    recoveredValue2 := (self) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20128640; bytecode file offset 0xa24f00"
!DBExImportController class methodsFor: 'recovered'!
AttachedClassNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AttachedClassNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) collectAttachedClassNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) AttachedClassNames: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := AttachedClassNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024de48; bytecode file offset 0xb4a724"
!DBExImportController class methodsFor: 'recovered'!
collectAttachedClassNames
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280decfcArg1 | 
    | block280decfcValue0 block280decfcValue1 |
    block280decfcValue0 := block280decfcArg1.
    block280decfcValue1 := (block280decfcValue0) canUnderstand: ('attachedFiles').
    block280decfcValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280ded20Arg1 | 
    | block280ded20Value0 block280ded20Value1 block280ded20Value2 |
    block280ded20Value0 := block280ded20Arg1.
    block280ded20Value1 := (block280ded20Value0) name.
    block280ded20Value2 := (block280ded20Value1) asString.
    block280ded20Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

