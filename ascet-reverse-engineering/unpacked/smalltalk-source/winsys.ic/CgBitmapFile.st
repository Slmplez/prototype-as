"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002c30; bytecode file offset 0x7efc0"
!CgBitmapFile methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e68; bytecode file offset 0x7f220"
!CgBitmapFile methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"winsys.ic method 0x20003218; bytecode file offset 0x7f418"
!CgBitmapFile methodsFor: 'recovered'!
xHot
    | recoveredValue0 |
    recoveredValue0 := xHot.
    ^recoveredValue0
! !

"winsys.ic method 0x200033a8; bytecode file offset 0x7f5b8"
!CgBitmapFile methodsFor: 'recovered'!
yHot
    | recoveredValue0 |
    recoveredValue0 := yHot.
    ^recoveredValue0
! !

"winsys.ic method 0x200035c0; bytecode file offset 0x7f878"
!CgBitmapFile methodsFor: 'recovered'!
bitmap
    | recoveredValue0 |
    recoveredValue0 := bitmap.
    ^recoveredValue0
! !

"winsys.ic method 0x200118a8; bytecode file offset 0x8da70"
!CgBitmapFile methodsFor: 'recovered'!
checkComment: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) skipComment: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20013acc; bytecode file offset 0x8fca4"
!CgBitmapFile methodsFor: 'recovered'!
writeStream: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) writeHeader: (recoveredValue0) name: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) writeBits: (recoveredValue2) maxPerLine: (12).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: ('};').
    (recoveredValue3) cr.
    recoveredValue5 := BitmapSuccess.
    ^recoveredValue5
! !

"winsys.ic method 0x2001485c; bytecode file offset 0x90a20"
!CgBitmapFile methodsFor: 'recovered'!
write: recoveredArg1 fileName: recoveredArg2 width: recoveredArg3 height: recoveredArg4 xHot: recoveredArg5 yHot: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    fileName := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    bitmap := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    width := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    height := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    xHot := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    yHot := recoveredValue5.
    recoveredValue6 := (self) write.
    ^recoveredValue6
! !

"winsys.ic method 0x20016b48; bytecode file offset 0x92d10"
!CgBitmapFile methodsFor: 'recovered'!
hasSuffix: recoveredArg1 suffix: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20018608; bytecode file offset 0x947d4"
!CgBitmapFile methodsFor: 'recovered'!
readCharacter: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkComment: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 4] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20019828; bytecode file offset 0x95a0c"
!CgBitmapFile methodsFor: 'recovered'!
write
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := CfsWriteFileStream.
    recoveredValue1 := fileName.
    recoveredValue2 := (recoveredValue0) open: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := String.
    recoveredValue5 := Lf.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    (recoveredValue3) lineDelimiter: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := fileName.
    recoveredValue9 := (self) writeStream: (recoveredValue7) name: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) flush.
    (recoveredValue10) close.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"winsys.ic method 0x2001d090; bytecode file offset 0x9925c"
!CgBitmapFile methodsFor: 'recovered'!
skipComment: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 4.
        ].
    ]
! !

