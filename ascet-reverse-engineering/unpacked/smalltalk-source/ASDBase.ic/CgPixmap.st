"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001810; bytecode file offset 0x8ffcfc"
!CgPixmap methodsFor: 'recovered'!
asPixmap
    ^self
! !

"ASDBase.ic method 0x200054d0; bytecode file offset 0x90206c"
!CgPixmap methodsFor: 'recovered'!
osWidget: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005bd8; bytecode file offset 0x902744"
!CgPixmap methodsFor: 'recovered'!
tobTBasDisabledImage: recoveredArg1 highlightColor: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2004dea4; bytecode file offset 0x94d048"
!CgPixmap methodsFor: 'recovered'!
freeIcon
    (self) freePixmap.
    ^self
! !

"ASDBase.ic method 0x2004f3a4; bytecode file offset 0x94d048"
!CgPixmap methodsFor: 'recovered'!
tobTBfree
    (self) freePixmap.
    ^self
! !

"ASDBase.ic method 0x200733d8; bytecode file offset 0x970b34"
!CgPixmap methodsFor: 'recovered'!
recreateFromModule
    ^nil
! !

"ASDBase.ic method 0x200733f8; bytecode file offset 0x970b34"
!CgPixmap methodsFor: 'recovered'!
recreateFromFile
    ^nil
! !

"ASDBase.ic method 0x200740f8; bytecode file offset 0x970b34"
!CgPixmap methodsFor: 'recovered'!
recreateFromSystemId
    ^nil
! !

"ASDBase.ic method 0x20075bf4; bytecode file offset 0x9757c8"
!CgPixmap methodsFor: 'recovered'!
wbIsPixmap
    ^true
! !

"ASDBase.ic method 0x2007f044; bytecode file offset 0x97c330"
!CgPixmap methodsFor: 'recovered'!
autoRelease
    ^false
! !

"ASDBase.ic method 0x200b29d0; bytecode file offset 0x9af4bc"
!CgPixmap methodsFor: 'recovered'!
shadedDark
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) patternDark.
    recoveredValue2 := (CgRGBColor) red: (0) green: (0) blue: (0).
    recoveredValue3 := (self) shadedByPattern: (recoveredValue1) color: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b2ac0; bytecode file offset 0x9af4bc"
!CgPixmap methodsFor: 'recovered'!
shadedLight
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) patternLight.
    recoveredValue2 := (CgRGBColor) red: (49344) green: (49344) blue: (49344).
    recoveredValue3 := (self) shadedByPattern: (recoveredValue1) color: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c852c; bytecode file offset 0x9c4de8"
!CgPixmap methodsFor: 'recovered'!
wbSaveToBMP: recoveredArg1 depth: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CgWinBMPFileFormat.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) wbSaveToFile: (recoveredValue0) usingFormat: (recoveredValue1) depth: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d8770; bytecode file offset 0x9d503c"
!CgPixmap methodsFor: 'recovered'!
wbSaveToJPEG: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CgJPEGFileFormat.
    recoveredValue2 := (self) wbSaveToFile: (recoveredValue0) usingFormat: (recoveredValue1) depth: (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d8780; bytecode file offset 0x9d503c"
!CgPixmap methodsFor: 'recovered'!
wbSaveToGIF: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := CgGIFFileFormat.
    recoveredValue2 := (self) wbSaveToFile: (recoveredValue0) usingFormat: (recoveredValue1) depth: (8).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d8bf8; bytecode file offset 0x9d54b4"
!CgPixmap methodsFor: 'recovered'!
wbSplitUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) height.
    recoveredValue2 := (recoveredValue1) < (27).
    recoveredValue3 := (self) wbSplitUsing: (recoveredValue0) shaded: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20140bbc; bytecode file offset 0xa3d480"
!CgPixmap methodsFor: 'recovered'!
release
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super release.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) freePixmap.
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

