"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040264; bytecode file offset 0x93d278"
!DBLiteralWrapper methodsFor: 'recovered'!
lastOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) lastOffset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040564; bytecode file offset 0x93d278"
!DBLiteralWrapper methodsFor: 'recovered'!
dbFormulaItem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) dbFormulaItem.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040900; bytecode file offset 0x93d278"
!DBLiteralWrapper methodsFor: 'recovered'!
recordOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbItem.
    recoveredValue1 := (recoveredValue0) recordOffset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200665ec; bytecode file offset 0x963428"
!DBLiteralWrapper methodsFor: 'recovered'!
dbItem
    | recoveredValue0 |
    recoveredValue0 := dbItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081ba0; bytecode file offset 0x97e554"
!DBLiteralWrapper methodsFor: 'recovered'!
recordOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) recordOffset: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac674; bytecode file offset 0x9a8ff8"
!DBLiteralWrapper methodsFor: 'recovered'!
printCOn: recoveredArg1 level: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) printCOn: (recoveredValue1) level: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd9fc; bytecode file offset 0x9bb178"
!DBLiteralWrapper methodsFor: 'recovered'!
dbItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbItem := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2045104c; bytecode file offset 0xd4d938"
!DBLiteralWrapper methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    (recoveredValue0) nextPut: (${).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) members.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Arg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack2) nextPutAll: (recoveredBlock30Stack3).
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 44.
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30Stack3 := $:.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            (recoveredBlock30Stack2) nextPut: (recoveredBlock30Stack3).
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) space.
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) perform: (recoveredBlock30Stack1).
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack1.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isString.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 62] ifFalse: [recoveredBlock30PC := 66].
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack0 := recoveredBlock30Local1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) trimNull.
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30Stack0 := recoveredBlock30Local1.
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) isInteger.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            (recoveredBlock30Stack0) ifTrue: [recoveredBlock30PC := 72] ifFalse: [recoveredBlock30PC := 90].
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack0 := recoveredBlock30Local1.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredBlock30Stack1 := recoveredArg1.
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack2 := 16.
            recoveredBlock30PC := 78.
        ].
        recoveredBlock30Step = 78 ifTrue: [
            recoveredBlock30Stack3 := true.
            recoveredBlock30PC := 79.
        ].
        recoveredBlock30Step = 79 ifTrue: [
            (recoveredBlock30Stack0) printOn: (recoveredBlock30Stack1) base: (recoveredBlock30Stack2) showRadix: (recoveredBlock30Stack3).
            recoveredBlock30PC := 82.
        ].
        recoveredBlock30Step = 82 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack1 := (Character value: 9).
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            (recoveredBlock30Stack0) nextPut: (recoveredBlock30Stack1).
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            recoveredBlock30Stack0 := recoveredArg1.
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Stack0.
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Local1.
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) printString.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            (recoveredBlock30Stack1) nextPutAll: (recoveredBlock30Stack2).
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) cr.
            recoveredBlock30PC := 101.
        ].
        recoveredBlock30Step = 101 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPut: ($}).
    ^self
! !