"winsys.ic method 0x20021290; bytecode file offset 0x9d484"
!CgBitmapFile methodsFor: 'recovered'!
readFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := fileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := BitmapOpenFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := fileName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := Lf.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) lineDelimiter: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) readData: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002330c; bytecode file offset 0x9f4e4"
!CgBitmapFile methodsFor: 'recovered'!
read: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            height := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            width := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            yHot := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            xHot := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := CgPixmap.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) screen.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) screen: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            bitmap := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFile: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := BitmapSuccess.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := data.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := width.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := height.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBitmapFromData: (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            bitmap := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := BitmapSuccess.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20027ed4; bytecode file offset 0xa40a8"
!CgBitmapFile methodsFor: 'recovered'!
readByte: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := HexTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) next.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200286a8; bytecode file offset 0xa487c"
!CgBitmapFile methodsFor: 'recovered'!
checkWord: recoveredArg1 word: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg1.
            recoveredBlock39PC := 49.
        ].
        recoveredBlock39Step = 49 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) atEnd.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 54] ifFalse: [recoveredBlock39PC := 56].
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg1.
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) next.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) = (recoveredBlock39Stack3).
            recoveredBlock39PC := 63.
        ].
        recoveredBlock39Step = 63 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 69] ifFalse: [recoveredBlock39PC := 66].
        ].
        recoveredBlock39Step = 66 ifTrue: [
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002fe30; bytecode file offset 0xac02c"
!CgBitmapFile methodsFor: 'recovered'!
readParameter: recoveredArg1 suffix: recoveredArg2 ifNone: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) readCharacter: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) nextLine.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'define'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSuffix: (recoveredStack1) suffix: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := $ .
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimSeparators.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003205c; bytecode file offset 0xae248"
!CgBitmapFile methodsFor: 'recovered'!
writeHeader: recoveredArg1 name: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := '#define '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := '_width '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := width.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := '#define '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := '_height '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := height.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := xHot.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := yHot.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := '#define '.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := '_x_hot '.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := xHot.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := '#define '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := '_y_hot '.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := yHot.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 'static char '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := '_bits[] = {'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20032640; bytecode file offset 0xae82c"
!CgBitmapFile methodsFor: 'recovered'!
writeBits: recoveredArg1 maxPerLine: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredLocal1 := true.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Space.
    (recoveredValue0) next: (2) put: (recoveredValue1).
    recoveredValue2 := bitmap.
    recoveredValue3 := width.
    recoveredValue4 := height.
    recoveredValue5 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28Stack6 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 40] ifFalse: [recoveredBlock28PC := 48].
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := $,.
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            (recoveredBlock28Stack1) nextPut: (recoveredBlock28Stack2).
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg2.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) >= (recoveredBlock28Stack2).
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 66] ifFalse: [recoveredBlock28PC := 82].
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            (recoveredBlock28Stack2) cr.
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            (recoveredBlock28Stack2) space.
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            (recoveredBlock28Stack1) space.
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            recoveredBlock28Stack1 := 0.
            recoveredBlock28PC := 79.
        ].
        recoveredBlock28Step = 79 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack3 := ' 0x'.
            recoveredBlock28PC := 88.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            (recoveredBlock28Stack2) nextPutAll: (recoveredBlock28Stack3).
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 91.
        ].
        recoveredBlock28Step = 91 ifTrue: [
            recoveredBlock28Stack3 := Character.
            recoveredBlock28PC := 93.
        ].
        recoveredBlock28Step = 93 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Arg1.
            recoveredBlock28PC := 94.
        ].
        recoveredBlock28Step = 94 ifTrue: [
            recoveredBlock28Stack5 := 16.
            recoveredBlock28PC := 96.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) // (recoveredBlock28Stack5).
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) digitValue: (recoveredBlock28Stack4).
            recoveredBlock28PC := 99.
        ].
        recoveredBlock28Step = 99 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) asLowercase.
            recoveredBlock28PC := 101.
        ].
        recoveredBlock28Step = 101 ifTrue: [
            (recoveredBlock28Stack2) nextPut: (recoveredBlock28Stack3).
            recoveredBlock28PC := 103.
        ].
        recoveredBlock28Step = 103 ifTrue: [
            recoveredBlock28Stack2 := Character.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 106.
        ].
        recoveredBlock28Step = 106 ifTrue: [
            recoveredBlock28Stack4 := 16.
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) \\ (recoveredBlock28Stack4).
            recoveredBlock28PC := 109.
        ].
        recoveredBlock28Step = 109 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) digitValue: (recoveredBlock28Stack3).
            recoveredBlock28PC := 111.
        ].
        recoveredBlock28Step = 111 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) asLowercase.
            recoveredBlock28PC := 113.
        ].
        recoveredBlock28Step = 113 ifTrue: [
            (recoveredBlock28Stack1) nextPut: (recoveredBlock28Stack2).
            recoveredBlock28PC := 115.
        ].
        recoveredBlock28Step = 115 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 118.
        ].
        recoveredBlock28Step = 118 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) + (1).
            recoveredBlock28PC := 119.
        ].
        recoveredBlock28Step = 119 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 123.
        ].
        recoveredBlock28Step = 123 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue2) bytesInWidth: (recoveredValue3) height: (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2003b6f8; bytecode file offset 0xb78dc"
!CgBitmapFile methodsFor: 'recovered'!
initHexTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            HexTable := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := $0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := $9.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := HexTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := $0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) asInteger.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 26] ifFalse: [recoveredLocal1 := nil. recoveredPC := 52]] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := $A.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := $F.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := HexTable.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := $A.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := (recoveredStack5) asInteger.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := 10.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 66] ifFalse: [recoveredLocal1 := nil. recoveredPC := 95]] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := $a.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := $f.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := HexTable.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := $a.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) asInteger.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := 10.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 110] ifFalse: [recoveredLocal1 := nil. recoveredPC := 139]] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := HexTable.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := Space.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := $,.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := $}.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := Cr.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := Lf.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := -1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := Tab.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := HexTable.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003f758; bytecode file offset 0xbb978"
!CgBitmapFile methodsFor: 'recovered'!
readData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HexTable.
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
            (recoveredStack1) initHexTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '_width'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := BitmapFileInvalid.
    ^recoveredBlock18Value0
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) readParameter: (recoveredStack1) suffix: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            width := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := '_height'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := BitmapFileInvalid.
    ^recoveredBlock38Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) readParameter: (recoveredStack1) suffix: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            height := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := '_x_hot'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := [
    -1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) readParameter: (recoveredStack1) suffix: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            xHot := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := '_y_hot'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [
    -1
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) readParameter: (recoveredStack1) suffix: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            yHot := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'static'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkWord: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'char'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkWord: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := $[.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := '_bits'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSuffix: (recoveredStack1) suffix: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 141] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkWord: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := '='.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkWord: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := '{'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkWord: (recoveredStack1) word: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := BitmapFileInvalid.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := width.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := height.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            data := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) readByte: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 233] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := BitmapFileInvalid.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := data.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 214] ifFalse: [recoveredPC := 271]] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 267] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := BitmapSuccess.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

