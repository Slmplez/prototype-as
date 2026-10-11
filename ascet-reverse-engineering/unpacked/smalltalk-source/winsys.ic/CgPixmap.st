"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000031c; bytecode file offset 0x7c6d8"
!CgPixmap methodsFor: 'recovered'!
isValidPixmap
    | recoveredValue0 |
    recoveredValue0 := (self) isValid.
    ^recoveredValue0
! !

"winsys.ic method 0x20004728; bytecode file offset 0x808e8"
!CgPixmap methodsFor: 'recovered'!
borderWidth
    ^0
! !

"winsys.ic method 0x20004efc; bytecode file offset 0x810c4"
!CgPixmap methodsFor: 'recovered'!
zero
    | recoveredValue0 |
    recoveredValue0 := Blackness.
    (self) patBlt: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20008b40; bytecode file offset 0x84d04"
!CgPixmap methodsFor: 'recovered'!
createPixmapCursor: recoveredArg1 foregroundColor: recoveredArg2 backgroundColor: recoveredArg3 x: recoveredArg4 y: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg5.
    recoveredValue3 := (self) createPixmapCursor: (recoveredValue0) x: (recoveredValue1) y: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x200092f0; bytecode file offset 0x854b8"
!CgPixmap methodsFor: 'recovered'!
draw
    | recoveredValue0 |
    recoveredValue0 := (0) @ (0).
    (self) drawAt: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000af14; bytecode file offset 0x870e4"
!CgPixmap methodsFor: 'recovered'!
releaseDC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := server.
    recoveredValue2 := (recoveredValue1) stockObjects.
    recoveredValue3 := (recoveredValue2) defaultBitmap.
    (recoveredValue0) selectObject: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) deleteDC.
    ^self
! !

"winsys.ic method 0x200100d0; bytecode file offset 0x8c2a4"
!CgPixmap methodsFor: 'recovered'!
osFree
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) clearCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedPalette.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) deselectPalette.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) deleteObject.
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

"winsys.ic method 0x20013064; bytecode file offset 0x8f238"
!CgPixmap methodsFor: 'recovered'!
getDC
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCompatibleDC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorBadDC.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := handle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) selectObject: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20016d40; bytecode file offset 0x92f14"
!CgPixmap methodsFor: 'recovered'!
writeBitmapFile: recoveredArg1 width: recoveredArg2 height: recoveredArg3 xHot: recoveredArg4 yHot: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := server.
    (recoveredValue0) beginRequest.
    recoveredValue1 := CgBitmapFile.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg5.
    recoveredValue8 := (recoveredValue2) write: (self) fileName: (recoveredValue3) width: (recoveredValue4) height: (recoveredValue5) xHot: (recoveredValue6) yHot: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := server.
    (recoveredValue9) endRequest.
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"winsys.ic method 0x20017a08; bytecode file offset 0x93be4"
!CgPixmap methodsFor: 'recovered'!
freePixmap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) beginRequest.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidPixmap.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := BadPixmap.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := server.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) endRequest.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200186d8; bytecode file offset 0x948b4"
!CgPixmap methodsFor: 'recovered'!
createPixmapCursor: recoveredArg1 x: recoveredArg2 y: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := server.
    (recoveredValue0) beginRequest.
    recoveredValue1 := CgCursor.
    recoveredValue2 := (self) display.
    recoveredValue3 := (recoveredValue1) display: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) display.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue5) pixmap: (self) mask: (recoveredValue6) x: (recoveredValue7) y: (recoveredValue8).
    (recoveredValue4) reportIfError: (recoveredValue9).
    recoveredValue10 := server.
    (recoveredValue10) endRequest.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"winsys.ic method 0x20019364; bytecode file offset 0x95534"
!CgPixmap methodsFor: 'recovered'!
patBlt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) width.
    recoveredBlock4Value2 := (recoveredBlock4Value1) + (15).
    recoveredBlock4Value3 := (self) height.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (recoveredBlock4Value0) patBlt: (0) nTopRect: (0) nwidth: (recoveredBlock4Value2) nheight: (recoveredBlock4Value3) fdwRop: (recoveredBlock4Value4).
    recoveredBlock4Value5
].
    (self) deviceContextDo: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20019f94; bytecode file offset 0x9616c"
