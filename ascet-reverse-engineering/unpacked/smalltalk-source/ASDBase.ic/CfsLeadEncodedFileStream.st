"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040078; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
contentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) contentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040318; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
progress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) progress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004039c; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
writeBuffer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) writeBuffer.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040600; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
progessWindow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) progressWindow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200407e0; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
isWriteable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) isWriteable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200408a0; bytecode file offset 0x93d278"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
bytes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := (recoveredValue0) bytes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d1b4; bytecode file offset 0x959af0"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
setToLastChar
    | recoveredValue0 |
    recoveredValue0 := fileStream.
    (recoveredValue0) setToLastChar.
    ^self
! !

"ASDBase.ic method 0x2005d1cc; bytecode file offset 0x959af0"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
progressOne
    | recoveredValue0 |
    recoveredValue0 := fileStream.
    (recoveredValue0) progressOne.
    ^self
! !

"ASDBase.ic method 0x20066a74; bytecode file offset 0x963428"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
fileStream
    | recoveredValue0 |
    recoveredValue0 := fileStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081a8c; bytecode file offset 0x97e554"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
nextWordBySeparatorsAnd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) nextWordBySeparatorsAnd: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081bc4; bytecode file offset 0x97e554"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
stepsToGo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stepsToGo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081bf4; bytecode file offset 0x97e554"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
collection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) collection: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081c78; bytecode file offset 0x97e554"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) bytes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081c90; bytecode file offset 0x97e554"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
writeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) writeOn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092670; bytecode file offset 0x98ef64"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
progessWindow: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := fileStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) progessWindow: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d9204; bytecode file offset 0xad5ac8"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
nextPutStream: recoveredArg1
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
            recoveredStack2 := CfsLeadEncodedFileStream.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := fileStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) nextPutStream: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := fileStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) nextPutStream: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d504; bytecode file offset 0xb39ddc"
!CfsLeadEncodedFileStream methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'CfsLeadEncodedFileStream does not understand '.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := fileStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := fileStream.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendTo: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := super doesNotUnderstand: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

