"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x20000318; bytecode file offset 0x11e40"
!AbtEsWeakDictionary methodsFor: 'recovered'!
species
    | recoveredValue0 |
    recoveredValue0 := EsError.
    ^recoveredValue0
! !

"abtdbh.ic method 0x200017d8; bytecode file offset 0x132d8"
!AbtEsWeakDictionary methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x2000181c; bytecode file offset 0x1330c"
!AbtEsWeakDictionary methodsFor: 'recovered'!
finalizeSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    finalizeSelector := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x20002e30; bytecode file offset 0x1490c"
!AbtEsWeakDictionary methodsFor: 'recovered'!
newIndex
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := sequenceableValues.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := sequenceableValues.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := sequenceableValues.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := sequenceableValues.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) at: (recoveredValue8).
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"abtdbh.ic method 0x20005188; bytecode file offset 0x16c68"
!AbtEsWeakDictionary methodsFor: 'recovered'!
finalizedSlot: recoveredArg1 removedObject: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := sequenceableKeys.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := sequenceableValues.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 26].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack1) removeKey: (recoveredBlock4Stack2).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := owner.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 54] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack2 := finalizeSelector.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 54] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := owner.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack2 := finalizeSelector.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local1.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack4 := recoveredArg2.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) perform: (recoveredBlock4Stack2) with: (recoveredBlock4Stack3) with: (recoveredBlock4Stack4).
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"abtdbh.ic method 0x20005dd4; bytecode file offset 0x178b4"
!AbtEsWeakDictionary methodsFor: 'recovered'!
at: recoveredArg1 returningIndexPut: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := (self) newIndex.
    recoveredLocal1 := recoveredBlock9Value0.
    recoveredBlock9Value1 := sequenceableKeys.
    recoveredBlock9Value2 := recoveredLocal1.
    recoveredBlock9Value3 := recoveredArg1.
    (recoveredBlock9Value1) at: (recoveredBlock9Value2) put: (recoveredBlock9Value3).
    recoveredBlock9Value4 := sequenceableValues.
    recoveredBlock9Value5 := recoveredLocal1.
    recoveredBlock9Value6 := recoveredArg2.
    (recoveredBlock9Value4) at: (recoveredBlock9Value5) put: (recoveredBlock9Value6).
    recoveredBlock9Value7 := recoveredLocal1.
    recoveredBlock9Value7
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) growSequenceableArraysIfNecessary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbh.ic method 0x20005e3c; bytecode file offset 0x1791c"
!AbtEsWeakDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 |
    recoveredBlock9Value0 := (self) newIndex.
    recoveredLocal1 := recoveredBlock9Value0.
    recoveredBlock9Value1 := sequenceableKeys.
    recoveredBlock9Value2 := recoveredLocal1.
    recoveredBlock9Value3 := recoveredArg1.
    (recoveredBlock9Value1) at: (recoveredBlock9Value2) put: (recoveredBlock9Value3).
    recoveredBlock9Value4 := sequenceableValues.
    recoveredBlock9Value5 := recoveredLocal1.
    recoveredBlock9Value6 := recoveredArg2.
    (recoveredBlock9Value4) at: (recoveredBlock9Value5) put: (recoveredBlock9Value6).
    recoveredBlock9Value7 := recoveredLocal1.
    recoveredBlock9Value7
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) growSequenceableArraysIfNecessary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbh.ic method 0x20005ea4; bytecode file offset 0x1798c"
!AbtEsWeakDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 |
    recoveredBlock9Value0 := (self) newIndex.
    recoveredLocal2 := recoveredBlock9Value0.
    recoveredBlock9Value1 := sequenceableKeys.
    recoveredBlock9Value2 := recoveredLocal2.
    recoveredBlock9Value3 := recoveredArg1.
    (recoveredBlock9Value1) at: (recoveredBlock9Value2) put: (recoveredBlock9Value3).
    recoveredBlock9Value4 := sequenceableValues.
    recoveredBlock9Value5 := recoveredLocal2.
    recoveredBlock9Value6 := recoveredArg2.
    recoveredBlock9Value7 := (recoveredBlock9Value6) value.
    recoveredBlock9Value8 := recoveredBlock9Value7.
    recoveredLocal1 := recoveredBlock9Value8.
    (recoveredBlock9Value4) at: (recoveredBlock9Value5) put: (recoveredBlock9Value7).
    recoveredBlock9Value9 := recoveredLocal2.
    recoveredBlock9Value9
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) growSequenceableArraysIfNecessary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbh.ic method 0x20005fa8; bytecode file offset 0x17a90"
!AbtEsWeakDictionary methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 |
    recoveredBlock10Value0 := (self) newIndex.
    recoveredLocal1 := recoveredBlock10Value0.
    recoveredBlock10Value1 := sequenceableKeys.
    recoveredBlock10Value2 := recoveredLocal1.
    recoveredBlock10Value3 := recoveredArg1.
    recoveredBlock10Value4 := (recoveredBlock10Value3) key.
    (recoveredBlock10Value1) at: (recoveredBlock10Value2) put: (recoveredBlock10Value4).
    recoveredBlock10Value5 := sequenceableValues.
    recoveredBlock10Value6 := recoveredLocal1.
    recoveredBlock10Value7 := recoveredArg1.
    recoveredBlock10Value8 := (recoveredBlock10Value7) value.
    (recoveredBlock10Value5) at: (recoveredBlock10Value6) put: (recoveredBlock10Value8).
    recoveredBlock10Value9 := recoveredLocal1.
    recoveredBlock10Value9
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) growSequenceableArraysIfNecessary.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbh.ic method 0x2000609c; bytecode file offset 0x17b88"
!AbtEsWeakDictionary methodsFor: 'recovered'!
initializeSequential: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExceptionalEvent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            sequenceableKeys := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Error.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            sequenceableValues := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := sequenceableValues.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := sequenceableValues.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 58] ifFalse: [recoveredLocal1 := nil. recoveredPC := 79]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbh.ic method 0x20008fbc; bytecode file offset 0x1aab0"
!AbtEsWeakDictionary methodsFor: 'recovered'!
growSequenceableArraysIfNecessary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := sequenceableValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := EsMethodArray.
    recoveredBlock24Value1 := [:recoveredBlock24Block32Arg1 | 
    | recoveredBlock24Block32Local1 recoveredBlock24Block32Local2 recoveredBlock24Block32Stack0 recoveredBlock24Block32Stack1 recoveredBlock24Block32Stack2 recoveredBlock24Block32Stack3 recoveredBlock24Block32Stack4 recoveredBlock24Block32Stack5 recoveredBlock24Block32PC recoveredBlock24Block32Step recoveredBlock24Block32Done recoveredBlock24Block32Result |
    recoveredBlock24Block32Stack0 := self.
    recoveredBlock24Block32PC := 38.
    recoveredBlock24Block32Done := false.
    [recoveredBlock24Block32Done not] whileTrue: [
        recoveredBlock24Block32Step := recoveredBlock24Block32PC.
        recoveredBlock24Block32Step = 38 ifTrue: [
            recoveredBlock24Block32Stack1 := EsMethodArray.
            recoveredBlock24Block32PC := 40.
        ].
        recoveredBlock24Block32Step = 40 ifTrue: [
            recoveredBlock24Block32Stack2 := sequenceableValues.
            recoveredBlock24Block32PC := 42.
        ].
        recoveredBlock24Block32Step = 42 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredBlock24Block32Arg1.
            recoveredBlock24Block32PC := 43.
        ].
        recoveredBlock24Block32Step = 43 ifTrue: [
            (recoveredBlock24Block32Stack1) finalizeAllFor: (recoveredBlock24Block32Stack2) in: (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 45.
        ].
        recoveredBlock24Block32Step = 45 ifTrue: [
            recoveredBlock24Block32Stack1 := nil.
            recoveredBlock24Block32PC := 46.
        ].
        recoveredBlock24Block32Step = 46 ifTrue: [
            recoveredBlock24Block32Stack2 := sequenceableValues.
            recoveredBlock24Block32PC := 48.
        ].
        recoveredBlock24Block32Step = 48 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredLocal1.
            recoveredBlock24Block32PC := 51.
        ].
        recoveredBlock24Block32Step = 51 ifTrue: [
            recoveredBlock24Block32Stack2 := (recoveredBlock24Block32Stack2) at: (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 52.
        ].
        recoveredBlock24Block32Step = 52 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredLocal1.
            recoveredBlock24Block32PC := 55.
        ].
        recoveredBlock24Block32Step = 55 ifTrue: [
            recoveredBlock24Block32Stack2 := (recoveredBlock24Block32Stack2) = (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 56.
        ].
        recoveredBlock24Block32Step = 56 ifTrue: [
            (recoveredBlock24Block32Stack2) ifTrue: [recoveredBlock24Block32PC := 60] ifFalse: [recoveredBlock24Block32PC := 165].
        ].
        recoveredBlock24Block32Step = 60 ifTrue: [
            recoveredBlock24Block32PC := 61.
        ].
        recoveredBlock24Block32Step = 61 ifTrue: [
            recoveredBlock24Block32Stack1 := sequenceableKeys.
            recoveredBlock24Block32PC := 63.
        ].
        recoveredBlock24Block32Step = 63 ifTrue: [
            recoveredBlock24Block32Stack2 := recoveredLocal1.
            recoveredBlock24Block32PC := 66.
        ].
        recoveredBlock24Block32Step = 66 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) copyAndGrowBy: (recoveredBlock24Block32Stack2).
            recoveredBlock24Block32PC := 68.
        ].
        recoveredBlock24Block32Step = 68 ifTrue: [
            sequenceableKeys := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 70.
        ].
        recoveredBlock24Block32Step = 70 ifTrue: [
            recoveredBlock24Block32Stack1 := sequenceableValues.
            recoveredBlock24Block32PC := 72.
        ].
        recoveredBlock24Block32Step = 72 ifTrue: [
            recoveredBlock24Block32Stack2 := recoveredLocal1.
            recoveredBlock24Block32PC := 75.
        ].
        recoveredBlock24Block32Step = 75 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) copyAndGrowBy: (recoveredBlock24Block32Stack2).
            recoveredBlock24Block32PC := 77.
        ].
        recoveredBlock24Block32Step = 77 ifTrue: [
            recoveredBlock24Block32Stack2 := self.
            recoveredBlock24Block32PC := 78.
        ].
        recoveredBlock24Block32Step = 78 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) owner: (recoveredBlock24Block32Stack2).
            recoveredBlock24Block32PC := 80.
        ].
        recoveredBlock24Block32Step = 80 ifTrue: [
            recoveredBlock24Block32Local2 := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 81.
        ].
        recoveredBlock24Block32Step = 81 ifTrue: [
            recoveredBlock24Block32Stack1 := sequenceableValues.
            recoveredBlock24Block32PC := 83.
        ].
        recoveredBlock24Block32Step = 83 ifTrue: [
            recoveredBlock24Block32Stack2 := nil.
            recoveredBlock24Block32PC := 84.
        ].
        recoveredBlock24Block32Step = 84 ifTrue: [
            (recoveredBlock24Block32Stack1) owner: (recoveredBlock24Block32Stack2).
            recoveredBlock24Block32PC := 86.
        ].
        recoveredBlock24Block32Step = 86 ifTrue: [
            recoveredBlock24Block32Stack1 := 0.
            recoveredBlock24Block32PC := 88.
        ].
        recoveredBlock24Block32Step = 88 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 89.
        ].
        recoveredBlock24Block32Step = 89 ifTrue: [
            recoveredBlock24Block32Stack1 := recoveredLocal1.
            recoveredBlock24Block32PC := 92.
        ].
        recoveredBlock24Block32Step = 92 ifTrue: [
            recoveredBlock24Block32PC := 102.
        ].
        recoveredBlock24Block32Step = 96 ifTrue: [
            recoveredBlock24Block32Stack2 := sequenceableValues.
            recoveredBlock24Block32PC := 98.
        ].
        recoveredBlock24Block32Step = 98 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredBlock24Block32Local1.
            recoveredBlock24Block32PC := 99.
        ].
        recoveredBlock24Block32Step = 99 ifTrue: [
            recoveredBlock24Block32Stack4 := nil.
            recoveredBlock24Block32PC := 100.
        ].
        recoveredBlock24Block32Step = 100 ifTrue: [
            (recoveredBlock24Block32Stack2) at: (recoveredBlock24Block32Stack3) put: (recoveredBlock24Block32Stack4).
            recoveredBlock24Block32PC := 102.
        ].
        recoveredBlock24Block32Step = 102 ifTrue: [
            (recoveredBlock24Block32Stack1 isInteger and: [recoveredBlock24Block32Local1 isInteger]) ifTrue: [(recoveredBlock24Block32Local1 + 1 <= recoveredBlock24Block32Stack1) ifTrue: [recoveredBlock24Block32Local1 := recoveredBlock24Block32Local1 + 1. recoveredBlock24Block32PC := 96] ifFalse: [recoveredBlock24Block32Local1 := nil. recoveredBlock24Block32PC := 116]] ifFalse: [recoveredBlock24Block32PC := 106].
        ].
        recoveredBlock24Block32Step = 106 ifTrue: [
            recoveredBlock24Block32Stack2 := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 107.
        ].
        recoveredBlock24Block32Step = 107 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredBlock24Block32Local1.
            recoveredBlock24Block32PC := 108.
        ].
        recoveredBlock24Block32Step = 108 ifTrue: [
            recoveredBlock24Block32Stack3 := (recoveredBlock24Block32Stack3) + (1).
            recoveredBlock24Block32PC := 109.
        ].
        recoveredBlock24Block32Step = 109 ifTrue: [
            recoveredBlock24Block32Stack4 := recoveredBlock24Block32Stack3.
            recoveredBlock24Block32PC := 110.
        ].
        recoveredBlock24Block32Step = 110 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack4.
            recoveredBlock24Block32PC := 111.
        ].
        recoveredBlock24Block32Step = 111 ifTrue: [
            recoveredBlock24Block32Stack2 := (recoveredBlock24Block32Stack2) < (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 112.
        ].
        recoveredBlock24Block32Step = 112 ifTrue: [
            (recoveredBlock24Block32Stack2) ifTrue: [recoveredBlock24Block32PC := 114] ifFalse: [recoveredBlock24Block32PC := 96].
        ].
        recoveredBlock24Block32Step = 114 ifTrue: [
            recoveredBlock24Block32Stack2 := nil.
            recoveredBlock24Block32PC := 115.
        ].
        recoveredBlock24Block32Step = 115 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack2.
            recoveredBlock24Block32PC := 116.
        ].
        recoveredBlock24Block32Step = 116 ifTrue: [
            recoveredBlock24Block32PC := 117.
        ].
        recoveredBlock24Block32Step = 117 ifTrue: [
            recoveredBlock24Block32Stack1 := recoveredBlock24Block32Local2.
            recoveredBlock24Block32PC := 118.
        ].
        recoveredBlock24Block32Step = 118 ifTrue: [
            sequenceableValues := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 120.
        ].
        recoveredBlock24Block32Step = 120 ifTrue: [
            recoveredBlock24Block32Stack1 := sequenceableValues.
            recoveredBlock24Block32PC := 122.
        ].
        recoveredBlock24Block32Step = 122 ifTrue: [
            recoveredBlock24Block32Stack2 := sequenceableValues.
            recoveredBlock24Block32PC := 124.
        ].
        recoveredBlock24Block32Step = 124 ifTrue: [
            recoveredBlock24Block32Stack2 := (recoveredBlock24Block32Stack2) size.
            recoveredBlock24Block32PC := 125.
        ].
        recoveredBlock24Block32Step = 125 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredLocal1.
            recoveredBlock24Block32PC := 128.
        ].
        recoveredBlock24Block32Step = 128 ifTrue: [
            recoveredBlock24Block32Stack3 := (recoveredBlock24Block32Stack3) + (1).
            recoveredBlock24Block32PC := 129.
        ].
        recoveredBlock24Block32Step = 129 ifTrue: [
            (recoveredBlock24Block32Stack1) at: (recoveredBlock24Block32Stack2) put: (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 131.
        ].
        recoveredBlock24Block32Step = 131 ifTrue: [
            recoveredBlock24Block32Stack1 := recoveredLocal1.
            recoveredBlock24Block32PC := 134.
        ].
        recoveredBlock24Block32Step = 134 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) + (1).
            recoveredBlock24Block32PC := 135.
        ].
        recoveredBlock24Block32Step = 135 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) + (-1).
            recoveredBlock24Block32PC := 136.
        ].
        recoveredBlock24Block32Step = 136 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 137.
        ].
        recoveredBlock24Block32Step = 137 ifTrue: [
            recoveredBlock24Block32Stack1 := sequenceableValues.
            recoveredBlock24Block32PC := 139.
        ].
        recoveredBlock24Block32Step = 139 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) size.
            recoveredBlock24Block32PC := 140.
        ].
        recoveredBlock24Block32Step = 140 ifTrue: [
            recoveredBlock24Block32Stack1 := (recoveredBlock24Block32Stack1) + (-1).
            recoveredBlock24Block32PC := 141.
        ].
        recoveredBlock24Block32Step = 141 ifTrue: [
            recoveredBlock24Block32PC := 151.
        ].
        recoveredBlock24Block32Step = 144 ifTrue: [
            recoveredBlock24Block32Stack2 := sequenceableValues.
            recoveredBlock24Block32PC := 146.
        ].
        recoveredBlock24Block32Step = 146 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredBlock24Block32Local1.
            recoveredBlock24Block32PC := 147.
        ].
        recoveredBlock24Block32Step = 147 ifTrue: [
            recoveredBlock24Block32Stack4 := recoveredBlock24Block32Local1.
            recoveredBlock24Block32PC := 148.
        ].
        recoveredBlock24Block32Step = 148 ifTrue: [
            recoveredBlock24Block32Stack4 := (recoveredBlock24Block32Stack4) + (1).
            recoveredBlock24Block32PC := 149.
        ].
        recoveredBlock24Block32Step = 149 ifTrue: [
            (recoveredBlock24Block32Stack2) at: (recoveredBlock24Block32Stack3) put: (recoveredBlock24Block32Stack4).
            recoveredBlock24Block32PC := 151.
        ].
        recoveredBlock24Block32Step = 151 ifTrue: [
            (recoveredBlock24Block32Stack1 isInteger and: [recoveredBlock24Block32Local1 isInteger]) ifTrue: [(recoveredBlock24Block32Local1 + 1 <= recoveredBlock24Block32Stack1) ifTrue: [recoveredBlock24Block32Local1 := recoveredBlock24Block32Local1 + 1. recoveredBlock24Block32PC := 144] ifFalse: [recoveredBlock24Block32Local1 := nil. recoveredBlock24Block32PC := 165]] ifFalse: [recoveredBlock24Block32PC := 155].
        ].
        recoveredBlock24Block32Step = 155 ifTrue: [
            recoveredBlock24Block32Stack2 := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32PC := 156.
        ].
        recoveredBlock24Block32Step = 156 ifTrue: [
            recoveredBlock24Block32Stack3 := recoveredBlock24Block32Local1.
            recoveredBlock24Block32PC := 157.
        ].
        recoveredBlock24Block32Step = 157 ifTrue: [
            recoveredBlock24Block32Stack3 := (recoveredBlock24Block32Stack3) + (1).
            recoveredBlock24Block32PC := 158.
        ].
        recoveredBlock24Block32Step = 158 ifTrue: [
            recoveredBlock24Block32Stack4 := recoveredBlock24Block32Stack3.
            recoveredBlock24Block32PC := 159.
        ].
        recoveredBlock24Block32Step = 159 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack4.
            recoveredBlock24Block32PC := 160.
        ].
        recoveredBlock24Block32Step = 160 ifTrue: [
            recoveredBlock24Block32Stack2 := (recoveredBlock24Block32Stack2) < (recoveredBlock24Block32Stack3).
            recoveredBlock24Block32PC := 161.
        ].
        recoveredBlock24Block32Step = 161 ifTrue: [
            (recoveredBlock24Block32Stack2) ifTrue: [recoveredBlock24Block32PC := 163] ifFalse: [recoveredBlock24Block32PC := 144].
        ].
        recoveredBlock24Block32Step = 163 ifTrue: [
            recoveredBlock24Block32Stack2 := nil.
            recoveredBlock24Block32PC := 164.
        ].
        recoveredBlock24Block32Step = 164 ifTrue: [
            recoveredBlock24Block32Local1 := recoveredBlock24Block32Stack2.
            recoveredBlock24Block32PC := 165.
        ].
        recoveredBlock24Block32Step = 165 ifTrue: [
            recoveredBlock24Block32Result := recoveredBlock24Block32Stack1.
            recoveredBlock24Block32Done := true.
        ].
    ].
    recoveredBlock24Block32Result
].
    recoveredBlock24Value2 := (recoveredBlock24Value0) finalizeProtect: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

