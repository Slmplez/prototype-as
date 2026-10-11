"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048d20; bytecode file offset 0x945728"
!WbFontManager class methodsFor: 'recovered'!
resetFonts
    Fonts := nil.
    ^self
! !

"ASDBase.ic method 0x200544a0; bytecode file offset 0x951190"
!WbFontManager class methodsFor: 'recovered'!
promptWhenMissing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    PromptWhenMissing := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20094798; bytecode file offset 0x991174"
!WbFontManager class methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009a3a8; bytecode file offset 0x997194"
!WbFontManager class methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fonts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20105110; bytecode file offset 0xa01a28"
!WbFontManager class methodsFor: 'recovered'!
promptWhenMissing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PromptWhenMissing.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            PromptWhenMissing := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := PromptWhenMissing.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128500; bytecode file offset 0xa24eb0"
!WbFontManager class methodsFor: 'recovered'!
fonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Fonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Fonts := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Fonts.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20471730; bytecode file offset 0xd6e028"
!WbFontManager class methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := '<Non-Portable Byte Array>'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) fonts.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) promptWhenMissing.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            (recoveredBlock55Stack0) ifTrue: [recoveredBlock55PC := 68] ifFalse: [recoveredBlock55PC := 114].
        ].
        recoveredBlock55Step = 68 ifTrue: [
            recoveredBlock55Stack0 := CwFontPrompter.
            recoveredBlock55PC := 70.
        ].
        recoveredBlock55Step = 70 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) new.
            recoveredBlock55PC := 72.
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Stack0.
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack2 := 'Select a font for '.
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Stack3 := recoveredLocal2.
            recoveredBlock55PC := 78.
        ].
        recoveredBlock55Step = 78 ifTrue: [
            recoveredBlock55Stack3 := (recoveredBlock55Stack3) asString.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) , (recoveredBlock55Stack3).
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            (recoveredBlock55Stack1) title: (recoveredBlock55Stack2).
            recoveredBlock55PC := 84.
        ].
        recoveredBlock55Step = 84 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) prompt.
            recoveredBlock55PC := 86.
        ].
        recoveredBlock55Step = 86 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Stack0.
            recoveredBlock55PC := 87.
        ].
        recoveredBlock55Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 90.
        ].
        recoveredBlock55Step = 90 ifTrue: [
            (recoveredBlock55Stack0 ~~ nil) ifTrue: [recoveredBlock55PC := 102] ifFalse: [recoveredBlock55PC := 94].
        ].
        recoveredBlock55Step = 94 ifTrue: [
            recoveredBlock55Stack0 := recoveredArg2.
            recoveredBlock55PC := 97.
        ].
        recoveredBlock55Step = 97 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) value.
            recoveredBlock55PC := 99.
        ].
        recoveredBlock55Step = 99 ifTrue: [
            recoveredBlock55PC := 111.
        ].
        recoveredBlock55Step = 102 ifTrue: [
            recoveredBlock55Stack0 := self.
            recoveredBlock55PC := 103.
        ].
        recoveredBlock55Step = 103 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal2.
            recoveredBlock55PC := 106.
        ].
        recoveredBlock55Step = 106 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal1.
            recoveredBlock55PC := 109.
        ].
        recoveredBlock55Step = 109 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) at: (recoveredBlock55Stack1) put: (recoveredBlock55Stack2).
            recoveredBlock55PC := 111.
        ].
        recoveredBlock55Step = 111 ifTrue: [
            recoveredBlock55PC := 119.
        ].
        recoveredBlock55Step = 114 ifTrue: [
            recoveredBlock55Stack0 := recoveredArg2.
            recoveredBlock55PC := 117.
        ].
        recoveredBlock55Step = 117 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) value.
            recoveredBlock55PC := 119.
        ].
        recoveredBlock55Step = 119 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack0.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

