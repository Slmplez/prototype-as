"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ff84; bytecode file offset 0x934580"
!AbtTextBox methodsFor: 'recovered'!
fontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontList.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006b4d0; bytecode file offset 0x96873c"
!AbtTextBox methodsFor: 'recovered'!
foregroundColor
    | recoveredValue0 |
    recoveredValue0 := foregroundColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d0a8; bytecode file offset 0x969c04"
!AbtTextBox methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 |
    recoveredValue0 := backgroundColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f290; bytecode file offset 0x96bc1c"
!AbtTextBox methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f760; bytecode file offset 0x96c1f4"
!AbtTextBox methodsFor: 'recovered'!
boxExtent
    | recoveredValue0 |
    recoveredValue0 := boxExtent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fa48; bytecode file offset 0x96c42c"
!AbtTextBox methodsFor: 'recovered'!
center
    | recoveredValue0 |
    recoveredValue0 := center.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009b7bc; bytecode file offset 0x998128"
!AbtTextBox methodsFor: 'recovered'!
fontList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwFontList.
    recoveredValue1 := CgFontStruct.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (recoveredValue0) fontStruct: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a8afc; bytecode file offset 0x9a53b0"
!AbtTextBox methodsFor: 'recovered'!
foregroundColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    foregroundColor := recoveredValue0.
    foregroundColorPixelValue := nil.
    ^self
! !

"ASDBase.ic method 0x200a8b9c; bytecode file offset 0x9a5450"
!AbtTextBox methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    backgroundColor := recoveredValue0.
    backgroundColorPixelValue := nil.
    ^self
! !

"ASDBase.ic method 0x200e8b50; bytecode file offset 0x9e540c"
!AbtTextBox methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    (self) recomputeExtents.
    (self) update.
    ^self
! !

"ASDBase.ic method 0x2010b9e0; bytecode file offset 0xa085f0"
!AbtTextBox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) black.
    (self) foregroundColor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010d930; bytecode file offset 0xa0a1e8"
