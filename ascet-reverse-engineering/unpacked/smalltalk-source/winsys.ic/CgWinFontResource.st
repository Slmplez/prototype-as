"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000151c; bytecode file offset 0x7d728"
!CgWinFontResource methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := handle.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"winsys.ic method 0x2000bf2c; bytecode file offset 0x880f8"
!CgWinFontResource methodsFor: 'recovered'!
unloadFont
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := server.
    recoveredValue1 := (recoveredValue0) dcCache.
    (recoveredValue1) clear.
    recoveredValue2 := handle.
    (recoveredValue2) deleteObject.
    handle := nil.
    ^self
! !

"winsys.ic method 0x2000d8e4; bytecode file offset 0x89ab4"
!CgWinFontResource methodsFor: 'recovered'!
logFont
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := handle.
    recoveredValue1 := OSLogfont.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := OSLogfont.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    (recoveredValue0) getObject: (recoveredValue2) lpvObject: (recoveredValue4).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"winsys.ic method 0x200150b0; bytecode file offset 0x91278"
!CgWinFontResource methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) handle.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2001575c; bytecode file offset 0x91938"
!CgWinFontResource methodsFor: 'recovered'!
textMetrics
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) server.
    recoveredValue1 := (recoveredValue0) deviceContext.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (self) handle.
    recoveredValue4 := (recoveredValue2) selectObject: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := OSTextmetric.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    (recoveredValue5) getTextMetrics: (recoveredValue7).
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) selectObject: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"winsys.ic method 0x2001e0fc; bytecode file offset 0x9a2e4"
!CgWinFontResource methodsFor: 'recovered'!
initializeInfoProperties: recoveredArg1 properties: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            super initializeInfoProperties: (recoveredStack1) properties: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := logFont.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) lfPitchAndFamily.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := FixedPitch.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'M'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'P'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'spacing'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringProperty: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200209ac; bytecode file offset 0x9cb94"
!CgWinFontResource methodsFor: 'recovered'!
initializeInfo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := CgFontInformation.
    recoveredValue1 := (recoveredValue0) new.
    info := recoveredValue1.
    recoveredValue2 := (self) logFont.
    logFont := recoveredValue2.
    recoveredValue3 := server.
    recoveredValue4 := (recoveredValue3) deviceContext.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := handle.
    recoveredValue7 := (recoveredValue5) selectObject: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := OSTextmetric.
    recoveredValue10 := (recoveredValue9) new.
    recoveredValue11 := recoveredValue10.
    textMetrics := recoveredValue11.
    (recoveredValue8) getTextMetrics: (recoveredValue10).
    (self) initializeInfoBase.
    recoveredValue12 := recoveredLocal2.
    (self) initializeInfoBounds: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (self) initializeInfoProperties: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) selectObject: (recoveredValue15).
    ^self
! !

"winsys.ic method 0x2002deec; bytecode file offset 0xaa0e0"
!CgWinFontResource methodsFor: 'recovered'!
validateLeadBytes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastRow.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 46.
        ].
        recoveredBlock37Step = 46 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) value.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack3 := 256.
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) // (recoveredBlock37Stack3).
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Stack2.
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock37Stack3.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack3 := 0.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            (recoveredBlock37Stack2 == recoveredBlock37Stack3) ifTrue: [recoveredBlock37PC := 92] ifFalse: [recoveredBlock37PC := 62].
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Stack2 := PlatformString.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack3 := recoveredLocal1.
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) isLeadByte: (recoveredBlock37Stack3).
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 92] ifFalse: [recoveredBlock37PC := 72].
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack1 := DBString.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 78.
        ].
        recoveredBlock37Step = 78 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) size.
            recoveredBlock37PC := 80.
        ].
        recoveredBlock37Step = 80 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) new: (recoveredBlock37Stack2).
            recoveredBlock37PC := 82.
        ].
        recoveredBlock37Step = 82 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Stack1.
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            recoveredBlock37Stack3 := info.
            recoveredBlock37PC := 85.
        ].
        recoveredBlock37Step = 85 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) defaultCh.
            recoveredBlock37PC := 87.
        ].
        recoveredBlock37Step = 87 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) asCharacter.
            recoveredBlock37PC := 89.
        ].
        recoveredBlock37Step = 89 ifTrue: [
            (recoveredBlock37Stack2) atAllPut: (recoveredBlock37Stack3).
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            ^recoveredBlock37Stack1
        ].
        recoveredBlock37Step = 92 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20034864; bytecode file offset 0xb0a88"
