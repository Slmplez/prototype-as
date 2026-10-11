"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000068c; bytecode file offset 0x7c874"
!CgWinBMPFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
compressRLE8Data: recoveredArg1 numBytes: recoveredArg2 dest: recoveredArg3 last: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"winsys.ic method 0x200006ac; bytecode file offset 0x7c874"
!CgWinBMPFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
compressRLE4Data: recoveredArg1 numBytes: recoveredArg2 dest: recoveredArg3 last: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"winsys.ic method 0x200006c4; bytecode file offset 0x7c89c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
decompressRLE8Data: recoveredArg1 numBytes: recoveredArg2 stride: recoveredArg3 dest: recoveredArg4 destSize: recoveredArg5
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"winsys.ic method 0x200006d4; bytecode file offset 0x7c89c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
decompressRLE4Data: recoveredArg1 numBytes: recoveredArg2 stride: recoveredArg3 dest: recoveredArg4 destSize: recoveredArg5
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"winsys.ic method 0x20002c80; bytecode file offset 0x7efc0"
!CgWinBMPFileFormat methodsFor: 'recovered'!
compression
    | recoveredValue0 |
    recoveredValue0 := compression.
    ^recoveredValue0
! !

"winsys.ic method 0x20003028; bytecode file offset 0x7f220"
!CgWinBMPFileFormat methodsFor: 'recovered'!
pelsPerMeter
    | recoveredValue0 |
    recoveredValue0 := pelsPerMeter.
    ^recoveredValue0
! !

"winsys.ic method 0x20003180; bytecode file offset 0x7f418"
!CgWinBMPFileFormat methodsFor: 'recovered'!
importantColors
    | recoveredValue0 |
    recoveredValue0 := importantColors.
    ^recoveredValue0
! !

"winsys.ic method 0x20007374; bytecode file offset 0x836b4"
!CgWinBMPFileFormat methodsFor: 'recovered'!
compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compression := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000757c; bytecode file offset 0x838d4"
!CgWinBMPFileFormat methodsFor: 'recovered'!
pelsPerMeter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pelsPerMeter := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007804; bytecode file offset 0x83a6c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
importantColors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importantColors := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20015b58; bytecode file offset 0x91d30"
!CgWinBMPFileFormat methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    (self) compression: (0).
    recoveredValue0 := (0) @ (0).
    (self) pelsPerMeter: (recoveredValue0).
    (self) importantColors: (0).
    ^self
! !

"winsys.ic method 0x2001f290; bytecode file offset 0x9b464"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadData: recoveredArg1 infoHeader: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) width.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) bitCount.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (recoveredValue4) + (7).
    recoveredValue6 := (recoveredValue5) // (8).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) + (3).
    recoveredValue9 := (recoveredValue8) // (4).
    recoveredValue10 := (recoveredValue9) * (4).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (self) loadData: (recoveredValue11) infoHeader: (recoveredValue12) stride: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue17) height.
    (self) flipScanLines: (recoveredValue15) stride: (recoveredValue16) height: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

"winsys.ic method 0x200203c0; bytecode file offset 0x9c594"
!CgWinBMPFileFormat methodsFor: 'recovered'!
compress: recoveredArg1 src: recoveredArg2 numBytes: recoveredArg3 dest: recoveredArg4 last: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) compressRLE8Data: (recoveredStack2) numBytes: (recoveredStack3) dest: (recoveredStack4) last: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) compressRLE4Data: (recoveredStack2) numBytes: (recoveredStack3) dest: (recoveredStack4) last: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := NlsCatCGa.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 48.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20021f38; bytecode file offset 0x9e11c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadFileHeader: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileHeaderPattern.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFormatLE: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20029f7c; bytecode file offset 0xa616c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadInfoHeader: recoveredArg1
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
            recoveredStack2 := CgWinBMPInfoHeader.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) readStructLE: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) headerSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) planes.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := #(1 4 8 16 24).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitCount.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002adb4; bytecode file offset 0xa6f8c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
