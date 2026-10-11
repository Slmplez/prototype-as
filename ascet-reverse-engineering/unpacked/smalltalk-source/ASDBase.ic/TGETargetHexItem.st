"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065ae4; bytecode file offset 0x963428"
!TGETargetHexItem methodsFor: 'recovered'!
header
    | recoveredValue0 |
    recoveredValue0 := header.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067894; bytecode file offset 0x9646f8"
!TGETargetHexItem methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008955c; bytecode file offset 0x985ef8"
!TGETargetHexItem methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGETargetHexHeader.
    recoveredValue1 := (recoveredValue0) create.
    header := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200901c0; bytecode file offset 0x98ca94"
!TGETargetHexItem methodsFor: 'recovered'!
isROMCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) header.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := HEX_ROM.
    recoveredValue3 := (recoveredValue1) > (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200901d4; bytecode file offset 0x98ca94"
!TGETargetHexItem methodsFor: 'recovered'!
isRAMCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) header.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := HEX_RAM.
    recoveredValue3 := (recoveredValue1) > (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200924fc; bytecode file offset 0x98ef64"
!TGETargetHexItem methodsFor: 'recovered'!
modifyType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := header.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) type: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092514; bytecode file offset 0x98ef64"
!TGETargetHexItem methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := header.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) type: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200cdd18; bytecode file offset 0x9ca5d8"
!TGETargetHexItem methodsFor: 'recovered'!
overallSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := header.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) fixedSize.
    recoveredValue3 := header.
    recoveredValue4 := (recoveredValue3) codeSize.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fccf8; bytecode file offset 0x9f95b4"
!TGETargetHexItem methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    recoveredValue1 := header.
    recoveredValue2 := code.
    recoveredValue3 := (recoveredValue2) size.
    (recoveredValue1) codeSize: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201549f8; bytecode file offset 0xa512b8"
!TGETargetHexItem methodsFor: 'recovered'!
dumpToFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getFilePosition.
    (self) updateNextObjectOffset: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := header.
    (recoveredValue2) writeBytes: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := code.
    (recoveredValue4) writeBytes: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20171960; bytecode file offset 0xa6e230"
!TGETargetHexItem methodsFor: 'recovered'!
typeLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280cef70Value0 block280cef70Value1 |
    block280cef70Value0 := ASDDisplayStrings.
    block280cef70Value1 := (block280cef70Value0) undefinedString.
    block280cef70Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201878c0; bytecode file offset 0xa84184"
!TGETargetHexItem methodsFor: 'recovered'!
readFromFile: recoveredArg1 sizeLimit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := header.
    (recoveredValue0) readBytes: (recoveredValue1).
    recoveredValue2 := ByteArray.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) getCorrectedCodeSize: (recoveredValue3).
    recoveredValue5 := (recoveredValue2) new: (recoveredValue4).
    code := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := code.
    (recoveredValue6) readBytes: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201cc804; bytecode file offset 0xac90bc"
!TGETargetHexItem methodsFor: 'recovered'!
getCorrectedCodeSize: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeSize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeSize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeSize.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022b95c; bytecode file offset 0xb28224"
!TGETargetHexItem methodsFor: 'recovered'!
isValid
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
            recoveredStack0 := (recoveredStack0) createHeaderItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) header.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) code.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202551bc; bytecode file offset 0xb51a80"
!TGETargetHexItem methodsFor: 'recovered'!
updateNextObjectOffset: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := HEX_STREAM_END.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextObject: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := header.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := header.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := code.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) nextObject: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e8d18; bytecode file offset 0xbe55e4"
!TGETargetHexItem methodsFor: 'recovered'!
dumpToByteArray: recoveredArg1 offset: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg2.
    (self) updateNextObjectOffset: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := header.
    recoveredValue5 := (recoveredValue4) class.
    recoveredValue6 := (recoveredValue5) fixedSize.
    recoveredValue7 := (recoveredValue3) + (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) bytes.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := header.
    (recoveredValue9) replaceFrom: (recoveredValue10) to: (recoveredValue11) with: (recoveredValue12) startingAt: (1).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredLocal2 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := code.
    recoveredValue17 := (recoveredValue16) size.
    recoveredValue18 := (recoveredValue15) + (recoveredValue17).
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) bytes.
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := code.
    (recoveredValue20) replaceFrom: (recoveredValue21) to: (recoveredValue22) with: (recoveredValue23) startingAt: (1).
    ^self
! !

"ASDBase.ic method 0x20331ff8; bytecode file offset 0xc2e8cc"
!TGETargetHexItem methodsFor: 'recovered'!
readFromByteArray: recoveredArg1 offset: recoveredArg2 sizeLimit: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := header.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue3) fixedSize.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := header.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) bytes.
    recoveredValue9 := recoveredLocal2.
    (recoveredValue5) replaceFrom: (1) to: (recoveredValue6) with: (recoveredValue8) startingAt: (recoveredValue9).
    recoveredValue10 := ByteArray.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (self) getCorrectedCodeSize: (recoveredValue11).
    recoveredValue13 := (recoveredValue10) new: (recoveredValue12).
    code := recoveredValue13.
    recoveredValue14 := recoveredArg2.
    recoveredValue15 := header.
    recoveredValue16 := (recoveredValue15) class.
    recoveredValue17 := (recoveredValue16) fixedSize.
    recoveredValue18 := (recoveredValue14) + (recoveredValue17).
    recoveredValue19 := (recoveredValue18) + (1).
    recoveredLocal2 := recoveredValue19.
    recoveredValue20 := code.
    recoveredValue21 := (recoveredValue20) size.
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := code.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) bytes.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue22) replaceFrom: (1) to: (recoveredValue23) with: (recoveredValue25) startingAt: (recoveredValue26).
    ^self
! !

"ASDBase.ic method 0x203cf5e0; bytecode file offset 0xccbef8"
!TGETargetHexItem methodsFor: 'recovered'!
typeLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := HEX_STREAM_END.
    (recoveredValue2) at: (recoveredValue3) put: ('HEX_STREAM_END').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := HEX_BLOCK_END.
    (recoveredValue4) at: (recoveredValue5) put: ('HEX_BLOCK_END').
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := HEX_ETARGET_HEADER.
    (recoveredValue6) at: (recoveredValue7) put: ('HEX_ETARGET_HEADER').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := HEX_T8_ROM.
    (recoveredValue8) at: (recoveredValue9) put: ('HEX_T8_ROM').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := HEX_T8_RAM.
    (recoveredValue10) at: (recoveredValue11) put: ('HEX_T8_RAM').
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := HEX_PPC_RAM.
    (recoveredValue12) at: (recoveredValue13) put: ('HEX_PPC_RAM').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := HEX_PPC_L1_RAM.
    (recoveredValue14) at: (recoveredValue15) put: ('HEX_PPC_L1_RAM').
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := HEX_PPC_ROM.
    (recoveredValue16) at: (recoveredValue17) put: ('HEX_PPC_ROM').
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := HEX_PPC_L1_ROM.
    (recoveredValue18) at: (recoveredValue19) put: ('HEX_PPC_L1_ROM').
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := HEX_PC_DLL.
    (recoveredValue20) at: (recoveredValue21) put: ('HEX_PC_DLL').
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := HEX_PC_DLL_NAME.
    (recoveredValue22) at: (recoveredValue23) put: ('HEX_PC_DLL_NAME').
    ^recoveredValue1
! !

