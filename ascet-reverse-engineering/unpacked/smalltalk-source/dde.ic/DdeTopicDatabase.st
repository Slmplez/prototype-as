"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x20000034; bytecode file offset 0x62f8"
!DdeTopicDatabase methodsFor: 'recovered'!
allTopics
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := topicDatabase.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"dde.ic method 0x20000120; bytecode file offset 0x6408"
!DdeTopicDatabase methodsFor: 'recovered'!
caseSensitive
    | recoveredValue0 |
    recoveredValue0 := caseSensitive.
    ^recoveredValue0
! !

"dde.ic method 0x200002d8; bytecode file offset 0x65a0"
!DdeTopicDatabase methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    topicDatabase := recoveredValue1.
    ^self
! !

"dde.ic method 0x20000560; bytecode file offset 0x6830"
!DdeTopicDatabase methodsFor: 'recovered'!
caseSensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    caseSensitive := recoveredValue0.
    ^self
! !

"dde.ic method 0x20000d04; bytecode file offset 0x6fc8"
!DdeTopicDatabase methodsFor: 'recovered'!
exists: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^true
! !

"dde.ic method 0x20000d70; bytecode file offset 0x7038"
!DdeTopicDatabase methodsFor: 'recovered'!
compareString: recoveredArg1 and: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) caseSensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dde.ic method 0x20000dec; bytecode file offset 0x70b8"
!DdeTopicDatabase methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := Dictionary.
    recoveredBlock7Value1 := (recoveredBlock7Value0) new.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"dde.ic method 0x200013a4; bytecode file offset 0x7674"
!DdeTopicDatabase methodsFor: 'recovered'!
removeAll: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) itemMatch: (recoveredBlock8Stack3).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 24] ifFalse: [recoveredBlock8PC := 30].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) removeKey: (recoveredBlock8Stack2).
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) keysDo: (recoveredValue2).
    ^self
! !

"dde.ic method 0x20001470; bytecode file offset 0x7740"
!DdeTopicDatabase methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := topicDatabase.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) key.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack4 := recoveredArg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) compareString: (recoveredBlock6Stack3) and: (recoveredBlock6Stack4).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) value.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) value.
    ^recoveredValue3
! !

"dde.ic method 0x200017b8; bytecode file offset 0x7aa4"
!DdeTopicDatabase methodsFor: 'recovered'!
topicString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := topicDatabase.
    recoveredValue7 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    (recoveredBlock19Value1) nextPutAll: (recoveredBlock19Value2).
    recoveredBlock19Value3 := (recoveredBlock19Value0) tab.
    recoveredBlock19Value3
].
    (recoveredValue6) keysDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    recoveredValue10 := (recoveredValue9) trimSeparators.
    ^recoveredValue10
! !

"dde.ic method 0x200019b8; bytecode file offset 0x7c8c"
!DdeTopicDatabase methodsFor: 'recovered'!
updateItem: recoveredArg1 topic: recoveredArg2 value: recoveredArg3 format: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    ^false
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := DdeItem.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) caseSensitive.
    recoveredValue7 := (recoveredValue3) item: (recoveredValue4) format: (recoveredValue5) caseSensitive: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    ^self
! !

"dde.ic method 0x20002584; bytecode file offset 0x8880"
!DdeTopicDatabase methodsFor: 'recovered'!
formatsString
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := WriteStream.
    recoveredValue3 := Locale.
    recoveredValue4 := (recoveredValue3) current.
    recoveredValue5 := (recoveredValue4) preferredStringClass.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (recoveredValue2) on: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := topicDatabase.
    recoveredValue9 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := [:recoveredBlock26Block33Arg1 | 
    | recoveredBlock26Block33Value0 recoveredBlock26Block33Value1 recoveredBlock26Block33Value2 recoveredBlock26Block33Value3 |
    recoveredBlock26Block33Value0 := recoveredLocal1.
    recoveredBlock26Block33Value1 := recoveredBlock26Block33Arg1.
    recoveredBlock26Block33Value2 := (recoveredBlock26Block33Value1) format.
    recoveredBlock26Block33Value3 := (recoveredBlock26Block33Value0) add: (recoveredBlock26Block33Value2).
    recoveredBlock26Block33Value3
].
    recoveredBlock26Value2 := (recoveredBlock26Value0) keysDo: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredLocal2.
    recoveredBlock57Value1 := recoveredBlock57Value0.
    recoveredBlock57Value2 := recoveredBlock57Arg1.
    (recoveredBlock57Value1) nextPutAll: (recoveredBlock57Value2).
    recoveredBlock57Value3 := (recoveredBlock57Value0) tab.
    recoveredBlock57Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue12) contents.
    recoveredValue14 := (recoveredValue13) trimSeparators.
    ^recoveredValue14
! !