!CgWinFontResource methodsFor: 'recovered'!
initializeInfoBase
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := textMetrics.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmFirstChar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := textMetrics.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := (recoveredStack4) tmLastChar.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) firstCol: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := textMetrics.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmFirstChar.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := textMetrics.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) tmLastChar.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) lastCol: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) firstRow: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := textMetrics.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) tmCharSet.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ShiftjisCharset.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 255.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := PlatformString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) isLeadByte: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 62] ifFalse: [recoveredLocal1 := nil. recoveredPC := 92]] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) lastRow: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := textMetrics.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmDefaultChar.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) defaultCh: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) allExist: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := FontLeftToRight.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) drawDirection: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) anamorphic: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := textMetrics.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmAscent.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) fontAscent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := textMetrics.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) tmDescent.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) fontDescent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) constantMetrics: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) noOverlap: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003ba0c; bytecode file offset 0xb7c1c"
!CgWinFontResource methodsFor: 'recovered'!
getMetrics: recoveredArg1 encoding: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deviceContext.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := handle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectObject: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := OSSize.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontDescent.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) asCharacter.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) getTextExtentPoint: (recoveredStack3) cbString: (recoveredStack4) lpSize: (recoveredStack5).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := 256.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := (recoveredStack4) \\ (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := (recoveredStack4) asCharacter.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := 256.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) asCharacter.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) getTextExtentPoint: (recoveredStack3) cbString: (recoveredStack4) lpSize: (recoveredStack5).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) cx.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) cy.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := CgCharStruct.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack6 := (recoveredStack6) - (recoveredStack7).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) lbearing: (recoveredStack3) rbearing: (recoveredStack4) width: (recoveredStack5) ascent: (recoveredStack6) descent: (recoveredStack7) attributes: (recoveredStack8).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 56] ifFalse: [recoveredLocal1 := nil. recoveredPC := 192]] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) selectObject: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003fd68; bytecode file offset 0xbbf74"
!CgWinFontResource methodsFor: 'recovered'!
initializeInfoBounds: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 10000.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := -10000.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) charInfoForRow: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastRow.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := PlatformString.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLeadByte: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 255.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) charInfoForRow: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Stack0 recoveredBlock115Stack1 recoveredBlock115Stack2 recoveredBlock115Stack3 recoveredBlock115Stack4 recoveredBlock115PC recoveredBlock115Step recoveredBlock115Done recoveredBlock115Result |
    recoveredBlock115Stack0 := self.
    recoveredBlock115PC := 122.
    recoveredBlock115Done := false.
    [recoveredBlock115Done not] whileTrue: [
        recoveredBlock115Step := recoveredBlock115PC.
        recoveredBlock115Step = 122 ifTrue: [
            recoveredBlock115Stack1 := recoveredBlock115Arg1.
            recoveredBlock115PC := 123.
        ].
        recoveredBlock115Step = 123 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) width.
            recoveredBlock115PC := 125.
        ].
        recoveredBlock115Step = 125 ifTrue: [
            recoveredLocal2 := recoveredBlock115Stack1.
            recoveredBlock115PC := 128.
        ].
        recoveredBlock115Step = 128 ifTrue: [
            recoveredBlock115Stack1 := recoveredBlock115Arg1.
            recoveredBlock115PC := 129.
        ].
        recoveredBlock115Step = 129 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) height.
            recoveredBlock115PC := 131.
        ].
        recoveredBlock115Step = 131 ifTrue: [
            recoveredLocal1 := recoveredBlock115Stack1.
            recoveredBlock115PC := 134.
        ].
        recoveredBlock115Step = 134 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal2.
            recoveredBlock115PC := 137.
        ].
        recoveredBlock115Step = 137 ifTrue: [
            recoveredBlock115Stack2 := recoveredLocal6.
            recoveredBlock115PC := 140.
        ].
        recoveredBlock115Step = 140 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) < (recoveredBlock115Stack2).
            recoveredBlock115PC := 141.
        ].
        recoveredBlock115Step = 141 ifTrue: [
            (recoveredBlock115Stack1) ifTrue: [recoveredBlock115PC := 144] ifFalse: [recoveredBlock115PC := 150].
        ].
        recoveredBlock115Step = 144 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal2.
            recoveredBlock115PC := 147.
        ].
        recoveredBlock115Step = 147 ifTrue: [
            recoveredLocal6 := recoveredBlock115Stack1.
            recoveredBlock115PC := 150.
        ].
        recoveredBlock115Step = 150 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal2.
            recoveredBlock115PC := 153.
        ].
        recoveredBlock115Step = 153 ifTrue: [
            recoveredBlock115Stack2 := recoveredLocal5.
            recoveredBlock115PC := 156.
        ].
        recoveredBlock115Step = 156 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) > (recoveredBlock115Stack2).
            recoveredBlock115PC := 157.
        ].
        recoveredBlock115Step = 157 ifTrue: [
            (recoveredBlock115Stack1) ifTrue: [recoveredBlock115PC := 160] ifFalse: [recoveredBlock115PC := 166].
        ].
        recoveredBlock115Step = 160 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal2.
            recoveredBlock115PC := 163.
        ].
        recoveredBlock115Step = 163 ifTrue: [
            recoveredLocal5 := recoveredBlock115Stack1.
            recoveredBlock115PC := 166.
        ].
        recoveredBlock115Step = 166 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal1.
            recoveredBlock115PC := 169.
        ].
        recoveredBlock115Step = 169 ifTrue: [
            recoveredBlock115Stack2 := recoveredLocal4.
            recoveredBlock115PC := 172.
        ].
        recoveredBlock115Step = 172 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) < (recoveredBlock115Stack2).
            recoveredBlock115PC := 173.
        ].
        recoveredBlock115Step = 173 ifTrue: [
            (recoveredBlock115Stack1) ifTrue: [recoveredBlock115PC := 176] ifFalse: [recoveredBlock115PC := 182].
        ].
        recoveredBlock115Step = 176 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal1.
            recoveredBlock115PC := 179.
        ].
        recoveredBlock115Step = 179 ifTrue: [
            recoveredLocal4 := recoveredBlock115Stack1.
            recoveredBlock115PC := 182.
        ].
        recoveredBlock115Step = 182 ifTrue: [
            recoveredBlock115Stack1 := nil.
            recoveredBlock115PC := 183.
        ].
        recoveredBlock115Step = 183 ifTrue: [
            recoveredBlock115Stack2 := recoveredLocal1.
            recoveredBlock115PC := 186.
        ].
        recoveredBlock115Step = 186 ifTrue: [
            recoveredBlock115Stack3 := recoveredLocal3.
            recoveredBlock115PC := 189.
        ].
        recoveredBlock115Step = 189 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) > (recoveredBlock115Stack3).
            recoveredBlock115PC := 190.
        ].
        recoveredBlock115Step = 190 ifTrue: [
            (recoveredBlock115Stack2) ifTrue: [recoveredBlock115PC := 194] ifFalse: [recoveredBlock115PC := 202].
        ].
        recoveredBlock115Step = 194 ifTrue: [
            recoveredBlock115PC := 195.
        ].
        recoveredBlock115Step = 195 ifTrue: [
            recoveredBlock115Stack1 := recoveredLocal1.
            recoveredBlock115PC := 198.
        ].
        recoveredBlock115Step = 198 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Stack1.
            recoveredBlock115PC := 199.
        ].
        recoveredBlock115Step = 199 ifTrue: [
            recoveredLocal3 := recoveredBlock115Stack2.
            recoveredBlock115PC := 202.
        ].
        recoveredBlock115Step = 202 ifTrue: [
            recoveredBlock115Result := recoveredBlock115Stack1.
            recoveredBlock115Done := true.
        ].
    ].
    recoveredBlock115Result
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := CgCharStruct.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack6 := info.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack6 := (recoveredStack6) fontDescent.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack6 := info.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack6 := (recoveredStack6) fontDescent.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) lbearing: (recoveredStack2) rbearing: (recoveredStack3) width: (recoveredStack4) ascent: (recoveredStack5) descent: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) minbounds: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := CgCharStruct.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack6 := info.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack6 := (recoveredStack6) fontDescent.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack6 := info.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack6 := (recoveredStack6) fontDescent.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) lbearing: (recoveredStack2) rbearing: (recoveredStack3) width: (recoveredStack4) ascent: (recoveredStack5) descent: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) maxbounds: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) minbounds.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) inkMinbounds: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxbounds.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) inkMaxbounds: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20041c00; bytecode file offset 0xbde30"
!CgWinFontResource methodsFor: 'recovered'!
charInfoForRow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1PQ26A7'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstCol.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := info.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastCol.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := CgCharStruct.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) zero.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) atAllPut: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLeadByte: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := CgCharStruct.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) zero.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) atAllPut: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) logFont.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            logFont := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := server.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceContext.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := handle.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectObject: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := OSSize.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := info.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontDescent.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := CgCharStruct.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) zero.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 294.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLeadByte: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) getTextExtentPoint: (recoveredStack2) cbString: (recoveredStack3) lpSize: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) cx: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) cx.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) cy.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := CgCharStruct.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := recoveredLocal11.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack6 := recoveredLocal8.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack6 := recoveredLocal8.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) lbearing: (recoveredStack2) rbearing: (recoveredStack3) width: (recoveredStack4) ascent: (recoveredStack5) descent: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 152] ifFalse: [recoveredLocal1 := nil. recoveredPC := 310]] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) selectObject: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

