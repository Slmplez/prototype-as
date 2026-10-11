"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200146a0; bytecode file offset 0x912098"
!EtasDoubleByteEncoding methodsFor: 'recovered'!
preferredStringClass
    | recoveredValue0 |
    recoveredValue0 := DBString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200760fc; bytecode file offset 0x9757c8"
!EtasDoubleByteEncoding methodsFor: 'recovered'!
isDoubleByte
    ^true
! !

"ASDBase.ic method 0x200818a8; bytecode file offset 0x97e234"
!EtasDoubleByteEncoding methodsFor: 'recovered'!
openAppend: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsProgressingReadWriteFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openAppendDB: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a63bc; bytecode file offset 0xaa2c8c"
!EtasDoubleByteEncoding methodsFor: 'recovered'!
openEmpty: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) nullTerminated.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromString: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CfsProgressingReadWriteFileStream.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmptyDB: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e3620; bytecode file offset 0xddff1c"
!EtasDoubleByteEncoding methodsFor: 'recovered'!
createFileStreamOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := codePage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 65001.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := EsLeadEncodedBytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) utf8FileMark.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) utf8FileMark.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := AbtCodePageConverter.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := AbtCodePageConverter.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) utf8CodePage.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := 1252.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2) fromCodePage: (recoveredStack3) toCodePage: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := super createFileStreamOn: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := codePage.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91Stack5 recoveredBlock91Stack6 recoveredBlock91Stack7 recoveredBlock91Stack8 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := EsLeadEncodedBytes.
            recoveredBlock91PC := 100.
        ].
        recoveredBlock91Step = 100 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg1.
            recoveredBlock91PC := 103.
        ].
        recoveredBlock91Step = 103 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) isEncoded: (recoveredBlock91Stack2).
            recoveredBlock91PC := 105.
        ].
        recoveredBlock91Step = 105 ifTrue: [
            (recoveredBlock91Stack1) ifTrue: [recoveredBlock91PC := 108] ifFalse: [recoveredBlock91PC := 144].
        ].
        recoveredBlock91Step = 108 ifTrue: [
            recoveredBlock91Stack1 := RBBcrtl32DLL.
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            recoveredBlock91Stack2 := EsLeadEncodedBytes.
            recoveredBlock91PC := 112.
        ].
        recoveredBlock91Step = 112 ifTrue: [
            recoveredBlock91Stack3 := recoveredArg1.
            recoveredBlock91PC := 115.
        ].
        recoveredBlock91Step = 115 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) size.
            recoveredBlock91PC := 116.
        ].
        recoveredBlock91Step = 116 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) new: (recoveredBlock91Stack3).
            recoveredBlock91PC := 118.
        ].
        recoveredBlock91Step = 118 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Stack2.
            recoveredBlock91PC := 119.
        ].
        recoveredBlock91Step = 119 ifTrue: [
            recoveredBlock91Stack4 := 1.
            recoveredBlock91PC := 121.
        ].
        recoveredBlock91Step = 121 ifTrue: [
            recoveredBlock91Stack5 := recoveredArg1.
            recoveredBlock91PC := 124.
        ].
        recoveredBlock91Step = 124 ifTrue: [
            recoveredBlock91Stack5 := (recoveredBlock91Stack5) size.
            recoveredBlock91PC := 125.
        ].
        recoveredBlock91Step = 125 ifTrue: [
            recoveredBlock91Stack6 := recoveredArg1.
            recoveredBlock91PC := 128.
        ].
        recoveredBlock91Step = 128 ifTrue: [
            recoveredBlock91Stack7 := 1.
            recoveredBlock91PC := 130.
        ].
        recoveredBlock91Step = 130 ifTrue: [
            (recoveredBlock91Stack3) replaceFrom: (recoveredBlock91Stack4) to: (recoveredBlock91Stack5) with: (recoveredBlock91Stack6) startingAt: (recoveredBlock91Stack7).
            recoveredBlock91PC := 133.
        ].
        recoveredBlock91Step = 133 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) asString.
            recoveredBlock91PC := 135.
        ].
        recoveredBlock91Step = 135 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) removeCCommentAndWhiteSpacesFromDBReturnStream: (recoveredBlock91Stack2).
            recoveredBlock91PC := 137.
        ].
        recoveredBlock91Step = 137 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 138.
        ].
        recoveredBlock91Step = 138 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack2.
            recoveredBlock91PC := 141.
        ].
        recoveredBlock91Step = 141 ifTrue: [
            recoveredBlock91PC := 156.
        ].
        recoveredBlock91Step = 144 ifTrue: [
            recoveredBlock91Stack1 := self.
            recoveredBlock91PC := 145.
        ].
        recoveredBlock91Step = 145 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg1.
            recoveredBlock91PC := 148.
        ].
        recoveredBlock91Step = 148 ifTrue: [
            recoveredBlock91Stack1 := super createFileStreamOn: (recoveredBlock91Stack2).
            recoveredBlock91PC := 152.
        ].
        recoveredBlock91Step = 152 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 153.
        ].
        recoveredBlock91Step = 153 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack2.
            recoveredBlock91PC := 156.
        ].
        recoveredBlock91Step = 156 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) in: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

