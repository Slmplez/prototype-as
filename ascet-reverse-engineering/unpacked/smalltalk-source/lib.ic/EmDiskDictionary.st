"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200004fc; bytecode file offset 0x3c670"
!EmDiskDictionary methodsFor: 'recovered'!
entryClass
    | recoveredValue0 |
    recoveredValue0 := EmAssociationEntry.
    ^recoveredValue0
! !

"lib.ic method 0x200031b8; bytecode file offset 0x3f1e4"
!EmDiskDictionary methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) usedLength.
    recoveredValue1 := EmRecord.
    recoveredValue2 := (recoveredValue1) headerSize.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200031d8; bytecode file offset 0x3f204"
!EmDiskDictionary methodsFor: 'recovered'!
notEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) usedLength.
    recoveredValue1 := EmRecord.
    recoveredValue2 := (recoveredValue1) headerSize.
    recoveredValue3 := (recoveredValue0) ~= (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003840; bytecode file offset 0x3f878"
!EmDiskDictionary methodsFor: 'recovered'!
newAssocEntry: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) entryClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) key: (recoveredValue1) value: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004058; bytecode file offset 0x40080"
!EmDiskDictionary methodsFor: 'recovered'!
createFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) initializeFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) insertInto: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200061ac; bytecode file offset 0x421d8"
!EmDiskDictionary methodsFor: 'recovered'!
obtainRecordAt: recoveredArg1 ofType: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (self) library.
    recoveredValue5 := (recoveredValue0) using: (recoveredValue3) from: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20007f24; bytecode file offset 0x43f48"
!EmDiskDictionary methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^false
].
    (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^true
! !

"lib.ic method 0x20008638; bytecode file offset 0x44664"
!EmDiskDictionary methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := EmLibraryPointer.
    recoveredBlock7Value1 := (recoveredBlock7Value0) void.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20009548; bytecode file offset 0x45588"
!EmDiskDictionary methodsFor: 'recovered'!
removeKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) entryAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    (self) removeEntry: (recoveredValue2).
    recoveredValue3 := (self) insert.
    ^recoveredValue3
! !

"lib.ic method 0x2000a46c; bytecode file offset 0x464a4"
!EmDiskDictionary methodsFor: 'recovered'!
initializeFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) key.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) value.
    recoveredBlock5Value4 := (self) newAssocEntry: (recoveredBlock5Value1) value: (recoveredBlock5Value3).
    recoveredBlock5Value5 := (self) appendWith: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    (self) forgetCachedSpace.
    ^self
! !

"lib.ic method 0x2000a4a8; bytecode file offset 0x464dc"
!EmDiskDictionary methodsFor: 'recovered'!
obtainDictionaryAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmDiskDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := EmDiskDictionary.
    recoveredBlock10Value1 := (recoveredBlock10Value0) empty.
    ^recoveredBlock10Value1
].
    recoveredValue3 := (self) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (self) library.
    recoveredValue5 := (recoveredValue0) using: (recoveredValue3) from: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000b448; bytecode file offset 0x4747c"
!EmDiskDictionary methodsFor: 'recovered'!
values
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) value.
    recoveredBlock10Value3 := (recoveredBlock10Value0) addFirst: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (self) forAllEntriesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"lib.ic method 0x2000b840; bytecode file offset 0x47870"
!EmDiskDictionary methodsFor: 'recovered'!
obtainRecordAt: recoveredArg1 ofType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := (recoveredBlock11Value0) empty.
    ^recoveredBlock11Value1
].
    recoveredValue3 := (self) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (self) library.
    recoveredValue5 := (recoveredValue0) using: (recoveredValue3) from: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000cc78; bytecode file offset 0x48cac"
!EmDiskDictionary methodsFor: 'recovered'!
removeAllKeys: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack4 := [].
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) entryAt: (recoveredBlock5Stack3) ifAbsent: (recoveredBlock5Stack4).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeEntry: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) insert.
    ^recoveredValue2
! !

"lib.ic method 0x2000da40; bytecode file offset 0x49ab8"
!EmDiskDictionary methodsFor: 'recovered'!
names
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) name.
    recoveredBlock15Value3 := (recoveredBlock15Value0) add: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000da60; bytecode file offset 0x49ab8"
!EmDiskDictionary methodsFor: 'recovered'!
keys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) key.
    recoveredBlock15Value3 := (recoveredBlock15Value0) add: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000da80; bytecode file offset 0x49ab8"
