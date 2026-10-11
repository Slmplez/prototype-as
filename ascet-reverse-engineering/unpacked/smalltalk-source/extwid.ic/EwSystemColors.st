"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200026a4; bytecode file offset 0x534f0"
!EwSystemColors methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"extwid.ic method 0x200062e8; bytecode file offset 0x5710c"
!EwSystemColors methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widget := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200063d8; bytecode file offset 0x57284"
!EwSystemColors methodsFor: 'recovered'!
palette: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    palette := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20009630; bytecode file offset 0x5a3f8"
!EwSystemColors methodsFor: 'recovered'!
palette
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := palette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializePalette.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := palette.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20009f74; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
selectionForeground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorHighlighttext.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20009f90; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
windowBackground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorWindow.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20009fac; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
selectionBackground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorHighlight.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20009fc8; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
buttonFace
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorBtnface.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20009fe4; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
buttonShading
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorBtnshadow.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000a000; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
buttonText
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorBtntext.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000a01c; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
buttonHighlight
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorBtnhighlight.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x2000a038; bytecode file offset 0x5ae10"
!EwSystemColors methodsFor: 'recovered'!
listBackground
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OS.
    recoveredValue1 := ColorWindow.
    recoveredValue2 := (recoveredValue0) getSysColor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) fromOSRGB: (recoveredValue4).
    ^recoveredValue5
! !

"extwid.ic method 0x20022f6c; bytecode file offset 0x73d60"
!EwSystemColors methodsFor: 'recovered'!
allColorsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) buttonFace.
    (recoveredValue1) value: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) buttonHighlight.
    (recoveredValue3) value: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) buttonShading.
    (recoveredValue5) value: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) buttonText.
    (recoveredValue7) value: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) listBackground.
    (recoveredValue9) value: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) selectionBackground.
    (recoveredValue11) value: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) selectionForeground.
    (recoveredValue13) value: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) windowBackground.
    (recoveredValue15) value: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) widget.
    recoveredValue19 := (recoveredValue18) foregroundColor.
    (recoveredValue17) value: (recoveredValue19).
    recoveredValue20 := (self) widget.
    recoveredValue21 := (recoveredValue20) backgroundColor.
    (recoveredValue0) value: (recoveredValue21).
    ^self
! !

"extwid.ic method 0x2002c10c; bytecode file offset 0x7cf0c"
!EwSystemColors methodsFor: 'recovered'!
initializePalette
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRealized.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredLocal3.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) includes: (recoveredBlock49Stack3).
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 77] ifFalse: [recoveredBlock49PC := 66].
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := true.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal3.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) add: (recoveredBlock49Stack2).
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) allColorsDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) palette: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