"ASDBase.ic method 0x202b1fe4; bytecode file offset 0xbae8f8"
!CgPixmap methodsFor: 'recovered'!
copyToClipboard
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := CgWindow.
    recoveredValue3 := (recoveredValue2) default.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := ReturnParameter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) clipboardStartCopy: (recoveredValue7) clipLabel: ('Pixmap Copy') itemIdReturn: (recoveredValue8).
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) value.
    (recoveredValue9) clipboardCopy: (recoveredValue10) itemId: (recoveredValue12) formatName: ('PIXMAP') buffer: (self) privateId: (0).
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) value.
    (recoveredValue13) clipboardEndCopy: (recoveredValue14) itemId: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x2033646c; bytecode file offset 0xc32d4c"
!CgPixmap methodsFor: 'recovered'!
wbShadedUsing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) rootWindow.
    recoveredValue3 := (self) class.
    recoveredValue4 := (self) width.
    recoveredValue5 := (self) height.
    recoveredValue6 := CgWindow.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) depth.
    recoveredValue9 := (recoveredValue2) createPixmap: (recoveredValue3) width: (recoveredValue4) height: (recoveredValue5) depth: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) width.
    recoveredValue13 := (self) height.
    (self) copyArea: (recoveredValue10) gc: (recoveredValue11) srcX: (0) srcY: (0) width: (recoveredValue12) height: (recoveredValue13) destX: (0) destY: (0).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (self) width.
    recoveredValue17 := (self) height.
    (recoveredValue14) fillRectangle: (recoveredValue15) x: (0) y: (0) width: (recoveredValue16) height: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

"ASDBase.ic method 0x2035e490; bytecode file offset 0xc5ad64"
!CgPixmap methodsFor: 'recovered'!
wbCopy: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createGC: (0) values: (nil).
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) width.
    recoveredBlock12Value4 := recoveredArg1.
    recoveredBlock12Value5 := (recoveredBlock12Value4) height.
    recoveredBlock12Value6 := recoveredArg2.
    recoveredBlock12Value7 := (recoveredBlock12Value6) x.
    recoveredBlock12Value8 := recoveredArg2.
    recoveredBlock12Value9 := (recoveredBlock12Value8) y.
    recoveredBlock12Value10 := (recoveredBlock12Value0) copyArea: (self) gc: (recoveredBlock12Value1) srcX: (0) srcY: (0) width: (recoveredBlock12Value3) height: (recoveredBlock12Value5) destX: (recoveredBlock12Value7) destY: (recoveredBlock12Value9).
    recoveredBlock12Value10
].
    recoveredValue2 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) freeGC.
    recoveredBlock50Value1
].
    (recoveredValue1) ensure: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203a6f28; bytecode file offset 0xca381c"
!CgPixmap methodsFor: 'recovered'!
wbSaveToFile: recoveredArg1 usingFormat: recoveredArg2 depth: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := OTRUNC.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := OWRONLY.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) depth: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) rectangle.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDeviceIndependentImage: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) unload: (recoveredStack1) intoFileHandle: (recoveredStack2) atOffset: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) depth: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cda68; bytecode file offset 0xcca350"
!CgPixmap methodsFor: 'recovered'!
wbCopy
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) rootWindow.
    recoveredValue3 := (self) class.
    recoveredValue4 := (self) width.
    recoveredValue5 := (self) height.
    recoveredValue6 := CgWindow.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) depth.
    recoveredValue9 := (recoveredValue2) createPixmap: (recoveredValue3) width: (recoveredValue4) height: (recoveredValue5) depth: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := (self) createGC: (0) values: (nil).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := (self) width.
    recoveredBlock35Value3 := (self) height.
    recoveredBlock35Value4 := (self) copyArea: (recoveredBlock35Value0) gc: (recoveredBlock35Value1) srcX: (0) srcY: (0) width: (recoveredBlock35Value2) height: (recoveredBlock35Value3) destX: (0) destY: (0).
    recoveredBlock35Value4
].
    recoveredValue12 := [
    | recoveredBlock66Value0 recoveredBlock66Value1 |
    recoveredBlock66Value0 := recoveredLocal1.
    recoveredBlock66Value1 := (recoveredBlock66Value0) freeGC.
    recoveredBlock66Value1
].
    (recoveredValue11) ensure: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x203d837c; bytecode file offset 0xcd4c60"
