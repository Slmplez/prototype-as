"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a3c4; bytecode file offset 0x908be4"
!AbtBorder methodsFor: 'recovered'!
currentDisplayRect
    | recoveredValue0 |
    recoveredValue0 := (self) rectangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019f1c; bytecode file offset 0x92209c"
!AbtBorder methodsFor: 'recovered'!
backSlashPattern3x1
    ^#[238 221 187 119 238 221 187 119]
! !

"ASDBase.ic method 0x200220dc; bytecode file offset 0x92209c"
!AbtBorder methodsFor: 'recovered'!
solidPattern
    ^#[255 255 255 255 255 255 255 255]
! !

"ASDBase.ic method 0x20025bdc; bytecode file offset 0x923928"
!AbtBorder methodsFor: 'recovered'!
invisiblePattern
    ^#[128 64 32 16 8 4 2 1]
! !

"ASDBase.ic method 0x20026b30; bytecode file offset 0x923928"
!AbtBorder methodsFor: 'recovered'!
crisscrossPattern
    ^#[170 85 170 85 170 85 170 85]
! !

"ASDBase.ic method 0x20063314; bytecode file offset 0x95fbd0"
!AbtBorder methodsFor: 'recovered'!
drawRectangle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rectangle.
    recoveredValue1 := (recoveredValue0) insetBy: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ba60; bytecode file offset 0x96873c"
!AbtBorder methodsFor: 'recovered'!
clipRectangle
    | recoveredValue0 |
    recoveredValue0 := clipRectangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf7c; bytecode file offset 0x9692b0"
!AbtBorder methodsFor: 'recovered'!
outline
    | recoveredValue0 |
    recoveredValue0 := outline.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d100; bytecode file offset 0x969c04"
!AbtBorder methodsFor: 'recovered'!
primary
    | recoveredValue0 |
    recoveredValue0 := primary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d4dc; bytecode file offset 0x96a390"
!AbtBorder methodsFor: 'recovered'!
rectangle
    | recoveredValue0 |
    recoveredValue0 := rectangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ddb0; bytecode file offset 0x96a9dc"
!AbtBorder methodsFor: 'recovered'!
visibleRegion
    | recoveredValue0 |
    recoveredValue0 := visibleRegion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077b94; bytecode file offset 0x9757c8"
!AbtBorder methodsFor: 'recovered'!
isFullyVisible
    ^true
! !

"ASDBase.ic method 0x200c2748; bytecode file offset 0x9bf474"
!AbtBorder methodsFor: 'recovered'!
clipRectangle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    clipRectangle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4388; bytecode file offset 0x9c11bc"
!AbtBorder methodsFor: 'recovered'!
visibleRegion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleRegion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5a90; bytecode file offset 0x9e235c"
!AbtBorder methodsFor: 'recovered'!
foregroundColorPixelValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := (recoveredValue1) getPalette.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) black.
    recoveredValue5 := (recoveredValue2) nearestPixelValue: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010c2a0; bytecode file offset 0xa08b5c"
!AbtBorder methodsFor: 'recovered'!
initialize
    super initialize.
    outline := true.
    primary := true.
    ^self
! !

"ASDBase.ic method 0x201442f0; bytecode file offset 0xa40bac"
!AbtBorder methodsFor: 'recovered'!
outline: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) outline.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            outline := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) update.
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

"ASDBase.ic method 0x20161e40; bytecode file offset 0xa5e710"
!AbtBorder methodsFor: 'recovered'!
invisibleForegroundColorPixelValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := (recoveredValue1) getPalette.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) red: (32896) green: (32896) blue: (32896).
    recoveredValue5 := (recoveredValue2) nearestPixelValue: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20165988; bytecode file offset 0xa62244"
!AbtBorder methodsFor: 'recovered'!
rectangle: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) rectangle.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            rectangle := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201699a0; bytecode file offset 0xa66260"
!AbtBorder methodsFor: 'recovered'!
refresh: recoveredArg1 drawable: recoveredArg2 gc: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) clipRectangle: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super refresh: (recoveredValue1) drawable: (recoveredValue2) gc: (recoveredValue3).
    (self) clipRectangle: (nil).
    ^self
! !

