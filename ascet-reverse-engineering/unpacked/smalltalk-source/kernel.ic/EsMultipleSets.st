"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000188c; bytecode file offset 0x4c844"
!EsMultipleSets methodsFor: 'recovered'!
species
    | recoveredValue0 |
    recoveredValue0 := Set.
    ^recoveredValue0
! !

"kernel.ic method 0x2000315c; bytecode file offset 0x4e0b4"
!EsMultipleSets methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    (self) shouldNotImplement.
    ^self
! !

"kernel.ic method 0x20003bf0; bytecode file offset 0x4ec04"
!EsMultipleSets methodsFor: 'recovered'!
sets
    | recoveredValue0 |
    recoveredValue0 := sets.
    ^recoveredValue0
! !

"kernel.ic method 0x20003d9c; bytecode file offset 0x4ed88"
!EsMultipleSets methodsFor: 'recovered'!
activeSet
    | recoveredValue0 |
    recoveredValue0 := activeSet.
    ^recoveredValue0
! !

"kernel.ic method 0x20005178; bytecode file offset 0x5008c"
!EsMultipleSets methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    sets := recoveredValue1.
    ^self
! !

"kernel.ic method 0x20007650; bytecode file offset 0x52654"
!EsMultipleSets methodsFor: 'recovered'!
activeSet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    activeSet := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000d678; bytecode file offset 0x58590"
!EsMultipleSets methodsFor: 'recovered'!
rehash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sets.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008700Arg1 | 
    | block28008700Value0 block28008700Value1 |
    block28008700Value0 := block28008700Arg1.
    block28008700Value1 := (block28008700Value0) rehash.
    block28008700Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := activeSet.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rehash.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000f0fc; bytecode file offset 0x5a014"
!EsMultipleSets methodsFor: 'recovered'!
removeSets: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := sets.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [].
    recoveredBlock5Value3 := (recoveredBlock5Value0) remove: (recoveredBlock5Value1) ifAbsent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200116a0; bytecode file offset 0x5c5b0"
!EsMultipleSets methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := activeSet.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x20014c7c; bytecode file offset 0x5fb90"
!EsMultipleSets methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includes: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := activeSet.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) includes: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20015aa0; bytecode file offset 0x609b8"
!EsMultipleSets methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includes: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := activeSet.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) add: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20016834; bytecode file offset 0x61750"
!EsMultipleSets methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack4 := [].
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) at: (recoveredBlock6Stack3) ifAbsent: (recoveredBlock6Stack4).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 29] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := activeSet.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) at: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20017e88; bytecode file offset 0x62da0"
!EsMultipleSets methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
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
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack4 := [].
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) at: (recoveredBlock6Stack3) ifAbsent: (recoveredBlock6Stack4).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 29] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := activeSet.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x20018968; bytecode file offset 0x6387c"
!EsMultipleSets methodsFor: 'recovered'!
size
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal1 := 0.
    recoveredValue0 := sets.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) size.
    recoveredBlock11Value3 := (recoveredBlock11Value0) + (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := activeSet.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"kernel.ic method 0x20021178; bytecode file offset 0x6c0ac"
!EsMultipleSets methodsFor: 'recovered'!
addSet: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeSet.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EsLargeSymbolSet.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) computeDefaultBinSizeFor: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) bins.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := Symbol.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) recreateSymbolTable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := recoveredLocal1.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) add: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := sets.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

