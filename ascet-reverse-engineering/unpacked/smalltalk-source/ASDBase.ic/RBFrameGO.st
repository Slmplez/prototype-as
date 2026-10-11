"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030324; bytecode file offset 0x934580"
!RBFrameGO methodsFor: 'recovered'!
extent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) extent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200424e8; bytecode file offset 0x93edc4"
!RBFrameGO methodsFor: 'recovered'!
getAreaColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := areaStyle.
    recoveredValue1 := (recoveredValue0) getColor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fefc; bytecode file offset 0x96c850"
!RBFrameGO methodsFor: 'recovered'!
drawLeftBeam
    | recoveredValue0 |
    recoveredValue0 := drawLeftBeam.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070130; bytecode file offset 0x96cb7c"
!RBFrameGO methodsFor: 'recovered'!
drawRightTriangle
    | recoveredValue0 |
    recoveredValue0 := drawRightTriangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007054c; bytecode file offset 0x96ce40"
!RBFrameGO methodsFor: 'recovered'!
fillRightTriangle
    | recoveredValue0 |
    recoveredValue0 := fillRightTriangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082948; bytecode file offset 0x97f218"
!RBFrameGO methodsFor: 'recovered'!
forgetBuildingPoint: recoveredArg1
    (self) position: (nil).
    ^self
! !

"ASDBase.ic method 0x20084dbc; bytecode file offset 0x981ca4"
!RBFrameGO methodsFor: 'recovered'!
rememberBuildingPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) position: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb4d4; bytecode file offset 0x9b7da8"
!RBFrameGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) rasterPointHalf: (recoveredValue1).
    (self) size: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c61f8; bytecode file offset 0x9c2bec"
!RBFrameGO methodsFor: 'recovered'!
setSelectFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c636c; bytecode file offset 0x9c2dd0"
!RBFrameGO methodsFor: 'recovered'!
drawLeftBeam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawLeftBeam := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c65c0; bytecode file offset 0x9c3164"
!RBFrameGO methodsFor: 'recovered'!
drawRightTriangle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawRightTriangle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b3c; bytecode file offset 0x9c3470"
!RBFrameGO methodsFor: 'recovered'!
fillRightTriangle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fillRightTriangle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20132080; bytecode file offset 0xa2e94c"
!RBFrameGO methodsFor: 'recovered'!
fitToRasterX: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) size.
    recoveredValue2 := (recoveredValue0) rasterPointHalf: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (self) size.
    recoveredValue5 := (recoveredValue4) y.
    recoveredValue6 := (recoveredValue3) @ (recoveredValue5).
    (self) size: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2016ebf8; bytecode file offset 0xa6b4c4"
!RBFrameGO methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBRectangleGO.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) position.
    (recoveredValue2) setPosition: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := a.
    (recoveredValue4) setA: (recoveredValue5).
    recoveredValue6 := b.
    recoveredValue7 := (recoveredValue1) setB: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20173060; bytecode file offset 0xa6f928"
!RBFrameGO methodsFor: 'recovered'!
initialize
    super initialize.
    (self) drawRightTriangle: (false).
    (self) drawLeftBeam: (false).
    (self) fillRightTriangle: (false).
    ^self
! !

"ASDBase.ic method 0x201fd590; bytecode file offset 0xaf9e48"
!RBFrameGO methodsFor: 'recovered'!
isBuildingFinished
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20242e48; bytecode file offset 0xb3f718"
!RBFrameGO methodsFor: 'recovered'!
scopeGOPosition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) center.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawRightTriangle.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLeftBeam.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) right: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025dfec; bytecode file offset 0xb5a8bc"
!RBFrameGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) position.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) a.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) b.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Rectangle.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) - (recoveredValue6).
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (recoveredValue8) x.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue9) + (recoveredValue10).
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue13) - (recoveredValue14).
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := (recoveredValue16) y.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue17) + (recoveredValue18).
    recoveredValue20 := (recoveredValue3) left: (recoveredValue7) right: (recoveredValue11) top: (recoveredValue15) bottom: (recoveredValue19).
    ^recoveredValue20
! !

"ASDBase.ic method 0x205e5400; bytecode file offset 0xee1d54"
!RBFrameGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lineStyle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getColor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) diagramStyleProvider.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) styleProviderState.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) styleProviderState.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) getColorFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := GCFunction.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := GCLineWidth.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := GCLineStyle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := CgGCValues.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := mixingRule.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack3) function: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := (recoveredStack4) pixelNearestToColor: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack3) foreground: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := lineStyle.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) getWidth.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack3) lineWidth: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := lineStyle.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) getType.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack3) lineStyle: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) changeGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawRightTriangle.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := areaStyle.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) drawRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := areaStyle.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) getColor.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) drawRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawRightTriangle.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillRightTriangle.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 319.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := areaStyle.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := (recoveredStack2) getColor.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := Convex.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := CoordModeOrigin.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) fillPolygon: (recoveredStack1) points: (recoveredStack2) shape: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) nearestPixelValue: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := CoordModeOrigin.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) drawLines: (recoveredStack1) points: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLeftBeam.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 366] ifFalse: [recoveredPC := 383].
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

