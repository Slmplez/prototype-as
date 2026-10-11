"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20002fc0; bytecode file offset 0x3efe8"
!EmRootTypeRecord class methodsFor: 'recovered'!
registryKey
    | recoveredValue0 |
    recoveredValue0 := MxEMc141.
    (self) fatalError: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20003104; bytecode file offset 0x3f130"
!EmRootTypeRecord class methodsFor: 'recovered'!
purgedRegistryKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) registryKey.
    recoveredValue1 := ('Purged ') , (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200039ec; bytecode file offset 0x3fa4c"
!EmRootTypeRecord class methodsFor: 'recovered'!
purgedRootDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmFixedDiskDictionary.
    recoveredValue1 := (recoveredValue0) recordRegistry.
    recoveredValue2 := (self) purgedRegistryKey.
    recoveredValue3 := (recoveredValue1) obtainDictionaryAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003a04; bytecode file offset 0x3fa4c"
!EmRootTypeRecord class methodsFor: 'recovered'!
rootDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmFixedDiskDictionary.
    recoveredValue1 := (recoveredValue0) recordRegistry.
    recoveredValue2 := (self) registryKey.
    recoveredValue3 := (recoveredValue1) obtainDictionaryAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20006b84; bytecode file offset 0x42bb4"
!EmRootTypeRecord class methodsFor: 'recovered'!
for: recoveredArg1
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
            recoveredStack2 := [
    | block2800412cValue0 block2800412cValue1 |
    block2800412cValue0 := EmLibraryPointer.
    block2800412cValue1 := (block2800412cValue0) void.
    block2800412cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20006f30; bytecode file offset 0x42f60"
!EmRootTypeRecord class methodsFor: 'recovered'!
for: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) rootDictionary.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) library.
    recoveredValue7 := (self) using: (recoveredValue4) from: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x20008a64; bytecode file offset 0x44aa0"
!EmRootTypeRecord class methodsFor: 'recovered'!
updateRegistryUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := EmFixedDiskDictionary.
    recoveredValue4 := (recoveredValue3) updateRecordRegistry.
    (recoveredValue2) value: (recoveredValue4).
    recoveredValue5 := EmLibrary.
    recoveredValue6 := (recoveredValue5) default.
    (recoveredValue6) transactionEnd.
    ^self
! !

"lib.ic method 0x2000fcd8; bytecode file offset 0x4bd0c"
!EmRootTypeRecord class methodsFor: 'recovered'!
for: recoveredArg1 relocateUsing: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [:recoveredBlock4Block16Arg1 | 
    | recoveredBlock4Block16Value0 recoveredBlock4Block16Value1 recoveredBlock4Block16Value2 recoveredBlock4Block16Value3 recoveredBlock4Block16Value4 recoveredBlock4Block16Value5 |
    recoveredBlock4Block16Value0 := recoveredArg2.
    recoveredBlock4Block16Value1 := recoveredBlock4Block16Arg1.
    recoveredBlock4Block16Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block16Value3 := (recoveredBlock4Block16Value2) library.
    recoveredBlock4Block16Value4 := (self) updating: (recoveredBlock4Block16Value1) from: (recoveredBlock4Block16Value3).
    recoveredBlock4Block16Value5 := (recoveredBlock4Block16Value0) value: (recoveredBlock4Block16Value4).
    recoveredBlock4Block16Value5
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) relocateRootDictionaryUsing: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20012838; bytecode file offset 0x4e888"
!EmRootTypeRecord class methodsFor: 'recovered'!
relocateRootDictionaryUsing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := EmFixedDiskDictionary.
    recoveredValue3 := (recoveredValue2) updateRecordRegistry.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) registryKey.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := EmDiskDictionary.
    recoveredBlock20Value2 := recoveredBlock20Arg1.
    recoveredBlock20Value3 := recoveredLocal1.
    recoveredBlock20Value4 := (recoveredBlock20Value3) library.
    recoveredBlock20Value5 := (recoveredBlock20Value1) updating: (recoveredBlock20Value2) from: (recoveredBlock20Value4).
    recoveredBlock20Value6 := (recoveredBlock20Value0) value: (recoveredBlock20Value5).
    recoveredBlock20Value6
].
    (recoveredValue3) at: (recoveredValue5) putPointerFrom: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    (recoveredValue8) transactionEnd.
    ^self
! !

