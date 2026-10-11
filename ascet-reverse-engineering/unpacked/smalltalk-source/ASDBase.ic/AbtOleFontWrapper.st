"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ac28; bytecode file offset 0x947768"
!AbtOleFontWrapper methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b33c; bytecode file offset 0x947d20"
!AbtOleFontWrapper methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b4a0; bytecode file offset 0x947ec0"
!AbtOleFontWrapper methodsFor: 'recovered'!
bold
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b7c0; bytecode file offset 0x948384"
!AbtOleFontWrapper methodsFor: 'recovered'!
italic
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bb34; bytecode file offset 0x94877c"
!AbtOleFontWrapper methodsFor: 'recovered'!
underline
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c1f0; bytecode file offset 0x948b80"
!AbtOleFontWrapper methodsFor: 'recovered'!
strikethrough
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c570; bytecode file offset 0x948e28"
!AbtOleFontWrapper methodsFor: 'recovered'!
weight
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c620; bytecode file offset 0x949118"
!AbtOleFontWrapper methodsFor: 'recovered'!
charset
    | recoveredValue0 |
    recoveredValue0 := (self) propertyAt: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200690e4; bytecode file offset 0x965b90"
!AbtOleFontWrapper methodsFor: 'recovered'!
fontName
    | recoveredValue0 |
    recoveredValue0 := fontName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2011ed7c; bytecode file offset 0xa1b650"
!AbtOleFontWrapper methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (0) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('nameChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ede0; bytecode file offset 0xa1b6b4"
!AbtOleFontWrapper methodsFor: 'recovered'!
size: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (2) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('sizeChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ee1c; bytecode file offset 0xa1b6f0"
!AbtOleFontWrapper methodsFor: 'recovered'!
bold: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (3) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('boldChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ee80; bytecode file offset 0xa1b740"
!AbtOleFontWrapper methodsFor: 'recovered'!
italic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (4) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('italicChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011eebc; bytecode file offset 0xa1b77c"
!AbtOleFontWrapper methodsFor: 'recovered'!
underline: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (5) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('underlineChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011eee4; bytecode file offset 0xa1b7a4"
!AbtOleFontWrapper methodsFor: 'recovered'!
strikethrough: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (6) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('strikethroughChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ef0c; bytecode file offset 0xa1b7cc"
!AbtOleFontWrapper methodsFor: 'recovered'!
weight: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (7) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('weightChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011ef34; bytecode file offset 0xa1b7f4"
!AbtOleFontWrapper methodsFor: 'recovered'!
charset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) propertyAt: (8) put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('charsetChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011f274; bytecode file offset 0xa1bb34"
!AbtOleFontWrapper methodsFor: 'recovered'!
fontName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    fontName := recoveredValue0.
    (self) setFontProperties.
    recoveredValue1 := recoveredArg1.
    (self) signalEvent: ('fontNameChanged') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204a6758; bytecode file offset 0xda307c"
!AbtOleFontWrapper methodsFor: 'recovered'!
setFontProperties
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtCWAdditionsApp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) abrAsString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStructNamed: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fid.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverResource.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) logFont.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverResource.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) textMetrics.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) tmDigitizedAspectY.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) tmHeight.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) tmInternalLeading.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 72.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 10000.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := OSVariantarg.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := OSCy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) Lo: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := VtCy.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) vt: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) cyVal: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := DispidFontName.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) lfFaceName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) propertyAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := DispidFontSize.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) propertyAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := DispidFontItalic.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmItalic.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) == (recoveredStack4).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) propertyAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := DispidFontCharset.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmCharSet.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) propertyAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := DispidFontWeight.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) tmWeight.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) propertyAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