!CgPixmap methodsFor: 'recovered'!
privateSetDefaultPalette
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CgIndexedPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) blackAndWhite.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CgIndexedPalette.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) selectedIn: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectedPalette: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001ade0; bytecode file offset 0x96fc0"
!CgPixmap methodsFor: 'recovered'!
bits
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (self) width.
    recoveredValue2 := (recoveredValue1) + (15).
    recoveredValue3 := (recoveredValue2) // (16).
    recoveredValue4 := (recoveredValue3) * (2).
    recoveredValue5 := (self) height.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    recoveredValue7 := (self) depth.
    recoveredValue8 := (recoveredValue6) * (recoveredValue7).
    recoveredValue9 := (recoveredValue0) new: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (self) handle.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue10) getBitmapBits: (recoveredValue12) lpvBits: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"winsys.ic method 0x2001f654; bytecode file offset 0x9b834"
!CgPixmap methodsFor: 'recovered'!
initializeBitmap: recoveredArg1 height: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) depth: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OSHbitmap.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBitmap: (recoveredStack2) nHeight: (recoveredStack3) cbPlanes: (recoveredStack4) cbBits: (recoveredStack5) lpvBits: (recoveredStack6).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) setHandle: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := Success.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) addReference.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20027934; bytecode file offset 0xa3b28"
!CgPixmap methodsFor: 'recovered'!
drawAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) server.
    recoveredValue1 := (recoveredValue0) deviceContext.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10Stack6 recoveredBlock10Stack7 recoveredBlock10Stack8 recoveredBlock10Stack9 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) depth.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := 1.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) = (recoveredBlock10Stack1).
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            (recoveredBlock10Stack0) ifTrue: [recoveredBlock10PC := 24] ifFalse: [recoveredBlock10PC := 36].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal1.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := 16777215.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            (recoveredBlock10Stack1) setTextColor: (recoveredBlock10Stack2).
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := 0.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            (recoveredBlock10Stack0) setBkColor: (recoveredBlock10Stack1).
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal1.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) x.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) y.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := self.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) width.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack4 := self.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack4 := (recoveredBlock10Stack4) height.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            recoveredBlock10Stack5 := recoveredBlock10Arg1.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10Stack6 := 0.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack7 := 0.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack8 := Srccopy.
            recoveredBlock10PC := 62.
        ].
        recoveredBlock10Step = 62 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) bitBlt: (recoveredBlock10Stack1) nYDest: (recoveredBlock10Stack2) nWidth: (recoveredBlock10Stack3) nHeight: (recoveredBlock10Stack4) hdcSrc: (recoveredBlock10Stack5) nXSrc: (recoveredBlock10Stack6) nYSrc: (recoveredBlock10Stack7) dwRop: (recoveredBlock10Stack8).
            recoveredBlock10PC := 65.
        ].
        recoveredBlock10Step = 65 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) deviceContextDo: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2002cecc; bytecode file offset 0xa90b8"