!CgPixmap methodsFor: 'recovered'!
left
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) rootWindow.
    recoveredValue3 := (self) width.
    recoveredValue4 := (recoveredValue3) // (2).
    recoveredValue5 := (self) height.
    recoveredValue6 := CgWindow.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) depth.
    recoveredValue9 := (recoveredValue2) createPixmap: (recoveredValue4) height: (recoveredValue5) depth: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := (self) createGC: (0) values: (nil).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := (self) width.
    recoveredBlock35Value3 := (recoveredBlock35Value2) // (2).
    recoveredBlock35Value4 := (self) height.
    recoveredBlock35Value5 := (self) copyArea: (recoveredBlock35Value0) gc: (recoveredBlock35Value1) srcX: (0) srcY: (0) width: (recoveredBlock35Value3) height: (recoveredBlock35Value4) destX: (0) destY: (0).
    recoveredBlock35Value5
].
    recoveredValue12 := [
    | recoveredBlock68Value0 recoveredBlock68Value1 |
    recoveredBlock68Value0 := recoveredLocal1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) freeGC.
    recoveredBlock68Value1
].
    (recoveredValue11) ensure: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x203ec578; bytecode file offset 0xce8e5c"
!CgPixmap methodsFor: 'recovered'!
right
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) rootWindow.
    recoveredValue3 := (self) width.
    recoveredValue4 := (recoveredValue3) // (2).
    recoveredValue5 := (self) height.
    recoveredValue6 := CgWindow.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) depth.
    recoveredValue9 := (recoveredValue2) createPixmap: (recoveredValue4) height: (recoveredValue5) depth: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := (self) createGC: (0) values: (nil).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredLocal1.
    recoveredBlock35Value2 := (self) width.
    recoveredBlock35Value3 := (recoveredBlock35Value2) // (2).
    recoveredBlock35Value4 := (self) width.
    recoveredBlock35Value5 := (recoveredBlock35Value4) // (2).
    recoveredBlock35Value6 := (self) height.
    recoveredBlock35Value7 := (self) copyArea: (recoveredBlock35Value0) gc: (recoveredBlock35Value1) srcX: (recoveredBlock35Value3) srcY: (0) width: (recoveredBlock35Value5) height: (recoveredBlock35Value6) destX: (0) destY: (0).
    recoveredBlock35Value7
].
    recoveredValue12 := [
    | recoveredBlock71Value0 recoveredBlock71Value1 |
    recoveredBlock71Value0 := recoveredLocal1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) freeGC.
    recoveredBlock71Value1
].
    (recoveredValue11) ensure: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x204536f0; bytecode file offset 0xd4fff4"
!CgPixmap methodsFor: 'recovered'!
scaledTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := (self) rectangle.
    recoveredValue1 := (self) getDeviceIndependentImage: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) scaledTo: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := CgScreen.
    recoveredValue5 := (recoveredValue4) default.
    recoveredValue6 := (recoveredValue5) rootWindow.
    recoveredValue7 := (self) class.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) x.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) y.
    recoveredValue12 := CgWindow.
    recoveredValue13 := (recoveredValue12) default.
    recoveredValue14 := (recoveredValue13) depth.
    recoveredValue15 := (recoveredValue6) createPixmap: (recoveredValue7) width: (recoveredValue9) height: (recoveredValue11) depth: (recoveredValue14).
    recoveredLocal3 := recoveredValue15.
    recoveredValue16 := (0) @ (0).
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := (recoveredValue17) extent.
    recoveredValue19 := (recoveredValue16) extent: (recoveredValue18).
    recoveredLocal2 := recoveredValue19.
    recoveredValue20 := None.
    recoveredValue21 := (self) createGC: (recoveredValue20) values: (nil).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 recoveredBlock70Value5 |
    recoveredBlock70Value0 := recoveredLocal3.
    recoveredBlock70Value1 := recoveredLocal1.
    recoveredBlock70Value2 := recoveredLocal4.
    recoveredBlock70Value3 := recoveredLocal2.
    recoveredBlock70Value4 := recoveredLocal2.
    recoveredBlock70Value5 := (recoveredBlock70Value0) putDeviceIndependentImage: (recoveredBlock70Value1) image: (recoveredBlock70Value2) srcRect: (recoveredBlock70Value3) destRect: (recoveredBlock70Value4).
    recoveredBlock70Value5
].
    recoveredValue23 := [
    | recoveredBlock95Value0 recoveredBlock95Value1 |
    recoveredBlock95Value0 := recoveredLocal1.
    recoveredBlock95Value1 := (recoveredBlock95Value0) freeGC.
    recoveredBlock95Value1
].
    (recoveredValue22) ensure: (recoveredValue23).
    recoveredValue24 := recoveredLocal3.
    ^recoveredValue24