!AbtTextBox methodsFor: 'recovered'!
center: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            center := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := textExtent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) update.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016f810; bytecode file offset 0xa6c0d4"
!AbtTextBox methodsFor: 'recovered'!
foregroundColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := foregroundColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) foregroundColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            foregroundColorPixelValue := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := foregroundColorPixelValue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016f910; bytecode file offset 0xa6c1d4"
!AbtTextBox methodsFor: 'recovered'!
backgroundColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := backgroundColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) backgroundColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            backgroundColorPixelValue := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := backgroundColorPixelValue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018e018; bytecode file offset 0xa8a8e0"
!AbtTextBox methodsFor: 'recovered'!
controlDkShadowColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controlDkShadowColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            controlDkShadowColorPixelValue := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := controlDkShadowColorPixelValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018e128; bytecode file offset 0xa8a9f0"
!AbtTextBox methodsFor: 'recovered'!
controlLtHighlightColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controlLtHighlightColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            controlLtHighlightColorPixelValue := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := controlLtHighlightColorPixelValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020a554; bytecode file offset 0xb06e20"
!AbtTextBox methodsFor: 'recovered'!
controlShadowColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controlShadowColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 32896.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 32896.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := 32896.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) red: (recoveredStack3) green: (recoveredStack4) blue: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            controlShadowColorPixelValue := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := controlShadowColorPixelValue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020a594; bytecode file offset 0xb06e60"
!AbtTextBox methodsFor: 'recovered'!
controlHighlightColorPixelValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controlHighlightColorPixelValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 49344.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 49344.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := 49344.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) blackwhitered: (recoveredStack3) green: (recoveredStack4) blue: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            controlHighlightColorPixelValue := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := controlHighlightColorPixelValue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025eec8; bytecode file offset 0xb5b784"
!AbtTextBox methodsFor: 'recovered'!
currentDisplayRect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := center.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := boxExtent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := center.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := boxExtent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := center.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := boxExtent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) corner: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20330bd0; bytecode file offset 0xc2d4a4"
!AbtTextBox methodsFor: 'recovered'!
recomputeExtents
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            textExtent := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := textExtent.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := textExtent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            boxExtent := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a772c; bytecode file offset 0xda4054"
!AbtTextBox methodsFor: 'recovered'!
primitiveDrawOn: recoveredArg1 gc: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 |
    recoveredValue0 := (self) currentDisplayRect.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) backgroundColorPixelValue.
    (recoveredValue1) setForeground: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) left.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) top.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) width.
    recoveredValue11 := (recoveredValue10) + (-1).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) height.
    recoveredValue14 := (recoveredValue13) + (-1).
    (recoveredValue3) fillRectangle: (recoveredValue4) x: (recoveredValue6) y: (recoveredValue8) width: (recoveredValue11) height: (recoveredValue14).
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) controlShadowColorPixelValue.
    (recoveredValue16) setForeground: (recoveredValue17).
    recoveredValue18 := GCLineWidth.
    recoveredValue19 := CgGCValues.
    recoveredValue20 := (recoveredValue19) new.
    recoveredValue21 := (recoveredValue20) lineWidth: (1).
    (recoveredValue15) changeGC: (recoveredValue18) values: (recoveredValue21).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredArg2.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) left.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (recoveredValue26) top.
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := (recoveredValue28) width.
    recoveredValue30 := (recoveredValue29) + (-1).
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) height.
    recoveredValue33 := (recoveredValue32) + (-1).
    (recoveredValue22) drawRectangle: (recoveredValue23) x: (recoveredValue25) y: (recoveredValue27) width: (recoveredValue30) height: (recoveredValue33).
    recoveredValue34 := recoveredArg2.
    recoveredValue35 := recoveredValue34.
    recoveredValue36 := (self) fontStruct.
    recoveredValue37 := (recoveredValue36) font.
    (recoveredValue35) setFont: (recoveredValue37).
    recoveredValue38 := (self) foregroundColorPixelValue.
    (recoveredValue34) setForeground: (recoveredValue38).
    recoveredValue39 := recoveredArg1.
    recoveredValue40 := recoveredArg2.
    recoveredValue41 := recoveredLocal1.
    recoveredValue42 := (recoveredValue41) left.
    recoveredValue43 := recoveredLocal1.
    recoveredValue44 := (recoveredValue43) width.
    recoveredValue45 := textExtent.
    recoveredValue46 := (recoveredValue45) x.
    recoveredValue47 := (recoveredValue44) - (recoveredValue46).
    recoveredValue48 := (recoveredValue47) // (2).
    recoveredValue49 := (recoveredValue42) + (recoveredValue48).
    recoveredValue50 := recoveredLocal1.
    recoveredValue51 := (recoveredValue50) top.
    recoveredValue52 := (self) fontStruct.
    recoveredValue53 := (recoveredValue52) ascent.
    recoveredValue54 := (recoveredValue51) + (recoveredValue53).
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue55) height.
    recoveredValue57 := textExtent.
    recoveredValue58 := (recoveredValue57) y.
    recoveredValue59 := (recoveredValue56) - (recoveredValue58).
    recoveredValue60 := (recoveredValue59) // (2).
    recoveredValue61 := (recoveredValue54) + (recoveredValue60).
    recoveredValue62 := Array.
    recoveredValue63 := CgTextItem.
    recoveredValue64 := (recoveredValue63) new.
    recoveredValue65 := recoveredValue64.
    recoveredValue66 := (self) text.
    (recoveredValue65) chars: (recoveredValue66).
    recoveredValue67 := (recoveredValue64) delta: (0).
    recoveredValue68 := (recoveredValue62) with: (recoveredValue67).
    (recoveredValue39) drawText: (recoveredValue40) x: (recoveredValue49) y: (recoveredValue61) items: (recoveredValue68).
    ^self
! !