!EmDiskDictionary methodsFor: 'recovered'!
asDictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (self) endPosition.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) asAssociation.
    recoveredBlock15Value3 := (recoveredBlock15Value0) add: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (self) forAllEntriesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"lib.ic method 0x2000dbe0; bytecode file offset 0x49c10"
!EmDiskDictionary methodsFor: 'recovered'!
replaceAt: recoveredArg1 withPointerFrom: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) entryAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) replaceValueWith: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f1a4; bytecode file offset 0x4b1d4"
!EmDiskDictionary methodsFor: 'recovered'!
moveTo: recoveredArg1 leavingOut: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) entryAt: (recoveredBlock7Stack3).
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) removeEntry: (recoveredBlock7Stack2).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) moveTo: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20010210; bytecode file offset 0x4c244"
!EmDiskDictionary methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) libraryFormatFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) keyMatches: (recoveredBlock13Stack3).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) value.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            ^recoveredBlock13Stack1
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (self) forAllEntriesDo: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"lib.ic method 0x20010efc; bytecode file offset 0x4cf2c"
!EmDiskDictionary methodsFor: 'recovered'!
needAtLeast: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) endPosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) headerSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) endPosition.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011f24; bytecode file offset 0x4df70"
!EmDiskDictionary methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) name.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includesKey: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 43] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) name.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack4 := EmRecord.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) value.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack6 := recoveredBlock5Arg1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack6 := (recoveredBlock5Stack6) library.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) using: (recoveredBlock5Stack5) from: (recoveredBlock5Stack6).
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack5 := self.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack5 := (recoveredBlock5Stack5) library.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) insertInto: (recoveredBlock5Stack5).
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) newAssocEntry: (recoveredBlock5Stack3) value: (recoveredBlock5Stack4).
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) addNewEntry: (recoveredBlock5Stack2).
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) forAllEntriesDo: (recoveredValue1).
    recoveredValue2 := (self) filePointer.
    ^recoveredValue2
! !

