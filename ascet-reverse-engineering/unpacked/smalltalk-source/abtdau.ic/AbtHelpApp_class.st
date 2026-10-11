"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20001b10; bytecode file offset 0x10e90"
!AbtHelpApp class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtHelpAccessor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) imageEventDependent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EsImageStartUp.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20001dfc; bytecode file offset 0x11174"
!AbtHelpApp class methodsFor: 'recovered'!
imageEventDependent: recoveredXArg1
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 15] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := CurrentStringClass.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) new.
            recoveredXPC := 13.
        ].
        recoveredXStep = 13 ifTrue: [
            recoveredLegacyIvar29 := recoveredXStack1.
            recoveredXPC := 15.
        ].
        recoveredXStep = 15 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 17.
        ].
        recoveredXStep = 17 ifTrue: [
            recoveredXStack2 := recoveredXArg1.
            recoveredXPC := 18.
        ].
        recoveredXStep = 18 ifTrue: [
            (recoveredXStack1) add: (recoveredXStack2).
            recoveredXPC := 20.
        ].
        recoveredXStep = 20 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

"abtdau.ic method 0x20002660; bytecode file offset 0x119ec"
!AbtHelpApp class methodsFor: 'recovered'!
exiting
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 == nil) ifTrue: [recoveredXPC := 30] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := #(268440368 nil 28 8388611 nil nil).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXPC := 28.
        ].
        recoveredXStep = 28 ifTrue: [
            (recoveredXStack1) do: (recoveredXStack2).
            recoveredXPC := 30.
        ].
        recoveredXStep = 30 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

"abtdau.ic method 0x20002674; bytecode file offset 0x119ec"
!AbtHelpApp class methodsFor: 'recovered'!
removing
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 == nil) ifTrue: [recoveredXPC := 30] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := #(268440378 nil 18 8388611 nil nil).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXPC := 28.
        ].
        recoveredXStep = 28 ifTrue: [
            (recoveredXStack1) do: (recoveredXStack2).
            recoveredXPC := 30.
        ].
        recoveredXStep = 30 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

"abtdau.ic method 0x20002b88; bytecode file offset 0x11f08"
!AbtHelpApp class methodsFor: 'recovered'!
startUp
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXStack3 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 == nil) ifTrue: [recoveredXPC := 30] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar29.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredXStack2 := #(268441028 nil 22 8388611 nil nil).
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXPC := 28.
        ].
        recoveredXStep = 28 ifTrue: [
            (recoveredXStack1) do: (recoveredXStack2).
            recoveredXPC := 30.
        ].
        recoveredXStep = 30 ifTrue: [
            recoveredXStack1 := AbtHTMLHelpMapping.
            recoveredXPC := 32.
        ].
        recoveredXStep = 32 ifTrue: [
            (recoveredXStack1) reinitialize.
            recoveredXPC := 34.
        ].
        recoveredXStep = 34 ifTrue: [
            ^recoveredXStack0
        ].
    ]
! !