"ASDBase.ic method 0x201a596c; bytecode file offset 0xaa222c"
!AbtBorder methodsFor: 'recovered'!
primary: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primary.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            primary := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) outline.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac0b8; bytecode file offset 0xaa897c"
!AbtBorder methodsFor: 'recovered'!
containsPoint: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super containsPoint: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawRectangle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) insetBy: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282bd4; bytecode file offset 0xb7f49c"
!AbtBorder methodsFor: 'recovered'!
stipplePattern
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outline.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) primary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) solidPattern.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) backSlashPattern3x1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) primary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) crisscrossPattern.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) crisscrossPattern.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20374058; bytecode file offset 0xc7095c"
!AbtBorder methodsFor: 'recovered'!
primitiveDrawInvisibleBorderOn: recoveredArg1 gc: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := (self) drawRectangle.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := CgWindow.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := (self) invisiblePattern.
    recoveredValue4 := (recoveredValue2) createBitmapFromData: (recoveredValue3) width: (8) height: (8).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) invisibleForegroundColorPixelValue.
    (recoveredValue6) setForeground: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := LineSolid.
    recoveredValue10 := CapButt.
    recoveredValue11 := JoinMiter.
    (recoveredValue8) setLineAttributes: (0) lineStyle: (recoveredValue9) capStyle: (recoveredValue10) joinStyle: (recoveredValue11).
    recoveredValue12 := recoveredValue5.
    recoveredValue13 := FillStippled.
    (recoveredValue12) setFillStyle: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    (recoveredValue5) setStipple: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue17) left.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := (recoveredValue19) top.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) width.
    recoveredValue23 := (recoveredValue22) + (-1).
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue24) height.
    recoveredValue26 := (recoveredValue25) + (-1).
    (recoveredValue15) drawRectangle: (recoveredValue16) x: (recoveredValue18) y: (recoveredValue20) width: (recoveredValue23) height: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    (recoveredValue27) freePixmap.
    ^self
! !

"ASDBase.ic method 0x2043b838; bytecode file offset 0xd38120"
!AbtBorder methodsFor: 'recovered'!
parentRefresh: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) origin.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) corner.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := (recoveredValue1) corner: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := parent.
    recoveredValue7 := Rectangle.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) topLeft.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) topRight.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) topRight.
    recoveredValue15 := (recoveredValue14) y.
    recoveredValue16 := (recoveredValue15) + (1).
    recoveredValue17 := (recoveredValue12) @ (recoveredValue16).
    recoveredValue18 := (recoveredValue7) origin: (recoveredValue9) corner: (recoveredValue17).
    (recoveredValue6) refresh: (recoveredValue18).
    recoveredValue19 := parent.
    recoveredValue20 := Rectangle.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue21) bottomLeft.
    recoveredValue23 := (recoveredValue22) x.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue24) bottomLeft.
    recoveredValue26 := (recoveredValue25) y.
    recoveredValue27 := (recoveredValue26) + (-1).
    recoveredValue28 := (recoveredValue23) @ (recoveredValue27).
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (recoveredValue29) bottomRight.
    recoveredValue31 := (recoveredValue20) origin: (recoveredValue28) corner: (recoveredValue30).
    (recoveredValue19) refresh: (recoveredValue31).
    recoveredValue32 := parent.
    recoveredValue33 := Rectangle.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue34) topLeft.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue36) bottomLeft.
    recoveredValue38 := (recoveredValue37) x.
    recoveredValue39 := (recoveredValue38) + (1).
    recoveredValue40 := recoveredLocal1.
    recoveredValue41 := (recoveredValue40) bottomLeft.
    recoveredValue42 := (recoveredValue41) y.
    recoveredValue43 := (recoveredValue39) @ (recoveredValue42).
    recoveredValue44 := (recoveredValue33) origin: (recoveredValue35) corner: (recoveredValue43).
    (recoveredValue32) refresh: (recoveredValue44).
    recoveredValue45 := parent.
    recoveredValue46 := Rectangle.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := (recoveredValue47) topRight.
    recoveredValue49 := (recoveredValue48) x.
    recoveredValue50 := (recoveredValue49) + (-1).
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue51) topRight.
    recoveredValue53 := (recoveredValue52) y.
    recoveredValue54 := (recoveredValue50) @ (recoveredValue53).
    recoveredValue55 := recoveredLocal1.
    recoveredValue56 := (recoveredValue55) bottomRight.
    recoveredValue57 := (recoveredValue46) origin: (recoveredValue54) corner: (recoveredValue56).
    (recoveredValue45) refresh: (recoveredValue57).
    ^self
! !

"ASDBase.ic method 0x2049d670; bytecode file offset 0xd99fa4"
!AbtBorder methodsFor: 'recovered'!
primitiveDrawOn: recoveredArg1 gc: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawRectangle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFullyVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) primitiveDrawInvisibleBorderOn: (recoveredStack1) gc: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CgWindow.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) stipplePattern.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBitmapFromData: (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) foregroundColorPixelValue.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setForeground: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := LineSolid.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := CapButt.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := JoinMiter.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) setLineAttributes: (recoveredStack2) lineStyle: (recoveredStack3) capStyle: (recoveredStack4) joinStyle: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := FillStippled.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) setFillStyle: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setStipple: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleRegion.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) setRegion: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := (recoveredStack5) height.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) drawRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := FillSolid.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) setFillStyle: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 131] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) clipRectangle.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := None.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) setClipMask: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) clipRectangle.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := Unsorted.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) setClipRectangles: (recoveredStack1) clipYOrigin: (recoveredStack2) rectangles: (recoveredStack3) ordering: (recoveredStack4).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) freePixmap.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

