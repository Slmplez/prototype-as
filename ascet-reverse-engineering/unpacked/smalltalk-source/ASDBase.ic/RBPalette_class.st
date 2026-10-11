"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b4ee0; bytecode file offset 0x9b1798"
!RBPalette class methodsFor: 'recovered'!
paletteWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) buttonSize.
    recoveredValue1 := (recoveredValue0) * (5).
    recoveredValue2 := (recoveredValue1) + (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20282e88; bytecode file offset 0xb7f74c"
!RBPalette class methodsFor: 'recovered'!
iconSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := '24'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonSize.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 64.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := '32'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c3b54; bytecode file offset 0xbc0414"
!RBPalette class methodsFor: 'recovered'!
buttonSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionPaletteIconSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 22.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionPaletteIconSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 24.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionPaletteIconSize.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 38.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 22.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

