"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002d38; bytecode file offset 0x8ffcfc"
!EtasCopyBuffer methodsFor: 'recovered'!
keyESCPressed
    ^self
! !

"ASDBase.ic method 0x203291e0; bytecode file offset 0xc25abc"
!EtasCopyBuffer methodsFor: 'recovered'!
pasteSelectionToWidget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyItems: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:block280ec400Arg1 | 
    | block280ec400Stack0 block280ec400Stack1 block280ec400Stack2 block280ec400Stack3 block280ec400PC block280ec400Step block280ec400Done block280ec400Result |
    block280ec400Stack0 := self.
    block280ec400PC := 4.
    block280ec400Done := false.
    [block280ec400Done not] whileTrue: [
        block280ec400Step := block280ec400PC.
        block280ec400Step = 4 ifTrue: [
            block280ec400Stack1 := nil.
            block280ec400PC := 5.
        ].
        block280ec400Step = 5 ifTrue: [
            block280ec400Stack2 := ASDAscetController.
            block280ec400PC := 7.
        ].
        block280ec400Step = 7 ifTrue: [
            block280ec400Stack2 := (block280ec400Stack2) isSCMActive.
            block280ec400PC := 9.
        ].
        block280ec400Step = 9 ifTrue: [
            (block280ec400Stack2) ifTrue: [block280ec400PC := 12] ifFalse: [block280ec400PC := 16].
        ].
        block280ec400Step = 12 ifTrue: [
            block280ec400PC := 13.
        ].
        block280ec400Step = 13 ifTrue: [
            block280ec400Stack1 := block280ec400Arg1.
            block280ec400PC := 14.
        ].
        block280ec400Step = 14 ifTrue: [
            block280ec400Stack1 := (block280ec400Stack1) scmPostPaste.
            block280ec400PC := 16.
        ].
        block280ec400Step = 16 ifTrue: [
            block280ec400Result := block280ec400Stack1.
            block280ec400Done := true.
        ].
    ].
    block280ec400Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) updateAfterCopyItem: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

