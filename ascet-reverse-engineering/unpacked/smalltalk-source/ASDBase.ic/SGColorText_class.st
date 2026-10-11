"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003f88; bytecode file offset 0x90206c"
!SGColorText class methodsFor: 'recovered'!
fontList: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001413c; bytecode file offset 0x912098"
!SGColorText class methodsFor: 'recovered'!
fontName
    | recoveredValue0 |
    recoveredValue0 := FontName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048e28; bytecode file offset 0x945728"
!SGColorText class methodsFor: 'recovered'!
preStartUp
    FontList := nil.
    ^self
! !

"ASDBase.ic method 0x20073318; bytecode file offset 0x970b34"
!SGColorText class methodsFor: 'recovered'!
wbStyleAttribute
    ^nil
! !

"ASDBase.ic method 0x20074148; bytecode file offset 0x970b34"
!SGColorText class methodsFor: 'recovered'!
fontList
    ^nil
! !

"ASDBase.ic method 0x200749d4; bytecode file offset 0x9757c8"
!SGColorText class methodsFor: 'recovered'!
stsSupportsColor
    ^true
! !

"ASDBase.ic method 0x20078084; bytecode file offset 0x9757c8"
!SGColorText class methodsFor: 'recovered'!
supportsColor
    ^true
! !

"ASDBase.ic method 0x20087e3c; bytecode file offset 0x984bc0"
!SGColorText class methodsFor: 'recovered'!
wbAttributeEditorClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (recoveredValue0) classAt: ('WbScrolledTextEditor').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008be94; bytecode file offset 0x988750"
!SGColorText class methodsFor: 'recovered'!
wbMaxSize
    | recoveredValue0 |
    recoveredValue0 := (32000) @ (32000).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008d9cc; bytecode file offset 0x98a284"
!SGColorText class methodsFor: 'recovered'!
wbMinSize
    | recoveredValue0 |
    recoveredValue0 := (32) @ (32).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20139f28; bytecode file offset 0xa367e8"
!SGColorText class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := FontList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := FontList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            FontList := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ff924; bytecode file offset 0xafc1fc"
!SGColorText class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('parseTree') setSelector: ('basicParseTree:').
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := CwResourceSnapshot.
    recoveredValue6 := (recoveredValue5) getSelector: ('compiledMethod') setSelector: ('compiledMethod:').
    (recoveredValue4) add: (recoveredValue6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20485bec; bytecode file offset 0xd824e0"
!SGColorText class methodsFor: 'recovered'!
updateCodeFontList: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := FontList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            FontList := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            FontName := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) allShells.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Local1 recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) userData.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Local1 := recoveredBlock40Stack1.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local1.
            recoveredBlock40PC := 52.
        ].
        recoveredBlock40Step = 52 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 75] ifFalse: [recoveredBlock40PC := 56].
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) stsIsEtWindow.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 62] ifFalse: [recoveredBlock40PC := 75].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isRealized.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 68] ifFalse: [recoveredBlock40PC := 75].
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local1.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) add: (recoveredBlock40Stack2).
            recoveredBlock40PC := 75.
        ].
        recoveredBlock40Step = 75 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (recoveredBlock81Value0) fontSettableWidgets.
    recoveredBlock81Value2 := [:recoveredBlock81Block91Arg1 | 
    | recoveredBlock81Block91Value0 recoveredBlock81Block91Value1 recoveredBlock81Block91Value2 |
    recoveredBlock81Block91Value0 := recoveredBlock81Block91Arg1.
    recoveredBlock81Block91Value1 := recoveredArg1.
    recoveredBlock81Block91Value2 := (recoveredBlock81Block91Value0) stsCodeFontList: (recoveredBlock81Block91Value1).
    recoveredBlock81Block91Value2
].
    recoveredBlock81Value3 := (recoveredBlock81Value1) do: (recoveredBlock81Value2).
    recoveredBlock81Value3
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := FontList.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := FontList.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) freeFont.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