"dde.ic method 0x200026a8; bytecode file offset 0x89ac"
!DdeTopicDatabase methodsFor: 'recovered'!
formatsStringFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := WriteStream.
    recoveredValue3 := Locale.
    recoveredValue4 := (recoveredValue3) current.
    recoveredValue5 := (recoveredValue4) preferredStringClass.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := (recoveredValue2) on: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := String.
    recoveredBlock27Value1 := (recoveredBlock27Value0) new.
    ^recoveredBlock27Value1
].
    recoveredValue10 := (self) at: (recoveredValue8) ifAbsent: (recoveredValue9).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredLocal1.
    recoveredBlock46Value1 := recoveredBlock46Arg1.
    recoveredBlock46Value2 := (recoveredBlock46Value1) format.
    recoveredBlock46Value3 := (recoveredBlock46Value0) add: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
    (recoveredValue11) keysDo: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredLocal3.
    recoveredBlock66Value1 := recoveredBlock66Value0.
    recoveredBlock66Value2 := recoveredBlock66Arg1.
    (recoveredBlock66Value1) nextPutAll: (recoveredBlock66Value2).
    recoveredBlock66Value3 := (recoveredBlock66Value0) tab.
    recoveredBlock66Value3
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue15) contents.
    recoveredValue17 := (recoveredValue16) trimSeparators.
    ^recoveredValue17
! !

"dde.ic method 0x20002818; bytecode file offset 0x8b18"
!DdeTopicDatabase methodsFor: 'recovered'!
itemsStringFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredLocal3.
    recoveredBlock20Value1 := (recoveredBlock20Value0) contents.
    ^recoveredBlock20Value1
].
    recoveredValue8 := (self) at: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := Set.
    recoveredValue10 := (recoveredValue9) new.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredLocal1.
    recoveredBlock47Value1 := recoveredBlock47Arg1.
    recoveredBlock47Value2 := (recoveredBlock47Value1) item.
    recoveredBlock47Value3 := (recoveredBlock47Value0) add: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
    (recoveredValue11) keysDo: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 |
    recoveredBlock68Value0 := recoveredLocal3.
    recoveredBlock68Value1 := recoveredBlock68Value0.
    recoveredBlock68Value2 := recoveredBlock68Arg1.
    (recoveredBlock68Value1) nextPutAll: (recoveredBlock68Value2).
    recoveredBlock68Value3 := (recoveredBlock68Value0) tab.
    recoveredBlock68Value3
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue15) contents.
    recoveredValue17 := (recoveredValue16) trimSeparators.
    ^recoveredValue17
! !

"dde.ic method 0x200028c0; bytecode file offset 0x8ba0"
!DdeTopicDatabase methodsFor: 'recovered'!
at: recoveredArg1 remove: recoveredArg2 format: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DdeItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) caseSensitive.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) item: (recoveredStack2) format: (recoveredStack3) caseSensitive: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := topicDatabase.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dde.ic method 0x20002e00; bytecode file offset 0x90f8"
!DdeTopicDatabase methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 with: recoveredArg3 format: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredLocal1 := false.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 recoveredBlock11Value15 recoveredBlock11Value16 recoveredBlock11Value17 recoveredBlock11Value18 recoveredBlock11Value19 |
    recoveredBlock11Value0 := Dictionary.
    recoveredBlock11Value1 := (recoveredBlock11Value0) new.
    recoveredLocal3 := recoveredBlock11Value1.
    recoveredBlock11Value2 := topicDatabase.
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := recoveredLocal3.
    (recoveredBlock11Value2) at: (recoveredBlock11Value3) put: (recoveredBlock11Value4).
    recoveredLocal1 := true.
    recoveredBlock11Value5 := recoveredArg1.
    recoveredBlock11Value6 := TopicItemList.
    recoveredBlock11Value7 := Locale.
    recoveredBlock11Value8 := (recoveredBlock11Value7) current.
    recoveredBlock11Value9 := (recoveredBlock11Value8) preferredStringClass.
    recoveredBlock11Value10 := (recoveredBlock11Value9) new.
    recoveredBlock11Value11 := StringFormat.
    (self) at: (recoveredBlock11Value5) put: (recoveredBlock11Value6) with: (recoveredBlock11Value10) format: (recoveredBlock11Value11).
    recoveredBlock11Value12 := recoveredArg1.
    recoveredBlock11Value13 := Formats.
    recoveredBlock11Value14 := Locale.
    recoveredBlock11Value15 := (recoveredBlock11Value14) current.
    recoveredBlock11Value16 := (recoveredBlock11Value15) preferredStringClass.
    recoveredBlock11Value17 := (recoveredBlock11Value16) new.
    recoveredBlock11Value18 := StringFormat.
    (self) at: (recoveredBlock11Value12) put: (recoveredBlock11Value13) with: (recoveredBlock11Value17) format: (recoveredBlock11Value18).
    recoveredBlock11Value19 := recoveredLocal3.
    recoveredBlock11Value19
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := DdeItem.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) caseSensitive.
    recoveredValue7 := (recoveredValue3) item: (recoveredValue4) format: (recoveredValue5) caseSensitive: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredArg3.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

