"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002cbc; bytecode file offset 0x53ae8"
!EwStringSession methodsFor: 'recovered'!
formatCollection
    | recoveredValue0 |
    recoveredValue0 := formatCollection.
    ^recoveredValue0
! !

"extwid.ic method 0x200088a0; bytecode file offset 0x59678"
!EwStringSession methodsFor: 'recovered'!
addLiteral: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := EwLiteralCharacter.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) value: (recoveredValue3).
    (recoveredValue0) add: (recoveredValue4).
    ^self
! !

"extwid.ic method 0x2000c6c4; bytecode file offset 0x5d4a0"
!EwStringSession methodsFor: 'recovered'!
addReplaceChar: recoveredArg1 index: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := EwReplacementCharacter.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) replaceChar: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue2) replaceIndex: (recoveredValue5).
    (recoveredValue0) add: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x200111b8; bytecode file offset 0x61f88"
!EwStringSession methodsFor: 'recovered'!
isMaskFull
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isEmpty.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 21].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^true
! !

"extwid.ic method 0x200138bc; bytecode file offset 0x64694"
!EwStringSession methodsFor: 'recovered'!
initialPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isReplaceable.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) + (-1).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    recoveredValue2 := (self) format.
    recoveredValue3 := (recoveredValue2) maxSize.
    ^recoveredValue3
! !

"extwid.ic method 0x20017c7c; bytecode file offset 0x68a58"
!EwStringSession methodsFor: 'recovered'!
updateCursor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isReplaceable.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isEmpty.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) + (-1).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    recoveredValue2 := (self) format.
    recoveredValue3 := (recoveredValue2) maxSize.
    ^recoveredValue3
! !

"extwid.ic method 0x200190cc; bytecode file offset 0x69eb4"
!EwStringSession methodsFor: 'recovered'!
displayString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) formatCollection.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) value.
    recoveredBlock15Value3 := (recoveredBlock15Value0) nextPut: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"extwid.ic method 0x20019748; bytecode file offset 0x6a51c"
!EwStringSession methodsFor: 'recovered'!
openIndex: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001dd8c; bytecode file offset 0x6eb64"
!EwStringSession methodsFor: 'recovered'!
occupiedIndex: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReplaceable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 12] ifFalse: [recoveredLocal2 := nil. recoveredPC := 46]] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001f370; bytecode file offset 0x70160"
!EwStringSession methodsFor: 'recovered'!
value
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) formatCollection.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isReplaceable.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 45].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) notEmpty.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 36] ifFalse: [recoveredBlock15PC := 45].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) value.
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"extwid.ic method 0x200231b4; bytecode file offset 0x73f90"
!EwStringSession methodsFor: 'recovered'!
setOldValue: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredLocal1 := 1.
    recoveredValue0 := (self) formatCollection.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isReplaceable.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 22] ifFalse: [recoveredBlock10PC := 61].
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) size.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 34] ifFalse: [recoveredBlock10PC := 40].
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack2 := nil.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) value: (recoveredBlock10Stack2).
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal1.
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) at: (recoveredBlock10Stack2).
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            (recoveredBlock10Stack1) value: (recoveredBlock10Stack2).
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) + (1).
            recoveredBlock10PC := 57.
        ].
        recoveredBlock10Step = 57 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200238a4; bytecode file offset 0x74698"
!EwStringSession methodsFor: 'recovered'!
processModifyVerify: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) processError: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) startPos.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) startPos.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) endPos.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) startPos.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) endPos.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) removeData: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) startPos.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := XmENTRYFIELDFULL.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) newError: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) text.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) addData: (recoveredStack1) text: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20025d14; bytecode file offset 0x76af4"
!EwStringSession methodsFor: 'recovered'!
insertData: recoveredArg1 char: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) openIndex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyChar: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002b710; bytecode file offset 0x7c4f4"
!EwStringSession methodsFor: 'recovered'!
configure
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal2 := 1.
    recoveredLocal1 := false.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) format.
    recoveredValue2 := (recoveredValue1) maxSize.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    formatCollection := recoveredValue3.
    recoveredValue4 := (self) format.
    recoveredValue5 := (recoveredValue4) formatString.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := $".
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack1 ~~ recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 50] ifFalse: [recoveredBlock24PC := 38].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) not.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 56] ifFalse: [recoveredBlock24PC := 64].
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) addLiteral: (recoveredBlock24Stack2).
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            recoveredBlock24Stack2 := $B.
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            (recoveredBlock24Stack1 ~~ recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 82] ifFalse: [recoveredBlock24PC := 72].
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack2 := $ .
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) addLiteral: (recoveredBlock24Stack2).
            recoveredBlock24PC := 78.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal2.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            (recoveredBlock24Stack1) addReplaceChar: (recoveredBlock24Stack2) index: (recoveredBlock24Stack3).
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) + (1).
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredLocal2 := recoveredBlock24Stack2.
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"extwid.ic method 0x2002cc24; bytecode file offset 0x7da20"
!EwStringSession methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := 1.
    (self) processError: (nil).
    recoveredValue0 := (self) value.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) formatCollection.
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isReplaceable.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 32] ifFalse: [recoveredBlock19PC := 98].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := recoveredArg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) size.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) > (recoveredBlock19Stack2).
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 46] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack2 := nil.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) value: (recoveredBlock19Stack2).
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal1.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2).
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) verifyChar: (recoveredBlock19Stack2).
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 70] ifFalse: [recoveredBlock19PC := 86].
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            (recoveredBlock19Stack1) value: (recoveredBlock19Stack2).
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) + (1).
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19PC := 98.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            recoveredBlock19Stack2 := XmINVALIDINPUT.
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 89 ifTrue: [
            (recoveredBlock19Stack1) newError: (recoveredBlock19Stack2).
            recoveredBlock19PC := 91.
        ].
        recoveredBlock19Step = 91 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 92.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) setOldValue: (recoveredBlock19Stack2).
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 98 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) updateCursor.
    (self) cursorPosition: (recoveredValue3).
    ^self
! !

"extwid.ic method 0x20030e40; bytecode file offset 0x81c28"
!EwStringSession methodsFor: 'recovered'!
removeData: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) formatCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReplaceable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 16] ifFalse: [recoveredLocal2 := nil. recoveredPC := 49]] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) occupiedIndex: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) verifyChar: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) occupiedIndex: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := XmINVALIDINPUT.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) newError: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200314ec; bytecode file offset 0x822e0"
!EwStringSession methodsFor: 'recovered'!
addData: recoveredArg1 text: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReplaceable.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) verifyChar: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) insertData: (recoveredStack2) char: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := XmENTRYFIELDFULL.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) newError: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := XmINVALIDINPUT.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) newError: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) formatCollection.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatCollection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReplaceable.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursorPosition: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 108] ifFalse: [recoveredLocal1 := nil. recoveredPC := 136]] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatCollection.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) cursorPosition: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

