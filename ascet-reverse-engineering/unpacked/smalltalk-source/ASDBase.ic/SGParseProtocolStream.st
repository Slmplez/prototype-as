"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007388; bytecode file offset 0x908be4"
!SGParseProtocolStream methodsFor: 'recovered'!
writeStream
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200febe4; bytecode file offset 0x9fb4d8"
!SGParseProtocolStream methodsFor: 'recovered'!
performAction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('execute: ').
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010f240; bytecode file offset 0xa0bb78"
!SGParseProtocolStream methodsFor: 'recovered'!
beginScanFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('start scanning file: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010f25c; bytecode file offset 0xa0bb78"
!SGParseProtocolStream methodsFor: 'recovered'!
beginParseString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('start parsing string of size: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010f278; bytecode file offset 0xa0bb78"
!SGParseProtocolStream methodsFor: 'recovered'!
beginScanString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('start scanning string of size: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010f294; bytecode file offset 0xa0bb78"
!SGParseProtocolStream methodsFor: 'recovered'!
beginParseFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('start parsing file: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010f2b0; bytecode file offset 0xa0bb78"
!SGParseProtocolStream methodsFor: 'recovered'!
goal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('goal: ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue0) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201195cc; bytecode file offset 0xa15ed8"
!SGParseProtocolStream methodsFor: 'recovered'!
beginProcessIntermediate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('start processing intermediate results ').
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x201195fc; bytecode file offset 0xa15ed8"
!SGParseProtocolStream methodsFor: 'recovered'!
endProcessIntermediate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newlinePutAll: ('end processing intermediate results ').
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x20168c18; bytecode file offset 0xa654e0"
!SGParseProtocolStream methodsFor: 'recovered'!
performAction: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) performAction: (recoveredValue0).
    recoveredValue1 := (self) writeStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' withArg: ').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2017954c; bytecode file offset 0xa75e14"
!SGParseProtocolStream methodsFor: 'recovered'!
performAction: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) performAction: (recoveredValue0) with: (recoveredValue1).
    recoveredValue2 := (self) writeStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: (' withArg: ').
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201a87a8; bytecode file offset 0xaa5070"
!SGParseProtocolStream methodsFor: 'recovered'!
terminal: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('terminal: ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: (' type: ').
    recoveredValue6 := recoveredArg2.
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201b483c; bytecode file offset 0xab1128"
!SGParseProtocolStream methodsFor: 'recovered'!
endScan: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'end scanning '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'operation terminated successfully'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'operation terminated abnormally'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b485c; bytecode file offset 0xab1128"
!SGParseProtocolStream methodsFor: 'recovered'!
endParse: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'end parsing: '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'operation terminated successfully'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'operation terminated abnormally'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b6184; bytecode file offset 0xab2a50"
!SGParseProtocolStream methodsFor: 'recovered'!
performAction: recoveredArg1 argCount: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) performAction: (recoveredValue0).
    recoveredValue1 := (self) writeStream.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: (' using ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) printString.
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPutAll: (' exprs from stack').
    ^self
! !

"ASDBase.ic method 0x201b64a0; bytecode file offset 0xab2d6c"
!SGParseProtocolStream methodsFor: 'recovered'!
at: recoveredArg1 line: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('currently at: ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: (' on line: ').
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue0) nextPutAll: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2024d4ac; bytecode file offset 0xb49d7c"
!SGParseProtocolStream methodsFor: 'recovered'!
error: recoveredArg1 at: recoveredArg2 line: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('ERROR: ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (' line: ').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) printString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) nextPutAll: (' at: ').
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) printString.
    (recoveredValue0) nextPutAll: (recoveredValue10).
    ^self
! !