decompressData: recoveredArg1 dest: recoveredArg2 stride: recoveredArg3 compression: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) decompressRLE8Data: (recoveredStack2) numBytes: (recoveredStack3) stride: (recoveredStack4) dest: (recoveredStack5) destSize: (recoveredStack6).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) decompressRLE4Data: (recoveredStack2) numBytes: (recoveredStack3) stride: (recoveredStack4) dest: (recoveredStack5) destSize: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002cd70; bytecode file offset 0xa8f8c"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadFromByteStream: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFileHeader: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadInfoHeader: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadPalette: (recoveredStack1) infoHeader: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadData: (recoveredStack1) infoHeader: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) compression.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) compression: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) clrImportant.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) importantColors: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) xPelsPerMeter.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) yPelsPerMeter.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) pelsPerMeter: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := CgDeviceIndependentImage.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitCount.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) width: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3) palette: (recoveredStack4) scanlinePad: (recoveredStack5) data: (recoveredStack6).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002d114; bytecode file offset 0xa92fc"
!CgWinBMPFileFormat methodsFor: 'recovered'!
paletteFromBytes: recoveredArg1 numColors: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := CgPaletteEntry.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := CgRGBColor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack8 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (recoveredStack8).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := 257.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := (recoveredStack6) * (recoveredStack7).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack8 := (recoveredStack8) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := 257.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack7 := (recoveredStack7) * (recoveredStack8).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack9 := 257.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack8 := (recoveredStack8) * (recoveredStack9).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) red: (recoveredStack6) green: (recoveredStack7) blue: (recoveredStack8).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) color: (recoveredStack5) animating: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 86]] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002e740; bytecode file offset 0xaa924"
!CgWinBMPFileFormat methodsFor: 'recovered'!
paletteToBytes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) blue.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := 256.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) green.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := 256.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) red.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := 256.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 98]] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200315e8; bytecode file offset 0xad7ec"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadPalette: recoveredArg1 infoHeader: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitCount.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) clrUsed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitCount.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) read: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) paletteFromBytes: (recoveredStack2) numColors: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := CgDirectPalette.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 31.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 2016.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := 63488.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) redMask: (recoveredStack2) greenMask: (recoveredStack3) blueMask: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := CgDirectPalette.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 65280.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := 16711680.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) redMask: (recoveredStack2) greenMask: (recoveredStack3) blueMask: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003f4b0; bytecode file offset 0xbb6a8"
!CgWinBMPFileFormat methodsFor: 'recovered'!
loadData: recoveredArg1 infoHeader: recoveredArg2 stride: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) compression.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) read: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitCount.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack6 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 recoveredBlock112Value4 recoveredBlock112Value5 recoveredBlock112Value6 recoveredBlock112Value7 recoveredBlock112Value8 recoveredBlock112Value9 recoveredBlock112Value10 recoveredBlock112Value11 recoveredBlock112Value12 recoveredBlock112Value13 recoveredBlock112Value14 recoveredBlock112Value15 recoveredBlock112Value16 |
    recoveredBlock112Value0 := recoveredLocal5.
    recoveredBlock112Value1 := recoveredLocal4.
    recoveredBlock112Value2 := recoveredBlock112Arg1.
    recoveredBlock112Value3 := (recoveredBlock112Value1) + (recoveredBlock112Value2).
    recoveredBlock112Value4 := recoveredBlock112Value3.
    recoveredLocal3 := recoveredBlock112Value4.
    recoveredBlock112Value5 := (recoveredBlock112Value0) at: (recoveredBlock112Value3).
    recoveredLocal2 := recoveredBlock112Value5.
    recoveredBlock112Value6 := recoveredLocal5.
    recoveredBlock112Value7 := recoveredLocal3.
    recoveredBlock112Value8 := recoveredLocal5.
    recoveredBlock112Value9 := recoveredLocal3.
    recoveredBlock112Value10 := (recoveredBlock112Value9) + (1).
    recoveredBlock112Value11 := (recoveredBlock112Value8) at: (recoveredBlock112Value10).
    (recoveredBlock112Value6) at: (recoveredBlock112Value7) put: (recoveredBlock112Value11).
    recoveredBlock112Value12 := recoveredLocal5.
    recoveredBlock112Value13 := recoveredLocal3.
    recoveredBlock112Value14 := (recoveredBlock112Value13) + (1).
    recoveredBlock112Value15 := recoveredLocal2.
    recoveredBlock112Value16 := (recoveredBlock112Value12) at: (recoveredBlock112Value14) put: (recoveredBlock112Value15).
    recoveredBlock112Value16
].
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack3) to: (recoveredStack4) by: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 92] ifFalse: [recoveredPC := 197]] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 193] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 265.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) sizeImage.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) read: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 249] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) decompressData: (recoveredStack2) dest: (recoveredStack3) stride: (recoveredStack4) compression: (recoveredStack5).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20041594; bytecode file offset 0xbd7a4"
!CgWinBMPFileFormat methodsFor: 'recovered'!
unloadData: recoveredArg1 into: recoveredArg2 compression: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := compression.
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) unloadDataNoCompression: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerLine.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 32768.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125Stack5 recoveredBlock125Stack6 recoveredBlock125Stack7 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg3.
            recoveredBlock125PC := 135.
        ].
        recoveredBlock125Step = 135 ifTrue: [
            recoveredBlock125Stack2 := OSUInt8.
            recoveredBlock125PC := 137.
        ].
        recoveredBlock125Step = 137 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal5.
            recoveredBlock125PC := 140.
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) reference: (recoveredBlock125Stack3).
            recoveredBlock125PC := 142.
        ].
        recoveredBlock125Step = 142 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal6.
            recoveredBlock125PC := 145.
        ].
        recoveredBlock125Step = 145 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) incrementBy: (recoveredBlock125Stack3).
            recoveredBlock125PC := 147.
        ].
        recoveredBlock125Step = 147 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal10.
            recoveredBlock125PC := 150.
        ].
        recoveredBlock125Step = 150 ifTrue: [
            recoveredBlock125Stack4 := recoveredLocal7.
            recoveredBlock125PC := 153.
        ].
        recoveredBlock125Step = 153 ifTrue: [
            recoveredBlock125Stack5 := recoveredBlock125Arg1.
            recoveredBlock125PC := 154.
        ].
        recoveredBlock125Step = 154 ifTrue: [
            recoveredBlock125Stack6 := 0.
            recoveredBlock125PC := 156.
        ].
        recoveredBlock125Step = 156 ifTrue: [
            recoveredBlock125Stack5 := (recoveredBlock125Stack5) = (recoveredBlock125Stack6).
            recoveredBlock125PC := 157.
        ].
        recoveredBlock125Step = 157 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) compress: (recoveredBlock125Stack1) src: (recoveredBlock125Stack2) numBytes: (recoveredBlock125Stack3) dest: (recoveredBlock125Stack4) last: (recoveredBlock125Stack5).
            recoveredBlock125PC := 160.
        ].
        recoveredBlock125Step = 160 ifTrue: [
            recoveredLocal3 := recoveredBlock125Stack0.
            recoveredBlock125PC := 163.
        ].
        recoveredBlock125Step = 163 ifTrue: [
            recoveredBlock125Stack0 := recoveredLocal1.
            recoveredBlock125PC := 166.
        ].
        recoveredBlock125Step = 166 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal3.
            recoveredBlock125PC := 169.
        ].
        recoveredBlock125Step = 169 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) + (recoveredBlock125Stack1).
            recoveredBlock125PC := 170.
        ].
        recoveredBlock125Step = 170 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal2.
            recoveredBlock125PC := 173.
        ].
        recoveredBlock125Step = 173 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) size.
            recoveredBlock125PC := 175.
        ].
        recoveredBlock125Step = 175 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) > (recoveredBlock125Stack1).
            recoveredBlock125PC := 176.
        ].
        recoveredBlock125Step = 176 ifTrue: [
            (recoveredBlock125Stack0) ifTrue: [recoveredBlock125PC := 180] ifFalse: [recoveredBlock125PC := 216].
        ].
        recoveredBlock125Step = 180 ifTrue: [
            recoveredBlock125Stack0 := recoveredArg2.
            recoveredBlock125PC := 183.
        ].
        recoveredBlock125Step = 183 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal2.
            recoveredBlock125PC := 186.
        ].
        recoveredBlock125Step = 186 ifTrue: [
            recoveredBlock125Stack2 := 1.
            recoveredBlock125PC := 188.
        ].
        recoveredBlock125Step = 188 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal1.
            recoveredBlock125PC := 191.
        ].
        recoveredBlock125Step = 191 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) write: (recoveredBlock125Stack1) startingAt: (recoveredBlock125Stack2) nbyte: (recoveredBlock125Stack3).
            recoveredBlock125PC := 194.
        ].
        recoveredBlock125Step = 194 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal1.
            recoveredBlock125PC := 197.
        ].
        recoveredBlock125Step = 197 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) = (recoveredBlock125Stack1).
            recoveredBlock125PC := 198.
        ].
        recoveredBlock125Step = 198 ifTrue: [
            (recoveredBlock125Stack0) ifTrue: [recoveredBlock125PC := 211] ifFalse: [recoveredBlock125PC := 202].
        ].
        recoveredBlock125Step = 202 ifTrue: [
            recoveredBlock125Stack0 := CgFileFormat.
            recoveredBlock125PC := 204.
        ].
        recoveredBlock125Step = 204 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) exception.
            recoveredBlock125PC := 206.
        ].
        recoveredBlock125Step = 206 ifTrue: [
            recoveredBlock125Stack1 := 8.
            recoveredBlock125PC := 208.
        ].
        recoveredBlock125Step = 208 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) signalWith: (recoveredBlock125Stack1).
            recoveredBlock125PC := 210.
        ].
        recoveredBlock125Step = 210 ifTrue: [
            ^recoveredBlock125Stack0
        ].
        recoveredBlock125Step = 211 ifTrue: [
            recoveredBlock125Stack0 := 0.
            recoveredBlock125PC := 213.
        ].
        recoveredBlock125Step = 213 ifTrue: [
            recoveredLocal1 := recoveredBlock125Stack0.
            recoveredBlock125PC := 216.
        ].
        recoveredBlock125Step = 216 ifTrue: [
            recoveredBlock125Stack0 := recoveredLocal2.
            recoveredBlock125PC := 219.
        ].
        recoveredBlock125Step = 219 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal1.
            recoveredBlock125PC := 222.
        ].
        recoveredBlock125Step = 222 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) + (1).
            recoveredBlock125PC := 223.
        ].
        recoveredBlock125Step = 223 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal1.
            recoveredBlock125PC := 226.
        ].
        recoveredBlock125Step = 226 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal3.
            recoveredBlock125PC := 229.
        ].
        recoveredBlock125Step = 229 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) + (recoveredBlock125Stack3).
            recoveredBlock125PC := 230.
        ].
        recoveredBlock125Step = 230 ifTrue: [
            recoveredBlock125Stack3 := recoveredLocal7.
            recoveredBlock125PC := 233.
        ].
        recoveredBlock125Step = 233 ifTrue: [
            recoveredBlock125Stack4 := 1.
            recoveredBlock125PC := 235.
        ].
        recoveredBlock125Step = 235 ifTrue: [
            (recoveredBlock125Stack0) replaceFrom: (recoveredBlock125Stack1) to: (recoveredBlock125Stack2) with: (recoveredBlock125Stack3) startingAt: (recoveredBlock125Stack4).
            recoveredBlock125PC := 238.
        ].
        recoveredBlock125Step = 238 ifTrue: [
            recoveredBlock125Stack0 := recoveredLocal1.
            recoveredBlock125PC := 241.
        ].
        recoveredBlock125Step = 241 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal3.
            recoveredBlock125PC := 244.
        ].
        recoveredBlock125Step = 244 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) + (recoveredBlock125Stack1).
            recoveredBlock125PC := 245.
        ].
        recoveredBlock125Step = 245 ifTrue: [
            recoveredLocal1 := recoveredBlock125Stack0.
            recoveredBlock125PC := 248.
        ].
        recoveredBlock125Step = 248 ifTrue: [
            recoveredBlock125Stack0 := recoveredLocal4.
            recoveredBlock125PC := 251.
        ].
        recoveredBlock125Step = 251 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal3.
            recoveredBlock125PC := 254.
        ].
        recoveredBlock125Step = 254 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) + (recoveredBlock125Stack1).
            recoveredBlock125PC := 255.
        ].
        recoveredBlock125Step = 255 ifTrue: [
            recoveredLocal4 := recoveredBlock125Stack0.
            recoveredBlock125PC := 258.
        ].
        recoveredBlock125Step = 258 ifTrue: [
            recoveredBlock125Stack0 := recoveredLocal6.
            recoveredBlock125PC := 261.
        ].
        recoveredBlock125Step = 261 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal8.
            recoveredBlock125PC := 264.
        ].
        recoveredBlock125Step = 264 ifTrue: [
            recoveredBlock125Stack0 := (recoveredBlock125Stack0) - (recoveredBlock125Stack1).
            recoveredBlock125PC := 265.
        ].
        recoveredBlock125Step = 265 ifTrue: [
            recoveredBlock125Stack1 := recoveredBlock125Stack0.
            recoveredBlock125PC := 266.
        ].
        recoveredBlock125Step = 266 ifTrue: [
            recoveredLocal6 := recoveredBlock125Stack1.
            recoveredBlock125PC := 269.
        ].
        recoveredBlock125Step = 269 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack0.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 313].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) write: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200458b0; bytecode file offset 0xc1ab4"
