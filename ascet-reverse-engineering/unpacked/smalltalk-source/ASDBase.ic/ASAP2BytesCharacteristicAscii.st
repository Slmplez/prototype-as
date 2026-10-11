"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003c20; bytecode file offset 0x90206c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
maxDiff: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200041b0; bytecode file offset 0x90206c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
upperBound: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200045b0; bytecode file offset 0x90206c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
lowerBound: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20016814; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
possibleDataTypesA2
    ^#('UBYTE')
! !

"ASDBase.ic method 0x200184a0; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
fileRecordLayoutName
    ^'AsciiDummyForDataExchangeFiles'
! !

"ASDBase.ic method 0x2001f628; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
fileDataType
    ^'UBYTE'
! !

"ASDBase.ic method 0x200239d8; bytecode file offset 0x92209c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
type
    ^'ASCII'
! !

"ASDBase.ic method 0x2002599c; bytecode file offset 0x923928"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
dataElementEditType
    ^'ASCII'
! !

"ASDBase.ic method 0x20025a2c; bytecode file offset 0x923928"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
iconString
    ^'GeneralUnknown'
! !

"ASDBase.ic method 0x2004d144; bytecode file offset 0x949ab0"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
number
    | recoveredValue0 |
    recoveredValue0 := (self) at: (15).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d278; bytecode file offset 0x949bf0"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
variants
    | recoveredValue0 |
    recoveredValue0 := (self) at: (16).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071974; bytecode file offset 0x96e578"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
upperBound
    ^0
! !

"ASDBase.ic method 0x20071a54; bytecode file offset 0x96e578"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
lowerBound
    ^0
! !

"ASDBase.ic method 0x20071bcc; bytecode file offset 0x96e578"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
maxDiff
    ^0
! !

"ASDBase.ic method 0x200755fc; bytecode file offset 0x9757c8"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
isCalibrationString
    ^true
! !

"ASDBase.ic method 0x200a7a9c; bytecode file offset 0x9a43c0"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
number: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (15) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7b80; bytecode file offset 0x9a44a4"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
variants: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (16) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb664; bytecode file offset 0x9b7f40"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
matrixDim: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) atOrNil: (1).
    (self) number: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20104f14; bytecode file offset 0xa017d0"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
xyzDimension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (0) with: (0) with: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201d14c0; bytecode file offset 0xacdd8c"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
dataType
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super dataType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'UBYTE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'invalid dataType for CharacteristicAscii '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'UBYTE'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202025f4; bytecode file offset 0xafeec4"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
selectValidRecordLayout: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super selectValidRecordLayout: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280d95ccArg1 | 
    | block280d95ccStack0 block280d95ccStack1 block280d95ccStack2 block280d95ccStack3 block280d95ccPC block280d95ccStep block280d95ccDone block280d95ccResult |
    block280d95ccStack0 := self.
    block280d95ccPC := 4.
    block280d95ccDone := false.
    [block280d95ccDone not] whileTrue: [
        block280d95ccStep := block280d95ccPC.
        block280d95ccStep = 4 ifTrue: [
            block280d95ccStack1 := false.
            block280d95ccPC := 5.
        ].
        block280d95ccStep = 5 ifTrue: [
            block280d95ccStack2 := block280d95ccArg1.
            block280d95ccPC := 6.
        ].
        block280d95ccStep = 6 ifTrue: [
            block280d95ccStack2 := (block280d95ccStack2) isValueLayout.
            block280d95ccPC := 7.
        ].
        block280d95ccStep = 7 ifTrue: [
            (block280d95ccStack2) ifTrue: [block280d95ccPC := 10] ifFalse: [block280d95ccPC := 17].
        ].
        block280d95ccStep = 10 ifTrue: [
            block280d95ccPC := 11.
        ].
        block280d95ccStep = 11 ifTrue: [
            block280d95ccStack1 := block280d95ccArg1.
            block280d95ccPC := 12.
        ].
        block280d95ccStep = 12 ifTrue: [
            block280d95ccStack1 := (block280d95ccStack1) dataType.
            block280d95ccPC := 14.
        ].
        block280d95ccStep = 14 ifTrue: [
            block280d95ccStack2 := 'UBYTE'.
            block280d95ccPC := 16.
        ].
        block280d95ccStep = 16 ifTrue: [
            block280d95ccStack1 := (block280d95ccStack1) = (block280d95ccStack2).
            block280d95ccPC := 17.
        ].
        block280d95ccStep = 17 ifTrue: [
            block280d95ccResult := block280d95ccStack1.
            block280d95ccDone := true.
        ].
    ].
    block280d95ccResult
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20233694; bytecode file offset 0xb2ff74"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
addDefaultObjectReferencesFrom: recoveredArg1
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
            super addDefaultObjectReferencesFrom: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordLayout.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dd580Arg1 | 
    | block280dd580Value0 block280dd580Value1 block280dd580Value2 block280dd580Value3 |
    block280dd580Value0 := block280dd580Arg1.
    block280dd580Value1 := (block280dd580Value0) dataType.
    block280dd580Value2 := (block280dd580Value1) includesSubstring: ('FLOAT').
    block280dd580Value3 := (block280dd580Value2) not.
    block280dd580Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) recordLayout: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20243948; bytecode file offset 0xb40214"
!ASAP2BytesCharacteristicAscii methodsFor: 'recovered'!
createDataElementASAP2Project: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) dataElementClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := RBStringType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := RBStringType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := (recoveredStack4) createDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDataElementASAP2Project: (recoveredStack1) dataElementClass: (recoveredStack2) physType: (recoveredStack3) implType: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) number.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) number.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) maxSize: (recoveredStack1).
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