"lib.ic method 0x200153ac; bytecode file offset 0x51400"
!EmRootTypeRecord class methodsFor: 'recovered'!
initialRootDictionarySize: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) transactionBegin.
    recoveredValue2 := EmFixedDiskDictionary.
    recoveredValue3 := (recoveredValue2) updateRecordRegistry.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) registryKey.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isVoid.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 34] ifFalse: [recoveredBlock20PC := 49].
        ].
        recoveredBlock20Step = 34 ifTrue: [
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack1 := EmDiskDictionary.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack2 := recoveredArg1.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) new: (recoveredBlock20Stack2).
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) library.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) insertInto: (recoveredBlock20Stack2).
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    (recoveredValue3) at: (recoveredValue5) putPointerFrom: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    (recoveredValue8) transactionEnd.
    ^self
! !

"lib.ic method 0x20017bf4; bytecode file offset 0x53c4c"
!EmRootTypeRecord class methodsFor: 'recovered'!
for: recoveredArg1 updateUsing: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) transactionBegin.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootDictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := MxEMcsESa3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := MxEMcsESa4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) transactionProtocolError: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) transactionEnd.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001fc84; bytecode file offset 0x5bccc"
!EmRootTypeRecord class methodsFor: 'recovered'!
purge: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) registryKey.
    recoveredBlock4Value2 := [:recoveredBlock4Block15Arg1 | 
    | recoveredBlock4Block15Stack0 recoveredBlock4Block15Stack1 recoveredBlock4Block15Stack2 recoveredBlock4Block15Stack3 recoveredBlock4Block15Stack4 recoveredBlock4Block15Stack5 recoveredBlock4Block15PC recoveredBlock4Block15Step recoveredBlock4Block15Done recoveredBlock4Block15Result |
    recoveredBlock4Block15Stack0 := self.
    recoveredBlock4Block15PC := 22.
    recoveredBlock4Block15Done := false.
    [recoveredBlock4Block15Done not] whileTrue: [
        recoveredBlock4Block15Step := recoveredBlock4Block15PC.
        recoveredBlock4Block15Step = 22 ifTrue: [
            recoveredBlock4Block15Stack1 := EmDiskDictionary.
            recoveredBlock4Block15PC := 24.
        ].
        recoveredBlock4Block15Step = 24 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredBlock4Block15Arg1.
            recoveredBlock4Block15PC := 25.
        ].
        recoveredBlock4Block15Step = 25 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 28.
        ].
        recoveredBlock4Block15Step = 28 ifTrue: [
            recoveredBlock4Block15Stack3 := (recoveredBlock4Block15Stack3) library.
            recoveredBlock4Block15PC := 29.
        ].
        recoveredBlock4Block15Step = 29 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) updating: (recoveredBlock4Block15Stack2) from: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 31.
        ].
        recoveredBlock4Block15Step = 31 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 34.
        ].
        recoveredBlock4Block15Step = 34 ifTrue: [
            recoveredBlock4Block15Stack1 := nil.
            recoveredBlock4Block15PC := 35.
        ].
        recoveredBlock4Block15Step = 35 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal2.
            recoveredBlock4Block15PC := 38.
        ].
        recoveredBlock4Block15Step = 38 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredArg1.
            recoveredBlock4Block15PC := 41.
        ].
        recoveredBlock4Block15Step = 41 ifTrue: [
            recoveredBlock4Block15Stack4 := [].
            recoveredBlock4Block15PC := 43.
        ].
        recoveredBlock4Block15Step = 43 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) at: (recoveredBlock4Block15Stack3) ifAbsent: (recoveredBlock4Block15Stack4).
            recoveredBlock4Block15PC := 45.
        ].
        recoveredBlock4Block15Step = 45 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Block15Stack2.
            recoveredBlock4Block15PC := 46.
        ].
        recoveredBlock4Block15Step = 46 ifTrue: [
            recoveredLocal1 := recoveredBlock4Block15Stack3.
            recoveredBlock4Block15PC := 49.
        ].
        recoveredBlock4Block15Step = 49 ifTrue: [
            (recoveredBlock4Block15Stack2 == nil) ifTrue: [recoveredBlock4Block15PC := 101] ifFalse: [recoveredBlock4Block15PC := 52].
        ].
        recoveredBlock4Block15Step = 52 ifTrue: [
            recoveredBlock4Block15PC := 53.
        ].
        recoveredBlock4Block15Step = 53 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 56.
        ].
        recoveredBlock4Block15Step = 56 ifTrue: [
            recoveredBlock4Block15Stack2 := self.
            recoveredBlock4Block15PC := 57.
        ].
        recoveredBlock4Block15Step = 57 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) purgedRegistryKey.
            recoveredBlock4Block15PC := 59.
        ].
        recoveredBlock4Block15Step = 59 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block59Arg1 | 
    | recoveredBlock4Block15Block59Value0 recoveredBlock4Block15Block59Value1 recoveredBlock4Block15Block59Value2 recoveredBlock4Block15Block59Value3 recoveredBlock4Block15Block59Value4 recoveredBlock4Block15Block59Value5 recoveredBlock4Block15Block59Value6 recoveredBlock4Block15Block59Value7 |
    recoveredBlock4Block15Block59Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block59Value1 := recoveredBlock4Block15Block59Arg1.
    recoveredBlock4Block15Block59Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block59Value3 := (recoveredBlock4Block15Block59Value2) library.
    recoveredBlock4Block15Block59Value4 := (recoveredBlock4Block15Block59Value0) updating: (recoveredBlock4Block15Block59Value1) from: (recoveredBlock4Block15Block59Value3).
    recoveredBlock4Block15Block59Value5 := recoveredArg1.
    recoveredBlock4Block15Block59Value6 := [:recoveredBlock4Block15Block59Block78Arg1 | 
    | recoveredBlock4Block15Block59Block78Value0 |
    recoveredBlock4Block15Block59Block78Value0 := recoveredLocal1.
    recoveredBlock4Block15Block59Block78Value0
].
    recoveredBlock4Block15Block59Value7 := (recoveredBlock4Block15Block59Value4) at: (recoveredBlock4Block15Block59Value5) putPointerFrom: (recoveredBlock4Block15Block59Value6).
    recoveredBlock4Block15Block59Value7
].
            recoveredBlock4Block15PC := 91.
        ].
        recoveredBlock4Block15Step = 91 ifTrue: [
            (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 93.
        ].
        recoveredBlock4Block15Step = 93 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal2.
            recoveredBlock4Block15PC := 96.
        ].
        recoveredBlock4Block15Step = 96 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 99.
        ].
        recoveredBlock4Block15Step = 99 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) removeKey: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 101.
        ].
        recoveredBlock4Block15Step = 101 ifTrue: [
            recoveredBlock4Block15Result := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15Done := true.
        ].
    ].
    recoveredBlock4Block15Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20023a00; bytecode file offset 0x5fa4c"