!CgPixmap methodsFor: 'recovered'!
initialize: recoveredArg1 width: recoveredArg2 height: recoveredArg3 depth: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeBitmap: (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) width: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) depth: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := self.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) width.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack3 := self.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) height.
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) createCompatibleBitmap: (recoveredBlock51Stack2) nHeight: (recoveredBlock51Stack3).
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) setHandle: (recoveredBlock51Stack1).
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack2 := Success.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) = (recoveredBlock51Stack2).
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 86].
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack0 := self.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) addReference.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack0.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) deviceContextDo: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002e030; bytecode file offset 0xaa224"
!CgPixmap methodsFor: 'recovered'!
compatibleWith: recoveredArg1 width: recoveredArg2 height: recoveredArg3 depth: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidDrawable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := BadDrawable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := BadValue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := BadValue.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) screen.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidDepth: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := BadValue.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize: (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3) depth: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := Success.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) zero.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := CommonGraphics.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageSupportLoaded.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) privateSetDefaultPalette.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20033e68; bytecode file offset 0xb0054"
!CgPixmap methodsFor: 'recovered'!
bitmapData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal9 := recoveredStack0.
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
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) server.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) reverseTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 70] ifFalse: [recoveredLocal1 := nil. recoveredPC := 102]] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 60] ifFalse: [recoveredPC := 123]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) setBitmapBits: (recoveredStack1) lpvBits: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20036bf0; bytecode file offset 0xb2e10"
!CgPixmap methodsFor: 'recovered'!
width: recoveredArg1 height: recoveredArg2 font: recoveredArg3 char: recoveredArg4 x: recoveredArg5 y: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstChar.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) lastChar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := BadValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeBitmap: (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Success.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) zero.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54Stack5 recoveredBlock54Stack6 recoveredBlock54Stack7 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := PlatformString.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := String.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            (recoveredBlock54Stack1 ~~ recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 84] ifFalse: [recoveredBlock54PC := 68].
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredBlock54Stack1 := String.
            recoveredBlock54PC := 70.
        ].
        recoveredBlock54Step = 70 ifTrue: [
            recoveredBlock54Stack2 := recoveredArg4.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) asCharacter.
            recoveredBlock54PC := 75.
        ].
        recoveredBlock54Step = 75 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) with: (recoveredBlock54Stack2).
            recoveredBlock54PC := 77.
        ].
        recoveredBlock54Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 80.
        ].
        recoveredBlock54Step = 80 ifTrue: [
            recoveredBlock54PC := 100.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack1 := PlatformString.
            recoveredBlock54PC := 86.
        ].
        recoveredBlock54Step = 86 ifTrue: [
            recoveredBlock54Stack2 := DBString.
            recoveredBlock54PC := 88.
        ].
        recoveredBlock54Step = 88 ifTrue: [
            recoveredBlock54Stack3 := recoveredArg4.
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredBlock54Stack3 := (recoveredBlock54Stack3) asCharacter.
            recoveredBlock54PC := 93.
        ].
        recoveredBlock54Step = 93 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) with: (recoveredBlock54Stack3).
            recoveredBlock54PC := 95.
        ].
        recoveredBlock54Step = 95 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) fromString: (recoveredBlock54Stack2).
            recoveredBlock54PC := 97.
        ].
        recoveredBlock54Step = 97 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 100.
        ].
        recoveredBlock54Step = 100 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Arg1.
            recoveredBlock54PC := 101.
        ].
        recoveredBlock54Step = 101 ifTrue: [
            recoveredBlock54Stack2 := recoveredArg3.
            recoveredBlock54PC := 104.
        ].
        recoveredBlock54Step = 104 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) handle.
            recoveredBlock54PC := 106.
        ].
        recoveredBlock54Step = 106 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) selectObject: (recoveredBlock54Stack2).
            recoveredBlock54PC := 108.
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 111.
        ].
        recoveredBlock54Step = 111 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Arg1.
            recoveredBlock54PC := 112.
        ].
        recoveredBlock54Step = 112 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 113.
        ].
        recoveredBlock54Step = 113 ifTrue: [
            recoveredBlock54Stack3 := TaBaseline.
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            (recoveredBlock54Stack2) setTextAlign: (recoveredBlock54Stack3).
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 118.
        ].
        recoveredBlock54Step = 118 ifTrue: [
            recoveredBlock54Stack3 := 16777215.
            recoveredBlock54PC := 120.
        ].
        recoveredBlock54Step = 120 ifTrue: [
            (recoveredBlock54Stack2) setTextColor: (recoveredBlock54Stack3).
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 123.
        ].
        recoveredBlock54Step = 123 ifTrue: [
            recoveredBlock54Stack3 := 0.
            recoveredBlock54PC := 125.
        ].
        recoveredBlock54Step = 125 ifTrue: [
            (recoveredBlock54Stack2) setBkColor: (recoveredBlock54Stack3).
            recoveredBlock54Stack2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 128.
        ].
        recoveredBlock54Step = 128 ifTrue: [
            recoveredBlock54Stack3 := recoveredArg5.
            recoveredBlock54PC := 131.
        ].
        recoveredBlock54Step = 131 ifTrue: [
            recoveredBlock54Stack4 := recoveredArg6.
            recoveredBlock54PC := 134.
        ].
        recoveredBlock54Step = 134 ifTrue: [
            recoveredBlock54Stack4 := (recoveredBlock54Stack4) + (1).
            recoveredBlock54PC := 135.
        ].
        recoveredBlock54Step = 135 ifTrue: [
            recoveredBlock54Stack5 := recoveredLocal1.
            recoveredBlock54PC := 138.
        ].
        recoveredBlock54Step = 138 ifTrue: [
            recoveredBlock54Stack6 := recoveredLocal1.
            recoveredBlock54PC := 141.
        ].
        recoveredBlock54Step = 141 ifTrue: [
            recoveredBlock54Stack6 := (recoveredBlock54Stack6) size.
            recoveredBlock54PC := 143.
        ].
        recoveredBlock54Step = 143 ifTrue: [
            (recoveredBlock54Stack2) textOut: (recoveredBlock54Stack3) nYStart: (recoveredBlock54Stack4) lpszString: (recoveredBlock54Stack5) cbString: (recoveredBlock54Stack6).
            recoveredBlock54PC := 146.
        ].
        recoveredBlock54Step = 146 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal2.
            recoveredBlock54PC := 149.
        ].
        recoveredBlock54Step = 149 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) selectObject: (recoveredBlock54Stack2).
            recoveredBlock54PC := 151.
        ].
        recoveredBlock54Step = 151 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) deviceContextDo: (recoveredStack1).
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

