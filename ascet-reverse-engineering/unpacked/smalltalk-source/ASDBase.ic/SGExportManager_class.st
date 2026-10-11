"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c2ec; bytecode file offset 0x92209c"
!SGExportManager class methodsFor: 'recovered'!
criticalFilenames
    | recoveredValue0 |
    recoveredValue0 := (Set new) add: ('nul'); add: ('com7'); add: ('lpt4'); add: ('prn'); add: ('lpt1'); add: ('con'); add: ('aux'); add: ('com1'); add: ('com6'); add: ('lpt3'); add: ('lpt8'); add: ('com3'); add: ('lpt7'); add: ('com5'); add: ('lpt5'); add: ('com8'); add: ('lpt6'); add: ('lpt9'); add: ('com2'); add: ('com9'); add: ('lpt2'); add: ('com4'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20255688; bytecode file offset 0xb51f58"
!SGExportManager class methodsFor: 'recovered'!
isValidFilename: recoveredArg1
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
            recoveredStack2 := [:block280df428Arg1 | 
    | block280df428Value0 block280df428Value1 block280df428Value2 block280df428Value3 |
    block280df428Value0 := CfsFileDescriptor.
    block280df428Value1 := (block280df428Value0) invalidFileCharacters.
    block280df428Value2 := block280df428Arg1.
    block280df428Value3 := (block280df428Value1) includes: (block280df428Value2).
    block280df428Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) criticalFilenames.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

