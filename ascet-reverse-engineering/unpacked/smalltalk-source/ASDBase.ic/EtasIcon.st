"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006dd20; bytecode file offset 0x96a9dc"
!EtasIcon methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac3f8; bytecode file offset 0x9a8cbc"
!EtasIcon methodsFor: 'recovered'!
tobTBasDisabledImage: recoveredArg1 highlightColor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgIcon.
    recoveredValue1 := (self) getGrayedIcon.
    recoveredValue2 := (recoveredValue1) handle.
    recoveredValue3 := (recoveredValue0) fromOSIcon: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c4868; bytecode file offset 0x9c11bc"
!EtasIcon methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011dce0; bytecode file offset 0xa1a5a8"
!EtasIcon methodsFor: 'recovered'!
scaledTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasIcon.
    recoveredValue1 := (self) shapeImage.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) scaledTo: (recoveredValue2).
    recoveredValue4 := (self) maskImage.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) scaledTo: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) fromImage: (recoveredValue3) maskImage: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20137940; bytecode file offset 0xa34214"
!EtasIcon methodsFor: 'recovered'!
getShapedIcon
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconShaped: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137954; bytecode file offset 0xa34214"
!EtasIcon methodsFor: 'recovered'!
getGrayedIcon
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconGrayed: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ac74; bytecode file offset 0xa57548"
!EtasIcon methodsFor: 'recovered'!
getColoredIcon: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconColored: (recoveredStack1) color: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015ac88; bytecode file offset 0xa57548"
!EtasIcon methodsFor: 'recovered'!
getOverlayedIconWith: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconOverlayed: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041fd18; bytecode file offset 0xd1c624"
!EtasIcon methodsFor: 'recovered'!
getPrintableImage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) osGetData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootWindow.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := CgScreen.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultDepth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPixmap: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPalette.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) selectedPalette: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultGC.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) whitePixel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) setBackground: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) whitePixel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := (recoveredStack5) height.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) drawIcon: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) icon: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) osGetDeviceIndependentImage: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) freePixmap.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061144c; bytecode file offset 0xf0ddd4"
!EtasIcon methodsFor: 'recovered'!
osGetData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 24.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CgServer.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hdcMem.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := CgServer.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceContext.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCompatibleBitmap: (recoveredStack1) nHeight: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectObject: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := Blackness.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) patBlt: (recoveredStack1) nTopRect: (recoveredStack2) nwidth: (recoveredStack3) nheight: (recoveredStack4) fdwRop: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := Whiteness.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) patBlt: (recoveredStack1) nTopRect: (recoveredStack2) nwidth: (recoveredStack3) nheight: (recoveredStack4) fdwRop: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) handle.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := (recoveredStack5) height.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack8 := DiNormal.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) drawIconEx: (recoveredStack1) yTop: (recoveredStack2) hIcon: (recoveredStack3) cxWidth: (recoveredStack4) cyWidth: (recoveredStack5) istepIfAniCur: (recoveredStack6) hbrFlickerFreeDraw: (recoveredStack7) diFlags: (recoveredStack8).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) handle.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := (recoveredStack5) height.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack8 := DiNormal.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) drawIconEx: (recoveredStack1) yTop: (recoveredStack2) hIcon: (recoveredStack3) cxWidth: (recoveredStack4) cyWidth: (recoveredStack5) istepIfAniCur: (recoveredStack6) hbrFlickerFreeDraw: (recoveredStack7) diFlags: (recoveredStack8).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := OSBitmapinfo.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) newVariable: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := OSBitmapinfoheader.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := OSBitmapinfoheader.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) biSize: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) biWidth: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) biHeight: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack2) biPlanes: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) biBitCount: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) bmiHeader: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 31.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack6 := DibRgbColors.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) getDIBits: (recoveredStack1) nStartScan: (recoveredStack2) cScanLines: (recoveredStack3) lpvBits: (recoveredStack4) lpbmi: (recoveredStack5) fuColorUse: (recoveredStack6).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) flipScanlines: (recoveredStack1) height: (recoveredStack2) stride: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := recoveredLocal12.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack6 := 0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack7 := recoveredLocal13.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack8 := Srcinvert.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) bitBlt: (recoveredStack1) nYDest: (recoveredStack2) nWidth: (recoveredStack3) nHeight: (recoveredStack4) hdcSrc: (recoveredStack5) nXSrc: (recoveredStack6) nYSrc: (recoveredStack7) dwRop: (recoveredStack8).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := OSBitmapinfo.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) newVariable: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := OSBitmapinfoheader.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := OSBitmapinfoheader.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack2) biSize: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack2) biWidth: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack2) biHeight: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) biPlanes: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) biBitCount: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) bmiHeader: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 31.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack6 := DibRgbColors.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) getDIBits: (recoveredStack1) nStartScan: (recoveredStack2) cScanLines: (recoveredStack3) lpvBits: (recoveredStack4) lpbmi: (recoveredStack5) fuColorUse: (recoveredStack6).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) flipScanlines: (recoveredStack1) height: (recoveredStack2) stride: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredPC := 348.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := 255.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitXor: (recoveredStack4).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 332] ifFalse: [recoveredLocal1 := nil. recoveredPC := 362]] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) selectObject: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack0) deleteObject.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := OSRgbquad.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := OSBitmapinfo.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedSize.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := OSRgbquad.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) structAt: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack4 := (recoveredStack4) rgbRed.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack5 := 257.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack5 := (recoveredStack5) rgbGreen.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack6 := 257.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack6 := (recoveredStack6) rgbBlue.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack7 := 257.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack6 := (recoveredStack6) * (recoveredStack7).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := (recoveredStack3) red: (recoveredStack4) green: (recoveredStack5) blue: (recoveredStack6).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 390] ifFalse: [recoveredLocal1 := nil. recoveredPC := 456]] ifFalse: [recoveredPC := 446].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) depth: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := CgIndexedPalette.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := (recoveredStack2) colors: (recoveredStack3).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) palette: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack1) shapePad: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) shapeData: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) maskPad: (recoveredStack2).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) maskData: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