"lib.ic method 0x200162a0; bytecode file offset 0x522e0"
!EmDiskDictionary methodsFor: 'recovered'!
at: recoveredArg1 putPointerFrom: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) entryAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EmLibraryPointer.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) void.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) newAssocEntry: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) addNewEntry: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 50].
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
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) replaceValueWith: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001aab4; bytecode file offset 0x56b0c"
!EmDiskDictionary methodsFor: 'recovered'!
mergeWith: recoveredArg1 leavingOut: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mergeWith: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21Stack7 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg2.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) key.
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Stack3.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack4.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) includes: (recoveredBlock21Stack3).
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 77] ifFalse: [recoveredBlock21PC := 42].
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) includesKey: (recoveredBlock21Stack3).
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 77] ifFalse: [recoveredBlock21PC := 52].
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal1.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack4 := EmRecord.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack5 := recoveredBlock21Arg1.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) value.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack6 := recoveredBlock21Arg1.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) library.
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) using: (recoveredBlock21Stack5) from: (recoveredBlock21Stack6).
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack5 := self.
            recoveredBlock21PC := 69.
        ].
        recoveredBlock21Step = 69 ifTrue: [
            recoveredBlock21Stack5 := (recoveredBlock21Stack5) library.
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) insertInto: (recoveredBlock21Stack5).
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) newAssocEntry: (recoveredBlock21Stack3) value: (recoveredBlock21Stack4).
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) addNewEntry: (recoveredBlock21Stack2).
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) forAllEntriesDo: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028850; bytecode file offset 0x648c4"
!EmDiskDictionary methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) forgetCachedSpace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) names.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredLocal4 := recoveredBlock25Value0.
    recoveredBlock25Value1 := [:recoveredBlock25Block38Arg1 | 
    | recoveredBlock25Block38Stack0 recoveredBlock25Block38Stack1 recoveredBlock25Block38Stack2 recoveredBlock25Block38Stack3 recoveredBlock25Block38Stack4 recoveredBlock25Block38Stack5 recoveredBlock25Block38PC recoveredBlock25Block38Step recoveredBlock25Block38Done recoveredBlock25Block38Result |
    recoveredBlock25Block38Stack0 := self.
    recoveredBlock25Block38PC := 44.
    recoveredBlock25Block38Done := false.
    [recoveredBlock25Block38Done not] whileTrue: [
        recoveredBlock25Block38Step := recoveredBlock25Block38PC.
        recoveredBlock25Block38Step = 44 ifTrue: [
            recoveredBlock25Block38Stack1 := nil.
            recoveredBlock25Block38PC := 45.
        ].
        recoveredBlock25Block38Step = 45 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 46.
        ].
        recoveredBlock25Block38Step = 46 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) value.
            recoveredBlock25Block38PC := 48.
        ].
        recoveredBlock25Block38Step = 48 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) notVoid.
            recoveredBlock25Block38PC := 50.
        ].
        recoveredBlock25Block38Step = 50 ifTrue: [
            (recoveredBlock25Block38Stack2) ifTrue: [recoveredBlock25Block38PC := 54] ifFalse: [recoveredBlock25Block38PC := 143].
        ].
        recoveredBlock25Block38Step = 54 ifTrue: [
            recoveredBlock25Block38PC := 55.
        ].
        recoveredBlock25Block38Step = 55 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredBlock25Arg2.
            recoveredBlock25Block38PC := 58.
        ].
        recoveredBlock25Block38Step = 58 ifTrue: [
            recoveredBlock25Block38Stack2 := EmRecord.
            recoveredBlock25Block38PC := 60.
        ].
        recoveredBlock25Block38Step = 60 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 61.
        ].
        recoveredBlock25Block38Step = 61 ifTrue: [
            recoveredBlock25Block38Stack3 := (recoveredBlock25Block38Stack3) value.
            recoveredBlock25Block38PC := 63.
        ].
        recoveredBlock25Block38Step = 63 ifTrue: [
            recoveredBlock25Block38Stack4 := self.
            recoveredBlock25Block38PC := 64.
        ].
        recoveredBlock25Block38Step = 64 ifTrue: [
            recoveredBlock25Block38Stack4 := (recoveredBlock25Block38Stack4) library.
            recoveredBlock25Block38PC := 66.
        ].
        recoveredBlock25Block38Step = 66 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) using: (recoveredBlock25Block38Stack3) from: (recoveredBlock25Block38Stack4).
            recoveredBlock25Block38PC := 68.
        ].
        recoveredBlock25Block38Step = 68 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) collection.
            recoveredBlock25Block38PC := 70.
        ].
        recoveredBlock25Block38Step = 70 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredBlock25Block38Stack2.
            recoveredBlock25Block38PC := 71.
        ].
        recoveredBlock25Block38Step = 71 ifTrue: [
            recoveredLocal3 := recoveredBlock25Block38Stack3.
            recoveredBlock25Block38PC := 74.
        ].
        recoveredBlock25Block38Step = 74 ifTrue: [
            (recoveredBlock25Block38Stack1) nextPutAll: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 76.
        ].
        recoveredBlock25Block38Step = 76 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 77.
        ].
        recoveredBlock25Block38Step = 77 ifTrue: [
            recoveredBlock25Block38Stack2 := EmLibraryPointer.
            recoveredBlock25Block38PC := 79.
        ].
        recoveredBlock25Block38Step = 79 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredLocal4.
            recoveredBlock25Block38PC := 82.
        ].
        recoveredBlock25Block38Step = 82 ifTrue: [
            recoveredBlock25Block38Stack4 := recoveredArg1.
            recoveredBlock25Block38PC := 85.
        ].
        recoveredBlock25Block38Step = 85 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) fromNumber: (recoveredBlock25Block38Stack3) in: (recoveredBlock25Block38Stack4).
            recoveredBlock25Block38PC := 87.
        ].
        recoveredBlock25Block38Step = 87 ifTrue: [
            (recoveredBlock25Block38Stack1) value: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 89.
        ].
        recoveredBlock25Block38Step = 89 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredLocal4.
            recoveredBlock25Block38PC := 92.
        ].
        recoveredBlock25Block38Step = 92 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredLocal3.
            recoveredBlock25Block38PC := 95.
        ].
        recoveredBlock25Block38Step = 95 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) size.
            recoveredBlock25Block38PC := 96.
        ].
        recoveredBlock25Block38Step = 96 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) + (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 97.
        ].
        recoveredBlock25Block38Step = 97 ifTrue: [
            recoveredLocal1 := recoveredBlock25Block38Stack1.
            recoveredBlock25Block38PC := 100.
        ].
        recoveredBlock25Block38Step = 100 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredArg1.
            recoveredBlock25Block38PC := 103.
        ].
        recoveredBlock25Block38Step = 103 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredLocal1.
            recoveredBlock25Block38PC := 106.
        ].
        recoveredBlock25Block38Step = 106 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) alignFilePosition: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 108.
        ].
        recoveredBlock25Block38Step = 108 ifTrue: [
            recoveredLocal4 := recoveredBlock25Block38Stack1.
            recoveredBlock25Block38PC := 111.
        ].
        recoveredBlock25Block38Step = 111 ifTrue: [
            recoveredBlock25Block38Stack1 := nil.
            recoveredBlock25Block38PC := 112.
        ].
        recoveredBlock25Block38Step = 112 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredLocal4.
            recoveredBlock25Block38PC := 115.
        ].
        recoveredBlock25Block38Step = 115 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredLocal1.
            recoveredBlock25Block38PC := 118.
        ].
        recoveredBlock25Block38Step = 118 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) - (recoveredBlock25Block38Stack3).
            recoveredBlock25Block38PC := 119.
        ].
        recoveredBlock25Block38Step = 119 ifTrue: [
            recoveredBlock25Block38Stack3 := 0.
            recoveredBlock25Block38PC := 121.
        ].
        recoveredBlock25Block38Step = 121 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) > (recoveredBlock25Block38Stack3).
            recoveredBlock25Block38PC := 122.
        ].
        recoveredBlock25Block38Step = 122 ifTrue: [
            (recoveredBlock25Block38Stack2) ifTrue: [recoveredBlock25Block38PC := 126] ifFalse: [recoveredBlock25Block38PC := 143].
        ].
        recoveredBlock25Block38Step = 126 ifTrue: [
            recoveredBlock25Block38PC := 127.
        ].
        recoveredBlock25Block38Step = 127 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredBlock25Arg2.
            recoveredBlock25Block38PC := 130.
        ].
        recoveredBlock25Block38Step = 130 ifTrue: [
            recoveredBlock25Block38Stack2 := ByteArray.
            recoveredBlock25Block38PC := 132.
        ].
        recoveredBlock25Block38Step = 132 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredLocal4.
            recoveredBlock25Block38PC := 135.
        ].
        recoveredBlock25Block38Step = 135 ifTrue: [
            recoveredBlock25Block38Stack4 := recoveredLocal1.
            recoveredBlock25Block38PC := 138.
        ].
        recoveredBlock25Block38Step = 138 ifTrue: [
            recoveredBlock25Block38Stack3 := (recoveredBlock25Block38Stack3) - (recoveredBlock25Block38Stack4).
            recoveredBlock25Block38PC := 139.
        ].
        recoveredBlock25Block38Step = 139 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) new: (recoveredBlock25Block38Stack3).
            recoveredBlock25Block38PC := 141.
        ].
        recoveredBlock25Block38Step = 141 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) nextPutAll: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 143.
        ].
        recoveredBlock25Block38Step = 143 ifTrue: [
            recoveredBlock25Block38Result := recoveredBlock25Block38Stack1.
            recoveredBlock25Block38Done := true.
        ].
    ].
    recoveredBlock25Block38Result
].
    (self) forAllEntriesDo: (recoveredBlock25Value1).
    recoveredBlock25Value2 := recoveredArg1.
    (self) library: (recoveredBlock25Value2).
    recoveredBlock25Value3 := recoveredBlock25Arg2.
    recoveredBlock25Value4 := (self) collection.
    (recoveredBlock25Value3) nextPutAll: (recoveredBlock25Value4).
    recoveredBlock25Value5 := EmLibraryPointer.
    recoveredBlock25Value6 := recoveredLocal4.
    recoveredBlock25Value7 := recoveredArg1.
    recoveredBlock25Value8 := (recoveredBlock25Value5) fromNumber: (recoveredBlock25Value6) in: (recoveredBlock25Value7).
    recoveredBlock25Value9 := recoveredBlock25Value8.
    recoveredLocal2 := recoveredBlock25Value9.
    recoveredBlock25Value8
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) multipleInsertUsing: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := [:recoveredBlock182Arg1 | 
    | recoveredBlock182Value0 recoveredBlock182Value1 recoveredBlock182Value2 recoveredBlock182Value3 recoveredBlock182Value4 recoveredBlock182Value5 recoveredBlock182Value6 recoveredBlock182Value7 recoveredBlock182Value8 |
    recoveredBlock182Value0 := recoveredBlock182Arg1.
    recoveredBlock182Value1 := EmRecord.
    recoveredBlock182Value2 := recoveredBlock182Arg1.
    recoveredBlock182Value3 := (recoveredBlock182Value2) value.
    recoveredBlock182Value4 := (self) library.
    recoveredBlock182Value5 := (recoveredBlock182Value1) using: (recoveredBlock182Value3) from: (recoveredBlock182Value4).
    recoveredBlock182Value6 := recoveredArg1.
    recoveredBlock182Value7 := (recoveredBlock182Value5) insertInto: (recoveredBlock182Value6).
    recoveredBlock182Value8 := (recoveredBlock182Value0) value: (recoveredBlock182Value7).
    recoveredBlock182Value8
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) forAllEntriesDo: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) insertInto: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