! !

"ASDBase.ic method 0x204d7c48; bytecode file offset 0xdd4548"
!CgPixmap methodsFor: 'recovered'!
shadedByPattern: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) depth.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPixmap: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := None.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := BadAlloc.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) freePixmap.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 recoveredBlock43Value7 recoveredBlock43Value8 recoveredBlock43Value9 recoveredBlock43Value10 recoveredBlock43Value11 recoveredBlock43Value12 recoveredBlock43Value13 recoveredBlock43Value14 recoveredBlock43Value15 recoveredBlock43Value16 recoveredBlock43Value17 recoveredBlock43Value18 recoveredBlock43Value19 recoveredBlock43Value20 recoveredBlock43Value21 recoveredBlock43Value22 recoveredBlock43Value23 |
    recoveredBlock43Value0 := recoveredLocal3.
    recoveredBlock43Value1 := recoveredLocal2.
    recoveredBlock43Value2 := (self) width.
    recoveredBlock43Value3 := (self) height.
    (self) copyArea: (recoveredBlock43Value0) gc: (recoveredBlock43Value1) srcX: (0) srcY: (0) width: (recoveredBlock43Value2) height: (recoveredBlock43Value3) destX: (0) destY: (0).
    recoveredBlock43Value4 := recoveredLocal3.
    recoveredBlock43Value5 := recoveredArg1.
    recoveredBlock43Value6 := (recoveredBlock43Value4) createBitmapFromData: (recoveredBlock43Value5) width: (8) height: (8).
    recoveredLocal1 := recoveredBlock43Value6.
    recoveredBlock43Value7 := recoveredLocal2.
    recoveredBlock43Value8 := recoveredBlock43Value7.
    recoveredBlock43Value9 := recoveredLocal3.
    recoveredBlock43Value10 := (recoveredBlock43Value9) getPalette.
    recoveredBlock43Value11 := recoveredArg2.
    recoveredBlock43Value12 := (recoveredBlock43Value10) nearestPixelValue: (recoveredBlock43Value11).
    (recoveredBlock43Value8) setForeground: (recoveredBlock43Value12).
    recoveredBlock43Value13 := recoveredBlock43Value7.
    recoveredBlock43Value14 := FillStippled.
    (recoveredBlock43Value13) setFillStyle: (recoveredBlock43Value14).
    recoveredBlock43Value15 := recoveredLocal1.
    (recoveredBlock43Value7) setStipple: (recoveredBlock43Value15).
    recoveredBlock43Value16 := recoveredLocal3.
    recoveredBlock43Value17 := recoveredLocal2.
    recoveredBlock43Value18 := recoveredLocal3.
    recoveredBlock43Value19 := (recoveredBlock43Value18) width.
    recoveredBlock43Value20 := recoveredLocal3.
    recoveredBlock43Value21 := (recoveredBlock43Value20) height.
    (recoveredBlock43Value16) fillRectangle: (recoveredBlock43Value17) x: (0) y: (0) width: (recoveredBlock43Value19) height: (recoveredBlock43Value21).
    recoveredBlock43Value22 := recoveredLocal1.
    recoveredBlock43Value23 := (recoveredBlock43Value22) freePixmap.
    recoveredBlock43Value23
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock140Value0 recoveredBlock140Value1 |
    recoveredBlock140Value0 := recoveredLocal2.
    recoveredBlock140Value1 := (recoveredBlock140Value0) freeGC.
    recoveredBlock140Value1
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205022d8; bytecode file offset 0xdfebbc"
!CgPixmap methodsFor: 'recovered'!
wbSplitUsing: recoveredArg1 shaded: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgScreen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootWindow.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := CgWindow.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) depth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPixmap: (recoveredStack2) height: (recoveredStack3) depth: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := (recoveredStack5) width.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) copyArea: (recoveredStack1) gc: (recoveredStack2) srcX: (recoveredStack3) srcY: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6) destX: (recoveredStack7) destY: (recoveredStack8).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootWindow.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := CgWindow.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) depth.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPixmap: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) width.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := (recoveredStack5) width.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) copyArea: (recoveredStack1) gc: (recoveredStack2) srcX: (recoveredStack3) srcY: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6) destX: (recoveredStack7) destY: (recoveredStack8).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := CgScreen.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootWindow.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := CgWindow.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) depth.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPixmap: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := (recoveredStack5) width.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack6 := (recoveredStack6) height.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) copyArea: (recoveredStack1) gc: (recoveredStack2) srcX: (recoveredStack3) srcY: (recoveredStack4) width: (recoveredStack5) height: (recoveredStack6) destX: (recoveredStack7) destY: (recoveredStack8).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := (recoveredStack5) height.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205856f0; bytecode file offset 0xe82058"
!CgPixmap methodsFor: 'recovered'!
copyToPrinter
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allPrinterDisplayNames.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'There are no printers available.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CwPrinterPrompter.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) rectangle.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDeviceIndependentImage: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Print Pixmap'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) openDisplay: (recoveredStack1) applicationName: (recoveredStack2) applicationClass: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := CwPrinterShell.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Printer Shell'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := recoveredLocal1.
    recoveredBlock74Value2 := (recoveredBlock74Value1) jobAttributes.
    recoveredBlock74Value3 := (recoveredBlock74Value0) jobAttributes: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) appCreateShell: (recoveredStack1) applicationClass: (recoveredStack2) display: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := XmNmapCallback.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := [:recoveredBlock100Arg1 :recoveredBlock100Arg2 :recoveredBlock100Arg3 | 
    | recoveredBlock100Stack0 recoveredBlock100Stack1 recoveredBlock100Stack2 recoveredBlock100PC recoveredBlock100Step recoveredBlock100Done recoveredBlock100Result |
    recoveredBlock100Stack0 := self.
    recoveredBlock100PC := 106.
    recoveredBlock100Done := false.
    [recoveredBlock100Done not] whileTrue: [
        recoveredBlock100Step := recoveredBlock100PC.
        recoveredBlock100Step = 106 ifTrue: [
            recoveredBlock100Stack1 := recoveredLocal4.
            recoveredBlock100PC := 109.
        ].
        recoveredBlock100Step = 109 ifTrue: [
            recoveredBlock100Stack1 := (recoveredBlock100Stack1) startJob.
            recoveredBlock100PC := 111.
        ].
        recoveredBlock100Step = 111 ifTrue: [
            (recoveredBlock100Stack1) ifTrue: [recoveredBlock100PC := 114] ifFalse: [recoveredBlock100PC := 122].
        ].
        recoveredBlock100Step = 114 ifTrue: [
            recoveredBlock100Stack1 := recoveredLocal4.
            recoveredBlock100PC := 117.
        ].
        recoveredBlock100Step = 117 ifTrue: [
            recoveredBlock100Stack1 := (recoveredBlock100Stack1) startPage.
            recoveredBlock100PC := 119.
        ].
        recoveredBlock100Step = 119 ifTrue: [
            recoveredBlock100PC := 127.
        ].
        recoveredBlock100Step = 122 ifTrue: [
            recoveredBlock100Stack1 := recoveredLocal4.
            recoveredBlock100PC := 125.
        ].
        recoveredBlock100Step = 125 ifTrue: [
            recoveredBlock100Stack1 := (recoveredBlock100Stack1) destroyWidget.
            recoveredBlock100PC := 127.
        ].
        recoveredBlock100Step = 127 ifTrue: [
            recoveredBlock100Result := recoveredBlock100Stack1.
            recoveredBlock100Done := true.
        ].
    ].
    recoveredBlock100Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := [:recoveredBlock139Arg1 :recoveredBlock139Arg2 :recoveredBlock139Arg3 | 
    | recoveredBlock139Local1 recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 recoveredBlock139Value5 recoveredBlock139Value6 recoveredBlock139Value7 recoveredBlock139Value8 recoveredBlock139Value9 recoveredBlock139Value10 recoveredBlock139Value11 recoveredBlock139Value12 recoveredBlock139Value13 recoveredBlock139Value14 recoveredBlock139Value15 recoveredBlock139Value16 recoveredBlock139Value17 recoveredBlock139Value18 recoveredBlock139Value19 recoveredBlock139Value20 recoveredBlock139Value21 recoveredBlock139Value22 recoveredBlock139Value23 recoveredBlock139Value24 recoveredBlock139Value25 recoveredBlock139Value26 recoveredBlock139Value27 recoveredBlock139Value28 recoveredBlock139Value29 recoveredBlock139Value30 recoveredBlock139Value31 recoveredBlock139Value32 recoveredBlock139Value33 recoveredBlock139Value34 recoveredBlock139Value35 |
    recoveredBlock139Value0 := recoveredLocal4.
    recoveredBlock139Value1 := (recoveredBlock139Value0) width.
    recoveredBlock139Value2 := recoveredLocal6.
    recoveredBlock139Value3 := (recoveredBlock139Value2) width.
    recoveredBlock139Value4 := (recoveredBlock139Value1) / (recoveredBlock139Value3).
    recoveredBlock139Value5 := recoveredLocal4.
    recoveredBlock139Value6 := (recoveredBlock139Value5) height.
    recoveredBlock139Value7 := recoveredLocal6.
    recoveredBlock139Value8 := (recoveredBlock139Value7) height.
    recoveredBlock139Value9 := (recoveredBlock139Value6) / (recoveredBlock139Value8).
    recoveredBlock139Value10 := (recoveredBlock139Value4) min: (recoveredBlock139Value9).
    recoveredLocal3 := recoveredBlock139Value10.
    recoveredBlock139Value11 := recoveredLocal4.
    recoveredBlock139Value12 := (recoveredBlock139Value11) window.
    recoveredBlock139Value13 := (recoveredBlock139Value12) createGC: (0) values: (nil).
    recoveredBlock139Local1 := recoveredBlock139Value13.
    recoveredBlock139Value14 := recoveredLocal4.
    recoveredBlock139Value15 := (recoveredBlock139Value14) window.
    recoveredBlock139Value16 := recoveredBlock139Local1.
    recoveredBlock139Value17 := recoveredLocal6.
    recoveredBlock139Value18 := (0) @ (0).
    recoveredBlock139Value19 := recoveredLocal6.
    recoveredBlock139Value20 := (recoveredBlock139Value19) extent.
    recoveredBlock139Value21 := (recoveredBlock139Value18) extent: (recoveredBlock139Value20).
    recoveredBlock139Value22 := (0) @ (0).
    recoveredBlock139Value23 := recoveredLocal6.
    recoveredBlock139Value24 := (recoveredBlock139Value23) extent.
    recoveredBlock139Value25 := recoveredLocal3.
    recoveredBlock139Value26 := (recoveredBlock139Value24) * (recoveredBlock139Value25).
    recoveredBlock139Value27 := (recoveredBlock139Value26) truncated.
    recoveredBlock139Value28 := (recoveredBlock139Value22) extent: (recoveredBlock139Value27).
    (recoveredBlock139Value15) putDeviceIndependentImage: (recoveredBlock139Value16) image: (recoveredBlock139Value17) srcRect: (recoveredBlock139Value21) destRect: (recoveredBlock139Value28).
    recoveredBlock139Value29 := recoveredBlock139Local1.
    (recoveredBlock139Value29) freeGC.
    recoveredBlock139Value30 := recoveredLocal4.
    recoveredBlock139Value31 := recoveredBlock139Value30.
    (recoveredBlock139Value31) endPage.
    recoveredBlock139Value32 := recoveredBlock139Value30.
    (recoveredBlock139Value32) endJob.
    (recoveredBlock139Value30) destroyWidget.
    recoveredBlock139Value33 := recoveredLocal4.
    recoveredBlock139Value34 := (recoveredBlock139Value33) display.
    recoveredBlock139Value35 := (recoveredBlock139Value34) close.
    recoveredBlock139Value35
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) realizeWidget.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