"winsys.ic method 0x20037b28; bytecode file offset 0xb3d28"
!CgPixmap methodsFor: 'recovered'!
bytesInWidth: recoveredArg1 height: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (7).
    recoveredValue2 := (recoveredValue1) // (8).
    recoveredLocal5 := recoveredValue2.
    recoveredValue3 := ByteArray.
    recoveredValue4 := recoveredLocal5.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := OSHbitmap.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) createBitmap: (recoveredValue7) nHeight: (1) cbPlanes: (1) cbBits: (1) lpvBits: (nil).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := (self) server.
    recoveredValue10 := (recoveredValue9) deviceContext.
    recoveredValue11 := (recoveredValue10) createCompatibleDC.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal3.
    recoveredValue14 := (recoveredValue12) selectObject: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Local1 recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64Stack4 recoveredBlock64Stack5 recoveredBlock64Stack6 recoveredBlock64Stack7 recoveredBlock64Stack8 recoveredBlock64Stack9 recoveredBlock64Stack10 recoveredBlock64Stack11 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := -1.
            recoveredBlock64PC := 72.
        ].
        recoveredBlock64Step = 72 ifTrue: [
            recoveredBlock64Local1 := recoveredBlock64Stack1.
            recoveredBlock64PC := 73.
        ].
        recoveredBlock64Step = 73 ifTrue: [
            recoveredBlock64Stack1 := recoveredArg2.
            recoveredBlock64PC := 76.
        ].
        recoveredBlock64Step = 76 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) + (-1).
            recoveredBlock64PC := 77.
        ].
        recoveredBlock64Step = 77 ifTrue: [
            recoveredBlock64PC := 133.
        ].
        recoveredBlock64Step = 80 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal2.
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            recoveredBlock64Stack3 := 0.
            recoveredBlock64PC := 85.
        ].
        recoveredBlock64Step = 85 ifTrue: [
            recoveredBlock64Stack4 := 0.
            recoveredBlock64PC := 87.
        ].
        recoveredBlock64Step = 87 ifTrue: [
            recoveredBlock64Stack5 := recoveredArg1.
            recoveredBlock64PC := 90.
        ].
        recoveredBlock64Step = 90 ifTrue: [
            recoveredBlock64Stack6 := 1.
            recoveredBlock64PC := 92.
        ].
        recoveredBlock64Step = 92 ifTrue: [
            recoveredBlock64Stack7 := recoveredBlock64Arg1.
            recoveredBlock64PC := 93.
        ].
        recoveredBlock64Step = 93 ifTrue: [
            recoveredBlock64Stack8 := 0.
            recoveredBlock64PC := 95.
        ].
        recoveredBlock64Step = 95 ifTrue: [
            recoveredBlock64Stack9 := recoveredBlock64Local1.
            recoveredBlock64PC := 96.
        ].
        recoveredBlock64Step = 96 ifTrue: [
            recoveredBlock64Stack10 := Srccopy.
            recoveredBlock64PC := 98.
        ].
        recoveredBlock64Step = 98 ifTrue: [
            (recoveredBlock64Stack2) bitBlt: (recoveredBlock64Stack3) nYDest: (recoveredBlock64Stack4) nWidth: (recoveredBlock64Stack5) nHeight: (recoveredBlock64Stack6) hdcSrc: (recoveredBlock64Stack7) nXSrc: (recoveredBlock64Stack8) nYSrc: (recoveredBlock64Stack9) dwRop: (recoveredBlock64Stack10).
            recoveredBlock64PC := 101.
        ].
        recoveredBlock64Step = 101 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal3.
            recoveredBlock64PC := 104.
        ].
        recoveredBlock64Step = 104 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal5.
            recoveredBlock64PC := 107.
        ].
        recoveredBlock64Step = 107 ifTrue: [
            recoveredBlock64Stack4 := recoveredLocal4.
            recoveredBlock64PC := 110.
        ].
        recoveredBlock64Step = 110 ifTrue: [
            (recoveredBlock64Stack2) getBitmapBits: (recoveredBlock64Stack3) lpvBits: (recoveredBlock64Stack4).
            recoveredBlock64PC := 112.
        ].
        recoveredBlock64Step = 112 ifTrue: [
            recoveredBlock64Stack2 := server.
            recoveredBlock64PC := 114.
        ].
        recoveredBlock64Step = 114 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal4.
            recoveredBlock64PC := 117.
        ].
        recoveredBlock64Step = 117 ifTrue: [
            recoveredBlock64Stack4 := 1.
            recoveredBlock64PC := 119.
        ].
        recoveredBlock64Step = 119 ifTrue: [
            recoveredBlock64Stack5 := recoveredLocal4.
            recoveredBlock64PC := 122.
        ].
        recoveredBlock64Step = 122 ifTrue: [
            (recoveredBlock64Stack2) reverseBitOrder: (recoveredBlock64Stack3) startingAt: (recoveredBlock64Stack4) into: (recoveredBlock64Stack5).
            recoveredBlock64PC := 125.
        ].
        recoveredBlock64Step = 125 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal4.
            recoveredBlock64PC := 128.
        ].
        recoveredBlock64Step = 128 ifTrue: [
            recoveredBlock64Stack3 := recoveredArg3.
            recoveredBlock64PC := 131.
        ].
        recoveredBlock64Step = 131 ifTrue: [
            (recoveredBlock64Stack2) do: (recoveredBlock64Stack3).
            recoveredBlock64PC := 133.
        ].
        recoveredBlock64Step = 133 ifTrue: [
            (recoveredBlock64Stack1 isInteger and: [recoveredBlock64Local1 isInteger]) ifTrue: [(recoveredBlock64Local1 + 1 <= recoveredBlock64Stack1) ifTrue: [recoveredBlock64Local1 := recoveredBlock64Local1 + 1. recoveredBlock64PC := 80] ifFalse: [recoveredBlock64Local1 := nil. recoveredBlock64PC := 147]] ifFalse: [recoveredBlock64PC := 137].
        ].
        recoveredBlock64Step = 137 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 138.
        ].
        recoveredBlock64Step = 138 ifTrue: [
            recoveredBlock64Stack3 := recoveredBlock64Local1.
            recoveredBlock64PC := 139.
        ].
        recoveredBlock64Step = 139 ifTrue: [
            recoveredBlock64Stack3 := (recoveredBlock64Stack3) + (1).
            recoveredBlock64PC := 140.
        ].
        recoveredBlock64Step = 140 ifTrue: [
            recoveredBlock64Stack4 := recoveredBlock64Stack3.
            recoveredBlock64PC := 141.
        ].
        recoveredBlock64Step = 141 ifTrue: [
            recoveredBlock64Local1 := recoveredBlock64Stack4.
            recoveredBlock64PC := 142.
        ].
        recoveredBlock64Step = 142 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) < (recoveredBlock64Stack3).
            recoveredBlock64PC := 143.
        ].
        recoveredBlock64Step = 143 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 145] ifFalse: [recoveredBlock64PC := 80].
        ].
        recoveredBlock64Step = 145 ifTrue: [
            recoveredBlock64Stack2 := nil.
            recoveredBlock64PC := 146.
        ].
        recoveredBlock64Step = 146 ifTrue: [
            recoveredBlock64Local1 := recoveredBlock64Stack2.
            recoveredBlock64PC := 147.
        ].
        recoveredBlock64Step = 147 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
    (self) deviceContextDo: (recoveredValue15).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue16) selectObject: (recoveredValue17).
    (recoveredValue18) deleteObject.
    recoveredValue19 := recoveredLocal2.
    (recoveredValue19) deleteDC.
    ^self
! !