!CgWinBMPFileFormat methodsFor: 'recovered'!
unloadDataNoCompression: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 32678.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerLine.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Stack0 recoveredBlock111Stack1 recoveredBlock111Stack2 recoveredBlock111Stack3 recoveredBlock111Stack4 recoveredBlock111Stack5 recoveredBlock111Stack6 recoveredBlock111PC recoveredBlock111Step recoveredBlock111Done recoveredBlock111Result |
    recoveredBlock111Stack0 := self.
    recoveredBlock111PC := 118.
    recoveredBlock111Done := false.
    [recoveredBlock111Done not] whileTrue: [
        recoveredBlock111Step := recoveredBlock111PC.
        recoveredBlock111Step = 118 ifTrue: [
            recoveredBlock111Stack1 := recoveredArg1.
            recoveredBlock111PC := 121.
        ].
        recoveredBlock111Step = 121 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) height.
            recoveredBlock111PC := 123.
        ].
        recoveredBlock111Step = 123 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Arg1.
            recoveredBlock111PC := 124.
        ].
        recoveredBlock111Step = 124 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) - (recoveredBlock111Stack2).
            recoveredBlock111PC := 125.
        ].
        recoveredBlock111Step = 125 ifTrue: [
            recoveredBlock111Stack2 := recoveredLocal7.
            recoveredBlock111PC := 128.
        ].
        recoveredBlock111Step = 128 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) min: (recoveredBlock111Stack2).
            recoveredBlock111PC := 130.
        ].
        recoveredBlock111Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock111Stack1.
            recoveredBlock111PC := 133.
        ].
        recoveredBlock111Step = 133 ifTrue: [
            recoveredBlock111Stack1 := 0.
            recoveredBlock111PC := 135.
        ].
        recoveredBlock111Step = 135 ifTrue: [
            recoveredLocal1 := recoveredBlock111Stack1.
            recoveredBlock111PC := 138.
        ].
        recoveredBlock111Step = 138 ifTrue: [
            recoveredBlock111Stack1 := recoveredLocal2.
            recoveredBlock111PC := 141.
        ].
        recoveredBlock111Step = 141 ifTrue: [
            recoveredBlock111PC := 218.
        ].
        recoveredBlock111Step = 144 ifTrue: [
            recoveredBlock111Stack2 := 1.
            recoveredBlock111PC := 146.
        ].
        recoveredBlock111Step = 146 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal9.
            recoveredBlock111PC := 149.
        ].
        recoveredBlock111Step = 149 ifTrue: [
            recoveredBlock111Stack4 := 2.
            recoveredBlock111PC := 151.
        ].
        recoveredBlock111Step = 151 ifTrue: [
            recoveredBlock111Stack5 := [:recoveredBlock111Block151Arg1 | 
    | recoveredBlock111Block151Value0 recoveredBlock111Block151Value1 recoveredBlock111Block151Value2 recoveredBlock111Block151Value3 recoveredBlock111Block151Value4 recoveredBlock111Block151Value5 recoveredBlock111Block151Value6 recoveredBlock111Block151Value7 recoveredBlock111Block151Value8 recoveredBlock111Block151Value9 recoveredBlock111Block151Value10 recoveredBlock111Block151Value11 recoveredBlock111Block151Value12 recoveredBlock111Block151Value13 recoveredBlock111Block151Value14 recoveredBlock111Block151Value15 recoveredBlock111Block151Value16 |
    recoveredBlock111Block151Value0 := recoveredLocal6.
    recoveredBlock111Block151Value1 := recoveredBlock111Block151Value0.
    recoveredBlock111Block151Value2 := recoveredLocal1.
    recoveredBlock111Block151Value3 := recoveredBlock111Block151Arg1.
    recoveredBlock111Block151Value4 := (recoveredBlock111Block151Value2) + (recoveredBlock111Block151Value3).
    recoveredBlock111Block151Value5 := recoveredLocal4.
    recoveredBlock111Block151Value6 := recoveredLocal5.
    recoveredBlock111Block151Value7 := (recoveredBlock111Block151Value6) + (1).
    recoveredBlock111Block151Value8 := (recoveredBlock111Block151Value5) at: (recoveredBlock111Block151Value7).
    (recoveredBlock111Block151Value1) at: (recoveredBlock111Block151Value4) put: (recoveredBlock111Block151Value8).
    recoveredBlock111Block151Value9 := recoveredLocal1.
    recoveredBlock111Block151Value10 := recoveredBlock111Block151Arg1.
    recoveredBlock111Block151Value11 := (recoveredBlock111Block151Value9) + (recoveredBlock111Block151Value10).
    recoveredBlock111Block151Value12 := (recoveredBlock111Block151Value11) + (1).
    recoveredBlock111Block151Value13 := recoveredLocal4.
    recoveredBlock111Block151Value14 := recoveredLocal5.
    recoveredBlock111Block151Value15 := (recoveredBlock111Block151Value13) at: (recoveredBlock111Block151Value14).
    recoveredBlock111Block151Value16 := (recoveredBlock111Block151Value0) at: (recoveredBlock111Block151Value12) put: (recoveredBlock111Block151Value15).
    recoveredBlock111Block151Value16
].
            recoveredBlock111PC := 195.
        ].
        recoveredBlock111Step = 195 ifTrue: [
            (recoveredBlock111Stack2) to: (recoveredBlock111Stack3) by: (recoveredBlock111Stack4) do: (recoveredBlock111Stack5).
            recoveredBlock111PC := 198.
        ].
        recoveredBlock111Step = 198 ifTrue: [
            recoveredBlock111Stack2 := recoveredLocal1.
            recoveredBlock111PC := 201.
        ].
        recoveredBlock111Step = 201 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal8.
            recoveredBlock111PC := 204.
        ].
        recoveredBlock111Step = 204 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) + (recoveredBlock111Stack3).
            recoveredBlock111PC := 205.
        ].
        recoveredBlock111Step = 205 ifTrue: [
            recoveredLocal1 := recoveredBlock111Stack2.
            recoveredBlock111PC := 208.
        ].
        recoveredBlock111Step = 208 ifTrue: [
            recoveredBlock111Stack2 := recoveredLocal5.
            recoveredBlock111PC := 211.
        ].
        recoveredBlock111Step = 211 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal3.
            recoveredBlock111PC := 214.
        ].
        recoveredBlock111Step = 214 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) - (recoveredBlock111Stack3).
            recoveredBlock111PC := 215.
        ].
        recoveredBlock111Step = 215 ifTrue: [
            recoveredLocal5 := recoveredBlock111Stack2.
            recoveredBlock111PC := 218.
        ].
        recoveredBlock111Step = 218 ifTrue: [
            (recoveredBlock111Stack1 isInteger) ifTrue: [(recoveredBlock111Stack1 > 0) ifTrue: [recoveredBlock111Stack1 := recoveredBlock111Stack1 - 1. recoveredBlock111PC := 144] ifFalse: [recoveredBlock111PC := 228]] ifFalse: [recoveredBlock111PC := 221].
        ].
        recoveredBlock111Step = 221 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) + (-1).
            recoveredBlock111PC := 222.
        ].
        recoveredBlock111Step = 222 ifTrue: [
            recoveredBlock111Stack2 := recoveredBlock111Stack1.
            recoveredBlock111PC := 223.
        ].
        recoveredBlock111Step = 223 ifTrue: [
            recoveredBlock111Stack3 := 0.
            recoveredBlock111PC := 225.
        ].
        recoveredBlock111Step = 225 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) >= (recoveredBlock111Stack3).
            recoveredBlock111PC := 226.
        ].
        recoveredBlock111Step = 226 ifTrue: [
            (recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 144] ifFalse: [recoveredBlock111PC := 228].
        ].
        recoveredBlock111Step = 228 ifTrue: [
            recoveredBlock111PC := 229.
        ].
        recoveredBlock111Step = 229 ifTrue: [
            recoveredBlock111Stack1 := nil.
            recoveredBlock111PC := 230.
        ].
        recoveredBlock111Step = 230 ifTrue: [
            recoveredBlock111Stack2 := recoveredArg2.
            recoveredBlock111PC := 233.
        ].
        recoveredBlock111Step = 233 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal6.
            recoveredBlock111PC := 236.
        ].
        recoveredBlock111Step = 236 ifTrue: [
            recoveredBlock111Stack4 := 1.
            recoveredBlock111PC := 238.
        ].
        recoveredBlock111Step = 238 ifTrue: [
            recoveredBlock111Stack5 := recoveredLocal1.
            recoveredBlock111PC := 241.
        ].
        recoveredBlock111Step = 241 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) write: (recoveredBlock111Stack3) startingAt: (recoveredBlock111Stack4) nbyte: (recoveredBlock111Stack5).
            recoveredBlock111PC := 244.
        ].
        recoveredBlock111Step = 244 ifTrue: [
            recoveredBlock111Stack3 := recoveredLocal1.
            recoveredBlock111PC := 247.
        ].
        recoveredBlock111Step = 247 ifTrue: [
            recoveredBlock111Stack2 := (recoveredBlock111Stack2) = (recoveredBlock111Stack3).
            recoveredBlock111PC := 248.
        ].
        recoveredBlock111Step = 248 ifTrue: [
            (recoveredBlock111Stack2) ifTrue: [recoveredBlock111PC := 262] ifFalse: [recoveredBlock111PC := 252].
        ].
        recoveredBlock111Step = 252 ifTrue: [
            recoveredBlock111PC := 253.
        ].
        recoveredBlock111Step = 253 ifTrue: [
            recoveredBlock111Stack1 := CgFileFormat.
            recoveredBlock111PC := 255.
        ].
        recoveredBlock111Step = 255 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) exception.
            recoveredBlock111PC := 257.
        ].
        recoveredBlock111Step = 257 ifTrue: [
            recoveredBlock111Stack2 := 8.
            recoveredBlock111PC := 259.
        ].
        recoveredBlock111Step = 259 ifTrue: [
            recoveredBlock111Stack1 := (recoveredBlock111Stack1) signalWith: (recoveredBlock111Stack2).
            recoveredBlock111PC := 261.
        ].
        recoveredBlock111Step = 261 ifTrue: [
            ^recoveredBlock111Stack1
        ].
        recoveredBlock111Step = 262 ifTrue: [
            recoveredBlock111Result := recoveredBlock111Stack1.
            recoveredBlock111Done := true.
        ].
    ].
    recoveredBlock111Result
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredPC := 404.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Stack0 recoveredBlock281Stack1 recoveredBlock281Stack2 recoveredBlock281Stack3 recoveredBlock281Stack4 recoveredBlock281Stack5 recoveredBlock281Stack6 recoveredBlock281Stack7 recoveredBlock281PC recoveredBlock281Step recoveredBlock281Done recoveredBlock281Result |
    recoveredBlock281Stack0 := self.
    recoveredBlock281PC := 288.
    recoveredBlock281Done := false.
    [recoveredBlock281Done not] whileTrue: [
        recoveredBlock281Step := recoveredBlock281PC.
        recoveredBlock281Step = 288 ifTrue: [
            recoveredBlock281Stack1 := recoveredArg1.
            recoveredBlock281PC := 291.
        ].
        recoveredBlock281Step = 291 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) height.
            recoveredBlock281PC := 293.
        ].
        recoveredBlock281Step = 293 ifTrue: [
            recoveredBlock281Stack2 := recoveredBlock281Arg1.
            recoveredBlock281PC := 294.
        ].
        recoveredBlock281Step = 294 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) - (recoveredBlock281Stack2).
            recoveredBlock281PC := 295.
        ].
        recoveredBlock281Step = 295 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal7.
            recoveredBlock281PC := 298.
        ].
        recoveredBlock281Step = 298 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) min: (recoveredBlock281Stack2).
            recoveredBlock281PC := 300.
        ].
        recoveredBlock281Step = 300 ifTrue: [
            recoveredLocal2 := recoveredBlock281Stack1.
            recoveredBlock281PC := 303.
        ].
        recoveredBlock281Step = 303 ifTrue: [
            recoveredBlock281Stack1 := 0.
            recoveredBlock281PC := 305.
        ].
        recoveredBlock281Step = 305 ifTrue: [
            recoveredLocal1 := recoveredBlock281Stack1.
            recoveredBlock281PC := 308.
        ].
        recoveredBlock281Step = 308 ifTrue: [
            recoveredBlock281Stack1 := recoveredLocal2.
            recoveredBlock281PC := 311.
        ].
        recoveredBlock281Step = 311 ifTrue: [
            recoveredBlock281PC := 357.
        ].
        recoveredBlock281Step = 314 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal6.
            recoveredBlock281PC := 317.
        ].
        recoveredBlock281Step = 317 ifTrue: [
            recoveredBlock281Stack3 := recoveredLocal1.
            recoveredBlock281PC := 320.
        ].
        recoveredBlock281Step = 320 ifTrue: [
            recoveredBlock281Stack3 := (recoveredBlock281Stack3) + (1).
            recoveredBlock281PC := 321.
        ].
        recoveredBlock281Step = 321 ifTrue: [
            recoveredBlock281Stack4 := recoveredLocal1.
            recoveredBlock281PC := 324.
        ].
        recoveredBlock281Step = 324 ifTrue: [
            recoveredBlock281Stack5 := recoveredLocal9.
            recoveredBlock281PC := 327.
        ].
        recoveredBlock281Step = 327 ifTrue: [
            recoveredBlock281Stack4 := (recoveredBlock281Stack4) + (recoveredBlock281Stack5).
            recoveredBlock281PC := 328.
        ].
        recoveredBlock281Step = 328 ifTrue: [
            recoveredBlock281Stack5 := recoveredLocal4.
            recoveredBlock281PC := 331.
        ].
        recoveredBlock281Step = 331 ifTrue: [
            recoveredBlock281Stack6 := recoveredLocal5.
            recoveredBlock281PC := 334.
        ].
        recoveredBlock281Step = 334 ifTrue: [
            (recoveredBlock281Stack2) replaceFrom: (recoveredBlock281Stack3) to: (recoveredBlock281Stack4) with: (recoveredBlock281Stack5) startingAt: (recoveredBlock281Stack6).
            recoveredBlock281PC := 337.
        ].
        recoveredBlock281Step = 337 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal1.
            recoveredBlock281PC := 340.
        ].
        recoveredBlock281Step = 340 ifTrue: [
            recoveredBlock281Stack3 := recoveredLocal8.
            recoveredBlock281PC := 343.
        ].
        recoveredBlock281Step = 343 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) + (recoveredBlock281Stack3).
            recoveredBlock281PC := 344.
        ].
        recoveredBlock281Step = 344 ifTrue: [
            recoveredLocal1 := recoveredBlock281Stack2.
            recoveredBlock281PC := 347.
        ].
        recoveredBlock281Step = 347 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal5.
            recoveredBlock281PC := 350.
        ].
        recoveredBlock281Step = 350 ifTrue: [
            recoveredBlock281Stack3 := recoveredLocal3.
            recoveredBlock281PC := 353.
        ].
        recoveredBlock281Step = 353 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) - (recoveredBlock281Stack3).
            recoveredBlock281PC := 354.
        ].
        recoveredBlock281Step = 354 ifTrue: [
            recoveredLocal5 := recoveredBlock281Stack2.
            recoveredBlock281PC := 357.
        ].
        recoveredBlock281Step = 357 ifTrue: [
            (recoveredBlock281Stack1 isInteger) ifTrue: [(recoveredBlock281Stack1 > 0) ifTrue: [recoveredBlock281Stack1 := recoveredBlock281Stack1 - 1. recoveredBlock281PC := 314] ifFalse: [recoveredBlock281PC := 367]] ifFalse: [recoveredBlock281PC := 360].
        ].
        recoveredBlock281Step = 360 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) + (-1).
            recoveredBlock281PC := 361.
        ].
        recoveredBlock281Step = 361 ifTrue: [
            recoveredBlock281Stack2 := recoveredBlock281Stack1.
            recoveredBlock281PC := 362.
        ].
        recoveredBlock281Step = 362 ifTrue: [
            recoveredBlock281Stack3 := 0.
            recoveredBlock281PC := 364.
        ].
        recoveredBlock281Step = 364 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) >= (recoveredBlock281Stack3).
            recoveredBlock281PC := 365.
        ].
        recoveredBlock281Step = 365 ifTrue: [
            (recoveredBlock281Stack2) ifTrue: [recoveredBlock281PC := 314] ifFalse: [recoveredBlock281PC := 367].
        ].
        recoveredBlock281Step = 367 ifTrue: [
            recoveredBlock281PC := 368.
        ].
        recoveredBlock281Step = 368 ifTrue: [
            recoveredBlock281Stack1 := nil.
            recoveredBlock281PC := 369.
        ].
        recoveredBlock281Step = 369 ifTrue: [
            recoveredBlock281Stack2 := recoveredArg2.
            recoveredBlock281PC := 372.
        ].
        recoveredBlock281Step = 372 ifTrue: [
            recoveredBlock281Stack3 := recoveredLocal6.
            recoveredBlock281PC := 375.
        ].
        recoveredBlock281Step = 375 ifTrue: [
            recoveredBlock281Stack4 := 1.
            recoveredBlock281PC := 377.
        ].
        recoveredBlock281Step = 377 ifTrue: [
            recoveredBlock281Stack5 := recoveredLocal1.
            recoveredBlock281PC := 380.
        ].
        recoveredBlock281Step = 380 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) write: (recoveredBlock281Stack3) startingAt: (recoveredBlock281Stack4) nbyte: (recoveredBlock281Stack5).
            recoveredBlock281PC := 383.
        ].
        recoveredBlock281Step = 383 ifTrue: [
            recoveredBlock281Stack3 := recoveredLocal1.
            recoveredBlock281PC := 386.
        ].
        recoveredBlock281Step = 386 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) = (recoveredBlock281Stack3).
            recoveredBlock281PC := 387.
        ].
        recoveredBlock281Step = 387 ifTrue: [
            (recoveredBlock281Stack2) ifTrue: [recoveredBlock281PC := 400] ifFalse: [recoveredBlock281PC := 390].
        ].
        recoveredBlock281Step = 390 ifTrue: [
            recoveredBlock281PC := 391.
        ].
        recoveredBlock281Step = 391 ifTrue: [
            recoveredBlock281Stack1 := CgFileFormat.
            recoveredBlock281PC := 393.
        ].
        recoveredBlock281Step = 393 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) exception.
            recoveredBlock281PC := 395.
        ].
        recoveredBlock281Step = 395 ifTrue: [
            recoveredBlock281Stack2 := 8.
            recoveredBlock281PC := 397.
        ].
        recoveredBlock281Step = 397 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) signalWith: (recoveredBlock281Stack2).
            recoveredBlock281PC := 399.
        ].
        recoveredBlock281Step = 399 ifTrue: [
            ^recoveredBlock281Stack1
        ].
        recoveredBlock281Step = 400 ifTrue: [
            recoveredBlock281Result := recoveredBlock281Stack1.
            recoveredBlock281Done := true.
        ].
    ].
    recoveredBlock281Result
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200465b4; bytecode file offset 0xc2830"
!CgWinBMPFileFormat methodsFor: 'recovered'!
unload: recoveredArg1 intoByteStream: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #(1 4 8 16 24).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) compression.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := CgDirectPalette.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) paletteToBytes: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileHeaderPattern.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatLength: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := CgWinBMPInfoHeader.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := CgWinBMPInfoHeader.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := CgWinBMPInfoHeader.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) headerSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) planes: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) bitCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) compression: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) pelsPerMeter.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) xPelsPerMeter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := (recoveredStack2) pelsPerMeter.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) yPelsPerMeter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) clrUsed: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) importantColors.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) clrImportant: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 319] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) write: (recoveredStack1) startingAt: (recoveredStack2) nbyte: (recoveredStack3).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 359] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) unloadData: (recoveredStack1) into: (recoveredStack2) compression: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) sizeImage: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 407] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileHeaderPattern.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeFormatLE: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 433] ifFalse: [recoveredPC := 424].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStructLE: (recoveredStack1).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 451] ifFalse: [recoveredPC := 442].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

