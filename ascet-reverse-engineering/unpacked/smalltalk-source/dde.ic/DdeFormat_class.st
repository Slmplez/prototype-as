"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x2000005c; bytecode file offset 0x6320"
!DdeFormat class methodsFor: 'recovered'!
startRun
    Formats := nil.
    ^self
! !

"dde.ic method 0x200010f0; bytecode file offset 0x73c4"
!DdeFormat class methodsFor: 'recovered'!
stringToFormat: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) formats.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asLowercase.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := OS.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) registerClipboardFormat: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^recoveredValue4
! !

"dde.ic method 0x2000261c; bytecode file offset 0x8908"
!DdeFormat class methodsFor: 'recovered'!
formatToString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) formats.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := String.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := 128.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) new: (recoveredBlock8Stack2).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredLocal2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := OS.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal2.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack4 := recoveredLocal2.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) size.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) getClipboardFormatName: (recoveredBlock8Stack2) lpszFormatName: (recoveredBlock8Stack3) cbMax: (recoveredBlock8Stack4).
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack2 := 0.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            (recoveredBlock8Stack1 ~~ recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 55] ifFalse: [recoveredBlock8PC := 52].
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Stack1 := ''.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 55 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal2.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack2 := 1.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal1.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) copyFrom: (recoveredBlock8Stack2) to: (recoveredBlock8Stack3).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredLocal3 := recoveredBlock8Stack1.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) formats.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal3.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asLowercase.
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) put: (recoveredBlock8Stack2).
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack0 := recoveredLocal3.
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            ^recoveredBlock8Stack0
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue0) keyAtValue: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"dde.ic method 0x200037cc; bytecode file offset 0x9b4c"
!DdeFormat class methodsFor: 'recovered'!
formats
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Formats.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Formats.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            Formats := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Formats.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'string'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := CfText.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'bitmap'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := CfBitmap.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'metafilepict'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := CfMetafilepict.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'sylk'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := CfSylk.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'dif'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := CfDif.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'tiff'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := CfTiff.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'dib'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := CfDib.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'palette'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := CfPalette.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'ownerdisplay'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := CfOwnerdisplay.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'dsptext'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := CfDsptext.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'dspbitmap'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := CfDspbitmap.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'dspmetafilepict'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := CfDspmetafilepict.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 'oemtext'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := CfOemtext.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'pendata'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := CfPendata.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'riff'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := CfRiff.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'wave'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := CfWave.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'unicodetext'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := CfUnicodetext.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 'enhmetafile'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := CfEnhmetafile.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 'dspenhmetafile'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := CfDspenhmetafile.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := 'rtf'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack5 := 'Rich Text Format'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := (recoveredStack4) registerClipboardFormat: (recoveredStack5).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'link'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := OS.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := 'Link'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := (recoveredStack3) registerClipboardFormat: (recoveredStack4).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := Formats.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