!EmRootTypeRecord class methodsFor: 'recovered'!
salvage: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) purgedRegistryKey.
    recoveredBlock4Value2 := [:recoveredBlock4Block15Arg1 | 
    | recoveredBlock4Block15Stack0 recoveredBlock4Block15Stack1 recoveredBlock4Block15Stack2 recoveredBlock4Block15Stack3 recoveredBlock4Block15Stack4 recoveredBlock4Block15Stack5 recoveredBlock4Block15PC recoveredBlock4Block15Step recoveredBlock4Block15Done recoveredBlock4Block15Result |
    recoveredBlock4Block15Stack0 := self.
    recoveredBlock4Block15PC := 22.
    recoveredBlock4Block15Done := false.
    [recoveredBlock4Block15Done not] whileTrue: [
        recoveredBlock4Block15Step := recoveredBlock4Block15PC.
        recoveredBlock4Block15Step = 22 ifTrue: [
            recoveredBlock4Block15Stack1 := EmDiskDictionary.
            recoveredBlock4Block15PC := 24.
        ].
        recoveredBlock4Block15Step = 24 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredBlock4Block15Arg1.
            recoveredBlock4Block15PC := 25.
        ].
        recoveredBlock4Block15Step = 25 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 28.
        ].
        recoveredBlock4Block15Step = 28 ifTrue: [
            recoveredBlock4Block15Stack3 := (recoveredBlock4Block15Stack3) library.
            recoveredBlock4Block15PC := 29.
        ].
        recoveredBlock4Block15Step = 29 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) updating: (recoveredBlock4Block15Stack2) from: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 31.
        ].
        recoveredBlock4Block15Step = 31 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15PC := 34.
        ].
        recoveredBlock4Block15Step = 34 ifTrue: [
            recoveredBlock4Block15Stack1 := nil.
            recoveredBlock4Block15PC := 35.
        ].
        recoveredBlock4Block15Step = 35 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredLocal3.
            recoveredBlock4Block15PC := 38.
        ].
        recoveredBlock4Block15Step = 38 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredArg1.
            recoveredBlock4Block15PC := 41.
        ].
        recoveredBlock4Block15Step = 41 ifTrue: [
            recoveredBlock4Block15Stack4 := [].
            recoveredBlock4Block15PC := 43.
        ].
        recoveredBlock4Block15Step = 43 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) at: (recoveredBlock4Block15Stack3) ifAbsent: (recoveredBlock4Block15Stack4).
            recoveredBlock4Block15PC := 45.
        ].
        recoveredBlock4Block15Step = 45 ifTrue: [
            recoveredBlock4Block15Stack3 := recoveredBlock4Block15Stack2.
            recoveredBlock4Block15PC := 46.
        ].
        recoveredBlock4Block15Step = 46 ifTrue: [
            recoveredLocal2 := recoveredBlock4Block15Stack3.
            recoveredBlock4Block15PC := 49.
        ].
        recoveredBlock4Block15Step = 49 ifTrue: [
            (recoveredBlock4Block15Stack2 == nil) ifTrue: [recoveredBlock4Block15PC := 136] ifFalse: [recoveredBlock4Block15PC := 52].
        ].
        recoveredBlock4Block15Step = 52 ifTrue: [
            recoveredBlock4Block15PC := 53.
        ].
        recoveredBlock4Block15Step = 53 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredBlock4Arg1.
            recoveredBlock4Block15PC := 56.
        ].
        recoveredBlock4Block15Step = 56 ifTrue: [
            recoveredBlock4Block15Stack2 := self.
            recoveredBlock4Block15PC := 57.
        ].
        recoveredBlock4Block15Step = 57 ifTrue: [
            recoveredBlock4Block15Stack2 := (recoveredBlock4Block15Stack2) registryKey.
            recoveredBlock4Block15PC := 59.
        ].
        recoveredBlock4Block15Step = 59 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block59Arg1 | 
    | recoveredBlock4Block15Block59Value0 recoveredBlock4Block15Block59Value1 recoveredBlock4Block15Block59Value2 recoveredBlock4Block15Block59Value3 recoveredBlock4Block15Block59Value4 recoveredBlock4Block15Block59Value5 recoveredBlock4Block15Block59Value6 recoveredBlock4Block15Block59Value7 |
    recoveredBlock4Block15Block59Value0 := EmDiskDictionary.
    recoveredBlock4Block15Block59Value1 := recoveredBlock4Block15Block59Arg1.
    recoveredBlock4Block15Block59Value2 := recoveredBlock4Arg1.
    recoveredBlock4Block15Block59Value3 := (recoveredBlock4Block15Block59Value2) library.
    recoveredBlock4Block15Block59Value4 := (recoveredBlock4Block15Block59Value0) updating: (recoveredBlock4Block15Block59Value1) from: (recoveredBlock4Block15Block59Value3).
    recoveredBlock4Block15Block59Value5 := recoveredArg1.
    recoveredBlock4Block15Block59Value6 := [:recoveredBlock4Block15Block59Block78Arg1 | 
    | recoveredBlock4Block15Block59Block78Value0 recoveredBlock4Block15Block59Block78Value1 |
    recoveredBlock4Block15Block59Block78Value0 := recoveredBlock4Block15Block59Block78Arg1.
    recoveredLocal1 := recoveredBlock4Block15Block59Block78Value0.
    recoveredBlock4Block15Block59Block78Value1 := recoveredLocal2.
    recoveredBlock4Block15Block59Block78Value1
].
    recoveredBlock4Block15Block59Value7 := (recoveredBlock4Block15Block59Value4) at: (recoveredBlock4Block15Block59Value5) putPointerFrom: (recoveredBlock4Block15Block59Value6).
    recoveredBlock4Block15Block59Value7
].
            recoveredBlock4Block15PC := 95.
        ].
        recoveredBlock4Block15Step = 95 ifTrue: [
            (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 97.
        ].
        recoveredBlock4Block15Step = 97 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal1.
            recoveredBlock4Block15PC := 100.
        ].
        recoveredBlock4Block15Step = 100 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) isVoid.
            recoveredBlock4Block15PC := 102.
        ].
        recoveredBlock4Block15Step = 102 ifTrue: [
            (recoveredBlock4Block15Stack1) ifTrue: [recoveredBlock4Block15PC := 106] ifFalse: [recoveredBlock4Block15PC := 118].
        ].
        recoveredBlock4Block15Step = 106 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal3.
            recoveredBlock4Block15PC := 109.
        ].
        recoveredBlock4Block15Step = 109 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 112.
        ].
        recoveredBlock4Block15Step = 112 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) removeKey: (recoveredBlock4Block15Stack2).
            recoveredBlock4Block15PC := 114.
        ].
        recoveredBlock4Block15Step = 114 ifTrue: [
            recoveredBlock4Block15PC := 136.
        ].
        recoveredBlock4Block15Step = 118 ifTrue: [
            recoveredBlock4Block15Stack1 := recoveredLocal3.
            recoveredBlock4Block15PC := 121.
        ].
        recoveredBlock4Block15Step = 121 ifTrue: [
            recoveredBlock4Block15Stack2 := recoveredArg1.
            recoveredBlock4Block15PC := 124.
        ].
        recoveredBlock4Block15Step = 124 ifTrue: [
            recoveredBlock4Block15Stack3 := [:recoveredBlock4Block15Block124Arg1 | 
    | recoveredBlock4Block15Block124Value0 |
    recoveredBlock4Block15Block124Value0 := recoveredLocal1.
    recoveredBlock4Block15Block124Value0
].
            recoveredBlock4Block15PC := 134.
        ].
        recoveredBlock4Block15Step = 134 ifTrue: [
            recoveredBlock4Block15Stack1 := (recoveredBlock4Block15Stack1) at: (recoveredBlock4Block15Stack2) putPointerFrom: (recoveredBlock4Block15Stack3).
            recoveredBlock4Block15PC := 136.
        ].
        recoveredBlock4Block15Step = 136 ifTrue: [
            recoveredBlock4Block15Result := recoveredBlock4Block15Stack1.
            recoveredBlock4Block15Done := true.
        ].
    ].
    recoveredBlock4Block15Result
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) putPointerFrom: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) updateRegistryUsing: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200268f8; bytecode file offset 0x62968"
!EmRootTypeRecord class methodsFor: 'recovered'!
purgeAll: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) registryKey.
    recoveredBlock10Value2 := [:recoveredBlock10Block21Arg1 | 
    | recoveredBlock10Block21Local1 recoveredBlock10Block21Local2 recoveredBlock10Block21Stack0 recoveredBlock10Block21Stack1 recoveredBlock10Block21Stack2 recoveredBlock10Block21Stack3 recoveredBlock10Block21Stack4 recoveredBlock10Block21PC recoveredBlock10Block21Step recoveredBlock10Block21Done recoveredBlock10Block21Result |
    recoveredBlock10Block21Stack0 := self.
    recoveredBlock10Block21PC := 28.
    recoveredBlock10Block21Done := false.
    [recoveredBlock10Block21Done not] whileTrue: [
        recoveredBlock10Block21Step := recoveredBlock10Block21PC.
        recoveredBlock10Block21Step = 28 ifTrue: [
            recoveredBlock10Block21Stack1 := EmDiskDictionary.
            recoveredBlock10Block21PC := 30.
        ].
        recoveredBlock10Block21Step = 30 ifTrue: [
            recoveredBlock10Block21Stack2 := recoveredBlock10Block21Arg1.
            recoveredBlock10Block21PC := 33.
        ].
        recoveredBlock10Block21Step = 33 ifTrue: [
            recoveredBlock10Block21Stack3 := recoveredBlock10Arg1.
            recoveredBlock10Block21PC := 36.
        ].
        recoveredBlock10Block21Step = 36 ifTrue: [
            recoveredBlock10Block21Stack3 := (recoveredBlock10Block21Stack3) library.
            recoveredBlock10Block21PC := 38.
        ].
        recoveredBlock10Block21Step = 38 ifTrue: [
            recoveredBlock10Block21Stack1 := (recoveredBlock10Block21Stack1) updating: (recoveredBlock10Block21Stack2) from: (recoveredBlock10Block21Stack3).
            recoveredBlock10Block21PC := 40.
        ].
        recoveredBlock10Block21Step = 40 ifTrue: [
            recoveredBlock10Block21Local2 := recoveredBlock10Block21Stack1.
            recoveredBlock10Block21PC := 43.
        ].
        recoveredBlock10Block21Step = 43 ifTrue: [
            recoveredBlock10Block21Stack1 := recoveredBlock10Arg1.
            recoveredBlock10Block21PC := 46.
        ].
        recoveredBlock10Block21Step = 46 ifTrue: [
            recoveredBlock10Block21Stack2 := self.
            recoveredBlock10Block21PC := 47.
        ].
        recoveredBlock10Block21Step = 47 ifTrue: [
            recoveredBlock10Block21Stack2 := (recoveredBlock10Block21Stack2) purgedRegistryKey.
            recoveredBlock10Block21PC := 49.
        ].
        recoveredBlock10Block21Step = 49 ifTrue: [
            recoveredBlock10Block21Stack3 := [:recoveredBlock10Block21Block49Arg1 | 
    | recoveredBlock10Block21Block49Local1 recoveredBlock10Block21Block49Stack0 recoveredBlock10Block21Block49Stack1 recoveredBlock10Block21Block49Stack2 recoveredBlock10Block21Block49Stack3 recoveredBlock10Block21Block49Stack4 recoveredBlock10Block21Block49PC recoveredBlock10Block21Block49Step recoveredBlock10Block21Block49Done recoveredBlock10Block21Block49Result |
    recoveredBlock10Block21Block49Stack0 := nil.
    recoveredBlock10Block21Block49PC := 56.
    recoveredBlock10Block21Block49Done := false.
    [recoveredBlock10Block21Block49Done not] whileTrue: [
        recoveredBlock10Block21Block49Step := recoveredBlock10Block21Block49PC.
        recoveredBlock10Block21Block49Step = 56 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := EmDiskDictionary.
            recoveredBlock10Block21Block49PC := 58.
        ].
        recoveredBlock10Block21Block49Step = 58 ifTrue: [
            recoveredBlock10Block21Block49Stack2 := recoveredBlock10Block21Block49Arg1.
            recoveredBlock10Block21Block49PC := 61.
        ].
        recoveredBlock10Block21Block49Step = 61 ifTrue: [
            recoveredBlock10Block21Block49Stack3 := recoveredBlock10Arg1.
            recoveredBlock10Block21Block49PC := 64.
        ].
        recoveredBlock10Block21Block49Step = 64 ifTrue: [
            recoveredBlock10Block21Block49Stack3 := (recoveredBlock10Block21Block49Stack3) library.
            recoveredBlock10Block21Block49PC := 66.
        ].
        recoveredBlock10Block21Block49Step = 66 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := (recoveredBlock10Block21Block49Stack1) updating: (recoveredBlock10Block21Block49Stack2) from: (recoveredBlock10Block21Block49Stack3).
            recoveredBlock10Block21Block49PC := 68.
        ].
        recoveredBlock10Block21Block49Step = 68 ifTrue: [
            recoveredBlock10Block21Block49Local1 := recoveredBlock10Block21Block49Stack1.
            recoveredBlock10Block21Block49PC := 71.
        ].
        recoveredBlock10Block21Block49Step = 71 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := recoveredArg1.
            recoveredBlock10Block21Block49PC := 74.
        ].
        recoveredBlock10Block21Block49Step = 74 ifTrue: [
            recoveredBlock10Block21Block49Stack2 := [:recoveredBlock10Block21Block49Block74Arg1 | 
    | recoveredBlock10Block21Block49Block74Local1 recoveredBlock10Block21Block49Block74Stack0 recoveredBlock10Block21Block49Block74Stack1 recoveredBlock10Block21Block49Block74Stack2 recoveredBlock10Block21Block49Block74Stack3 recoveredBlock10Block21Block49Block74Stack4 recoveredBlock10Block21Block49Block74Stack5 recoveredBlock10Block21Block49Block74PC recoveredBlock10Block21Block49Block74Step recoveredBlock10Block21Block49Block74Done recoveredBlock10Block21Block49Block74Result |
    recoveredBlock10Block21Block49Block74Stack0 := nil.
    recoveredBlock10Block21Block49Block74PC := 80.
    recoveredBlock10Block21Block49Block74Done := false.
    [recoveredBlock10Block21Block49Block74Done not] whileTrue: [
        recoveredBlock10Block21Block49Block74Step := recoveredBlock10Block21Block49Block74PC.
        recoveredBlock10Block21Block49Block74Step = 80 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := recoveredBlock10Block21Local2.
            recoveredBlock10Block21Block49Block74PC := 83.
        ].
        recoveredBlock10Block21Block49Block74Step = 83 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := recoveredBlock10Block21Block49Block74Arg1.
            recoveredBlock10Block21Block49Block74PC := 84.
        ].
        recoveredBlock10Block21Block49Block74Step = 84 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := (recoveredBlock10Block21Block49Block74Stack1) entryAt: (recoveredBlock10Block21Block49Block74Stack2).
            recoveredBlock10Block21Block49Block74PC := 86.
        ].
        recoveredBlock10Block21Block49Block74Step = 86 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := recoveredBlock10Block21Block49Block74Stack1.
            recoveredBlock10Block21Block49Block74PC := 87.
        ].
        recoveredBlock10Block21Block49Block74Step = 87 ifTrue: [
            recoveredBlock10Block21Block49Block74Local1 := recoveredBlock10Block21Block49Block74Stack2.
            recoveredBlock10Block21Block49Block74PC := 88.
        ].
        recoveredBlock10Block21Block49Block74Step = 88 ifTrue: [
            (recoveredBlock10Block21Block49Block74Stack1 == nil) ifTrue: [recoveredBlock10Block21Block49Block74PC := 118] ifFalse: [recoveredBlock10Block21Block49Block74PC := 92].
        ].
        recoveredBlock10Block21Block49Block74Step = 92 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := recoveredBlock10Block21Block49Local1.
            recoveredBlock10Block21Block49Block74PC := 95.
        ].
        recoveredBlock10Block21Block49Block74Step = 95 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := recoveredBlock10Block21Block49Local1.
            recoveredBlock10Block21Block49Block74PC := 98.
        ].
        recoveredBlock10Block21Block49Block74Step = 98 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack3 := recoveredBlock10Block21Block49Block74Local1.
            recoveredBlock10Block21Block49Block74PC := 99.
        ].
        recoveredBlock10Block21Block49Block74Step = 99 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack3 := (recoveredBlock10Block21Block49Block74Stack3) key.
            recoveredBlock10Block21Block49Block74PC := 101.
        ].
        recoveredBlock10Block21Block49Block74Step = 101 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack4 := recoveredBlock10Block21Block49Block74Local1.
            recoveredBlock10Block21Block49Block74PC := 102.
        ].
        recoveredBlock10Block21Block49Block74Step = 102 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack4 := (recoveredBlock10Block21Block49Block74Stack4) value.
            recoveredBlock10Block21Block49Block74PC := 104.
        ].
        recoveredBlock10Block21Block49Block74Step = 104 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := (recoveredBlock10Block21Block49Block74Stack2) newAssocEntry: (recoveredBlock10Block21Block49Block74Stack3) value: (recoveredBlock10Block21Block49Block74Stack4).
            recoveredBlock10Block21Block49Block74PC := 106.
        ].
        recoveredBlock10Block21Block49Block74Step = 106 ifTrue: [
            (recoveredBlock10Block21Block49Block74Stack1) appendWith: (recoveredBlock10Block21Block49Block74Stack2).
            recoveredBlock10Block21Block49Block74PC := 108.
        ].
        recoveredBlock10Block21Block49Block74Step = 108 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := recoveredBlock10Block21Local2.
            recoveredBlock10Block21Block49Block74PC := 111.
        ].
        recoveredBlock10Block21Block49Block74Step = 111 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := recoveredBlock10Block21Block49Block74Local1.
            recoveredBlock10Block21Block49Block74PC := 112.
        ].
        recoveredBlock10Block21Block49Block74Step = 112 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := (recoveredBlock10Block21Block49Block74Stack1) removeEntry: (recoveredBlock10Block21Block49Block74Stack2).
            recoveredBlock10Block21Block49Block74PC := 114.
        ].
        recoveredBlock10Block21Block49Block74Step = 114 ifTrue: [
            recoveredBlock10Block21Block49Block74PC := 124.
        ].
        recoveredBlock10Block21Block49Block74Step = 118 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := recoveredLocal1.
            recoveredBlock10Block21Block49Block74PC := 121.
        ].
        recoveredBlock10Block21Block49Block74Step = 121 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack2 := recoveredBlock10Block21Block49Block74Arg1.
            recoveredBlock10Block21Block49Block74PC := 122.
        ].
        recoveredBlock10Block21Block49Block74Step = 122 ifTrue: [
            recoveredBlock10Block21Block49Block74Stack1 := (recoveredBlock10Block21Block49Block74Stack1) add: (recoveredBlock10Block21Block49Block74Stack2).
            recoveredBlock10Block21Block49Block74PC := 124.
        ].
        recoveredBlock10Block21Block49Block74Step = 124 ifTrue: [
            recoveredBlock10Block21Block49Block74Result := recoveredBlock10Block21Block49Block74Stack1.
            recoveredBlock10Block21Block49Block74Done := true.
        ].
    ].
    recoveredBlock10Block21Block49Block74Result
].
            recoveredBlock10Block21Block49PC := 125.
        ].
        recoveredBlock10Block21Block49Step = 125 ifTrue: [
            (recoveredBlock10Block21Block49Stack1) do: (recoveredBlock10Block21Block49Stack2).
            recoveredBlock10Block21Block49PC := 127.
        ].
        recoveredBlock10Block21Block49Step = 127 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := recoveredBlock10Block21Block49Local1.
            recoveredBlock10Block21Block49PC := 130.
        ].
        recoveredBlock10Block21Block49Step = 130 ifTrue: [
            (recoveredBlock10Block21Block49Stack1) forgetCachedSpace.
            recoveredBlock10Block21Block49PC := 132.
        ].
        recoveredBlock10Block21Block49Step = 132 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := recoveredLocal1.
            recoveredBlock10Block21Block49PC := 135.
        ].
        recoveredBlock10Block21Block49Step = 135 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := (recoveredBlock10Block21Block49Stack1) size.
            recoveredBlock10Block21Block49PC := 137.
        ].
        recoveredBlock10Block21Block49Step = 137 ifTrue: [
            recoveredBlock10Block21Block49Stack2 := recoveredArg1.
            recoveredBlock10Block21Block49PC := 140.
        ].
        recoveredBlock10Block21Block49Step = 140 ifTrue: [
            recoveredBlock10Block21Block49Stack2 := (recoveredBlock10Block21Block49Stack2) size.
            recoveredBlock10Block21Block49PC := 142.
        ].
        recoveredBlock10Block21Block49Step = 142 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := (recoveredBlock10Block21Block49Stack1) ~= (recoveredBlock10Block21Block49Stack2).
            recoveredBlock10Block21Block49PC := 143.
        ].
        recoveredBlock10Block21Block49Step = 143 ifTrue: [
            recoveredBlock10Block21Block49Stack2 := recoveredBlock10Block21Block49Stack1.
            recoveredBlock10Block21Block49PC := 144.
        ].
        recoveredBlock10Block21Block49Step = 144 ifTrue: [
            recoveredBlock10Block21Local1 := recoveredBlock10Block21Block49Stack2.
            recoveredBlock10Block21Block49PC := 147.
        ].
        recoveredBlock10Block21Block49Step = 147 ifTrue: [
            (recoveredBlock10Block21Block49Stack1) ifTrue: [recoveredBlock10Block21Block49PC := 150] ifFalse: [recoveredBlock10Block21Block49PC := 158].
        ].
        recoveredBlock10Block21Block49Step = 150 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := recoveredBlock10Block21Block49Local1.
            recoveredBlock10Block21Block49PC := 153.
        ].
        recoveredBlock10Block21Block49Step = 153 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := (recoveredBlock10Block21Block49Stack1) insert.
            recoveredBlock10Block21Block49PC := 155.
        ].
        recoveredBlock10Block21Block49Step = 155 ifTrue: [
            recoveredBlock10Block21Block49PC := 159.
        ].
        recoveredBlock10Block21Block49Step = 158 ifTrue: [
            recoveredBlock10Block21Block49Stack1 := nil.
            recoveredBlock10Block21Block49PC := 159.
        ].
        recoveredBlock10Block21Block49Step = 159 ifTrue: [
            recoveredBlock10Block21Block49Result := recoveredBlock10Block21Block49Stack1.
            recoveredBlock10Block21Block49Done := true.
        ].
    ].
    recoveredBlock10Block21Block49Result
].
            recoveredBlock10Block21PC := 160.
        ].
        recoveredBlock10Block21Step = 160 ifTrue: [
            (recoveredBlock10Block21Stack1) at: (recoveredBlock10Block21Stack2) putPointerFrom: (recoveredBlock10Block21Stack3).
            recoveredBlock10Block21PC := 162.
        ].
        recoveredBlock10Block21Step = 162 ifTrue: [
            recoveredBlock10Block21Stack1 := recoveredBlock10Block21Local1.
            recoveredBlock10Block21PC := 165.
        ].
        recoveredBlock10Block21Step = 165 ifTrue: [
            (recoveredBlock10Block21Stack1) ifTrue: [recoveredBlock10Block21PC := 168] ifFalse: [recoveredBlock10Block21PC := 176].
        ].
        recoveredBlock10Block21Step = 168 ifTrue: [
            recoveredBlock10Block21Stack1 := recoveredBlock10Block21Local2.
            recoveredBlock10Block21PC := 171.
        ].
        recoveredBlock10Block21Step = 171 ifTrue: [
            recoveredBlock10Block21Stack1 := (recoveredBlock10Block21Stack1) insert.
            recoveredBlock10Block21PC := 173.
        ].
        recoveredBlock10Block21Step = 173 ifTrue: [
            recoveredBlock10Block21PC := 177.
        ].
        recoveredBlock10Block21Step = 176 ifTrue: [
            recoveredBlock10Block21Stack1 := nil.
            recoveredBlock10Block21PC := 177.
        ].
        recoveredBlock10Block21Step = 177 ifTrue: [
            recoveredBlock10Block21Result := recoveredBlock10Block21Stack1.
            recoveredBlock10Block21Done := true.
        ].
    ].
    recoveredBlock10Block21Result
].
    recoveredBlock10Value3 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) putPointerFrom: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (self) updateRegistryUsing: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

